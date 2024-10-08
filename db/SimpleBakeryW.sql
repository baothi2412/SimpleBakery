USE [SimpleBakery]
GO
/****** Object:  FullTextCatalog [SP1]    Script Date: 9/11/2024 10:04:51 AM ******/
CREATE FULLTEXT CATALOG [SP1] WITH ACCENT_SENSITIVITY = ON
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 9/11/2024 10:04:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[Password] [nvarchar](255) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9/11/2024 10:04:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [nvarchar](50) NOT NULL,
	[CategoryName] [nvarchar](255) NULL,
	[Decription] [text] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deliveries]    Script Date: 9/11/2024 10:04:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deliveries](
	[DeliveryID] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryName] [nvarchar](255) NULL,
	[Distance] [nvarchar](255) NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Deliveries] PRIMARY KEY CLUSTERED 
(
	[DeliveryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAQs]    Script Date: 9/11/2024 10:04:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQs](
	[FaqID] [int] IDENTITY(1,1) NOT NULL,
	[EmailUser] [nvarchar](100) NOT NULL,
	[Content] [text] NULL,
	[Reply] [text] NULL,
	[Status] [nvarchar](100) NULL,
 CONSTRAINT [PK_FAQs] PRIMARY KEY CLUSTERED 
(
	[FaqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 9/11/2024 10:04:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [nvarchar](255) NULL,
	[ProductID] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/11/2024 10:04:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [nvarchar](255) NOT NULL,
	[OrderDate] [date] NULL,
	[DeliveryDate] [date] NULL,
	[TotalPrice] [decimal](18, 0) NULL,
	[YourName] [nvarchar](255) NULL,
	[Phone] [nvarchar](max) NULL,
	[ShipAddress] [text] NULL,
	[Note] [text] NULL,
	[Status] [nvarchar](255) NULL,
	[UserID] [int] NULL,
	[VoucherID] [int] NOT NULL,
	[PaymentID] [int] NULL,
	[DeliveryID] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 9/11/2024 10:04:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](255) NOT NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/11/2024 10:04:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[Size] [int] NULL,
	[Image] [text] NULL,
	[Quantity] [int] NULL,
	[Decription] [text] NULL,
	[CategoryID] [nvarchar](50) NULL,
	[isDeleted] [bit] NULL,
	[createDate] [datetime] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/11/2024 10:04:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](255) NULL,
	[reset_password_token] [nvarchar](30) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 9/11/2024 10:04:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[VoucherID] [int] IDENTITY(1,1) NOT NULL,
	[VoucherCode] [nvarchar](50) NULL,
	[DiscountAmount] [decimal](18, 0) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[EventName] [text] NULL,
	[ImagesUrl] [text] NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[VoucherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([AdminID], [UserName], [Password]) VALUES (1, N'admin', N'123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'BC1', N'BirthDay Cake', N'Order by contact ', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'BN1', N'BÃÂ¡nh ngÃ¡Â»Ât', N'no 123', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'CC1', N'Cheese Cakes', N'This category includes various types of cheesecake, characterized by a smooth, creamy cheese base, typically set on a graham cracker crust. These cakes can be baked or no-bake, and they often offer a rich, indulgent flavor with a creamy texture.', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'CC2', N'Colored Cakes', N'This category includes cakes with vibrant colors and distinctive flavors. These cakes are often decorated with creamy frosting and can have a mild cocoa or vanilla flavor, making them both visually striking and delicious.', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'CD1', N'Chocolate Desserts', N'This category features rich and indulgent chocolate-based desserts. These treats often include ingredients like cocoa powder, chocolate, and sometimes nuts, providing a deep, satisfying chocolate flavor.', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'CP1', N'Cream Puffs', N'This category features pastries made from choux dough, filled with rich cream, and topped with a glossy glaze. These treats are known for their light, airy texture and are often enjoyed as a delightful, indulgent snack.', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'EC1', N'Event Cake', N'Order by contact ', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'EC2', N'Eggs Cake', N'Eggs Cake', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'FP1', N'French Pastries', N'This category includes sophisticated French pastries known for their delicate, crisp shells and soft, chewy centers. These treats often feature intricate designs and flavors, showcasing the artistry and precision of French baking.', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'FT1', N'Fruit Tarts', N'This category includes tarts with a buttery crust, filled with creamy pastry cream, and topped with fresh, vibrant fruits. These tarts are both visually appealing and delicious, offering a refreshing and fruity dessert option.', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'LC1', N'Light Cakes', N'This category features light and airy cakes with a delicate texture and subtle sweetness. These cakes are ideal for those who enjoy a dessert that is not too heavy but still provides a delightful taste experience.', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'SC1', N'Spiced Cakes', N'This category features cakes infused with warm spices and flavors, such as cinnamon and nutmeg. These cakes often include ingredients like grated carrots or other spices, providing a moist and flavorful dessert experience.', 0)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Decription], [isDeleted]) VALUES (N'YG1', N'Cake Vegetable', N'Spiced carrot cake with walnuts and a rich cream cheese frosting.', 0)
GO
SET IDENTITY_INSERT [dbo].[Deliveries] ON 

INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (1, N'Ship Nhanh', N'20km', CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2, N'Expresss', N'No yes', CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2002, N'viettelpost', N'5km', CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2003, N'vietnampost', N'7km', CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2004, N'giaohangnhanh', N'10km', CAST(22 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2005, N'kerry express', N'8km', CAST(21 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2009, N'NinjaVan', N'8km', CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2010, N'nhattinExpress', N'9km', CAST(21 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2011, N'ahaMove', N'10km', CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2012, N'bestExpress', N'9km', CAST(18 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2013, N'EMS', N'9km', CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2014, N'Grab', N'10km', CAST(22 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (2016, N'Be', N'7km', CAST(19 AS Decimal(18, 0)))
INSERT [dbo].[Deliveries] ([DeliveryID], [DeliveryName], [Distance], [Price]) VALUES (3004, N'GHN', N'9km', CAST(25 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Deliveries] OFF
GO
SET IDENTITY_INSERT [dbo].[FAQs] ON 

INSERT [dbo].[FAQs] ([FaqID], [EmailUser], [Content], [Reply], [Status]) VALUES (1, N'khach1@gmail.com', N'asss', N'c?m on quý khách', N'?ã rep')
INSERT [dbo].[FAQs] ([FaqID], [EmailUser], [Content], [Reply], [Status]) VALUES (2, N'pqdai123@gmail.com', N'Is it possible to add pictures or messages on the cake?', N'Yes, we can add images or messages upon your request.', N'verygood')
INSERT [dbo].[FAQs] ([FaqID], [EmailUser], [Content], [Reply], [Status]) VALUES (2590, N'vnanh123@gmail.com', N'Does cake contain preservatives?', N'Our cakes do not contain preservatives.', NULL)
INSERT [dbo].[FAQs] ([FaqID], [EmailUser], [Content], [Reply], [Status]) VALUES (2593, N'thi@gmail.com', N'my order status', N'In order-tracking', N'seen')
INSERT [dbo].[FAQs] ([FaqID], [EmailUser], [Content], [Reply], [Status]) VALUES (2596, N'funitureUSA@gmail.com', N'contact', N'simple bakery', N'reply')
SET IDENTITY_INSERT [dbo].[FAQs] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (61, N'85ELS', N'CD1CH01', 2, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (72, N'YSYOY', N'FP1DH01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (46, N'IH68G', N'FP1Ma01', 1, CAST(200 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (47, N'IH68G', N'CD1CM01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (52, N'URYAK', N'SC1RV01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (58, N'5ZO6G', N'CC1Ch01', 1, CAST(150 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (73, N'YSYOY', N'CD1CM01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (55, N'1JR5E', N'SC1RV01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (57, N'7LRUR', N'CC2GT01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (74, N'NSPWY', N'CC2GT01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (75, N'W2NCW', N'CP1FC01', 1, CAST(275 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (76, N'W2NCW', N'CC1Ch01', 1, CAST(150 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (77, N'W2NCW', N'CC2GT01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (78, N'W2NCW', N'CC1SH01', 1, CAST(420 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (79, N'7O4SP', N'CP1FC01', 1, CAST(275 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (80, N'4KQRG', N'FP1DH01', 2, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (81, N'E27DD', N'CC2GT01', 2, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (63, N'OU1Q5', N'CD1CH01', 11, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (64, N'K5YCS', N'CD1CH01', 4, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (66, N'N9IB9', N'CC1SH01', 1, CAST(420 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (51, N'X8ZK7', N'FT1FC01', 1, CAST(275 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (62, N'B3O1D', N'CC1CA01', 1, CAST(275 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (60, N'72V63', N'CC2GT01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (67, N'16V17', N'CC1SH01', 1, CAST(420 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (68, N'FA3PK', N'CD1CM01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (69, N'FA3PK', N'CD1CH01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (70, N'NMEYA', N'CD1CM01', 1, CAST(360 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [Quantity], [UnitPrice]) VALUES (71, N'NMEYA', N'SC1RV01', 2, CAST(360 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'16V17', CAST(N'2024-01-06' AS Date), CAST(N'2024-01-07' AS Date), CAST(410 AS Decimal(18, 0)), N'Tran Thi Mai', N'0901 234 567', N'45 Hang Bong, Quan Hoan Kiem, Ha Noi', N'Giao hang nhanh ', N'Confirmed', 11, 3013, 1, 2002, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'1JR5E', CAST(N'2024-01-31' AS Date), CAST(N'2024-02-01' AS Date), CAST(365 AS Decimal(18, 0)), N'Nguyen Van An', N'0912 345 678', N'123 Le Loi, Quan 1, TP. Ho Chi Minh', N'Giao hang nhanh ', N'Preparing', 8, 2008, 1, 2, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'4KQRG', CAST(N'2024-09-07' AS Date), CAST(N'2024-09-08' AS Date), CAST(705 AS Decimal(18, 0)), N'Ha Anh Tuan', N'0348392728', N'Ninh Kieu, Can Tho', N'Giao hang nhanh ', N'Ordered', 11, 3013, 1, 2003, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'4SNWJ', CAST(N'2024-03-05' AS Date), CAST(N'2024-03-06' AS Date), CAST(150 AS Decimal(18, 0)), N'Le Hoang Nam', N'0987 654 321', N'89 Vo Thi Sau, Quan 3, TP. Ho Chi Minh', N'Giao hang nhanh ', N'Ordered', 11, 2008, 1, 2011, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'5ZO6G', CAST(N'2024-04-03' AS Date), CAST(N'2024-04-04' AS Date), CAST(160 AS Decimal(18, 0)), N'Do Thi Lan', N'0923 456 789', N'33 Nguyen Thi Minh Khai, Quan 1, TP. Ho Chi Minh', N'Giao hang nhanh ', N'Ordered', 12, 2008, 1, 1, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'72V63', CAST(N'2024-05-03' AS Date), CAST(N'2024-05-04' AS Date), CAST(370 AS Decimal(18, 0)), N'Vu Van Hung', N'0945 678 910', N'101 Tran Duy Hung, Quan Cau Giay, Ha Noi', N'Giao hang nhanh ', N'Preparing', 13, 2008, 1, 1, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'7LRUR', CAST(N'2024-05-31' AS Date), CAST(N'2024-06-01' AS Date), CAST(365 AS Decimal(18, 0)), N'Le Ha Anh', N'0968 123 456', N'202 Pham Ngu Lao, Quan 1, TP. Ho Chi Minh', N'Giao hang nhanh ', N'Ordered', 8, 2008, 1, 2, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'7O4SP', CAST(N'2024-06-07' AS Date), CAST(N'2024-06-08' AS Date), CAST(260 AS Decimal(18, 0)), N'Nguyá»n Ngá»c Báº£o Thi', N'03849383822', N'Ninh Kieu , Can Tho', N'Giao hang nhanh ', N'Shipped', 11, 3013, 1, 2003, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'85ELS', CAST(N'2024-07-05' AS Date), CAST(N'2024-07-06' AS Date), CAST(718 AS Decimal(18, 0)), N'Ngo Quang Huy', N'08393898494', N'456 Kim Ma, Quan Ba Dinh, Ha Noi', N'Giao hang nhanh ', N'Ordered', 14, 2008, 1, 2012, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'B3O1D', CAST(N'2024-08-05' AS Date), CAST(N'2024-08-06' AS Date), CAST(277 AS Decimal(18, 0)), N'Ly Van Son', N'0977 888 999', N'98 Tran Phu, Quan 5, TP. Ho Chi Minh', N'Giao hang nhanh ', N'Ordered', 15, 2008, 1, 2014, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'DN7P2', CAST(N'2024-09-11' AS Date), CAST(N'2024-09-12' AS Date), CAST(355 AS Decimal(18, 0)), N'CÃ  chua', N'3563659263', N'Nong trai Viet', N'Ship nhanh', N'Shipped', 1, 3012, 1, 2, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'E27DD', CAST(N'2024-09-08' AS Date), CAST(N'2024-09-09' AS Date), CAST(720 AS Decimal(18, 0)), N'Ha Anh Tuan', N'0348392728', N'Ninh Kieu, Can Tho', N'Giao hang nhanh ', N'Shipped', 1, 2008, 1, 1, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'FA3PK', CAST(N'2024-09-06' AS Date), CAST(N'2024-09-07' AS Date), CAST(725 AS Decimal(18, 0)), N'Bui Thanh Ha', N'0932 111 222', N'12 Nguyen Hue, Quan 1, TP. Ho Chi Minh', N'Giao hang nhanh ', N'Ordered', 16, 3014, 1, 2003, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'IH68G', CAST(N'2024-08-27' AS Date), CAST(N'2024-08-28' AS Date), CAST(565 AS Decimal(18, 0)), N'Tran Minh Tu', N'0919 876 543', N'789 Lang Ha, Quan Dong Da, Ha Noi', N'Giao hang nhanh ', N'Ordered', 1, 2008, 1, 2, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'K5YCS', CAST(N'2024-08-05' AS Date), CAST(N'2024-08-06' AS Date), CAST(1428 AS Decimal(18, 0)), N'Nguyen Thi Ngoc Anh', N'0986 543 210', N'55 Bach Dang, Quan Hai Chau, Da Nang', N'Giao hang nhanh ', N'Preparing', 18, 3013, 1, 2012, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'N9IB9', CAST(N'2024-07-06' AS Date), CAST(N'2024-07-07' AS Date), CAST(410 AS Decimal(18, 0)), N'Pham Quang Vinh', N'0939 555 666', N'76 Pham Hung, Quan Nam Tu Liem, Ha Noi', N'Giao hang nhanh ', N'Ordered', 16, 3013, 1, 2002, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'NMEYA', CAST(N'2024-06-06' AS Date), CAST(N'2024-06-07' AS Date), CAST(1070 AS Decimal(18, 0)), N'Trinh Van Dung', N'0975 123 987', N'345 Hai Ba Trung, Quan 1, TP. Ho Chi Minh', N'Giao hang nhanh ', N'Ordered', 15, 3013, 1, 2002, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'NSPWY', CAST(N'2024-05-06' AS Date), CAST(N'2024-05-07' AS Date), CAST(345 AS Decimal(18, 0)), N'Dinh Thi Thanh', N'0948 222 333', N'43 Ngo Quyen, Quan Hoan Kiem, Ha Noi', N'Giao hang nhanh ', N'Ordered', 14, 3013, 1, 2003, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'OU1Q5', CAST(N'2024-04-05' AS Date), CAST(N'2024-04-06' AS Date), CAST(3952 AS Decimal(18, 0)), N'Nguyen Dinh Phuc', N'0929 888 777', N'88 Cong Hoa, Quan Tan Binh, TP. Ho Chi Minh', N'Giao hang nhanh ', N'Ordered', 13, 3013, 1, 2014, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'URYAK', CAST(N'2024-03-29' AS Date), CAST(N'2024-03-30' AS Date), CAST(365 AS Decimal(18, 0)), N'Le Thi Kim Chi', N'0969 654 987', N'23 Truong Chinh, Quan Thanh Xuan, Ha Noi', N'Giao hang nhanh ', N'Preparing', 12, 2008, 1, 2, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'W2NCW', CAST(N'2024-02-06' AS Date), CAST(N'2024-03-07' AS Date), CAST(1195 AS Decimal(18, 0)), N'Do Hoang Phuc', N'0917 777 888', N'567 Nguyen Van Linh, Quan 7, TP. Ho Chi Minh', N'Giao hang nhanh ', N'Ordered', 11, 3013, 1, 2002, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'X8ZK7', CAST(N'2024-01-29' AS Date), CAST(N'2024-01-30' AS Date), CAST(280 AS Decimal(18, 0)), N'Tran Bao Chau', N'0936 432 109', N'65 Tran Quoc Toan, Quan Hai Ba Trung, Ha Noi', N'Giao hang nhanh ', N'Confirmed', 8, 2008, 1, 2, 0)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [TotalPrice], [YourName], [Phone], [ShipAddress], [Note], [Status], [UserID], [VoucherID], [PaymentID], [DeliveryID], [isDeleted]) VALUES (N'YSYOY', CAST(N'2024-09-06' AS Date), CAST(N'2024-09-07' AS Date), CAST(715 AS Decimal(18, 0)), N'Nguyen Van Tai', N'0981 234 876', N'90 Pasteur, Quan 1, TP. Ho Chi Minh', N'Giao hang nhanh ', N'Ordered', 11, 3012, 1, 2003, 0)
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([PaymentID], [PaymentName], [Description]) VALUES (1, N'Cash on Delivery (COD)', N'No description')
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'BC1NO01', N'NO123', CAST(12345 AS Decimal(18, 0)), 25, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1726021912/pmrblhtknchshkbuet1g.webp', 2, N'a', N'CC1', 1, CAST(N'2024-09-11T09:31:49.497' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'BC1NO02', N'NO123', CAST(12345 AS Decimal(18, 0)), 20, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1726022215/e4rv3qlz2chkiacttvu9.png', 2, N'a', N'BC1', 1, CAST(N'2024-09-11T09:36:54.610' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'BC2BC01', N'BirthDay Cake', CAST(300 AS Decimal(18, 0)), 25, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1725707335/qhujnyfvxxuxixmt1pbu.webp', 20, N'Order by contact', N'BC1', 0, CAST(N'2024-09-07T18:08:54.097' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'CC1CA01', N'CAPPUCCINO', CAST(275 AS Decimal(18, 0)), 15, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1725305331/fn22pdu8pwhaj2aeyxet.webp', 20, N'Main ingredients:

- Cake

- Coffee-flavored cheese cream

- Cocoa.

Cake made from 3 layers of WHITE cake between 3 layers of FRESH CHEESE CREAM, COFFEE FLAVOR. The outside is covered with a layer of cocoa powder AND FRUIT DECOR.', N'CC1', 0, CAST(N'2024-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'CC1Ch01', N'Cheesecake', CAST(150 AS Decimal(18, 0)), 20, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1723542229/l7qvsw9bff7lia3eyuy9.jpg', 98, N'A rich and creamy dessert with a base of cream cheese, often set on a graham cracker crust. Commonly baked in a 9-inch springform pan.
Ingredients: Cream cheese, sugar, eggs, vanilla extract, graham crackers, butter.
', N'CC1', 0, CAST(N'2024-02-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'CC1SH01', N'STRAWBERRY HEART CAKE', CAST(420 AS Decimal(18, 0)), 25, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1725306018/s2uxfihqqren0e5dddel.webp', 27, N'Main ingredients:
- Cake

- Tira-flavored fresh cream

- Seasonal fruits

The cake is made from 3 layers of white cake between 3 layers of tiramisu-flavored fresh cream. The cake is decorated with seasonal fresh fruits.', N'CC1', 0, CAST(N'2024-03-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'CC2GT01', N'Green Tea Four Love', CAST(360 AS Decimal(18, 0)), 19, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1723768474/div6g9f0hbaroqscyomc.jpg', 96, N'Main ingredients:
- Gato
- Green tea flavored fresh cream.
Cake made from 4 layers of white cake combined with 4 layers of green tea flavored fresh cream. The cake is covered with a layer of fresh cream sprinkled with green tea powder on top', N'CC2', 0, CAST(N'2024-04-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'CD1CH01', N'CHOCOLATE HEART CAKE', CAST(360 AS Decimal(18, 0)), 20, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1725306110/honkfzeibi4hwwqx9ssy.webp', 44, N'Main ingredients:

- Butter cream (or fresh cream),

- Chocolate,

- Fruit.

The cake is made of 3 layers of sponge cake between 3 layers of cream. Covered on the outside is a layer of chocolate. The impressive shape and sweet taste make this cake very popular.', N'CD1', 0, CAST(N'2024-05-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'CD1CM01', N'CARAMEL MOIST CHOCOLATE CAKE', CAST(360 AS Decimal(18, 0)), 21, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1723768659/f0dzaiq4ltu3faz4exfv.webp', 97, N'Main ingredients:
- Gato,
- Red wheat flour,
- Fresh ice cream with Tiramisu

The cake is made from 3 layers of red cake mixed with 3 layers of fresh cream. The outside of the cake is covered with a layer of RED GATO POWDER AND FRUIT DECORATION.', N'CD1', 0, CAST(N'2024-06-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'CP1FC01', N'FRESH CREAM CAKE 2', CAST(275 AS Decimal(18, 0)), 20, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1725305275/sv6y4rea4jecraszisr7.webp', 18, N'Main ingredients:

- Cake

- Regular whipped cream

- Fruit.

The cake is made from 3 layers of white cake between 3 layers of whipped cream. The outside of the cake is covered with a layer of sweet tiramisu whipped cream and fruit.', N'CP1', 0, CAST(N'2024-07-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'FP1DH01', N'DELI HEART CAKE', CAST(360 AS Decimal(18, 0)), 20, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1725306073/y3hcarossk4e7ssazryl.webp', 53, N'Main ingredients:

- Cake

- Fresh cream

- Chocolate

The cake is made from 3 layers of white cake between 3 layers of cream. Covered with a layer of coffee-flavored cheese cream and decorated with seasonal fruits.', N'EC1', 0, CAST(N'2024-08-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'FT1BM01', N' Mousse Vanilla Lemon Cake', CAST(360 AS Decimal(18, 0)), 20, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1725305500/btmmivj1k2g3xtacw9lr.webp', 10, N'- Cake 
- Fresh cream 
- White chocolate 
- Sugar 
- Chicken eggs 
- Jelantine leaves 
- Passion fruit 
- Yogurt 
*The cake is made from 3 layers of Cake mixed with a layer of Vanilla Mousse and fragrant White Chocolate with a layer of yogurt in the middle and on top is a layer of fresh Passion Fruit Mousse. The top is decorated with a layer of Passion Fruit jam and Chocolate"', N'FT1', 0, CAST(N'2024-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'FT1FC01', N'Fruit Cake', CAST(275 AS Decimal(18, 0)), 19, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1723768307/k6lkujyukjd6le1lgsxn.webp', 100, N'Main ingredients:
- Gato
- Rum flavored fresh cream
- Fruit
- Dried coconut.
Cake made from 3 layers of white cake interspersed between 3 layers of rum (grape) flavored fresh cream. The top of the cake is decorated with fruit with dried coconut wrapped around it.', N'FT1', 0, CAST(N'2024-07-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'LC1CC01', N'Chiffon Cake', CAST(300 AS Decimal(18, 0)), 20, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1723542299/tyen7en0yjyg2swe4m5w.jpg', 50, N'A light and airy cake with a spongy texture, typically baked in an 8-inch round pan. Available in flavors like vanilla, chocolate, or matcha.
Eggs, sugar, flour, vegetable oil, baking powder, flavorings (e.g., vanilla, cocoa powder).', N'BC1', 0, CAST(N'2024-06-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'SC1RV01', N'RED VELVET CAKE 01', CAST(360 AS Decimal(18, 0)), 21, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1723768584/siahofhizpp2dagrrouv.webp', 48, N'Main ingredients:
- Gato,
- Red wheat flour,
- Fresh ice cream with Tiramisu
The cake is made from 3 layers of red cake mixed with 3 layers of fresh cream. The outside of the cake is covered with a layer of RED GATO POWDER AND FRUIT DECORATION.', N'SC1', 0, CAST(N'2024-05-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Size], [Image], [Quantity], [Decription], [CategoryID], [isDeleted], [createDate]) VALUES (N'YG1FJ01', N'FRUIT JELLY CAKE', CAST(360 AS Decimal(18, 0)), 20, N'https://res.cloudinary.com/dyetbks6g/image/upload/v1725305853/nizygvqq8hmnczqgghub.jpg', 20, N'***Cakes for vegetarians', N'YG1', 0, CAST(N'2024-04-09T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (1, N'lan', N'lan123', N'lan123', N'khach1@gmail.com', N'253647382', N'HCM', NULL)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (8, N'Bao Thi', N'123abc', N'abc@gmail.com', N'364748373', N'TV', N'123', NULL)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (10, N'dothimysuong', N'suong123', N'suong123', N'dtmsuong123@gmail.com', N'(533)-688-994', N'Lac Long Quan, Cua Dai beach, Hoi An City, Quang Nam', NULL)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (11, N'phunghoangdo', N'do123', N'do12345', N'phdo123@gmail.com', N'(373)-554-382', N'19 Pham Ngu Lao Street, Hue City, Thua Thien Hue Province', NULL)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (12, N'daophuocthien', N'thien123', N'thien123', N'dpthien123@gmail.com', N'(895)-483-348', N'2 Dong Khoi Street, Tan Hiep Ward, Bien Hoa City, Dong Nai Province', NULL)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (13, N'lythidouyen', N'uyen123', N'uyen123', N'ltduyen123@gmail.com', N'(843)-383-222', N'15-17-19, 3/2 Street, Da Lat City, Lam Dong Province', NULL)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (14, N'duongkieudiem', N'diem123', N'diem123', N'dkdiem123@gmail.com', N'(034)-381-555', N'03 Huynh Thuc Khang Street, Ward 4, Dalat City 67000, Lam Dong', NULL)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (15, N'buingocnga', N'nga123456', N'nga123456', N'bnnga123@gmail.com', N'(01515155)', N'22, Nguyen Du, Dalat City', NULL)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (16, N'vothituyetnhi', N'nhi123', N'nhi123', N'vttnhi123@gmail.com', N'(489)-442-385', N'45 Pham Hong Thai Street, Ward 10, Da Lat City, Lam Dong Province', NULL)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (18, N'trantrongtuan', N'tuan123', N'tuan123123123', N'tttuan123@gmail.com', N'(489)-229-753', N'Unit 6, Chieu Lieu Hamlet, Di An District, Tan Dong Hiep Ward, Binh Duong Province', NULL)
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address], [reset_password_token]) VALUES (20, N'BÃ¡nh ngá»t', N'admin123', N'123', N'b@gmail.com', N'3563659263', N'tv', NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([VoucherID], [VoucherCode], [DiscountAmount], [StartDate], [EndDate], [EventName], [ImagesUrl], [UserID]) VALUES (2008, N'simbakery', CAST(20 AS Decimal(18, 0)), CAST(N'2024-12-12' AS Date), CAST(N'2025-01-12' AS Date), N'appreciate customers', N'class-2.jpg', 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherCode], [DiscountAmount], [StartDate], [EndDate], [EventName], [ImagesUrl], [UserID]) VALUES (3012, N'sbakery', CAST(20 AS Decimal(18, 0)), CAST(N'2024-09-06' AS Date), CAST(N'2024-11-06' AS Date), N'appreciate customers', N'class-4.jpg', 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherCode], [DiscountAmount], [StartDate], [EndDate], [EventName], [ImagesUrl], [UserID]) VALUES (3013, N'happybirthday', CAST(30 AS Decimal(18, 0)), CAST(N'2024-09-28' AS Date), CAST(N'2025-01-28' AS Date), N'happy birthday', N'class-3.jpg', 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherCode], [DiscountAmount], [StartDate], [EndDate], [EventName], [ImagesUrl], [UserID]) VALUES (3014, N'sweerbakery', CAST(10 AS Decimal(18, 0)), CAST(N'2024-09-07' AS Date), CAST(N'2024-09-27' AS Date), N'appreciate customers', N'class-2.jpg', 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherCode], [DiscountAmount], [StartDate], [EndDate], [EventName], [ImagesUrl], [UserID]) VALUES (3040, N'Chirstmart', CAST(10 AS Decimal(18, 0)), CAST(N'2024-09-11' AS Date), CAST(N'2024-09-14' AS Date), N'appreciate customers', N'class-1.jpg', 0)
INSERT [dbo].[Voucher] ([VoucherID], [VoucherCode], [DiscountAmount], [StartDate], [EndDate], [EventName], [ImagesUrl], [UserID]) VALUES (3041, N'KOKO123', CAST(10 AS Decimal(18, 0)), CAST(N'2024-09-12' AS Date), CAST(N'2024-09-14' AS Date), N'appreciate customers', N'class-4.jpg', 0)
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Details] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_Orders_Details]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Deliveries] FOREIGN KEY([DeliveryID])
REFERENCES [dbo].[Deliveries] ([DeliveryID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Deliveries]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payments] ([PaymentID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [fk_voucherID] FOREIGN KEY([VoucherID])
REFERENCES [dbo].[Voucher] ([VoucherID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [fk_voucherID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
