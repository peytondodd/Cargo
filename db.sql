USE [OSACA]
GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_Transportation', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Transportation'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_Transportation', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Transportation'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_Outgoings', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Outgoings'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_Outgoings', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Outgoings'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_Invoices', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Invoices'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_Invoices', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Invoices'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transportation', N'COLUMN',N'TransporterID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transportation', @level2type=N'COLUMN',@level2name=N'TransporterID'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transportation', N'COLUMN',N'ConsigneeID'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transportation', @level2type=N'COLUMN',@level2name=N'ConsigneeID'

GO
/****** Object:  StoredProcedure [dbo].[Users_SelectRow]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_SelectRow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Users_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_Save]
GO
/****** Object:  StoredProcedure [dbo].[Users_Login]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Login]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_Login]
GO
/****** Object:  StoredProcedure [dbo].[Users_DeleteRow]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_DeleteRow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_DeleteRow]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_Save]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Row]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Row]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_Row]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Properties]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Properties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_Properties]
GO
/****** Object:  StoredProcedure [dbo].[Transportation_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Transportation_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Outgoings_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Outgoings_Save]
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_One]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_One]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Outgoings_One]
GO
/****** Object:  StoredProcedure [dbo].[Outgoings_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Outgoings_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Invoices_SelectRow]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_SelectRow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Invoices_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[Invoices_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Invoices_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Invoices_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Invoices_Save]
GO
/****** Object:  StoredProcedure [dbo].[Invoices_Properties]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Properties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Invoices_Properties]
GO
/****** Object:  StoredProcedure [dbo].[Invoices_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Invoices_Delete]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SelectRow]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_SelectRow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Select2]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Select2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_Select2]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_Save]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Names]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Names]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_Names]
GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ExpenseTypes_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_SelectRow]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_SelectRow]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Expenses_SelectRow]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Expenses_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Expenses_Save]
GO
/****** Object:  StoredProcedure [dbo].[Expenses_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Expenses_Delete]
GO
/****** Object:  StoredProcedure [dbo].[ClientStatement_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientStatement_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ClientStatement_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Clients_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Clients_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Clients_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Clients_Save]
GO
/****** Object:  StoredProcedure [dbo].[Clients_GetNames]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_GetNames]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Clients_GetNames]
GO
/****** Object:  StoredProcedure [dbo].[Clients_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Clients_Delete]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ClientPayments_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ClientPayments_Save]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Properties]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Properties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ClientPayments_Properties]
GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ClientPayments_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Client_GetSummary]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client_GetSummary]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Client_GetSummary]
GO
/****** Object:  StoredProcedure [dbo].[Banks_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_SelectList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Banks_SelectList]
GO
/****** Object:  StoredProcedure [dbo].[Banks_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_Save]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Banks_Save]
GO
/****** Object:  StoredProcedure [dbo].[Banks_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_Delete]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Banks_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Balances_Select]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Balances_Select]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Balances_Select]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [FK_Transportation_Users]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation] DROP CONSTRAINT [FK_Transportation_Clients]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Invoices_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Invoices]'))
ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [FK_Invoices_Clients]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Invoices]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails] DROP CONSTRAINT [FK_InvoiceDetails_Invoices]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Expenses]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails] DROP CONSTRAINT [FK_InvoiceDetails_Expenses]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientPayments_Banks]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientPayments]'))
ALTER TABLE [dbo].[ClientPayments] DROP CONSTRAINT [FK_ClientPayments_Banks]
GO
/****** Object:  View [dbo].[View_Transportation]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Transportation]'))
DROP VIEW [dbo].[View_Transportation]
GO
/****** Object:  View [dbo].[View_Outgoings]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Outgoings]'))
DROP VIEW [dbo].[View_Outgoings]
GO
/****** Object:  View [dbo].[View_Invoices]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Invoices]'))
DROP VIEW [dbo].[View_Invoices]
GO
/****** Object:  View [dbo].[View_ClientPayments]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientPayments]'))
DROP VIEW [dbo].[View_ClientPayments]
GO
/****** Object:  View [dbo].[View_ClientStatementsFinal]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientStatementsFinal]'))
DROP VIEW [dbo].[View_ClientStatementsFinal]
GO
/****** Object:  View [dbo].[View_ClientStatements]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientStatements]'))
DROP VIEW [dbo].[View_ClientStatements]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Transportation]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation]') AND type in (N'U'))
DROP TABLE [dbo].[Transportation]
GO
/****** Object:  Table [dbo].[Outgoings]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings]') AND type in (N'U'))
DROP TABLE [dbo].[Outgoings]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices]') AND type in (N'U'))
DROP TABLE [dbo].[Invoices]
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]') AND type in (N'U'))
DROP TABLE [dbo].[InvoiceDetails]
GO
/****** Object:  Table [dbo].[ExpenseTypes]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes]') AND type in (N'U'))
DROP TABLE [dbo].[ExpenseTypes]
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses]') AND type in (N'U'))
DROP TABLE [dbo].[Expenses]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
DROP TABLE [dbo].[Clients]
GO
/****** Object:  Table [dbo].[ClientPayments]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments]') AND type in (N'U'))
DROP TABLE [dbo].[ClientPayments]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 1/6/2018 4:00:12 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks]') AND type in (N'U'))
DROP TABLE [dbo].[Banks]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Banks](
	[BankID] [tinyint] IDENTITY(1,1) NOT NULL,
	[BankName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Banks] PRIMARY KEY CLUSTERED 
(
	[BankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ClientPayments]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClientPayments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[AddDate] [date] NULL CONSTRAINT [DF_ClientPayments_AddDate]  DEFAULT (getdate()),
	[PaymentAmount] [money] NULL,
	[Deleted] [bit] NULL CONSTRAINT [DF_ClientPayments_Deleted]  DEFAULT ((0)),
	[BankID] [tinyint] NULL,
	[CheckNo] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClientPayments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clients](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Address] [nvarchar](150) NULL,
	[Debit] [money] NULL CONSTRAINT [DF_Clients_Debit]  DEFAULT ((0)),
	[Credit] [money] NULL CONSTRAINT [DF_Clients_Credit]  DEFAULT ((0)),
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Expenses]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Expenses](
	[ExpenseID] [int] IDENTITY(1,1) NOT NULL,
	[ExpenseName] [nvarchar](50) NOT NULL,
	[DefaultValue] [money] NOT NULL CONSTRAINT [DF_Expenses_DefaultValue]  DEFAULT ((0)),
 CONSTRAINT [PK_Expenses] PRIMARY KEY CLUSTERED 
(
	[ExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ExpenseTypes]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ExpenseTypes](
	[ExpenseTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ExpenseTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ExpenseTypes] PRIMARY KEY CLUSTERED 
(
	[ExpenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InvoiceDetails](
	[InvoiceDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceID] [int] NOT NULL,
	[ExpenseID] [int] NOT NULL,
	[Amount] [money] NOT NULL CONSTRAINT [DF_InvoiceDetails_Amount]  DEFAULT ((0)),
	[Cost] [money] NOT NULL CONSTRAINT [DF_InvoiceDetails_Cost]  DEFAULT ((0)),
 CONSTRAINT [PK_InvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[InvoiceDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Invoices](
	[InvoiceID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[AddDate] [date] NOT NULL CONSTRAINT [DF_Invoices_AddDate]  DEFAULT (getdate()),
	[Deleted] [bit] NOT NULL CONSTRAINT [DF_Invoices_Deleted]  DEFAULT ((0)),
	[Profit] [money] NOT NULL CONSTRAINT [DF_Invoices_Profit]  DEFAULT ((0)),
	[TotalAmount] [money] NOT NULL CONSTRAINT [DF_Invoices_TotalAmount]  DEFAULT ((0)),
	[ContainerNo] [nvarchar](50) NULL,
	[DeclarationNo] [nvarchar](50) NULL,
	[Notes] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Outgoings]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Outgoings](
	[OutgoingID] [bigint] IDENTITY(1,1) NOT NULL,
	[AddDate] [datetime] NULL CONSTRAINT [DF_Outgoings_AddDate]  DEFAULT (getdate()),
	[ExpenseTypeID] [int] NULL,
	[Amount] [money] NULL,
	[RefID] [nvarchar](50) NULL,
	[Notes] [nvarchar](3000) NULL,
	[Deleted] [bit] NULL CONSTRAINT [DF_Outgoings_Deleted]  DEFAULT ((0)),
	[UserID] [int] NULL,
 CONSTRAINT [PK_Outgoings] PRIMARY KEY CLUSTERED 
(
	[OutgoingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Transportation]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Transportation](
	[TransportID] [bigint] IDENTITY(1,1) NOT NULL,
	[TransportDate] [date] NOT NULL CONSTRAINT [DF_Transportation_TransportDate]  DEFAULT (getdate()),
	[ConsigneeID] [int] NOT NULL,
	[TransporterID] [int] NOT NULL,
	[ContainerNo] [nvarchar](50) NOT NULL,
	[TransportCharge] [money] NOT NULL CONSTRAINT [DF_Transportation_TransportCharge]  DEFAULT ((0)),
	[CarageCharge] [money] NOT NULL CONSTRAINT [DF_Transportation_CarageCharge]  DEFAULT ((0)),
	[TotalAmount] [money] NOT NULL CONSTRAINT [DF_Transportation_TotalAmount]  DEFAULT ((0)),
	[Deleted] [bit] NOT NULL CONSTRAINT [DF_Transportation_Deleted]  DEFAULT ((0)),
 CONSTRAINT [PK_Transportation] PRIMARY KEY CLUSTERED 
(
	[TransportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserFullName] [nvarchar](150) NOT NULL,
	[Phone] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Username] [nvarchar](150) NULL,
	[Password] [nvarchar](150) NULL,
	[IsActive] [bit] NULL CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_Users_IsDeleted]  DEFAULT ((0)),
	[Mobile] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[View_ClientStatements]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientStatements]'))
EXEC dbo.sp_executesql @statement = N'


CREATE VIEW [dbo].[View_ClientStatements]
AS
	SELECT InvoiceID AS ID, AddDate AS [Date], TotalAmount AS Amount, TotalAmount AS InAmount, 0 AS OutAmount, N''Invoice'' AS Note, ClientID, DeclarationNo, ContainerNo
		FROM Invoices WITH(NOLOCK) WHERE (Deleted=0) AND (TotalAmount > 0)
	UNION ALL
	SELECT PaymentID, AddDate, -PaymentAmount AS Amount, 0 AS InAmount, PaymentAmount AS OutAmount, N''Payment'' AS Note, ClientID, '''', ''''
		FROM ClientPayments WITH(NOLOCK)
		WHERE (Deleted = 0) AND (PaymentAmount > 0)
' 
GO
/****** Object:  View [dbo].[View_ClientStatementsFinal]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientStatementsFinal]'))
EXEC dbo.sp_executesql @statement = N'

CREATE view [dbo].[View_ClientStatementsFinal]
AS
	WITH Stm
		AS
		(
		   SELECT ID, [Date], Amount, InAmount, OutAmount, Note, Amount AS Balance, ClientID
			   FROM View_ClientStatements
			   GROUP BY [Date], ID, Amount, InAmount, OutAmount, Note, ClientID		  
		), StmRanked AS
		(
		   SELECT ID, [Date], Amount, Note, InAmount, OutAmount, Balance, ClientID, ROW_NUMBER() OVER(ORDER BY [Date] ASC) RowNo
			FROM Stm
		) 
	SELECT ClientID, ID, Note, InAmount, OutAmount, [Date], (SELECT SUM(Balance) FROM StmRanked c2 WHERE c2.RowNo <= c1.RowNo) AS Balance, c1.RowNo
	FROM StmRanked c1
' 
GO
/****** Object:  View [dbo].[View_ClientPayments]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_ClientPayments]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_ClientPayments]
AS
SELECT        dbo.ClientPayments.PaymentID, dbo.ClientPayments.ClientID, dbo.ClientPayments.AddDate, dbo.ClientPayments.PaymentAmount, dbo.Clients.ClientName, dbo.Banks.BankName, dbo.ClientPayments.BankID, 
                         dbo.ClientPayments.CheckNo
FROM            dbo.ClientPayments INNER JOIN
                         dbo.Clients ON dbo.ClientPayments.ClientID = dbo.Clients.ClientID LEFT OUTER JOIN
                         dbo.Banks ON dbo.ClientPayments.BankID = dbo.Banks.BankID
WHERE        (dbo.ClientPayments.Deleted = 0)
' 
GO
/****** Object:  View [dbo].[View_Invoices]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Invoices]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_Invoices]
AS
SELECT        dbo.Invoices.InvoiceID, dbo.Invoices.AddDate, dbo.Clients.ClientName, SUM(dbo.InvoiceDetails.Amount) AS TotalAmount, dbo.Invoices.ClientID, dbo.Invoices.ContainerNo, dbo.Invoices.DeclarationNo, 
                         dbo.Invoices.TotalAmount AS Expr1, dbo.Invoices.Notes
FROM            dbo.Clients INNER JOIN
                         dbo.Invoices ON dbo.Clients.ClientID = dbo.Invoices.ClientID INNER JOIN
                         dbo.InvoiceDetails ON dbo.Invoices.InvoiceID = dbo.InvoiceDetails.InvoiceID
WHERE        (dbo.Invoices.Deleted = 0)
GROUP BY dbo.Invoices.InvoiceID, dbo.Invoices.AddDate, dbo.Clients.ClientName, dbo.Invoices.ClientID, dbo.Invoices.ContainerNo, dbo.Invoices.DeclarationNo, dbo.Invoices.TotalAmount, dbo.Invoices.Notes
' 
GO
/****** Object:  View [dbo].[View_Outgoings]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Outgoings]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_Outgoings]
AS
SELECT dbo.ExpenseTypes.ExpenseTypeName, dbo.Outgoings.OutgoingID, dbo.Outgoings.AddDate, dbo.Outgoings.ExpenseTypeID, dbo.Outgoings.Amount, dbo.Outgoings.RefID, dbo.Outgoings.Notes
FROM     dbo.ExpenseTypes INNER JOIN
                  dbo.Outgoings ON dbo.ExpenseTypes.ExpenseTypeID = dbo.Outgoings.ExpenseTypeID
' 
GO
/****** Object:  View [dbo].[View_Transportation]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_Transportation]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_Transportation]
AS
SELECT        dbo.Transportation.TransportID, dbo.Transportation.TransportDate, dbo.Transportation.ConsigneeID, dbo.Transportation.TransporterID, dbo.Transportation.ContainerNo, dbo.Transportation.TransportCharge, 
                         dbo.Transportation.CarageCharge, dbo.Transportation.TotalAmount, dbo.Transportation.Deleted, dbo.Users.UserFullName, dbo.Clients.ClientName
FROM            dbo.Transportation INNER JOIN
                         dbo.Users ON dbo.Transportation.TransporterID = dbo.Users.UserID INNER JOIN
                         dbo.Clients ON dbo.Transportation.ConsigneeID = dbo.Clients.ClientID
' 
GO
SET IDENTITY_INSERT [dbo].[Banks] ON 

GO
INSERT [dbo].[Banks] ([BankID], [BankName]) VALUES (1, N'Dubai Islamic Bank')
GO
SET IDENTITY_INSERT [dbo].[Banks] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientPayments] ON 

GO
INSERT [dbo].[ClientPayments] ([PaymentID], [ClientID], [AddDate], [PaymentAmount], [Deleted], [BankID], [CheckNo]) VALUES (1, 2, CAST(N'2016-05-27' AS Date), 800.0000, 1, NULL, NULL)
GO
INSERT [dbo].[ClientPayments] ([PaymentID], [ClientID], [AddDate], [PaymentAmount], [Deleted], [BankID], [CheckNo]) VALUES (3, 2, CAST(N'2016-05-30' AS Date), 5000.0000, 0, NULL, NULL)
GO
INSERT [dbo].[ClientPayments] ([PaymentID], [ClientID], [AddDate], [PaymentAmount], [Deleted], [BankID], [CheckNo]) VALUES (4, 2, CAST(N'2016-05-30' AS Date), 610.0000, 0, NULL, NULL)
GO
INSERT [dbo].[ClientPayments] ([PaymentID], [ClientID], [AddDate], [PaymentAmount], [Deleted], [BankID], [CheckNo]) VALUES (5, 2, CAST(N'2016-05-30' AS Date), 300.0000, 0, NULL, NULL)
GO
INSERT [dbo].[ClientPayments] ([PaymentID], [ClientID], [AddDate], [PaymentAmount], [Deleted], [BankID], [CheckNo]) VALUES (6, 2, CAST(N'2016-05-30' AS Date), 7200.0000, 0, NULL, NULL)
GO
INSERT [dbo].[ClientPayments] ([PaymentID], [ClientID], [AddDate], [PaymentAmount], [Deleted], [BankID], [CheckNo]) VALUES (7, 1, CAST(N'2016-05-30' AS Date), 2000.0000, 0, 1, N'52060')
GO
SET IDENTITY_INSERT [dbo].[ClientPayments] OFF
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

GO
INSERT [dbo].[Clients] ([ClientID], [ClientName], [Phone], [Mobile], [Address], [Debit], [Credit]) VALUES (1, N'Ali ali', N'00001', N'000002', N'000003', 2000.0000, 7700.0000)
GO
INSERT [dbo].[Clients] ([ClientID], [ClientName], [Phone], [Mobile], [Address], [Debit], [Credit]) VALUES (2, N'Mohamed Ali', N'00', N'00', N'00', 13613.0000, 19265.0000)
GO
INSERT [dbo].[Clients] ([ClientID], [ClientName], [Phone], [Mobile], [Address], [Debit], [Credit]) VALUES (3, N'Sameer Khalid', N'0000', N'000', N'00', 0.0000, 4550.0000)
GO
INSERT [dbo].[Clients] ([ClientID], [ClientName], [Phone], [Mobile], [Address], [Debit], [Credit]) VALUES (4, N'Ahmed Foad', N'0123456789', N'0123456789', N'123', 0.0000, 8850.0000)
GO
INSERT [dbo].[Clients] ([ClientID], [ClientName], [Phone], [Mobile], [Address], [Debit], [Credit]) VALUES (5, N'Amir Ali', N'0123456', N'98745632', N'123 Kuwait st', 0.0000, 0.0000)
GO
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Expenses] ON 

GO
INSERT [dbo].[Expenses] ([ExpenseID], [ExpenseName], [DefaultValue]) VALUES (1, N'VCC', 1000.0000)
GO
INSERT [dbo].[Expenses] ([ExpenseID], [ExpenseName], [DefaultValue]) VALUES (2, N'Delivery Order', 2500.0000)
GO
INSERT [dbo].[Expenses] ([ExpenseID], [ExpenseName], [DefaultValue]) VALUES (3, N'Move cars', 500.0000)
GO
SET IDENTITY_INSERT [dbo].[Expenses] OFF
GO
SET IDENTITY_INSERT [dbo].[ExpenseTypes] ON 

GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName]) VALUES (1, N'Suger/Tea/Paper/Pen')
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName]) VALUES (2, N'Decoration')
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName]) VALUES (3, N'Car Maintenance')
GO
INSERT [dbo].[ExpenseTypes] ([ExpenseTypeID], [ExpenseTypeName]) VALUES (4, N'Petrol')
GO
SET IDENTITY_INSERT [dbo].[ExpenseTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceDetails] ON 

GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (1, 1, 1, 110.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (2, 2, 2, 250.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (3, 2, 1, 150.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (4, 8, 1, 1.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (5, 8, 2, 2.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (6, 9, 1, 1000.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (7, 9, 2, 2500.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (8, 10, 2, 2500.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (9, 10, 1, 1000.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (10, 11, 1, 1000.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (11, 11, 3, 500.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (12, 12, 2, 2500.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (13, 13, 2, 2500.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (14, 14, 1, 1000.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (15, 14, 2, 2500.0000, 0.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (16, 15, 1, 1050.0000, 1000.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (17, 15, 2, 2550.0000, 2500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (18, 15, 3, 550.0000, 500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (19, 16, 1, 1050.0000, 1000.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (20, 16, 2, 2550.0000, 2500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (21, 17, 1, 1000.0000, 1000.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (22, 17, 2, 2500.0000, 2500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (23, 17, 3, 855.0000, 500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (24, 18, 1, 1000.0000, 1000.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (25, 18, 2, 2500.0000, 2500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (26, 18, 3, 500.0000, 500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (27, 19, 1, 1500.0000, 1000.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (28, 19, 2, 3000.0000, 2500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (30, 19, 3, 750.0000, 500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (31, 20, 1, 1000.0000, 1000.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (32, 20, 2, 2500.0000, 2500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (33, 20, 3, 700.0000, 500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (34, 21, 1, 1000.0000, 1000.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (35, 21, 2, 2500.0000, 2500.0000)
GO
INSERT [dbo].[InvoiceDetails] ([InvoiceDetailsID], [InvoiceID], [ExpenseID], [Amount], [Cost]) VALUES (36, 21, 3, 800.0000, 500.0000)
GO
SET IDENTITY_INSERT [dbo].[InvoiceDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 

GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (1, 2, CAST(N'2016-05-26' AS Date), 0, 0.0000, 0.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (2, 3, CAST(N'2016-05-27' AS Date), 0, 0.0000, 0.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (8, 2, CAST(N'2016-05-30' AS Date), 1, 0.0000, 0.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (9, 2, CAST(N'2016-05-30' AS Date), 1, 0.0000, 0.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (10, 2, CAST(N'2016-05-30' AS Date), 1, 0.0000, 0.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (11, 2, CAST(N'2016-05-30' AS Date), 0, 0.0000, 0.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (12, 2, CAST(N'2016-05-30' AS Date), 0, 0.0000, 0.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (13, 2, CAST(N'2016-05-30' AS Date), 0, 0.0000, 0.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (14, 1, CAST(N'2016-05-30' AS Date), 0, 0.0000, 0.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (15, 3, CAST(N'2016-08-07' AS Date), 0, 150.0000, 4150.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (16, 4, CAST(N'2016-08-07' AS Date), 0, 100.0000, 3600.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (17, 2, CAST(N'2016-08-09' AS Date), 0, 355.0000, 4355.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (18, 2, CAST(N'2016-08-09' AS Date), 0, 0.0000, 4000.0000, NULL, NULL, NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (19, 4, CAST(N'2016-08-09' AS Date), 0, 1250.0000, 5250.0000, N'85230000', N'9612330000', NULL)
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (20, 1, CAST(N'2017-05-07' AS Date), 0, 200.0000, 4200.0000, N'234', N'123', N'Mohamed Salah ')
GO
INSERT [dbo].[Invoices] ([InvoiceID], [ClientID], [AddDate], [Deleted], [Profit], [TotalAmount], [ContainerNo], [DeclarationNo], [Notes]) VALUES (21, 2, CAST(N'2017-05-07' AS Date), 0, 300.0000, 4300.0000, N'456', N'789', N'Mohamed Ali Notes skdskdj ksjds')
GO
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[Outgoings] ON 

GO
INSERT [dbo].[Outgoings] ([OutgoingID], [AddDate], [ExpenseTypeID], [Amount], [RefID], [Notes], [Deleted], [UserID]) VALUES (1, CAST(N'2018-01-20 00:00:00.000' AS DateTime), 1, 500.0000, N'1', N'vvvvvvvv', 0, NULL)
GO
INSERT [dbo].[Outgoings] ([OutgoingID], [AddDate], [ExpenseTypeID], [Amount], [RefID], [Notes], [Deleted], [UserID]) VALUES (2, CAST(N'2018-01-06 00:00:00.000' AS DateTime), 3, 5.0000, N'55', N'555', 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Outgoings] OFF
GO
SET IDENTITY_INSERT [dbo].[Transportation] ON 

GO
INSERT [dbo].[Transportation] ([TransportID], [TransportDate], [ConsigneeID], [TransporterID], [ContainerNo], [TransportCharge], [CarageCharge], [TotalAmount], [Deleted]) VALUES (1, CAST(N'2017-03-25' AS Date), 1, 6, N'تالاتلات', 150.0000, 50.0000, 200.0000, 0)
GO
INSERT [dbo].[Transportation] ([TransportID], [TransportDate], [ConsigneeID], [TransporterID], [ContainerNo], [TransportCharge], [CarageCharge], [TotalAmount], [Deleted]) VALUES (2, CAST(N'2017-04-10' AS Date), 3, 6, N'dsdasdasda', 150.0000, 400.0000, 550.0000, 0)
GO
SET IDENTITY_INSERT [dbo].[Transportation] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([UserID], [UserFullName], [Phone], [Email], [Username], [Password], [IsActive], [IsDeleted], [Mobile], [Nationality]) VALUES (6, N'admin', N'00', N'admin@admin.com', N'admin', N'DRAzcA0AbU4=', 1, 0, N'000', N'000')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientPayments_Banks]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientPayments]'))
ALTER TABLE [dbo].[ClientPayments]  WITH CHECK ADD  CONSTRAINT [FK_ClientPayments_Banks] FOREIGN KEY([BankID])
REFERENCES [dbo].[Banks] ([BankID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClientPayments_Banks]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClientPayments]'))
ALTER TABLE [dbo].[ClientPayments] CHECK CONSTRAINT [FK_ClientPayments_Banks]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Expenses]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Expenses] FOREIGN KEY([ExpenseID])
REFERENCES [dbo].[Expenses] ([ExpenseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Expenses]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Expenses]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Invoices]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Invoices] FOREIGN KEY([InvoiceID])
REFERENCES [dbo].[Invoices] ([InvoiceID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InvoiceDetails_Invoices]') AND parent_object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]'))
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Invoices]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Invoices_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Invoices]'))
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Invoices_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Invoices]'))
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Clients]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation]  WITH CHECK ADD  CONSTRAINT [FK_Transportation_Clients] FOREIGN KEY([ConsigneeID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Clients]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation] CHECK CONSTRAINT [FK_Transportation_Clients]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation]  WITH CHECK ADD  CONSTRAINT [FK_Transportation_Users] FOREIGN KEY([TransporterID])
REFERENCES [dbo].[Users] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transportation_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transportation]'))
ALTER TABLE [dbo].[Transportation] CHECK CONSTRAINT [FK_Transportation_Users]
GO
/****** Object:  StoredProcedure [dbo].[Balances_Select]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Balances_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Balances_Select] AS' 
END
GO




-- ==========================================================================================
-- Entity Name:	Balances_Select
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Balances_Select]	
As
Begin	
	SELECT (SELECT SUM(TotalAmount) FROM View_Invoices) AS TotalInvoices,
			(SELECT SUM(PaymentAmount) FROM ClientPayments Where Deleted=0) AS TotalPayments,
			(SELECT SUM(Profit) FROM Invoices Where Deleted=0) AS Profit;	
End






GO
/****** Object:  StoredProcedure [dbo].[Banks_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Banks_Delete] AS' 
END
GO




-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Banks_Delete]
	@BankID tinyint
AS
BEGIN
	Delete from Banks Where BankID=@BankID;
	RETURN @@IDENTITY;
END







GO
/****** Object:  StoredProcedure [dbo].[Banks_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Banks_Save] AS' 
END
GO




-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Banks_Save]
	@BankID tinyint
	,@BankName nvarchar(50)
AS
BEGIN	
	IF EXISTS(SELECT NULL FROM Banks Where BankID=@BankID)
	BEGIN
		UPDATE [dbo].[Banks] SET [BankName] = @BankName WHERE BankID=@BankID
		RETURN @BankID;
	END
	ELSE
	BEGIN
		INSERT into [Banks] ([BankName]) VALUES(@BankName);
		RETURN @@IDENTITY;
	END
END







GO
/****** Object:  StoredProcedure [dbo].[Banks_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banks_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Banks_SelectList] AS' 
END
GO




-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Banks_SelectList]
	@DisplayStart tinyint = 0,
	@DisplayLength tinyint = 50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc'
AS
BEGIN
	SET NOCOUNT ON

	SELECT BankID, BankName  
		FROM (SELECT  BankID, BankName, (ROW_NUMBER() OVER(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN Banks.BankID END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN Banks.BankID END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN Banks.[BankName] END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN Banks.[BankName] END desc)) AS RowNo 
		FROM Banks 
		Where (@SearchParam IS NULL OR [BankName] LIKE '%'+ @SearchParam + '%')
		) Invoices 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 SELECT Count(*) AS TableCount FROM Banks  Where (@SearchParam IS NULL OR [BankName] LIKE '%'+ @SearchParam + '%')
END




GO
/****** Object:  StoredProcedure [dbo].[Client_GetSummary]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client_GetSummary]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Client_GetSummary] AS' 
END
GO




-- ==========================================================================================
-- Entity Name:	Balances_Select
-- ALTER date:	7-1-2017 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Client_GetSummary]	
	@ID int -- ClientID
As
Begin	
	SELECT (SELECT SUM(TotalAmount) FROM View_Invoices WHERE ClientID = @ID) AS TotalInvoices,
			(SELECT SUM(PaymentAmount) FROM ClientPayments Where Deleted=0 AND  ClientID = @ID) AS TotalPayments,
			(SELECT TOP 1 ClientName FROM Clients Where ClientID=@ID) ClientName;
End






GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_Delete] AS' 
END
GO







-- =============================================
-- Author:		<Mohamed Salah>
-- ALTER date: <1-2-2017>
-- Description:	<Delete payment and update client balance>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_Delete]
	@PaymentID int
AS
BEGIN

DECLARE @Count int;

BEGIN TRAN DeletePayment
	UPDATE ClientPayments SET Deleted=1 Where PaymentID=@PaymentID;
	SET @Count = @@ROWCOUNT;

	IF @Count > 0 -- update client debits and balances
		Update Clients SET Debit = (Debit - PaymentAmount)
			FROM View_ClientPayments JOIN Clients ON Clients.ClientID=View_ClientPayments.ClientID
			Where PaymentID=@PaymentID
COMMIT Tran

	RETURN @Count;
END






GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Properties]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Properties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_Properties] AS' 
END
GO






-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_Properties]
	
AS
BEGIN
	SELECT ClientID,ClientName FROM Clients;
	SELECT BankID,BankName FROM Banks;
END









GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_Save] AS' 
END
GO






-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_Save]
	@PaymentID int,
	@ClientID int,
	@AddDate date,
	@PaymentAmount money=0,
	@BankID tinyint=NULL,
	@CheckNo nvarchar(50) = NULL
AS
BEGIN
--BEGIN TRAN SavePayment	
	IF EXISTS(SELECT NULL FROM ClientPayments Where PaymentID=@PaymentID)
	BEGIN
		UPDATE [ClientPayments]
	   SET [ClientID] = @ClientID
		  ,[AddDate] = @AddDate
		  ,[PaymentAmount] = @PaymentAmount
		  ,BankID = @BankID
		  ,CheckNo = @CheckNo
		WHERE PaymentID=@PaymentID;

		----------------------Update client debit
		DECLARE @LatestDebit money=0;
		SET @LatestDebit=(SELECT TOP 1 ISNULL([PaymentAmount],0) FROM [ClientPayments] WHERE PaymentID=@PaymentID);
		
		Update Clients SET Debit =(Debit +(@PaymentAmount - @LatestDebit)) Where  [ClientID] = @ClientID;
		-----------------------------------------

		RETURN @PaymentID;
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[ClientPayments] ([ClientID] ,[AddDate] ,[PaymentAmount],[Deleted],BankID, CheckNo)
			VALUES (@ClientID ,@AddDate ,@PaymentAmount,0,@BankID, @CheckNo);

		IF @@IDENTITY > 0 --------------------------------Update client debit
			Update Clients SET Debit =(Debit + @PaymentAmount) Where  [ClientID] = @ClientID
		---------------------------------------------
		
		RETURN @@IDENTITY;
	END

--Commit Tran
END









GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientPayments_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientPayments_SelectList] AS' 
END
GO






-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ClientPayments_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc',
	@ID int = NULL-- ClientID
AS
BEGIN
	SET NOCOUNT ON
	-- list
	SELECT PaymentID, ClientID, AddDate, PaymentAmount, ClientName, BankID, BankName, CheckNo  
		FROM (SELECT  PaymentID, ClientID, AddDate, PaymentAmount, ClientName,BankID, BankName, CheckNo 
		,(row_number() over(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN [PaymentID] END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN [PaymentID] END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN [ClientName] END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN [ClientName] END desc,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'asc' THEN [AddDate] END ASC,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'desc' THEN [AddDate] END desc)) AS RowNo 
		FROM View_ClientPayments 
		Where (@ID IS NULL OR ClientID = @ID) AND (@SearchParam IS NULL OR [ClientName] LIKE '%'+ @SearchParam + '%')
		) Invoices 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 SELECT Count(*) AS TableCount, SUM(PaymentAmount) AS TotalPayments FROM View_ClientPayments 
		Where (@ID IS NULL OR ClientID = @ID) AND (@SearchParam IS NULL OR [ClientName] LIKE '%'+ @SearchParam + '%')
END




GO
/****** Object:  StoredProcedure [dbo].[Clients_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_Delete] AS' 
END
GO



-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_Delete]
	@ClientID int
AS
BEGIN
	Delete from Clients Where ClientID=@ClientID;
	RETURN @@IDENTITY;
END






GO
/****** Object:  StoredProcedure [dbo].[Clients_GetNames]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_GetNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_GetNames] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	Clients_GetNames
-- Author:	Mohamed Salah
-- ALTER date:	7/1/2017 9:27:39 AM
-- Description:	This stored procedure is intended for selecting a specific rows from clients table
-- ==========================================================================================
ALTER Procedure [dbo].[Clients_GetNames]
	@pageNum int = 1,
	@pageSize int= 10,
	@key nvarchar(50) = NULL
As
Begin
	-- get list
	SELECT [ClientID] as id, ClientName as [text1] FROM (
		Select distinct [ClientID],ClientName,(row_number() over(ORDER BY ClientName ASC)) As RowNo From Clients Where (@key IS NULL) OR (ClientName LIKE @key +'%')
		) List
	Where RowNo > ((@pageNum - 1) * @pageSize)  AND RowNo <= (@pageNum * @pageSize);
	
	-- get count
	SELECT Count(*) AS CNT FROM Clients Where (@key IS NULL) OR (ClientName LIKE @key +'%');
End



GO
/****** Object:  StoredProcedure [dbo].[Clients_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_Save] AS' 
END
GO



-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_Save]
	@ClientID int
	,@ClientName nvarchar(50)
    ,@Phone nvarchar(50)
    ,@Mobile nvarchar(50)
    ,@Address nvarchar(150)
AS
BEGIN
	
	IF EXISTS(SELECT NULL FROM Clients Where ClientID=@ClientID)
	BEGIN
		UPDATE [dbo].[Clients]
	   SET [ClientName] = @ClientName
		  ,[Phone] = @Phone
		  ,[Mobile] = @Mobile
		  ,[Address] = @Address
		WHERE ClientID=@ClientID
		RETURN @ClientID;
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[Clients]
           ([ClientName]
           ,[Phone]
           ,[Mobile]
           ,[Address])
		VALUES
           (@ClientName
           ,@Phone
           ,@Mobile
           ,@Address)
		RETURN @@IDENTITY;
	END
END






GO
/****** Object:  StoredProcedure [dbo].[Clients_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clients_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Clients_SelectList] AS' 
END
GO



-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Clients_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = '',
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc'
AS
BEGIN
	SET NOCOUNT ON

	SELECT ClientID, ClientName, Phone, Mobile, [Address], Debit, Credit ,RowNo  
		FROM (SELECT  ClientID, ClientName, Phone, Mobile, [Address], 
		(SELECT SUM(VCP.PaymentAmount) FROM View_ClientPayments VCP Where VCP.ClientID=Clients.ClientID) AS Debit, 
		(SELECT SUM(VIP.TotalAmount) FROM View_Invoices VIP Where VIP.ClientID=Clients.ClientID) AS Credit
		,(row_number() over(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN Clients.ClientID END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN Clients.ClientID END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN Clients.[ClientName] END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN Clients.[ClientName] END desc)) AS RowNo 
		FROM Clients 
		Where (@SearchParam IS NULL OR [ClientName] LIKE '%'+ @SearchParam + '%')
		) Invoices 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 SELECT Count(*) AS TableCount FROM Clients 
		Where (@SearchParam IS NULL OR [ClientName] LIKE '%'+ @SearchParam + '%')
END



GO
/****** Object:  StoredProcedure [dbo].[ClientStatement_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientStatement_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ClientStatement_SelectList] AS' 
END
GO

-- ================================================
-- Author:		<Mohamed Salah>
-- ALTER date:  <16-5-2017>
-- Description:	<Select client invoices and payments in statement>
-- ================================================
ALTER PROCEDURE [dbo].[ClientStatement_SelectList]
	@ID int = NULL,	-- ClientID
	@From date = NULL,
	@To date = NULL
AS
BEGIN
	SET NOCOUNT ON
	-- client name
	SELECT ClientName FROM Clients Where ClientID = @ID;
	
	-- client statement
	WITH Stm
		AS
		(
		   SELECT ID, [Date], Amount, InAmount, OutAmount, Note, Amount AS Balance, ClientID, DeclarationNo, ContainerNo
			   FROM View_ClientStatements
			   WHERE ClientID = @ID
			   GROUP BY [Date], ID, Amount, InAmount, OutAmount, Note, ClientID, DeclarationNo, ContainerNo
		), StmRanked AS
		(
		   SELECT ID, [Date], Amount, Note, InAmount, OutAmount, Balance, ClientID, ROW_NUMBER() OVER(ORDER BY [Date] ASC) RowNo, DeclarationNo, ContainerNo
			FROM Stm
		)
		 
	SELECT ClientID, ID, Note, InAmount, OutAmount, [Date], (SELECT SUM(Balance) FROM StmRanked c2 WHERE c2.RowNo <= c1.RowNo) AS Balance, c1.RowNo, c1.DeclarationNo, c1.ContainerNo
		FROM StmRanked c1
		WHERE (@From IS NULL OR [Date] >= @From) AND (@To IS NULL OR [Date] <= @To);
END



GO
/****** Object:  StoredProcedure [dbo].[Expenses_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_Delete] AS' 
END
GO




-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_Delete]
	@ExpenseID int
AS
BEGIN
	Delete from Expenses Where ExpenseID=@ExpenseID;
	RETURN @@IDENTITY;
END







GO
/****** Object:  StoredProcedure [dbo].[Expenses_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_Save] AS' 
END
GO




-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_Save]
	@ExpenseID int
	,@ExpenseName nvarchar(50)
    ,@DefaultValue money
AS
BEGIN
	
	IF EXISTS(SELECT NULL FROM Expenses Where ExpenseID=@ExpenseID)
	BEGIN
		UPDATE [dbo].[Expenses]
	   SET [ExpenseName] = @ExpenseName
		  ,[DefaultValue] = @DefaultValue
		WHERE ExpenseID=@ExpenseID
		RETURN @ExpenseID;
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[Expenses]
           ([ExpenseName]
           ,[DefaultValue])
		VALUES
           (@ExpenseName
           ,@DefaultValue)
		RETURN @@IDENTITY;
	END
END







GO
/****** Object:  StoredProcedure [dbo].[Expenses_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_SelectList] AS' 
END
GO




-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Expenses_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = '',
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON

    -- Insert statements for procedure here
	   SELECT * from Expenses;
	   select COUNT(*) from Expenses;
END







GO
/****** Object:  StoredProcedure [dbo].[Expenses_SelectRow]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expenses_SelectRow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Expenses_SelectRow] AS' 
END
GO



ALTER PROCEDURE [dbo].[Expenses_SelectRow]
	@Id int = 0
AS
BEGIN
	SET NOCOUNT ON
    SELECT * from Expenses WHERE ExpenseID=@Id;
END





GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_Delete] AS' 
END
GO





-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ExpenseTypes_Delete]
	@ExpenseTypeID int
AS
BEGIN
	Delete from ExpenseTypes Where ExpenseTypeID=@ExpenseTypeID;
	RETURN @@IDENTITY;
END








GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Names]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Names]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_Names] AS' 
END
GO





-- =============================================
-- Author:	<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ExpenseTypes_Names]
AS
BEGIN
	SET NOCOUNT ON
	SELECT ExpenseTypeID, ExpenseTypeName FROM ExpenseTypes;
END








GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_Save] AS' 
END
GO





-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ExpenseTypes_Save]
	@ExpenseTypeID int
	,@ExpenseTypeName nvarchar(50)
AS
BEGIN
	
	IF EXISTS(SELECT NULL FROM ExpenseTypes Where ExpenseTypeID=@ExpenseTypeID)
	BEGIN
		UPDATE [dbo].[ExpenseTypes]
			SET [ExpenseTypeName] = @ExpenseTypeName
		WHERE ExpenseTypeID=@ExpenseTypeID;
		RETURN @ExpenseTypeID;
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[ExpenseTypes] ([ExpenseTypeName])
			VALUES (@ExpenseTypeName)
		RETURN @@IDENTITY;
	END
END








GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_Select2]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_Select2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_Select2] AS' 
END
GO
-- ==========================================================================================
-- Entity Name:	ExpenseTypes_GetNames
-- Author:	Mohamed Salah
-- ALTER date:	5/1/2018 9:27:39 AM
-- Description:	This stored procedure is intended for selecting a specific rows from ExpenseTypes table
-- ==========================================================================================
ALTER Procedure [dbo].[ExpenseTypes_Select2]
	@pageNum int = 1,
	@pageSize int= 10,
	@key nvarchar(50) = NULL
As
Begin
	-- get list
	SELECT [ExpenseTypeID] as id, ExpenseTypeName as [text1] FROM (
		Select distinct [ExpenseTypeID],ExpenseTypeName,(row_number() over(ORDER BY ExpenseTypeName ASC)) As RowNo 
		From ExpenseTypes Where (@key IS NULL) OR (ExpenseTypeName LIKE @key +'%')
		) List
	Where RowNo > ((@pageNum - 1) * @pageSize)  AND RowNo <= (@pageNum * @pageSize);
	
	-- get count
	SELECT Count(*) AS CNT FROM ExpenseTypes Where (@key IS NULL) OR (ExpenseTypeName LIKE @key +'%');
End



GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_SelectList] AS' 
END
GO





-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[ExpenseTypes_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc'
AS
BEGIN
	SET NOCOUNT ON
    -- Insert statements for procedure here
	   SELECT ExpenseTypeID, ExpenseTypeName FROM ExpenseTypes WHERE (@SearchParam IS NULL) OR (ExpenseTypeName LIKE @SearchParam + '%');
	   select COUNT(*) FROM ExpenseTypes WHERE (@SearchParam IS NULL) OR (ExpenseTypeName LIKE @SearchParam + '%');
END








GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SelectRow]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExpenseTypes_SelectRow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ExpenseTypes_SelectRow] AS' 
END
GO




ALTER PROCEDURE [dbo].[ExpenseTypes_SelectRow]
	@Id int = 0
AS
BEGIN
	SET NOCOUNT ON
    SELECT * from ExpenseTypes WHERE ExpenseTypeID=@Id;
END






GO
/****** Object:  StoredProcedure [dbo].[Invoices_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Invoices_Delete] AS' 
END
GO





-- ==========================================================================================
-- Entity Name:	Invoices_Delete
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for deleting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Invoices_Delete]
	@InvoiceID int
As
Begin	

DECLARE @Count int;

BEGIN TRAN DeleteInvoice
	Update Invoices SET Deleted = 1 Where [InvoiceID] = @InvoiceID;
	SET @Count = @@ROWCOUNT;

	IF @Count > 0 -- update clients credit and balances
		UPDATE Clients SET Credit = (Credit - TotalAmount)
			FROM View_Invoices Join Clients ON View_Invoices.ClientID=Clients.ClientID
			Where [InvoiceID] = @InvoiceID;
COMMIT TRAN

	RETURN @Count;
End





GO
/****** Object:  StoredProcedure [dbo].[Invoices_Properties]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Properties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Invoices_Properties] AS' 
END
GO




-- ==========================================================================================
-- Entity Name:	Invoices_Properties
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for deleting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Invoices_Properties]
	@ID int=NULL -- for edit invoice
As
Begin
	SELECT ExpenseID, ExpenseName, DefaultValue FROM Expenses WITH(NOLOCK);
	SELECT ClientID, ClientName FROM Clients WITH(NOLOCK);

	IF @ID IS NOT NULL -- for edit
	BEGIN		
		-- bill master
		SELECT InvoiceID, ClientID, ContainerNo, DeclarationNo,CONVERT(VARCHAR(10), AddDate, 101) AS AddDate, Notes 
			FROM Invoices WITH(NOLOCK)
			WHERE InvoiceID = @ID;

		-- bill details
		SELECT InvoiceDetails.InvoiceDetailsID, InvoiceDetails.InvoiceID, InvoiceDetails.ExpenseID, InvoiceDetails.Amount, Expenses.ExpenseName, Expenses.DefaultValue, InvoiceDetails.Cost
			FROM InvoiceDetails WITH(NOLOCK) INNER JOIN Expenses WITH(NOLOCK) ON InvoiceDetails.ExpenseID = Expenses.ExpenseID
			WHERE InvoiceDetails.InvoiceID = @ID;
	END
End



GO
/****** Object:  StoredProcedure [dbo].[Invoices_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Invoices_Save] AS' 
END
GO




-- ==========================================================================================
-- Entity Name:	Invoices_Save
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for updating Invoices table
-- ==========================================================================================

ALTER Procedure [dbo].[Invoices_Save]
	@doc xml
As
Begin

BEGIN TRAN SaveMasterDetails

IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[#tbl]') AND OBJECTPROPERTY(id, N'IsTable') = 1) DROP Table [dbo].[#tbl] 
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[#tbl2]') AND OBJECTPROPERTY(id, N'IsTable') = 1) DROP Table [dbo].[#tbl2]

SELECT 
	InvoiceID=XTbl.XCol.value('@InvoiceID[1]','int'),
	ClientID=XTbl.XCol.value('@ClientID[1]','int'),
	AddDate=XTbl.XCol.value('@AddDate[1]','date'),
	Deleted=XTbl.XCol.value('@Deleted[1]','bit'),
	Profit=XTbl.XCol.value('@Profit[1]','money'),
	TotalAmount=XTbl.XCol.value('@TotalAmount[1]','money'),
	ContainerNo=XTbl.XCol.value('@ContainerNo[1]','nvarchar(50)'),
	DeclarationNo=XTbl.XCol.value('@DeclarationNo[1]','nvarchar(50)'),
	Notes=XTbl.XCol.value('@Notes[1]','nvarchar(1000)')
 INTO #tbl FROM  @doc.nodes('//Master') AS XTbl(XCol) 
 
 Update Invoices
	Set
		[ClientID] = #tbl.ClientID,
		[AddDate] = #tbl.AddDate,
		[Deleted] = #tbl.Deleted,
		Profit = #tbl.Profit,
		TotalAmount = #tbl.TotalAmount,
		DeclarationNo=#tbl.DeclarationNo,
		ContainerNo=#tbl.ContainerNo,
		Notes=#tbl.Notes
 FROM #tbl INNER JOIN Invoices ON Invoices.[InvoiceID] = #tbl.InvoiceID

 INSERT INTO Invoices([ClientID],[AddDate],[Deleted],Profit,TotalAmount,ContainerNo,DeclarationNo, Notes)
	 SELECT temp.[ClientID],temp.[AddDate],temp.[Deleted],temp.Profit,temp.TotalAmount,temp.ContainerNo,temp.DeclarationNo, temp.Notes
	 FROM  #tbl temp LEFT OUTER JOIN DBO.Invoices AS c ON c.[InvoiceID] = temp.InvoiceID
	 WHERE (c.[InvoiceID] IS NULL)

------------------------------------------------------------------Details
 DECLARE @MasterID int
 IF @@IDENTITY > 0
	SET @MasterID = @@IDENTITY;
 ELSE
	SET @MasterID = (SELECT TOP 1 InvoiceID FROM [#tbl]);
------------------------------------------------------------------

SELECT 
	InvoiceDetailsID=XTbl.XCol.value('@InvoiceDetailsID[1]','int') ,
	InvoiceID=@MasterID,
	ExpenseID=XTbl.XCol.value('@ExpenseID[1]','int'),
	Amount=XTbl.XCol.value('@Amount[1]','money'),
	Cost=XTbl.XCol.value('@Cost[1]','money')
 INTO #tbl2 FROM  @doc.nodes('//Details') AS XTbl(XCol) 


 DELETE FROM InvoiceDetails FROM #tbl2 RIGHT OUTER JOIN InvoiceDetails ON InvoiceDetails.[InvoiceDetailsID] = #tbl2.InvoiceDetailsID
	WHERE (#tbl2.[InvoiceDetailsID] IS NULL) AND InvoiceDetails.InvoiceID=@MasterID

 Update InvoiceDetails
	Set [InvoiceID] = #tbl2.InvoiceID,
		[ExpenseID] = #tbl2.ExpenseID,
		[Amount] = #tbl2.Amount,Cost=#tbl2.Cost
	FROM #tbl2 INNER JOIN InvoiceDetails ON InvoiceDetails.[InvoiceDetailsID] = #tbl2.InvoiceDetailsID
 
 INSERT INTO InvoiceDetails([InvoiceID],[ExpenseID],[Amount],Cost)
	 SELECT temp.[InvoiceID],temp.[ExpenseID],temp.[Amount],temp.Cost
	 FROM  #tbl2 temp LEFT OUTER JOIN DBO.InvoiceDetails AS D ON D.[InvoiceDetailsID] = temp.InvoiceDetailsID
	 WHERE (D.[InvoiceDetailsID] IS NULL)


 ------------------------------------------------------------------Update client balance
 DECLARE @Client_ID int;
 SET @Client_ID = (SELECT TOP 1 ClientID From #tbl);

 UPDATE Clients Set Clients.Credit = (SELECT SUM(TotalAmount) FROM View_Invoices Where View_Invoices.ClientID=@Client_ID)
 Where Clients.ClientID = @Client_ID;
------------------------------------------------------------------

Drop table #tbl;
Drop table #tbl2;

COMMIT TRAN

IF @@ERROR <> 0 
	RETURN 0
ELSE	-- Return 1 to the calling program to indicate success. 	
	RETURN @MasterID;

END






GO
/****** Object:  StoredProcedure [dbo].[Invoices_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Invoices_SelectList] AS' 
END
GO




-- ==========================================================================================
-- Entity Name:	Invoices_SelectList
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Invoices_SelectList]
	@DisplayStart int,
	@DisplayLength int,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'desc',
	@ID int = NULL-- ClientID
As
Begin
	SELECT * FROM (SELECT  InvoiceID, AddDate, ClientName, TotalAmount,ContainerNo,DeclarationNo
		,(row_number() over(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN [InvoiceID] END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN [InvoiceID] END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN [ClientName] END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN [ClientName] END desc,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'asc' THEN [AddDate] END ASC,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'desc' THEN [AddDate] END desc)) AS RowNo 
		FROM View_Invoices 
		Where (@ID IS NULL OR ClientID = @ID) AND (@SearchParam IS NULL
			 OR [ClientName] LIKE '%'+ @SearchParam + '%'
			 OR ContainerNo LIKE '%'+ @SearchParam + '%'
			 OR DeclarationNo LIKE '%'+ @SearchParam + '%')
		) Invoices 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 Select Count(*) AS TableCount, 
			SUM(TotalAmount) AS TotalInvoices, -- total
			(SELECT SUM(PaymentAmount) FROM View_ClientPayments Where ClientId = @ID) AS TotalPayments -- payments
		FROM View_Invoices 
		Where (@ID IS NULL OR ClientID = @ID) AND (@SearchParam IS NULL 
		 OR [ClientName] LIKE '%'+ @SearchParam + '%'
		 OR ContainerNo LIKE '%'+ @SearchParam + '%'
		 OR DeclarationNo LIKE '%'+ @SearchParam + '%')

End



GO
/****** Object:  StoredProcedure [dbo].[Invoices_SelectRow]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices_SelectRow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Invoices_SelectRow] AS' 
END
GO




-- ==========================================================================================
-- Entity Name:	Invoices_SelectrOW
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Invoices table
-- ==========================================================================================
ALTER Procedure [dbo].[Invoices_SelectRow]
	@Id int = NULL,
	@key nvarchar(50) = NULL,
	@no  nvarchar(50) = NULL
As
Begin

	IF @Id IS NOT NULL
	BEGIN
		-- Master
		SELECT TOP (1) InvoiceID, AddDate, ClientName, TotalAmount,ContainerNo,DeclarationNo, Notes FROM View_Invoices Where InvoiceID=@Id;	
		-- Details
		SELECT InvoiceDetails.InvoiceDetailsID, InvoiceDetails.Amount, Expenses.ExpenseName
			FROM InvoiceDetails INNER JOIN Expenses ON InvoiceDetails.ExpenseID = Expenses.ExpenseID
			WHERE (InvoiceDetails.InvoiceID = @Id)
	END
	ELSE
	BEGIN
		DECLARE @sql nvarchar(MAX);
		SELECT @sql = 'SELECT TOP (1) InvoiceID, AddDate, ClientName, TotalAmount,ContainerNo,DeclarationNo,Notes FROM View_Invoices WHERE ('+ @key +'=N'''+ @no +''');'+
					  'SELECT InvoiceDetails.InvoiceDetailsID, InvoiceDetails.Amount, Expenses.ExpenseName 
						   FROM InvoiceDetails INNER JOIN Expenses ON InvoiceDetails.ExpenseID = Expenses.ExpenseID INNER JOIN
                           Invoices ON InvoiceDetails.InvoiceID = Invoices.InvoiceID
						   WHERE (Invoices.'+ @key +'=N'''+ @no +''');'
		EXEC sp_executesql @sql;
	END
End


GO
/****** Object:  StoredProcedure [dbo].[Outgoings_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Outgoings_Delete] AS' 
END
GO








-- =============================================
-- Author:		<Mohamed Salah>
-- ALTER date: <1-2-2017>
-- Description:	<Delete payment and update client balance>
-- =============================================
ALTER PROCEDURE [dbo].[Outgoings_Delete]
	@OutgoingID int
AS
BEGIN

DECLARE @Count int;
BEGIN TRAN DeletePayment
	UPDATE Outgoings SET Deleted=1 Where OutgoingID=@OutgoingID;
	SET @Count = @@ROWCOUNT;
COMMIT Tran
	RETURN @Count;
END







GO
/****** Object:  StoredProcedure [dbo].[Outgoings_One]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_One]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Outgoings_One] AS' 
END
GO







-- =============================================
-- Author:		<Author,,Name>
-- ALTER date:  <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Outgoings_One]
	@ID bigint -- @OutgoingID 
AS
BEGIN
	SELECT TOP (1) ExpenseTypeName, OutgoingID, AddDate, ExpenseTypeID, Amount, RefID, Notes
		FROM View_Outgoings
		WHERE (OutgoingID = @ID);
END


GO
/****** Object:  StoredProcedure [dbo].[Outgoings_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Outgoings_Save] AS' 
END
GO







-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Outgoings_Save]
	@OutgoingID bigint,
	@AddDate datetime = getdate,
	@ExpenseTypeID int,
	@Amount money,
	@RefID nvarchar(50) = NULL,
	@Notes nvarchar(3000) = NULL
AS
BEGIN
--BEGIN TRAN SavePayment	
	IF EXISTS(SELECT NULL FROM Outgoings Where OutgoingID = @OutgoingID)
	BEGIN
		UPDATE [Outgoings]
	   SET AddDate = @AddDate,
			ExpenseTypeID = @ExpenseTypeID,
			Amount = @Amount,
			RefID = @RefID,
			Notes = @Notes
		WHERE OutgoingID=@OutgoingID;
		RETURN @OutgoingID;
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[Outgoings] (AddDate,ExpenseTypeID,Amount,RefID,Notes)
			VALUES (@AddDate,@ExpenseTypeID,@Amount,@RefID,@Notes);
		RETURN @@IDENTITY;
	END
--Commit Tran
END










GO
/****** Object:  StoredProcedure [dbo].[Outgoings_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Outgoings_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Outgoings_SelectList] AS' 
END
GO







-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Outgoings_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(3) = '0',
	@SortDirection nvarchar(4) = 'asc'
AS
BEGIN
	SET NOCOUNT ON
	-- list
	SELECT OutgoingID,AddDate,ExpenseTypeName,Amount,RefID,Notes
		FROM (SELECT OutgoingID,AddDate,ExpenseTypeName,Amount,RefID,Notes
		,(row_number() over(ORDER BY  
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN [OutgoingID] END ASC,
			 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN [OutgoingID] END desc,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN ExpenseTypeName END ASC,
			 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN ExpenseTypeName END desc,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'asc' THEN [AddDate] END ASC,
			 CASE WHEN @SortColumn = '2' AND @SortDirection = 'desc' THEN [AddDate] END desc)) AS RowNo 
		FROM View_Outgoings 
		Where (@SearchParam IS NULL OR ExpenseTypeName LIKE '%'+ @SearchParam + '%')
		) outgo 
	Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 
	 -- counts
	 SELECT Count(*) AS TableCount, SUM(Amount) AS TotalPayments FROM View_Outgoings 
		Where (@SearchParam IS NULL OR ExpenseTypeName LIKE '%'+ @SearchParam + '%')
END





GO
/****** Object:  StoredProcedure [dbo].[Transportation_Delete]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_Delete] AS' 
END
GO



-- ==========================================================================================
-- Entity Name:	Transportation_Delete
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for deleting a specific row from Transportation table
-- ==========================================================================================
ALTER Procedure [dbo].[Transportation_Delete]
	@ID int -- 
As
Begin	

DECLARE @Count int;

BEGIN TRAN DeleteInvoice
	Update Transportation SET Deleted = 1 Where [TransportID] = @ID;
	SET @Count = @@ROWCOUNT;
COMMIT TRAN

	RETURN @Count;
End







GO
/****** Object:  StoredProcedure [dbo].[Transportation_Properties]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Properties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_Properties] AS' 
END
GO






-- ==========================================================================================
-- Entity Name:	Transportation_Properties
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for deleting a specific row from Transportation table
-- ==========================================================================================
ALTER Procedure [dbo].[Transportation_Properties]
	
As
Begin
	SELECT ClientID, ClientName FROM Clients
	SELECT UserID, UserFullName FROM Users;
End








GO
/****** Object:  StoredProcedure [dbo].[Transportation_Row]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Row]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_Row] AS' 
END
GO






-- ==========================================================================================
-- Entity Name:	Transportation_SelectrOW
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Transportation table
-- ==========================================================================================
ALTER Procedure [dbo].[Transportation_Row]
	@Id int
As
Begin
	SELECT ClientName, UserFullName, TransportID, TransportDate, ConsigneeID, TransporterID, ContainerNo, TransportCharge, CarageCharge, TotalAmount, Deleted
	FROM View_Transportation
	WHERE (TransportID = @Id)	
End








GO
/****** Object:  StoredProcedure [dbo].[Transportation_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_Save] AS' 
END
GO

-- =============================================
-- Author:		<M. Salah>
-- ALTER date:  <18-3-2017>
-- Description:	<Save transportation table>
-- =============================================
ALTER PROCEDURE [dbo].[Transportation_Save]
	@TransportID int,
	@TransportDate date
    ,@ConsigneeID int
    ,@TransporterID int
    ,@ContainerNo nvarchar(50)
    ,@TransportCharge money =0
    ,@CarageCharge money=0
AS
BEGIN
--BEGIN TRAN SavePayment	
	IF EXISTS(SELECT NULL FROM Transportation Where TransportID=@TransportID)
	BEGIN
		UPDATE Transportation 
			SET TransportDate = @TransportDate, ConsigneeID = @ConsigneeID, TransporterID = @TransporterID, ContainerNo = @ContainerNo, 
                         TransportCharge = @TransportCharge, CarageCharge = @CarageCharge, TotalAmount = (@CarageCharge + TotalAmount), Deleted = 0
			WHERE (TransportID = @TransportID);		 
		RETURN @TransportID;
	END
	ELSE
	BEGIN
		Set IDENTITY_INSERT Transportation On;
		INSERT INTO Transportation (TransportID, TransportDate, ConsigneeID, TransporterID, ContainerNo, TransportCharge, CarageCharge, TotalAmount, Deleted)
			VALUES ((SELECT MAX(TransportID)+1 FROM Transportation), @TransportDate,@ConsigneeID,@TransporterID,@ContainerNo,@TransportCharge,@CarageCharge,(@TransportCharge + @CarageCharge), 0);
		Set IDENTITY_INSERT Transportation Off;
		RETURN @@IDENTITY;
	END
--Commit Tran
END



GO
/****** Object:  StoredProcedure [dbo].[Transportation_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transportation_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Transportation_SelectList] AS' 
END
GO

-- ==========================================================================================
-- Entity Name:	Transportation_SelectList
-- ALTER date:	24/05/2016 08:19:03 PM
-- Description:	This stored procedure is intended for selecting a specific row from Transportation table
-- ==========================================================================================
ALTER Procedure [dbo].[Transportation_SelectList]
	@DisplayStart int,
	@DisplayLength int,
	@SearchParam nvarchar(50) = NULL,
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'desc',
	@Client int = NULL,
	@User int = NULL,
	@From date = NULL,
	@To date = NULL
As
Begin
	SELECT * FROM (SELECT [TransportID], TransportDate, ClientName, TotalAmount, ContainerNo, UserFullName, CarageCharge, TransportCharge, TransporterID, ConsigneeID
	,(row_number() over(ORDER BY  
		 CASE WHEN @SortColumn = '0' AND @SortDirection = 'asc' THEN [TransportID] END ASC,
		 CASE WHEN @SortColumn = '0' AND @SortDirection = 'desc' THEN [TransportID] END desc,
		 CASE WHEN @SortColumn = '1' AND @SortDirection = 'asc' THEN [ClientName] END ASC,
		 CASE WHEN @SortColumn = '1' AND @SortDirection = 'desc' THEN [ClientName] END desc,
		 CASE WHEN @SortColumn = '2' AND @SortDirection = 'asc' THEN [TransportDate] END ASC,
		 CASE WHEN @SortColumn = '2' AND @SortDirection = 'desc' THEN [TransportDate] END desc)) AS RowNo 
	FROM View_Transportation Where (@SearchParam IS NULL  
		 OR [ClientName] LIKE '%'+ @SearchParam + '%'
		 OR ContainerNo LIKE '%'+ @SearchParam + '%'
		 OR UserFullName LIKE '%'+ @SearchParam + '%') 
		 AND (@Client IS NULL OR ConsigneeID = @Client)
		 AND (@User IS NULL OR TransporterID = @User)
		 AND (@From IS NULL OR TransportDate >= @From)
		 AND (@To IS NULL OR TransportDate <= @To)
	) Transportation Where RowNo > @DisplayStart AND RowNo <= (@DisplayStart + @DisplayLength)
	 -- counts
	 Select Count(*) AS TableCount FROM View_Transportation Where (@SearchParam IS NULL  
		 OR [ClientName] LIKE '%'+ @SearchParam + '%'
		 OR ContainerNo LIKE '%'+ @SearchParam + '%'
		 OR UserFullName LIKE '%'+ @SearchParam + '%') 
		 AND (@Client IS NULL OR ConsigneeID = @Client)
		 AND (@User IS NULL OR TransporterID = @User)
		 AND (@From IS NULL OR TransportDate >= @From)
		 AND (@To IS NULL OR TransportDate <= @To)

End








GO
/****** Object:  StoredProcedure [dbo].[Users_DeleteRow]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_DeleteRow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_DeleteRow] AS' 
END
GO



-- ==========================================================================================
-- Entity Name:	Users_DeleteRow
-- Author:	Mohamed Salah
-- ALTER date:	7/1/2013 11:55:23 AM
-- Description:	This stored procedure is intended for deleting a specific row from Users table
-- ==========================================================================================
ALTER Procedure [dbo].[Users_DeleteRow]
	@UserID int
As
Begin	
	UPDATE Users SET [IsDeleted] = 1 WHERE [UserID] = @UserID;
	RETURN @@ROWCOUNT;
End





GO
/****** Object:  StoredProcedure [dbo].[Users_Login]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Login]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_Login] AS' 
END
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Check user id exist in tbl_admin_n table>
-- =============================================
ALTER PROCEDURE [dbo].[Users_Login] 
	-- Add the parameters for the stored procedure here
	@Username nvarchar(50),
	@Password nvarchar(50)
AS
BEGIN
    -- Insert statements for procedure here
	SELECT UserID, UserFullName FROM Users WHERE (Username = @Username) AND ([Password] = @Password);
END




GO
/****** Object:  StoredProcedure [dbo].[Users_Save]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Save]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_Save] AS' 
END
GO




-- ==========================================================================================
-- Entity Name:	Users_Update
-- Author:	Mohamed Salah
-- ALTER date:	6/12/2013 12:06:02 AM
-- Description:	This stored procedure is intended for updating Users table
-- ==========================================================================================
ALTER Procedure [dbo].[Users_Save]
	@UserID int,
	@UserFullName nvarchar(150),
	@Phone nvarchar(150),
	@Email nvarchar(150),
	@Username nvarchar(150),
	@Password nvarchar(150),
	--@IsActive bit=1,	
	--@JobID int,
	@Mobile nvarchar(50),
	--@JoinDate date=GETDATE(),
	@Nationality nvarchar(50)
As
Begin
	DECLARE @Items int;
	IF(@UserID > 0 OR EXISTS(SELECT NULL FROM Users WHERE Username=@Username AND [UserFullName] = @UserFullName))  
	BEGIN
		SET NOCOUNT OFF;SET NOCOUNT ON;			
		Update Users
		Set UserFullName = @UserFullName, Phone = @Phone, Email = @Email, Username = @Username, Password = @Password, IsActive = 1, 
                         IsDeleted = 0, Mobile = @Mobile, Nationality = @Nationality
		Where [UserID] = @UserID OR (Username=@Username AND [UserFullName] = @UserFullName);
		SET @Items = @UserID;
	END		
	ELSE
	BEGIN
		Insert Into Users([UserFullName],[Phone],[Email],[Username],[Password],[IsActive],[IsDeleted],[Mobile],Nationality)
		Values(@UserFullName,@Phone,@Email,@Username,@Password,1,0,@Mobile,@Nationality);
		SET @Items = @@IDENTITY;
	END
	Return @Items;
End






GO
/****** Object:  StoredProcedure [dbo].[Users_SelectList]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_SelectList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_SelectList] AS' 
END
GO




-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Users_SelectList]
	@DisplayStart int = 0,
	@DisplayLength int = 50,
	@SearchParam nvarchar(50) = '',
	@SortColumn nvarchar(5) = '0',
	@SortDirection nvarchar(5) = 'asc'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON

    -- Insert statements for procedure here
	   SELECT * from Users;
	   select COUNT(*) from Users;
END







GO
/****** Object:  StoredProcedure [dbo].[Users_SelectRow]    Script Date: 1/6/2018 4:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_SelectRow]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_SelectRow] AS' 
END
GO




-- ==========================================================================================
-- Entity Name:	Users_SelectRow
-- Author:	Mohamed Salah
-- ALTER date:	7/1/2013 11:55:23 AM
-- Description:	This stored procedure is intended for selecting a specific row from Users table
-- ==========================================================================================
ALTER Procedure [dbo].[Users_SelectRow]
	@UserID int
As
Begin
	SELECT     Users.UserID, Users.UserFullName, Users.Phone, Users.Email, Users.Username, Users.[Password], Users.IsActive, Users.JobID, Users.IsDeleted, Users.Mobile,
                      Users.JoinDate, Users.Nationality, Users.EmpID, Jobs.JobName,Users.AdvancesBalance
	FROM         Users INNER JOIN Jobs ON Users.JobID = Jobs.JobID
	WHERE     (Users.UserID = @UserID)
End






GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transportation', N'COLUMN',N'ConsigneeID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Refere to client name in clients table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transportation', @level2type=N'COLUMN',@level2name=N'ConsigneeID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Transportation', N'COLUMN',N'TransporterID'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Employee name or osaka comp.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Transportation', @level2type=N'COLUMN',@level2name=N'TransporterID'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ClientPayments"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 191
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Clients"
            Begin Extent = 
               Top = 8
               Left = 340
               Bottom = 137
               Right = 510
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Banks"
            Begin Extent = 
               Top = 148
               Left = 339
               Bottom = 244
               Right = 509
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_ClientPayments', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_Invoices', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[36] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Clients"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 163
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Invoices"
            Begin Extent = 
               Top = 24
               Left = 328
               Bottom = 199
               Right = 559
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "InvoiceDetails"
            Begin Extent = 
               Top = 34
               Left = 638
               Bottom = 190
               Right = 811
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2085
         Alias = 1755
         Table = 1320
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Invoices'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_Invoices', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Invoices'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_Outgoings', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 155
               Right = 269
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Outgoings"
            Begin Extent = 
               Top = 8
               Left = 343
               Bottom = 275
               Right = 539
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Outgoings'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_Outgoings', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Outgoings'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_Transportation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[26] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Transportation"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 252
               Right = 216
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Users"
            Begin Extent = 
               Top = 147
               Left = 458
               Bottom = 277
               Right = 628
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Clients"
            Begin Extent = 
               Top = 6
               Left = 462
               Bottom = 136
               Right = 632
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3615
         Alias = 1455
         Table = 1755
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Transportation'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_Transportation', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Transportation'
GO
