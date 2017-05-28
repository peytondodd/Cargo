﻿//=======================================
// Developer: M. Salah (16-5-2017)
// Email: eng.msalah.abdullah@gmail.com
//=======================================

var
    pageManager = pageManager || {},
    pageManager = function () {
        "use strict";
        var
            searchPrm = {
                from: '',
                to: ''
            },
            Init = function () {
                getReport();
                pageEvents();
            },
            pageEvents = function () {
                // print report
                $('#printMe').click(function (e) {
                    e.preventDefault();
                    commonManger.printPage();
                });

                $('#btnSearch').click(function (e) {
                    e.preventDefault();


                    searchPrm.from = $('#From').val();
                    searchPrm.to = $('#To').val();


                    getReport();
                });

            },
            getReport = function () {
                var _id = commonManger.getQueryStrs().id || 0,
                    DTO = {
                        actionName: 'ClientStatement_SelectList',
                        names: ['ID', 'From', 'To'],
                        values: [_id, searchPrm.from, searchPrm.to]
                    },
                    BindReportControls = function (d) {
                        var data = commonManger.xml2Json(d.d),
                            jsn = data.list,
                            jsn1 = data.list1,
                            latestBalance = 0;


                        // header details
                        $('#AddDate').text(commonManger.formatJSONDateCal(new Date(), 'MM/dd/yyyy'));

                        if (jsn) {
                            $('#ClientName').text(jsn.ClientName);
                        }


                        // statement details
                        var
                            rows = $(jsn1).map(function (i, v) {
                                latestBalance = v.Balance;
                                return `<tr><td class="center">${v.Note === 'Invoice' ? '<a title="Go to invoice details" target="_blank" href="InvoicePrint.aspx?id=' + v.ID + '">' + v.ID + '</a>' : v.ID}</td><td>${commonManger.formatJSONDateCal(v.Date, 'dd/MM/yyyy')}</td><td>${v.ContainerNo}</td><td>${v.DeclarationNo}</td><td>${numeral(v.InAmount).format('0,0.00')}</td><td>${numeral(v.OutAmount).format('0,0.00')}</td><td>${numeral(v.Balance).format('0,0.00')}</td></tr>`;
                            }).get().join(),
                            $stet = $('.listItems tbody');


                        $stet.html(rows);


                        // show final balance.
                        $('.FinalBalance').text(numeral(latestBalance).format('0,0.00'));
                    };


                dataService.callAjax('Post', JSON.stringify(DTO), sUrl + 'GetDataList',
                    BindReportControls, commonManger.errorException);
            };

        return {
            Init: Init
        };

    }();