﻿//=======================================
// Developer: M. Salah (09-02-2016)
// Email: eng.msalah.abdullah@gmail.com
//=======================================
var
    pageManager = function () {
        "use strict";
        var
            _id = commonManger.getUrlVars().id,

            Init = function () {
                // set buyers and shippers lists for binding.            
                setFormProperties();

                pageEvents();
            },
            pageEvents = function () {

                $('#ExpenseID').change(function (e) {
                    getDefaultValue($(this).val());
                });

                // add client Expense to grid.
                $('#btnAddAmount').click(function (e) {
                    e.preventDefault();
                    var expenseID = $('#ExpenseID').val();
                    if (expenseID !== '') {
                        BindGrid();
                    } else {
                        commonManger.showMessage('Required fields', 'Please enter all required fields.');
                    }
                });

                // save all data
                $('#SaveAll').click(function (e) {
                    e.preventDefault();
                    SaveAllData();
                });

                // reset form on open
                $('#addModal').on('shown.bs.modal', function () {
                    $("#ExpenseID").val('');
                    $("#Cost,#Amount").val('0.0');
                });

                // grid events
                var $gridTable = $('#listItems tbody');
                // remove row from grid.
                $gridTable.delegate('tr button.remove', 'click', function (e) {
                    e.preventDefault();
                    var el = $(this).closest('tr');
                    if (el) {
                        el.css({ 'transition': 'background-color 1s', 'background-color': 'red' }).fadeOut('slow').promise().done(function () { el.remove(); showPaymentsTotal(); });
                    }
                });

                // update total
                $gridTable.delegate('tr input[type="number"]', 'keyup change', function (e) {

                    // update vat expense by changing service charge expense value.
                    var _this = $(this),
                        expId = _this.attr('data-expid'),
                        expValue = _this.val(),
                        updateVatInGrid = function (parentID, parentValue) {
                            // find/update all children VAT value = parentValue * 0.05.

                            $gridTable.find('tr input[data-parent-expid="' + parentID + '"]').val((parentValue * 0.05).toFixed(2));
                        };

                    if (expId && expValue)
                        updateVatInGrid(expId, expValue);

                    showPaymentsTotal();
                });

            },
            // start Save data.
            SaveAllData = function () {
                if (validateMayData()) {

                    var valuesDetails = $('#listItems tbody tr').map(function (i, v) {
                        var detailsId = $(v).find('td:eq(0)').attr('data-inv-details-id');
                        return (detailsId ? detailsId : 0) + ',0,' + $(v).find('td:eq(0)').text() + ',' + numeral().unformat($(v).find('td:eq(2) input').val()) + ',' + numeral().unformat($(v).find('td:eq(3) input').val());
                    }).get(),

                        namesMaster = ['InvoiceID', 'ClientID', 'AddDate', 'TotalAmount', 'Profit', 'ContainerNo', 'DeclarationNo',
                            'Notes', 'BillOfEntryDate', 'TransporterID', 'CraneDriverID'],

                        valuesMaster = [$('#InvoiceID').val(), $('#ClientID').val(), commonManger.dateFormat($('#AddDate').val()),
                        numeral().unformat($('#TotalAmount').text()), numeral().unformat($('#TotalProfit').text()), $('#ContainerNo').val(),
                        $('#DeclarationNo').val(), $('#Notes').val(), commonManger.dateFormat($('#BillOfEntryDate').val()),
                        $('#TransporterID').val(), $('#CraneDriverID').val()],

                        namesDetails = ['InvoiceDetailsID', 'InvoiceID', 'ExpenseID', 'Cost', 'Amount'];

                    SaveDataMasterDetails(namesMaster, valuesMaster, namesDetails, valuesDetails);

                } else {
                    commonManger.showMessage('Data required', 'Please enter all mandatory fields.')
                }
            },
            SaveDataMasterDetails = function (fieldsMaster, valuesMaster, fieldsDetails, valuesDetails) {
                var DTO = {
                    'fieldsMaster': fieldsMaster, 'valuesMaster': valuesMaster,
                    'fieldsDetails': fieldsDetails, 'valuesDetails': valuesDetails
                };

                dataService.callAjax('Post', JSON.stringify(DTO), 'InvoiceAdd.aspx/SaveDataMasterDetails',
                    successSaved, commonManger.errorException);
            },
            validateMayData = function () {
                // validate all data before SaveAllData.
                var _valid = true,
                    requiredFields = {
                        client: $('#ClientID').val(),
                        gridLength: $('#listItems tbody tr').length,
                        date: commonManger.dateFormat($('#AddDate').val()),
                        container: $('#ContainerNo').val(),
                        declaration: $('#DeclarationNo').val(),
                        transporter: $('#TransporterID').val() * 1 > 0 ? $('#TransporterID').val() : ''
                    };

                if (requiredFields.client === '' || requiredFields.gridLength <= 0 || requiredFields.date === '' ||
                    requiredFields.container === '' || requiredFields.declaration === '' || requiredFields.transporter === '')
                    _valid = false;

                return _valid;
            },
            successSaved = function (data) {
                data = data.d;
                if (data.Status) {
                    window.location.href = 'InvoicePrint.aspx?id=' + data.ID; //InvoicesView
                } else {
                    commonManger.showMessage('Error!', 'Error occured!:' + data.message);
                }
            },
            bindFormControls = function (d) {
                var xml = $.parseXML(d.d),
                    jsn = $.xml2json(xml).list,
                    jsn1 = $.xml2json(xml).list1,
                    jsn2 = $.xml2json(xml).list2,
                    jsn3 = $.xml2json(xml).list3;

                // expenses
                if (jsn) {
                    var _options = $(jsn).map(function (i, v) { return $('<option />').val(v.ExpenseID).text(v.ExpenseName); }).get();
                    $('#ExpenseID').append(_options).trigger('chosen:updated').trigger("liszt:updated");

                    // fill grid with default expenses   
                    // for edit bill or new bill.
                    var detailData = (_id) ? jsn3 : jsn,
                        rows = $(detailData).map(function (i, v) {
                            return $('<tr><td data-inv-details-id="' + (v.InvoiceDetailsID ? v.InvoiceDetailsID : 0) + '">' + v.ExpenseID + '</td><td>' + v.ExpenseName + '</td>\
                             <td><input data-expid="'+ v.ExpenseID + '" ' + (v.ParentExpenseID ? (' data-parent-expid="' + v.ParentExpenseID + '"') : '') + ' type="number" value="' + numeral(v.Cost ? v.Cost : v.DefaultValue).format('0.0') + '" /></td><td><input data-expid="' + v.ExpenseID + '" ' + (v.ParentExpenseID ? (' data-parent-expid="' + v.ParentExpenseID + '"') : '') + ' type="number" value="' + numeral(v.Amount ? v.Amount : v.DefaultValue).format('0.0') + '" /></td>\
                             <td><button class="btn btn-minier btn-danger remove" data-rel="tooltip" data-placement="top" data-original-title="Delete" title="Delete"><i class="fa fa-remove icon-only"></i></button></td></tr>');
                        }).get(),
                        _tbl = $('#listItems tbody');

                    _tbl.append(rows);

                    // show payments total amount.
                    showPaymentsTotal();
                }

                // clients
                if (jsn1) {
                    var options = $(jsn1).map(function (i, v) { return $('<option />').val(v.ClientID).text(v.ClientName); }).get();
                    $('#ClientID').append(options).trigger('chosen:updated').trigger("liszt:updated");
                }

                // master invoice for edit
                if (jsn2) {
                    $.each(jsn2, function (k, v) {
                        $('#masterForm #' + k).val(v);
                    });

                    $('.date-picker').text(function () {
                        return commonManger.formatJSONDateCal($(this).text());
                    });
                    

                    // bind down select2(transfer/crane)
                    if (jsn2.TransporterID)
                        $('#TransporterID').select2("trigger", "select", {
                            data: { id: jsn2.TransporterID, text: jsn2.TransporterName }
                        });

                    if (jsn2.CraneDriverID)
                        $('#CraneDriverID').select2("trigger", "select", {
                            data: { id: jsn2.CraneDriverID, text: jsn2.CraneDriverName }
                        });
                }

            },
            setFormProperties = function () {
                // Edit invoice
                var
                    acName = 'Invoices_Properties', // function name
                    DTO = _id ? { actionName: acName, value: _id } : { actionName: acName }; // set paramers for edit only.

                dataService.callAjax('Post', JSON.stringify(DTO), sUrl + 'GetData' + (_id ? '' : 'Direct'),
                    bindFormControls, commonManger.errorException);
            },
            BindGrid = function () {
                var jsn = {
                    ExpenseID: $('#ExpenseID').val(),
                    ExpenseName: $('#ExpenseID option:selected').text(),
                    Cost: $('#Cost').val(),
                    Amount: $('#Amount').val()
                }, _tbl = $('#listItems tbody');

                if (jsn) {
                    // collect table rows
                    var rows = $(jsn).map(function (i, v) {
                        return $('<tr><td data-inv-details-id="' + (v.InvoiceDetailsID ? v.InvoiceDetailsID : 0) + '">' + v.ExpenseID + '</td><td>' + v.ExpenseName + '</td>\
                             <td><input type="number" value="' + numeral(v.Cost).format('0.0') + '" /></td><td><input type="number" value="' + numeral(v.Amount).format('0.0') + '" /></td>\
                             <td><button class="btn btn-minier btn-danger remove" data-rel="tooltip" data-placement="top" data-original-title="Delete" title="Delete"><i class="fa fa-remove icon-only"></i></button></td></tr>');
                    }).get(), isExist = false;


                    $('#listItems tbody tr').each(function (i, item) {
                        if ($(this).children('td:eq(0)').text() === jsn.ExpenseID)
                            isExist = true;
                    });


                    if (!isExist) {
                        // populate to payments table
                        _tbl.append(rows);
                        // show payments total amount.
                        showPaymentsTotal();
                    } else {
                        commonManger.showMessage('Data Exists:', 'Data already exists before.');
                    }
                }

                $('.modal').modal('hide');
            },
            showPaymentsTotal = function () {
                var _totalCost = 0,
                    _total4Cust = 0;


                $('#listItems tbody tr').each(function (i, item) {
                    try {
                        var cstVal = $(this).find('td:eq(2) input').val(),
                            custVal = $(this).find('td:eq(3) input').val();


                        _totalCost += numeral().unformat(cstVal && !isNaN(cstVal) ? cstVal : 0) * 1; // cost
                        _total4Cust += numeral().unformat(custVal && !isNaN(custVal) > 0 ? custVal : 0) * 1; // amount/customer
                    } catch (err) { console.log(err); }
                });

                // show total amount and profit.
                $('#TotalAmount').text(numeral(_total4Cust).format('0,0.0')); // show invoice total
                $('#TotalProfit').text(numeral(_total4Cust - _totalCost).format('0,0.0')); // show invoice total


                // show final save button.
                if (_total4Cust > 0) {
                    $('#SaveAll').removeClass('hidden');
                } else {
                    $('#SaveAll').addClass('hidden');
                }

            },
            resetMyForm = function () {
                $('#aspnetForm')[0].reset();
                $('#listItems tbody').html('');
                $('#TotalAmountDhs').text('0');
            },
            getDefaultValue = function (no) {
                var functionName = "Expenses_SelectRow",
                    prm = {
                        actionName: functionName,
                        value: no
                    },
                    bindData = function (data) {
                        var xml = $.parseXML(data.d),
                            jsn = $.xml2json(xml).list;

                        if (jsn) {
                            $('#Cost').val(numeral(jsn.DefaultValue).format('0.00'));
                            $('#Amount').val(numeral((jsn.DefaultValue)).format('0.00'));
                        }
                    };


                dataService.callAjax('Post', JSON.stringify(prm), sUrl + 'GetData',
                    bindData, commonManger.errorException);
            };


        return {
            Init: Init
        };

    }();