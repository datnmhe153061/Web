USE [master]
GO
/****** Object:  Database [ASSPRJ321]    Script Date: 03/24/2022 11:06:00 ******/
CREATE DATABASE [ASSPRJ321] ON  PRIMARY 
( NAME = N'ASSPRJ321', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ASSPRJ321.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ASSPRJ321_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ASSPRJ321_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ASSPRJ321] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASSPRJ321].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASSPRJ321] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ASSPRJ321] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ASSPRJ321] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ASSPRJ321] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ASSPRJ321] SET ARITHABORT OFF
GO
ALTER DATABASE [ASSPRJ321] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ASSPRJ321] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ASSPRJ321] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ASSPRJ321] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ASSPRJ321] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ASSPRJ321] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ASSPRJ321] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ASSPRJ321] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ASSPRJ321] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ASSPRJ321] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ASSPRJ321] SET  DISABLE_BROKER
GO
ALTER DATABASE [ASSPRJ321] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ASSPRJ321] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ASSPRJ321] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ASSPRJ321] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ASSPRJ321] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ASSPRJ321] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ASSPRJ321] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ASSPRJ321] SET  READ_WRITE
GO
ALTER DATABASE [ASSPRJ321] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ASSPRJ321] SET  MULTI_USER
GO
ALTER DATABASE [ASSPRJ321] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ASSPRJ321] SET DB_CHAINING OFF
GO
USE [ASSPRJ321]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/24/2022 11:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Username] [varchar](150) NOT NULL,
	[Password] [varchar](150) NOT NULL,
	[Admin] [bit] NULL,
	[Seller] [bit] NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([Id], [Name], [Username], [Password], [Admin], [Seller], [Email], [Phone], [Address]) VALUES (1, N'Ngo Manh Dat', N'datngomanh', N'dat442001', 1, 0, N'dat@gmail.com', N'0934587344', N'Bắc Giang')
