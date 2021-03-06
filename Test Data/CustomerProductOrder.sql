USE [Syngenta_Temp]
GO
/****** Object:  Table [dbo].[_Customers]    Script Date: 09-10-2017 5:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Customers](
	[CustID] [float] NULL,
	[Name] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[ContactNo] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Order]    Script Date: 09-10-2017 5:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Order](
	[OrderID] [float] NULL,
	[ProductID] [float] NULL,
	[Quantity] [float] NULL,
	[Price] [float] NULL,
	[CustomerID] [float] NULL,
	[ContactNo] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Products]    Script Date: 09-10-2017 5:15:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Products](
	[ProductID] [float] NULL,
	[Name] [nvarchar](255) NULL,
	[UnitPrice] [float] NULL,
	[CatID] [float] NULL,
	[EntryDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[_Customers] ([CustID], [Name], [Address], [ContactNo]) VALUES (1, N'Sam', N'New Delhi', 9555555555)
GO
INSERT [dbo].[_Customers] ([CustID], [Name], [Address], [ContactNo]) VALUES (2, N'Rahul', N'Gurgaon', 9666666666)
GO
INSERT [dbo].[_Customers] ([CustID], [Name], [Address], [ContactNo]) VALUES (3, N'Hans', N'Noida', 9444444444)
GO
INSERT [dbo].[_Customers] ([CustID], [Name], [Address], [ContactNo]) VALUES (4, N'Jeetu', N'Delhi', 9333333333)
GO
INSERT [dbo].[_Customers] ([CustID], [Name], [Address], [ContactNo]) VALUES (5, N'Ankit', N'Noida', 9222222222)
GO
INSERT [dbo].[_Order] ([OrderID], [ProductID], [Quantity], [Price], [CustomerID], [ContactNo]) VALUES (1, 1, 6, 150000, 1, 9555555555)
GO
INSERT [dbo].[_Order] ([OrderID], [ProductID], [Quantity], [Price], [CustomerID], [ContactNo]) VALUES (2, 2, 4, 80000, 2, NULL)
GO
INSERT [dbo].[_Order] ([OrderID], [ProductID], [Quantity], [Price], [CustomerID], [ContactNo]) VALUES (3, 3, 2, 40000, 3, 9444444444)
GO
INSERT [dbo].[_Order] ([OrderID], [ProductID], [Quantity], [Price], [CustomerID], [ContactNo]) VALUES (4, 4, 5, 200000, 4, 9333333333)
GO
INSERT [dbo].[_Order] ([OrderID], [ProductID], [Quantity], [Price], [CustomerID], [ContactNo]) VALUES (5, 5, 1, 35000, 5, 9666666666)
GO
INSERT [dbo].[_Products] ([ProductID], [Name], [UnitPrice], [CatID], [EntryDate], [ExpiryDate]) VALUES (1, N'Dell Computer', 25000, 1, CAST(N'2012-10-16 00:00:00.000' AS DateTime), CAST(N'2012-10-16 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[_Products] ([ProductID], [Name], [UnitPrice], [CatID], [EntryDate], [ExpiryDate]) VALUES (2, N'HCL Computer', 20000, 1, CAST(N'2012-10-17 00:00:00.000' AS DateTime), CAST(N'2012-10-17 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[_Products] ([ProductID], [Name], [UnitPrice], [CatID], [EntryDate], [ExpiryDate]) VALUES (3, N'Apple Mobile', 40000, 3, CAST(N'2012-10-18 00:00:00.000' AS DateTime), CAST(N'2012-10-18 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[_Products] ([ProductID], [Name], [UnitPrice], [CatID], [EntryDate], [ExpiryDate]) VALUES (4, N'Samsuna Mobile', 25000, 3, CAST(N'2012-10-19 00:00:00.000' AS DateTime), CAST(N'2012-10-19 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[_Products] ([ProductID], [Name], [UnitPrice], [CatID], [EntryDate], [ExpiryDate]) VALUES (5, N'Sony Laptop', 35000, 2, CAST(N'2012-10-22 00:00:00.000' AS DateTime), CAST(N'2012-10-22 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[_Products] ([ProductID], [Name], [UnitPrice], [CatID], [EntryDate], [ExpiryDate]) VALUES (6, N'Dell Laptop', 36000, 2, CAST(N'2012-10-23 00:00:00.000' AS DateTime), CAST(N'2012-10-23 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[_Products] ([ProductID], [Name], [UnitPrice], [CatID], [EntryDate], [ExpiryDate]) VALUES (7, N'HP Printer', 12000, 4, CAST(N'2012-10-24 00:00:00.000' AS DateTime), CAST(N'2012-10-24 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[_Products] ([ProductID], [Name], [UnitPrice], [CatID], [EntryDate], [ExpiryDate]) VALUES (8, N'Canon Printer', 10000, 4, CAST(N'2012-10-25 00:00:00.000' AS DateTime), CAST(N'2012-10-25 00:00:00.000' AS DateTime))
GO
