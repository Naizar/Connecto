USE [ConnectoDb]
GO
/****** Object:  StoredProcedure [Product].[GetDiscountDetailForMonth]    Script Date: 30/05/2015 12:44:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [Product].[GetProductDetail] '78'
-- ================================================
-- Author:		@-Mohamed Naizar
-- Create date: 2015-05-29
-- Description:	Get details of Discount for month by Date of sold
-- ================================================

ALTER PROCEDURE [Product].[GetDiscountDetailForMonth]
	(
		@DateFrom datetime,
		@DateTo datetime
	)
AS
SELECT        ProductCode, DateSold, Discount, DiscountBy, DiscountAs
FROM            Product.SalesDetail

WHERE Cast(Product.SalesDetail.DateSold As Date) 
Between Cast(@DateFrom As Date) And  Cast(@DateTo As Date)

ORDER BY Product.SalesDetail.DateSold
/****** Object:  StoredProcedure [Product].[GetDiscountDetailsForTheDay]    Script Date: 30/05/2015 12:45:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [Product].[GetSalesDetailsByOrderId] '78'
-- ================================================
-- Author:		@-Mohamed Naizar
-- Create date: 2015-05-29
-- Description:	Get details of Discount by the date
-- ================================================

ALTER PROCEDURE [Product].[GetDiscountDetailsForTheDay]
	(
		@Date datetime
	)
AS
SELECT        Product.Product.Name, Product.ProductDetail.ProductCode, Product.SalesDetail.Quantity, Product.ProductType.StockAs, Product.SalesDetail.QuantityActual, 
                         Product.Measure.Actual, Product.SalesDetail.QuantityLower, Product.Measure.Lower, Product.SalesDetail.Price, Product.SalesDetail.DiscountBy, 
                         Product.SalesDetail.DiscountAs, Product.SalesDetail.Discount, Product.SalesDetail.NetPrice, Product.SalesDetail.DateSold
FROM            Product.SalesDetail INNER JOIN
                         Product.ProductDetail ON Product.SalesDetail.ProductDetailId = Product.ProductDetail.ProductDetailId INNER JOIN
                         Product.Product ON Product.ProductDetail.ProductId = Product.Product.ProductId INNER JOIN
                         Product.ProductType ON Product.Product.ProductTypeId = Product.ProductType.ProductTypeId INNER JOIN
                         Product.Measure ON Product.ProductType.MeasureId = Product.Measure.MeasureId
Where Cast(Product.SalesDetail.DateSold As Date) = Cast(@Date As Date)
/****** Object:  StoredProcedure [Product].[GetSalesDetailForMonth]    Script Date: 30/05/2015 12:47:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [Product].[GetProductDetail] '78'
-- ================================================
-- Author:		@-Mohamed Naizar
-- Create date: 2015-05-28
-- Description:	Get details of Sales for month by Date of sold
-- ================================================

ALTER PROCEDURE [Product].[GetSalesDetailForMonth]
	(
		@DateFrom datetime,
		@DateTo datetime
	)
AS
SELECT        Product.Product.Name, Product.ProductDetail.ProductCode, Product.SalesDetail.Quantity,Product.ProductType.Type, Product.ProductType.StockAs, Product.SalesDetail.QuantityActual, 
                         Product.Measure.Actual, Product.SalesDetail.QuantityLower, Product.Measure.Lower, Product.SalesDetail.Price, Product.SalesDetail.DiscountBy, 
                         Product.SalesDetail.DiscountAs, Product.SalesDetail.Discount, Product.SalesDetail.NetPrice, Product.SalesDetail.DateSold,Product.SalesDetail.SellingPrice
FROM            Product.SalesDetail INNER JOIN
                         Product.ProductDetail ON Product.SalesDetail.ProductDetailId = Product.ProductDetail.ProductDetailId INNER JOIN
                         Product.Product ON Product.ProductDetail.ProductId = Product.Product.ProductId INNER JOIN
                         Product.ProductType ON Product.Product.ProductTypeId = Product.ProductType.ProductTypeId INNER JOIN
                         Product.Measure ON Product.ProductType.MeasureId = Product.Measure.MeasureId

WHERE Cast(Product.SalesDetail.DateSold As Date) 
Between Cast(@DateFrom As Date) And  Cast(@DateTo As Date)

ORDER BY Product.SalesDetail.DateSold
/****** Object:  StoredProcedure [Product].[GetPerchaseOrderDatails]    Script Date: 30/05/2015 12:48:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ================================================
-- Author:		@-Mohamed Naizar
-- Create date: 2015-05-29
-- Description:	Get details of Purchase Order
-- ================================================

ALTER PROCEDURE [Product].[GetPerchaseOrderDatails]

AS
SELECT        Product.Product.ProductId, Product.ProductDetail.ProductCode, Product.Product.Name, Product.ProductType.Type, Product.Product.StockInHand, Product.Product.Reorderlevel
FROM            Product.ProductDetail INNER JOIN
               Product.Product ON Product.ProductDetail.ProductId = Product.Product.ProductId INNER JOIN
                         Product.ProductType ON Product.Product.ProductTypeId = Product.ProductType.ProductTypeId
WHERE        (Product.Product.StockInHand = Product.Product.Reorderlevel) AND (Product.Product.Status = 1) 
ORDER BY     Product.Product.ProductId

GO