INSERT [dbo].[Account] ([Id], [Name], [Username], [Password], [Admin], [Seller], [Email], [Phone], [Address]) VALUES (2, N'Admin', N'admin', N'admin123', 1, 0, N'admin@gmail.com', N'0111236514', N'Hà Nội')
INSERT [dbo].[Account] ([Id], [Name], [Username], [Password], [Admin], [Seller], [Email], [Phone], [Address]) VALUES (3, N'Mod', N'mod', N'mod123', 0, 1, N'Mod@gmail.com', N'0128732634', N'HCM')
INSERT [dbo].[Account] ([Id], [Name], [Username], [Password], [Admin], [Seller], [Email], [Phone], [Address]) VALUES (14, N'John', N'abd', N'123', 0, 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[ListCategory]    Script Date: 03/24/2022 11:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_ListProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ListCategory] ON
INSERT [dbo].[ListCategory] ([Id], [Name], [Status]) VALUES (1, N'Ghế Tập Tạ', 1)
INSERT [dbo].[ListCategory] ([Id], [Name], [Status]) VALUES (2, N'Ghế Tập Bụng', 1)
INSERT [dbo].[ListCategory] ([Id], [Name], [Status]) VALUES (3, N'Giàn Tạ Đa Năng', 1)
INSERT [dbo].[ListCategory] ([Id], [Name], [Status]) VALUES (4, N'Tạ Tay - Tạ Đơn', 1)
INSERT [dbo].[ListCategory] ([Id], [Name], [Status]) VALUES (5, N'Xà Đợn - Xà Kép', 1)
INSERT [dbo].[ListCategory] ([Id], [Name], [Status]) VALUES (6, N'Phụ Kiện Tập Gym', 1)
SET IDENTITY_INSERT [dbo].[ListCategory] OFF
/****** Object:  Table [dbo].[Ship]    Script Date: 03/24/2022 11:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Ship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ship] ON
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (25, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'okla')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (26, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'hihi')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (27, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'ewrwe')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (28, N'we', N'wer', N'we', N'wer')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (29, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'345')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (30, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'12312')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (31, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'werw')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (32, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'helloas')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (33, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'datngomanh')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (34, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'DATSDAS')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (35, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'adfsf')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (36, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'adfa')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (37, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'okla')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (38, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'okla')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (39, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'23424')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (40, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'ok')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (41, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'ok')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (42, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'OK
')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (43, N'Hà', N'0934597332', N'Hà Nội', N'Ship hỏa tốc')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (44, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'nhanh')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (45, N'Nô', N'0234827228', N'HCM', N'ok')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (46, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'opkl')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (47, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'ok')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (48, N'Hoa', N'023948237', N'Vĩnh Phúc', N'ship')
INSERT [dbo].[Ship] ([Id], [Name], [Phone], [Address], [Note]) VALUES (49, N'Ngô Đạt', N'283952843', N'Bắc giang, Việt yên', N'Ship chậm')
SET IDENTITY_INSERT [dbo].[Ship] OFF
/****** Object:  Table [dbo].[Order]    Script Date: 03/24/2022 11:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account_id] [int] NULL,
	[Shipping_id] [int] NULL,
	[date_create] [date] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([Id], [Account_id], [Shipping_id], [date_create], [status]) VALUES (46, 1, 42, CAST(0xBD430B00 AS Date), 0)
INSERT [dbo].[Order] ([Id], [Account_id], [Shipping_id], [date_create], [status]) VALUES (47, 1, 43, CAST(0xBD430B00 AS Date), 1)
INSERT [dbo].[Order] ([Id], [Account_id], [Shipping_id], [date_create], [status]) VALUES (48, 1, 44, CAST(0xBD430B00 AS Date), 0)
INSERT [dbo].[Order] ([Id], [Account_id], [Shipping_id], [date_create], [status]) VALUES (49, 2, 45, CAST(0xBD430B00 AS Date), 0)
INSERT [dbo].[Order] ([Id], [Account_id], [Shipping_id], [date_create], [status]) VALUES (50, 2, 46, CAST(0xBD430B00 AS Date), 0)
INSERT [dbo].[Order] ([Id], [Account_id], [Shipping_id], [date_create], [status]) VALUES (51, 3, 47, CAST(0xBD430B00 AS Date), 0)
INSERT [dbo].[Order] ([Id], [Account_id], [Shipping_id], [date_create], [status]) VALUES (53, 14, 49, CAST(0xBD430B00 AS Date), 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 03/24/2022 11:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Price] [bigint] NOT NULL,
	[Promotionalprice] [bigint] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Listcategory_id] [int] NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Image] [ntext] NOT NULL,
	[Rate] [int] NULL,
 CONSTRAINT [PK_Product_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (2, N'Ghế cong tập bụng 601002', 1235000, 1100000, N'ÄÆ°á»£c thiáº¿t káº¿ nhá» gá»n, cÃ³ thá» Äiá»u chá»nh Äá» dá»c dá» dÃ ng khi sá»­ dá»¥ng vÃ  tÃ­ch há»£p nhiá»u bÃ i táº­p thá» hÃ¬nh hiá»u quáº£ cho Gymer. ÄÃ¢y lÃ  máº«u gháº¿ phÃ¹ há»£p Äá» sá»­ dá»¥ng cho cÃ¡c báº¡n Äang cÃ³ nhu cáº§u tham gia táº­p thá» hÃ¬nh táº¡i nhÃ ', 6, 2, N'Việt Nam', N'image\ghetapbung\ghe2.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (3, N'Ghế tập bụng Ben Pro 601003', 1460000, 1350000, N'được thiết kế chắc chắn, hỗ trợ gập bụng hiệu quả và hiện đang được lắp đặt cho hầu hết phòng tập Gym cao cấp ở Việt Nam', 11, 2, N'Hàn Quốc', N'image\ghetapbung\ghe3.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (4, N'Ghế tập bụng đa năng Aguri AGB-001', 1500000, 1000000, N'được thiết kế nhỏ gọn, có thể điều chỉnh độ dốc dễ dàng khi sử dụng và tích hợp nhiều bài tập thể hình hiệu quả cho Gymer. Đây là mẫu ghế phù hợp để sử dụng cho các bạn đang có nhu cầu tham gia tập thể hình tại nhà', 13, 2, N'Trung Quốc', N'image\ghetapbung\ghe4.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (5, N'Ghế tập Gym đa năng DDS-1201', 2100000, 1600000, N'chính hãng Jianou được thiết kế chắc chắn từ thép, yên ghế bọc nệm cực êm và hỗ trợ tập gập bụng, hít đất, tập thể lực hiệu quả.', 25, 2, N'Mỹ', N'image\ghetapbung\ghe5.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (6, N'Ghế tập Gym đa năng Miking PS-031', 2150000, 2000000, N' được thiết kế đa năng, hỗ trợ tập cơ bụng; cơ lưng và tập thể lực hiệu quả, phù hợp sử dụng để rèn luyện tại nhà cho cả nam lẫn nữ. Với kích thước nhỏ gọn và đi kèm theo đó là nhiều chức năng tập luyện, mẫu ghế này đang được rất nhiều bạn yêu thích, lựa chọn. ', 21, 2, N'Nhật Bản', N'image\ghetapbung\ghe6.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (7, N'Ghế tập tạ Bowflex', 3150000, 2500000, N'chính hãng Jianou được thiết kế chắc chắn từ thép, yên ghế bọc nệm cực êm và hỗ trợ tập gập bụng, hít đất, tập thể lực hiệu quả.', 29, 2, N'Thái Lan', N'image\ghetapbung\ghe7.jpg', 3)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (8, N'Ghế cong tập bụng', 640000, 600000, N'được làm chắc chắn từ thép dày, phần yên ghế bọc nệm da cực êm và phù hợp sử dụng để tập cơ bụng tại nhà cho Gymer. ', 21, 2, N'Thái Lan', N'image\ghetapbung\ghe8.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (9, N'Ghế tập bụng đa năng FS08', 1320000, 128000, N' được thiết kế đa năng, hỗ trợ tập cơ bụng; cơ lưng và tập thể lực hiệu quả, phù hợp sử dụng để rèn luyện tại nhà cho cả nam lẫn nữ. Với kích thước nhỏ gọn và đi kèm theo đó là nhiều chức năng tập luyện, mẫu ghế này đang được rất nhiều bạn yêu thích, lựa chọn. ', 35, 2, N'Trung Quốc', N'image\ghetapbung\ghe9.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (10, N'Ghế tập bụng Impulse IT7013', 7600000, 5000000, N'được thiết kế nhỏ gọn, có thể điều chỉnh độ dốc dễ dàng khi sử dụng và tích hợp nhiều bài tập thể hình hiệu quả cho Gymer. Đây là mẫu ghế phù hợp để sử dụng cho các bạn đang có nhu cầu tham gia tập thể hình tại nhà', 33, 2, N'Trung Quốc', N'image\ghetapbung\ghe10.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (11, N'Ghế tập Gym đa năng DDS-1201', 2100000, 1900000, N'được thiết kế nhỏ gọn, có thể điều chỉnh độ dốc dễ dàng khi sử dụng và tích hợp nhiều bài tập thể hình hiệu quả cho Gymer. Đây là mẫu ghế phù hợp để sử dụng cho các bạn đang có nhu cầu tham gia tập thể hình tại nhà.', 8, 1, N'Trung Quốc', N'image\ghetapta\ghe1.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (12, N'Ghế tập tạ đa năng Xuki', 1850000, 1500000, N'chính hãng được thiết kế chắc chắn, hỗ trợ tập đẩy tạ + kéo xô + ép ngực + tập chân hiệu quả và phù hợp dùng tại nhà cho Gymer. Đây là mẫu ghế tập tạ được sản xuất tại Việt Nam và hiện nay đang được rất nhiều bạn yêu thích, mua về để tập luyện thể hình tại nhà. ', -3, 1, N'Trung Quốc', N'image\ghetapta\ghe2.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (13, N'Ghế tập tạ đa năng Thanh Xuân', 2250000, 2000000, N'hỗ trợ tập đẩy tạ, kéo xô, ép ngực, tập xà đơn, tập xà kép, tập cơ chân hiệu quả và phù hợp sử dụng để tập tại nhà cho Gymer.', -2, 1, N'Mỹ', N'image\ghetapta\ghe3.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (14, N'Ghế tập tạ đa năng Xuki 2022', 3850000, 3350000, N'được thiết kế chắc chắn, hỗ trợ nhiều bài tập hiệu quả cho các nhóm cơ và phù hợp sử dụng để tập thể hình ở nhà cho Gymer.', 3, 1, N'Úc', N'image\ghetapta\ghe4.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (15, N'Ghế tập Gym đa năng DDS-1205', 3150000, 3000000, N'được thiết kế chắc chắn, hỗ trợ nhiều bài tập hiệu quả cho các nhóm cơ và phù hợp sử dụng để tập thể hình ở nhà cho Gymer.', 9, 1, N'Trung Quốc', N'image\ghetapta\ghe6.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (16, N'Ghế vớt tạ Xuki', 530000, 480000, N'chính hãng được thiết kế chắc chắn, hỗ trợ tập đẩy tạ + kéo xô + ép ngực + tập chân hiệu quả và phù hợp dùng tại nhà cho Gymer. Đây là mẫu ghế tập tạ được sản xuất tại Việt Nam và hiện nay đang được rất nhiều bạn yêu thích, mua về để tập luyện thể hình tại nhà. ', 8, 1, N'Việt Nam', N'image\ghetapta\ghe5.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (17, N'Ghế tập tạ đa năng 2016', 4500000, 4250000, N'được thiết kế nhỏ gọn, có thể điều chỉnh độ dốc dễ dàng khi sử dụng và tích hợp nhiều bài tập thể hình hiệu quả cho Gymer. Đây là mẫu ghế phù hợp để sử dụng cho các bạn đang có nhu cầu tham gia tập thể hình tại nhà.', 4, 1, N'Thái Lan', N'image\ghetapta\ghe7.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (18, N'Ghế tập tạ đa năng Wosi', 1150000, 999999, N'hỗ trợ tập đẩy tạ, kéo xô, ép ngực, tập xà đơn, tập xà kép, tập cơ chân hiệu quả và phù hợp sử dụng để tập tại nhà cho Gymer.', 16, 1, N'Trung Quốc', N'image\ghetapta\ghe8.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (19, N'Ghế tập tạ đơn Ben 601401', 2300000, 2000000, N'chính hãng được thiết kế chắc chắn, hỗ trợ tập đẩy tạ + kéo xô + ép ngực + tập chân hiệu quả và phù hợp dùng tại nhà cho Gymer. Đây là mẫu ghế tập tạ được sản xuất tại Việt Nam và hiện nay đang được rất nhiều bạn yêu thích, mua về để tập luyện thể hình tại nhà. ', 29, 1, N'Thái Lan', N'image\ghetapta\ghe9.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (20, N'Ghế tập tạ Power Back FX32', 7500000, 6300000, N'của Vifa Sport được thiết kế chắc chắn, hỗ trợ tập đẩy tạ + tập chân + tập tay hiệu quả và phù hợp dùng tập tại nhà cho Gymer. ', 27, 1, N'Trung Quốc', N'image\ghetapta\ghe10.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (21, N'Giàn tạ đa năng BP-806', 15350000, 14500000, N'được thiết kế chắc chắn, tích hợp hơn 30 bài tập thể hình cho toàn bộ các nhóm cơ trên cơ thể và hỗ trợ bốn người tập cùng một lúc. Với giàn tạ BP-806, bạn như đang sở hữu cho mình một phòng Gym thu nhỏ và có thể thoải mái áp dụng các bài tập từ cơ bản đến nâng cao. ', 19, 3, N'Việt Nam', N'image\ghedanang\ghe1.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (22, N'Giàn tạ đa năng HQ-908S', 17900000, 16500000, N'thiết kế đạt chuẩn phòng Gym, tích hợp hơn 50 bài tập thể hình từ cơ bản đến nâng cao và hỗ trợ 3 người tập cùng một thời điểm. Trong hai năm trở lại đây, HQ-908S luôn nằm trong "Top" những mẫu giàn tạ được yêu thích, bán chạy nhất tại thị trường Việt Nam.', 18, 3, N'Trung Quốc', N'image\ghedanang\ghe2.jpg', 3)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (23, N'Khung gánh tạ đa năng K8', 13200000, 12280000, N'được thiết kế đa năng, hỗ trợ nhiều bài tập hiệu quả và phù hợp sử dụng để tập tại nhà cho Gymer hoặc lắp đặt cho các phòng Gym mini. Đây là một trong những bộ khung gánh tạ được nhiều bạn yêu thích và luôn nằm "Top" những sản phẩm hỗ trợ tập Gym bán chạy nhất hiện nay ở Việt Nam. ', 17, 3, N'Hàn Quốc', N'image\ghedanang\ghe3.jpg', 2)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (24, N'Khung gánh tạ đa năng K1', 18250000, 17500000, N'được thiết kế chắc chắn, trang bị trên 30 bài tập hiệu quả cho các nhóm cơ và phù hợp sử dụng để tập luyện tại nhà cho Gymer. Với dụng cụ tập Gym đa năng này, người tập có thể áp dụng nhiều bài tập khác nhau như tập gánh tạ (Squat), tập đẩy tạ, tập kéo xô, tập xô bay, tập đẩy vai, tập xà đơn, tập xà kép,...', 24, 3, N'Nhật Bản', N'image\ghedanang\ghe4.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (25, N'Giàn tạ đa năng HQ-708', 8900000, 7950000, N'được thiết kế chắc chắn, tích hợp gần 30 bài tập thể hình cho các nhóm cơ và phù hợp sử dụng cho gia đình hoặc phòng Gym mini. Đây là một trong những mẫu giàn tạ được yêu thích và có số lượng bán ra lớn nhất hiện nay tại Việt Nam. ', 25, 3, N'Trung Quốc', N'image\ghedanang\ghe5.jpg', 3)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (26, N'Giàn tạ đa năng HQ-708A', 8900000, 8050000, N'được thiết kế chắc chắn, tích hợp hơn 30 bài tập thể hình cho toàn bộ các nhóm cơ trên cơ thể và hỗ trợ bốn người tập cùng một lúc. Với giàn tạ BP-806, bạn như đang sở hữu cho mình một phòng Gym thu nhỏ và có thể thoải mái áp dụng các bài tập từ cơ bản đến nâng cao. ', 27, 3, N'Trung Quốc', N'image\ghedanang\ghe6.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (27, N'Giàn tạ đa năng HQ-808P', 14500000, 13100000, N'được thiết kế chắc chắn, tích hợp 30 bài tập Gym hiệu quả, hỗ trợ 3 người tập cùng lúc và phù hợp dùng để tập ở nhà cho Gymer.', 31, 3, N'Việt Nam', N'image\ghedanang\ghe7.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (28, N'Đòn tạ chữ Z', 1050000, 999000, N'được làm từ thép đặc mạ Inox chống rỉ, có ốc giữ tạ ở hai đầu và phù hợp sử dụng để tập thể hình tại nhà hoặc dùng cho phòng Gym.', 10, 4, N'Việt Nam', N'image\tataytadon\tachuz.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (29, N'Xà đơn đa năng P90X', 550000, 545000, N'chính hãng được thiết kế chắc chắn từ thép cực dày, lắp đặt bằng cách khoan tường vít ốc và phù hợp sử dụng để tập xà đơn tại nhà.', 7, 5, N'Thái Lan', N'image\xadonxakep\xadanang1.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (30, N'Giàn tạ đa năng Aguri AGG-405', 11250000, 10250000, N'được thiết kế chắc chắn, trang bị trên 30 bài tập hiệu quả cho các nhóm cơ và phù hợp sử dụng để tập luyện tại nhà cho Gymer. Với dụng cụ tập Gym đa năng này, người tập có thể áp dụng nhiều bài tập khác nhau như tập gánh tạ (Squat), tập đẩy tạ, tập kéo xô, tập xô bay, tập đẩy vai, tập xà đơn, tập xà kép,...', 2, 3, N'Mỹ', N'image\ghedanang\ghe8.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (31, N'Giàn tạ đa năng DLY 1522C-1', 14250000, 13690000, N'được thiết kế chắc chắn, tích hợp hơn 30 bài tập thể hình cho toàn bộ các nhóm cơ trên cơ thể và hỗ trợ bốn người tập cùng một lúc. Với giàn tạ BP-806, bạn như đang sở hữu cho mình một phòng Gym thu nhỏ và có thể thoải mái áp dụng các bài tập từ cơ bản đến nâng cao. ', 12, 3, N'Việt Nam', N'image\ghedanang\ghe9.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (32, N'Giàn tạ đa năng DLY-3003B', 14000000, 12750000, N'được thiết kế chắc chắn, tích hợp 30 bài tập Gym hiệu quả, hỗ trợ 3 người tập cùng lúc và phù hợp dùng để tập ở nhà cho Gymer.', 17, 3, N'Trung Quốc', N'image\ghedanang\ghe10.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (33, N'Tạ Tay Bowflex 552', 5250000, 495000, N'cao cấp được thiết kế thông minh, có chức năng điều chỉnh trọng lượng tạ từ 2.5 đến 24 kg và phù hợp dùng để tập thể hình cho Gymer. Khi sở hữu bộ tạ tay này, chúng ta không cần phải mua nhiều quả tạ có trọng lượng khác nhau nhằm giúp tiết kiệm không gian và cả kinh phí đầu tư. ', 8, 4, N'Việt Nam', N'image\tataytadon\ta1.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (34, N'Giá để tạ Bowflex', 2300000, 2050000, N'chính hãng được thiết kế chắc chắn, kích thước nhỏ gọn và có chức năng dùng để làm giá đỡ cho tạ tay Bowflex 552 hoặc Bowflex 1090. Không chỉ có tác dụng giúp tiết kiệm không gian để tạ và bảo quản tạ tốt hơn, sản phẩm này còn giúp người sử dụng dễ dàng hơn khi thực hiện các bài tập tạ tay.', 11, 4, N'Mỹ', N'image\tataytadon\giata1.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (35, N'Tạ tay Jordan', 70000, 65000, N'làm từ thép bọc cao su ở bên ngoài, tay cầm được mạ crom chống rỉ và phù hợp sử dụng để tập thể dục tại nhà hoặc dùng cho phòng tập Gym. Đây là mẫu tạ tay cao cấp, sở hữu thiết kế đẹp mắt và đang được rất nhiều bạn yêu thích, sử dụng.', 11, 4, N'Trung Quốc', N'image\tataytadon\ta2.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (36, N'Bộ tạ đa năng 4 in 1', 1550000, 1470000, N'được chế tạo thông minh, có thể điều chỉnh thành tạ đơn; tạ đòn; tạ ấm hoặc dụng cụ hít đất và phù hợp sử dụng để tập thể hình tại nhà. Tuy mới được nhập khẩu về Việt Nam trong khoảng thời gian gần đây nhưng bộ tạ này đã và đang được rất nhiều Gymer yêu thích.', 12, 4, N'Trung Quốc', N'image\tataytadon\botadanang.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (37, N'Bộ tạ đa năng điều chỉnh', 660000, 599000, N'được thiết kế thông minh, có thể tháo lắp dễ dàng thành tạ tay hoặc tạ đòn dài và phù hợp sử dụng để tập luyện tại nhà cho Gymer. Với kích thước nhỏ gọn, chất lượng đảm bảo và điều chỉnh trọng lượng tạ dễ dàng theo đối tượng người tập, đây là mẫu tạ đang rất được yêu thích hiện nay.', 15, 4, N'Mỹ', N'image\tataytadon\botadanang2.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (38, N'Tạ tay nhựa', 10000, 8800, N'có ruột bên trong được đổ đặc từ hỗn hợp xi măng kết hợp với cát, bên ngoài bọc nhựa dày và có các trọng lượng gồm 2kg, 3, 4, 5kg, 6, 7, 8kg. Đây là mẫu tạ tay giá rẻ, phù hợp sử dụng cho các bạn đang có nhu cầu tập thể dục hoặc tập Gym tại nhà.', 17, 4, N'Trung Quốc', N'image\tataytadon\tataynhua.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (39, N'Đòn tạ', 270000, 249000, N'được đúc đặc bằng gang, mạ inox sáng bóng ở lớp bên ngoài cùng, có khóa giữ tạ ở cả hai đầu và có ba kích thước chiều dài gồm 1m2, 1m5, 1m8. Đây là mẫu đòn tạ phù hợp sử dụng cho các bạn đang tập thể hình tại nhà dùng trong các bài tập như đẩy ngực, tập tay trước hoặc tập Squat,...', 15, 4, N'Việt Nam', N'image\tataytadon\donta.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (40, N'Bánh tạ gang', 25000, 24300, N'được đúc từ vật liệu gang, hình dạng thiết kế ba cánh giống vô lăng ô tô giúp cầm nắm dễ dàng và có nhiều mức tạ khác nhau từ 2kg đến 10kg. Loại bánh tạ này thường được dùng chung với đòn tạ hoặc kết hợp với các mẫu ghế tập Gym dùng cho cá nhân.', 15, 4, N'Thái Lan', N'image\tataytadon\banhtagang.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (41, N'Tạ bình vôi Brosman', 850000, 775000, N'được làm từ thép đặc bọc nhựa cao su ở ngoài; có trọng lượng 2, 4, 6, 8, 10, 12kg và phù hợp sử dụng cho các phòng tập Gym cao cấp.', 14, 4, N'Mỹ', N'image\tataytadon\tabinhvoi.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (42, N'Đòn tạ hình chữ nhật Inox', 750000, 699000, N'được làm chắc chắn từ thép đặc mạ Inox, tay cầm cà nhám + có ốc giữ bánh tạ ở 2 đầu và phù hợp sử dụng cho phòng tập Gym.', 16, 4, N'Việt Nam', N'image\tataytadon\tachunhat.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (43, N'Bánh tạ nhựa', 10000, 8800, N'được đổ đặc từ xi măng tươi, bên ngoài bọc một lớp nhựa màu xanh cực dày và có các mức trọng lượng tạ gồm 3kg, 5kg, 10kg. Sản phẩm này phù hợp dùng để ghép vào đòn tạ dài, đòn tạ tay hoặc các mẫu ghế tập tạ để thực hiện các bài tập thể dục hoặc tập thể hình tại nhà. ', 17, 4, N'Thái Lan', N'image\tataytadon\banhtanhua.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (44, N'Tạ đĩa cao su Ziva phi 52', 60000, 54000, N'chính hãng được đúc đặc từ chất liệu thép, bên ngoài bọc cao su cao cấp cực dày, đường kính lỗ tạ phi 52 và có giá bán 60.000 đồng 1kg. Đây là mẫu bánh tạ đang được sử dụng cho rất nhiều phòng Gym hạng sang tại Việt Nam. ', 5, 4, N'Mỹ', N'image\tataytadon\banhtacaosu.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (45, N'Đòn tạ thẳng 1m2 ', 1100000, 999999, N'được làm từ thép đặc mạ Inox kết hợp với niken chống rỉ, có kẹp tạ ở cả hai đầu và đạt tiêu chuẩn phòng Gym chuyên nghiệp. Sản phẩm này phù hợp sử dụng cho các bài tập thể hình như tập tay trước, tập vớt tạ, tập đẩy vai,...', 7, 4, N'Thái Lan', N'image\tataytadon\donta2.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (46, N'Giá để tạ', 1950000, 1775000, N'được làm chắc chắn từ thép hộp, chân thiết kế choãi rộng, có khả năng chịu lực tốt và có chức năng dùng để xếp gọn tạ tay, tạ đĩa trong phòng tập. Ngoài sử dụng cho phòng Gym gia đình thì bạn cũng có thể lắp đặt mẫu giá để tạ này tại các phòng tập bình dân.', 15, 4, N'Hàn Quốc', N'image\tataytadon\giadeta2.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (47, N'Xà đơn treo tường 2021', 350000, 335000, N'là phiên bản xà đơn gắn cửa mới nhất, tích hợp nhiều cải tiến vượt trội và có khả năng chịu được tải trọng người tập tối đa tới 150kg. Với kiểu thiết kế của mẫu xà đơn mới này, người sử dụng có thể gắn nó vào khung cửa ra vào hoặc lắp vào hai bên thành tường để tập xà đơn ngay tại nhà.', 10, 5, N'Việt Nam', N'image\xadonxakep\xatreotuong1.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (48, N'Xà đơn gắn cửa 2022', 370000, 350000, N'là mẫu xà đơn treo tường mới nhất hiện nay, tích hợp nhiều cải tiến vượt trội, đảm bảo chắc chắn và an toàn tuyệt đối cho người dùng. Ngoài việc trang bị khóa chống xoay, mẫu xà đơn này còn tích hợp bộ phận đo độ cân bằng giúp việc lắp đặt xà được chính xác hơn. ', 8, 5, N'Trung Quốc', N'image\xadonxakep\xagancua1.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (49, N'Xà đơn xếp chữ A Xuki', 1750000, 1550000, N'được làm chắc chắn từ thép ống D34mm, có chức năng điều chỉnh chiều cao và phù hợp dùng tập xà đơn cho người lớn lẫn trẻ em. ', 9, 5, N'Trung Quốc', N'image\xadonxakep\xachua.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (50, N'Xà kép đa năng Mini HM911', 1150000, 1045000, N'chính hãng được thiết kế đảm bảo chắc chắn, tích hợp dây tập hít đất hiệu quả và phù hợp dùng tập thể hình ở nhà cho Gymer. ', 12, 5, N'Thái Lan', N'image\xadonxakep\xakepdanang.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (51, N'Xà đơn xà kép đa năng T-2021', 3200000, 3050000, N'được làm chắc chắn từ thép hộp dày, có thể điều chỉnh độ cao dễ dàng và hỗ trợ tập xà đơn hoặc tập xà kép ở nhà hiệu quả. ', 14, 5, N'Việt Nam', N'image\xadonxakep\xakepdanang2.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (52, N'Xà đơn đa năng Iron Gym Extreme', 480000, 455000, N'chính hãng được thiết kế chắc chắn, dùng để gắn vào khung cửa ra vào và hỗ trợ tập xà đơn, gập bụng, hít đất hiệu quả.', 15, 5, N'Trung Quốc', N'image\xadonxakep\xadondanang.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (53, N'Xà đơn cáp ngoài trời', 2750000, 2690000, N'được làm chắc chắn từ ống thép dày + sơn tĩnh điện chống rỉ, có thể điều chỉnh chiều cao dễ và hỗ trợ tập xà đơn hiệu quả. ', 16, 5, N'Thái Lan', N'image\xadonxakep\xakepngoaitroi.jpg', 4)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (54, N'Xà kép trong nhà', 4200000, 4150000, N'được thiết kế chắc chắn từ thép dày, sơn chống rỉ và phù hợp dùng để tập tại nhà. ', 17, 5, N'Việt Nam', N'image\xadonxakep\xakeptrongnha.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (55, N'Khung tập xà kéo, ke bụng Impulse IT7010', 6000000, 5750000, N'được thiết kế chắc chắn, có khả năng chịu tải trọng người tập lớn và chuyên dùng để lắp đặt cho các phòng Gym. Không chỉ hỗ trợ người sử dụng thực hiện các bài tập xà kép, sản phẩm này còn có chức năng tập ke bụng giúp giảm mỡ vòng 2 nhanh chóng.', 20, 5, N'Việt Nam', N'image\xadonxakep\khungtapxa.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (56, N'Bộ dụng cụ hít đất D5', 200000, 170000, N'được thiết kế chắc chắn, cho phép tải trọng người tập tối đa lên đến 200kg và có thể tháo lắp dễ dàng để cất gọn sau khi sử dụng xong. Sản phẩm phù hợp dùng cho các bạn nam nữ đang có nhu cầu tập luyện thể lực, thể hình ngay tại nhà. ', 10, 6, N'Thái Lan', N'image\phukien\bochongday.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (57, N'Dây nhảy thể dục FED XM0105', 350000, 330000, N'được thiết kế đẹp mắt, phần tay cầm có trục bi giúp không bị xoắn dây khi nhảy và có thể điều chỉnh chiều dài dây dễ dàng. Sản phẩm này phù hợp để sử dụng nhảy dây giảm cân hoặc rèn luyện thể lực cho các võ sĩ Boxing.', 14, 6, N'Trung Quốc', N'image\phukien\daynhay.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (58, N'Bộ dây đàn hồi tập Gym 5 màu', 350000, 330000, N'Bộ dây đàn hồi tập Gym 5 màu được làm từ cao su có độ đàn hồi tốt, độ bền cao, có thể thay đổi số lượng dây khi tập và phù hợp để tập tại nhà cho Gymer. ', 14, 6, N'Hàn Quốc', N'image\phukien\daydanhoi.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (59, N'Bóng tạ tập thể lực', 390000, 370000, N'được làm từ cao su, thiết kể rãnh sâu dễ cầm nắm và có chức năng hỗ trợ tập Gym hiệu quả.', 18, 6, N'Hàn Quốc', N'image\phukien\bongta.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (60, N'Dây thừng tập thể lực', 1100000, 1005000, N'được làm từ chất liệu sợi tổng hợp, hỗ trợ tập tăng cường sức bền hiệu quả và phù hợp dùng cho phòng thể hình. ', 20, 6, N'Thái Lan', N'image\phukien\daythungtaptheduc.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (61, N'Đai lưng tập Gym Valeo XG-8005', 480000, 450000, N'được may chắc chắn từ da bò + da PU, phần tiếp xúc bụng lót xốp và có tác dụng giúp bảo vệ lưng khi tập Squat, Deadlift.', 19, 6, N'Thái Lan', N'image\phukien\dailung.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (62, N'Quấn cổ tay có móc nâng tạ Valeo', 240000, 215000, N'được may chắc chắn từ vải nylon, móc làm bằng thép và có tác dụng bảo vệ cổ tay khi tập thể hình cho Gymer.', 25, 6, N'Thái Lan', N'image\phukien\quancotay.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (63, N'Đệm lót gánh tạ', 250000, 225000, N'được làm bằng mút xốp, đảm bảo an toàn cho sức khỏe và có tác dụng giúp bảo vệ vai khi gánh tạ.', 25, 6, N'Laos', N'image\phukien\demlotganhta.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (65, N'Vòng xà tay tập thể dục Ring Dip', 490000, 475000, N'được thiết kế chắc chắn, có khả năng tháo lắp nhanh chóng và có chức năng sử dụng để tập thể lực hoặc tập Gym tại nhà.', 35, 6, N'Thái Lan', N'image\phukien\vongxataptheduc.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (66, N'Găng tay tập Gym HJ-C1008', 250000, 215000, N'được thiết kế đẹp mắt, may chắc chắn từ chất liệu da + vải nỉ và phù hợp dùng để bảo vệ da tay khi tập Gym hoặc tập xà đơn.', 30, 6, N'Thái Lan', N'image\phukien\gangtaytapgym.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (67, N'Dây thừng kéo xô', 280000, 245000, N'được làm từ sợi cước tổng hợp, dùng để ghép vào giàn tạ hoặc máy tập xô ở phòng Gym và hỗ trợ tập xô, tập tay sau, gập bụng hiệu quả. ', 27, 6, N'Việt Nam', N'image\phukien\daythungkeoxo.jpg', 5)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Promotionalprice], [Description], [Quantity], [Listcategory_id], [Brand], [Image], [Rate]) VALUES (68, N'ewrew', 21090900, 12309000, N'aloas', 0, 6, N'vn', N'wer', 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/24/2022 11:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_id] [int] NULL,
	[Product_id] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[Product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (44, 46, 18, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (45, 46, 4, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (46, 46, 8, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (47, 47, 22, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (48, 47, 8, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (49, 47, 23, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (50, 48, 57, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (51, 49, 15, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (52, 49, 8, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (53, 50, 61, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (54, 50, 17, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (55, 50, 21, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (56, 51, 4, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (57, 51, 17, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (59, 53, 12, 2)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (60, 53, 16, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (61, 53, 8, 1)
INSERT [dbo].[OrderDetail] ([Id], [Order_id], [Product_id], [Quantity]) VALUES (62, 53, 26, 1)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  Table [dbo].[Cart]    Script Date: 03/24/2022 11:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NULL,
	[Quantity] [int] NULL,
	[Account_id] [int] NULL,
	[Total_price] [bigint] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Order_Account]    Script Date: 03/24/2022 11:06:00 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
/****** Object:  ForeignKey [FK_Order_Ship]    Script Date: 03/24/2022 11:06:00 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Ship] FOREIGN KEY([Shipping_id])
REFERENCES [dbo].[Ship] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Ship]
GO
/****** Object:  ForeignKey [FK_Product_ListCategory]    Script Date: 03/24/2022 11:06:00 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ListCategory] FOREIGN KEY([Listcategory_id])
REFERENCES [dbo].[ListCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ListCategory]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Order]    Script Date: 03/24/2022 11:06:00 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Product]    Script Date: 03/24/2022 11:06:00 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([Product_id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
/****** Object:  ForeignKey [FK_Cart_Account]    Script Date: 03/24/2022 11:06:00 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([Account_id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
/****** Object:  ForeignKey [FK_Cart_Product]    Script Date: 03/24/2022 11:06:00 ******/
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
