USE [ConnectoDb]
GO
/****** Object:  Table [Connecto].[ReportSetting]    Script Date: 5/18/2015 11:57:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Connecto].[ReportSetting](
	[ReportGuid] [uniqueidentifier] NOT NULL,
	[ReportName] [nvarchar](max) NULL,
	[ReportTitle] [nvarchar](max) NULL,
	[CommandText] [nvarchar](max) NULL,
	[ReportPath] [nvarchar](max) NULL,
	[Parameters] [nvarchar](max) NULL,
 CONSTRAINT [PK_Connecto.ReportSetting] PRIMARY KEY CLUSTERED 
(
	[ReportGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'8d64a1f1-7482-4376-b64d-2c8db0683c95', N'Sales Details', N'Sales Details', N'[Product].[GetSalesDetailsByOrderId]', N'Transaction/SalesDetailsByOrderId.rdlc', N'Id')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'a88a2fcb-d4e3-491a-b220-74e6ae5cec9f', N'Purchasing Details', N'Purchasing Details', N'[Product].[GetProductDetail]', N'Transaction/ProductDetails.rdlc', N'Id')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'8d64a1f1-7482-4376-b64d-2c8db0683c80', N'Supplier Details', N'Supplier Details', N'[Product].[GetSupplierDatails]', N'Transaction/SupplierDetails.rdlc', N'Id')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'8d64a1f1-7482-4376-b64d-2c8db0683c90', N'Employee Details', N'Employee Details', N'[HumanResource].[GetEmployeeDatails]', N'Transaction/EmployeeDetails.rdlc', N'Id')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'9d64a1f1-7482-4376-b64d-2c8db0683c91', N'Measure Details', N'Measure Details', N'[Product].[GetMeasureDatails]', N'Transaction/MeasureDetails.rdlc', N'null')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'3d64a1f1-7482-4376-b64d-2c8db0683c92', N'Product Types', N'Product Types', N'[Product].[GetProductTypeDatails]', N'Transaction/ProductTypeDetails.rdlc', N'null')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'6d64a1f1-7482-4376-b64d-2c8db0683c95', N'Lower Quantity Details', N'Lower Quantity Details', N'[Product].[GetLowerQuantityDatails]', N'Transaction/LowerQuantityDetails.rdlc', N'null')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'6d64a1f1-7482-4376-b64d-2c8db0683c98', N'Stock Details', N'Stock Details', N'[Product].[GetStockDatails]', N'Transaction/StockDetails.rdlc', N'null')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'd88a2fcb-d4e3-492a-b220-74e6ae5cec9b', N'Product Supplier Details', N'Product Supplier Details', N'[Product].[GetProductSupplierDatails]', N'Transaction/ProductSupplierDetails.rdlc', N'null')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'd88a2fcb-d4e3-492b-b220-74e6ae5cec9b', N'All Employee Details', N'All Employee Details', N'[HumanResource].[GetAllEmployeeDatails]', N'Transaction/AllEmployeeDetails.rdlc', N'null')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'd88a2fcb-d4e3-402a-b229-74e6ae5cec9b', N'All Customer Detail', N'All Customer Detail', N'[Product].[GetAllCustomerDatails]', N'Transaction/AllCustomerDetails.rdlc', N'null')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'a88a2fcb-d4e3-491a-b220-74e6ae5cec9e', N'Margin Details', N'Margin Details', N'[Product].[GetProductDatails]', N'Transaction/ProductData.rdlc', N'null')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'a88a2fcb-d4e3-492a-b220-74e6ae5cec9f', N'Vendor Details', N'Vendor Details', N'[Product].[GetVendorDatails]', N'Transaction/VendorDetails.rdlc', N'null')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'a88a2fcb-d4e3-491a-b220-74e6ae6cec9f', N'Customer Details', N'Customer Details', N'[Product].[GetCustomerDatails]', N'Transaction/CustomerDetails.rdlc', N'Id')
INSERT [Connecto].[ReportSetting] ([ReportGuid], [ReportName], [ReportTitle], [CommandText], [ReportPath], [Parameters]) VALUES (N'd88a2fcb-d4e3-492b-b230-75e6ae5cec9b', N'All Supplier Details', N'All Supplier Details', N'[Product].[GetAllSupplierDatails]', N'Transaction/AllSupplierDetails.rdlc', N'null')
UPDATE Connecto.ReportSetting SET Parameters = 'DateRange' WHERE (ReportGuid = 'a88a2fcb-d4e3-491a-b220-74e6ae5cec9f')
UPDATE Connecto.ReportSetting SET Parameters = 'Date' WHERE (ReportGuid = '8d64a1f1-7482-4376-b64d-2c8db0683c95')