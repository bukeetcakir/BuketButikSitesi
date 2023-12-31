USE [master]
GO
/****** Object:  Database [BCShop.db]    Script Date: 9.12.2023 21:11:55 ******/
CREATE DATABASE [BCShop.db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BCShop.db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BCShop.db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BCShop.db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BCShop.db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BCShop.db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BCShop.db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BCShop.db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BCShop.db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BCShop.db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BCShop.db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BCShop.db] SET ARITHABORT OFF 
GO
ALTER DATABASE [BCShop.db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BCShop.db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BCShop.db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BCShop.db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BCShop.db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BCShop.db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BCShop.db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BCShop.db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BCShop.db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BCShop.db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BCShop.db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BCShop.db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BCShop.db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BCShop.db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BCShop.db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BCShop.db] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BCShop.db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BCShop.db] SET RECOVERY FULL 
GO
ALTER DATABASE [BCShop.db] SET  MULTI_USER 
GO
ALTER DATABASE [BCShop.db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BCShop.db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BCShop.db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BCShop.db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BCShop.db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BCShop.db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BCShop.db', N'ON'
GO
ALTER DATABASE [BCShop.db] SET QUERY_STORE = OFF
GO
USE [BCShop.db]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9.12.2023 21:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 9.12.2023 21:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[Details1] [nvarchar](max) NOT NULL,
	[Details2] [nvarchar](max) NOT NULL,
	[Image1] [nvarchar](max) NULL,
	[Image2] [nvarchar](max) NULL,
	[MapLocation] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItem]    Script Date: 9.12.2023 21:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[CartID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_CartItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 9.12.2023 21:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 9.12.2023 21:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 9.12.2023 21:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 9.12.2023 21:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9.12.2023 21:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Properties] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Note] [nvarchar](max) NOT NULL,
	[Amount] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9.12.2023 21:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231119162544_initial', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231119163405_mig1', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231120235424_mig2', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231122174445_mig4', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231122180822_mig5', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231122215149_mig6', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231205232423_mig7', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231208222359_mig8', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231208232315_mig9', N'6.0.0')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutID], [Details1], [Details2], [Image1], [Image2], [MapLocation], [Status]) VALUES (2, N'BC Shop, güçlü fikirlerin yaratıcı ifade bulduğu sanatçı liderliğindeki bir oyun alanıdır.', N'İçinde yaşadığımız zaman hakkında sorular sormak için sanat ve tasarımı harmanlamaya inanıyoruz. Dünya görüşümüzü yansıtan, sürdürülebilirliğe odaklanan ve baştan sona kusursuz ürünler yaratmaya inanıyoruz. ', NULL, NULL, NULL, 1)
INSERT [dbo].[Abouts] ([AboutID], [Details1], [Details2], [Image1], [Image2], [MapLocation], [Status]) VALUES (3, N'BC Shop, başlı başına bir sanat eseridir.', N'Konfor giyimini yeniden tanımlayan, sınırlı sayıda, yüksek kaliteli tekstil ürünleri sunuyoruz. Üretimden pazarlamaya kadar her sürece, bir sanat eserine yaklaştığımız gibi yaklaşıyoruz. Niyetimiz; özenli ve sonsuz yaratıcılığa bağlı kalarak size uzun yıllar kullanabileceğiniz ürünler sunmak.', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([CartID], [UserID]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [Name], [Description], [Status]) VALUES (1, N'Sweatshirt', N'Sweatshirtler', 1)
INSERT [dbo].[Categories] ([CategoryID], [Name], [Description], [Status]) VALUES (2, N'Tshirt', N'Tshirtler', 1)
INSERT [dbo].[Categories] ([CategoryID], [Name], [Description], [Status]) VALUES (3, N'Pantolon', N'Pantolonlar', 1)
INSERT [dbo].[Categories] ([CategoryID], [Name], [Description], [Status]) VALUES (4, N'Aksesuar', N'Aksesuarlar', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentID], [UserName], [Content], [Date], [Status], [ProductID], [UserID]) VALUES (2, N'Aysu Beliz', N'Çok güzel bir tişört', CAST(N'2023-05-23T00:00:00.0000000' AS DateTime2), 1, 5, 1)
INSERT [dbo].[Comments] ([CommentID], [UserName], [Content], [Date], [Status], [ProductID], [UserID]) VALUES (3, N'Gözde Başar', N'Harika çanta', CAST(N'2023-08-15T00:00:00.0000000' AS DateTime2), 1, 7, 2)
INSERT [dbo].[Comments] ([CommentID], [UserName], [Content], [Date], [Status], [ProductID], [UserID]) VALUES (4, N'Murat Ali', N'Severek giyiyorum', CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2), 1, 4, 3)
INSERT [dbo].[Comments] ([CommentID], [UserName], [Content], [Date], [Status], [ProductID], [UserID]) VALUES (5, N'Başak Sen', N'Rengi çok güzel kaliteli bir ürün', CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2), 1, 4, 4)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [Name], [Mail], [Subject], [Message], [Date], [Status]) VALUES (1, N'Ala Ala', N'aa@gmail.com', N'Test', N'Deneme', CAST(N'2023-11-23T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [Name], [Properties], [Price], [ImageUrl], [Note], [Amount], [Status], [CategoryID]) VALUES (4, N'Ice Blue Sweatshirt', N'Açık Mavi Sweatshirt', 899.9, N'/BCShopTheme/images/bs.jpg', N'%100 Pamuk kumaş kullanılmıştır.
Sıfır yaka, uzun kol.
Ürün Ağırlığı 420 gr''dır.
Oversize, Unisex kalıptır.
Ürün Türkiye''de üretilmiştir.', 50, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Name], [Properties], [Price], [ImageUrl], [Note], [Amount], [Status], [CategoryID]) VALUES (5, N'Red Tshirt', N'Kırmızı Tshirt', 399.9, N'/BCShopTheme/images/rt.jpg', N'%100 Pamuk kumaş kullanılmıştır.
Sıfır yaka, kısa kol.
Ürün Ağırlığı 220 gr''dır.
Oversize, Unisex kalıptır.
Ürün Türkiye''de üretilmiştir.', 20, 1, 2)
INSERT [dbo].[Products] ([ProductID], [Name], [Properties], [Price], [ImageUrl], [Note], [Amount], [Status], [CategoryID]) VALUES (6, N'Basic White Tshirt', N'Beyaz Tshirt', 399.9, N'/BCShopTheme/images/wt.jpg', N'%100 Pamuk kumaş kullanılmıştır.
Sıfır yaka, kısa kol.
Ürün Ağırlığı 220 gr''dır.
Oversize, Unisex kalıptır.
Ürün Türkiye''de üretilmiştir.', 30, 1, 2)
INSERT [dbo].[Products] ([ProductID], [Name], [Properties], [Price], [ImageUrl], [Note], [Amount], [Status], [CategoryID]) VALUES (7, N'Gray Tote Bag', N'Gri Tote Çanta', 999.9, N'/BCShopTheme/images/gb.jpg', N'%100 işlenmemiş pamuk.
Unisex, kabartmalı logo detayı.
İki kısa ve iki uzun sap.
İç cep ve anahtarlık kancası.
Tote Bag çantanın farklı formlarda kullanılması için birleştirme tokası.
Türkiye’de üretilmiştir.', 20, 1, 4)
INSERT [dbo].[Products] ([ProductID], [Name], [Properties], [Price], [ImageUrl], [Note], [Amount], [Status], [CategoryID]) VALUES (1005, N'Black Sweatshirt', N'Siyah Sweatshirt', 800, N'/BCShopTheme/images/bls.jpg', N'Türkiye''de yapılmıştır
Bisiklet yaka, uzun kolludur
%100 pamuk kumaş kullanılmıştır
Ürün ağırlığı 420 gr’dır
Oversize kalıptır
Unisex kullanıma uygundur
Ürün tasarımı el yapımıdır', 80, 1, 1)
INSERT [dbo].[Products] ([ProductID], [Name], [Properties], [Price], [ImageUrl], [Note], [Amount], [Status], [CategoryID]) VALUES (1007, N'Dark Blue Tshirt', N'Lacivert Tshirt', 600, N'/BCShopTheme/images/lt.jpeg', N'%100 pamuk
160 gsm - hafif kumaş
Ribanalı bisiklet yaka
Yumuşak his vermesi için extra yıkama
Kısa kollu
Rahat kesim', 60, 1, 2)
INSERT [dbo].[Products] ([ProductID], [Name], [Properties], [Price], [ImageUrl], [Note], [Amount], [Status], [CategoryID]) VALUES (1008, N'Blue Jean', N'Mavi Kot Pantolon', 900, N'/BCShopTheme/images/kp.jpg', N'Bol ve gevşek yapısı ile rahat bir kullanıma sahiptir.
Sadece tek beden üretilmiştir.', 50, 1, 3)
INSERT [dbo].[Products] ([ProductID], [Name], [Properties], [Price], [ImageUrl], [Note], [Amount], [Status], [CategoryID]) VALUES (1009, N'Gray Sweat Pants', N'Gri Eşofman Altı', 850, N'/BCShopTheme/images/gp.jpg', N'Unisex rahat kalıptır.
Sol bacakta nakış işlemeli logo
Kısa paça, Nakış işlemeli', 77, 1, 3)
INSERT [dbo].[Products] ([ProductID], [Name], [Properties], [Price], [ImageUrl], [Note], [Amount], [Status], [CategoryID]) VALUES (1010, N'Black Cap', N'Siyah Şapka', 300, N'/BCShopTheme/images/bcap.jpg', N'Siyah düz şapka
', 20, 0, 4)
INSERT [dbo].[Products] ([ProductID], [Name], [Properties], [Price], [ImageUrl], [Note], [Amount], [Status], [CategoryID]) VALUES (1011, N'deneme1', N'denemedeneme deneme', 860, N'/BCShopTheme/images/deneme.jpg', N'deneme554546sa', 50, 0, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Status]) VALUES (1, N'Ayşe Beliz', N'ayse@gmail.com', N'1111', N'true')
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Status]) VALUES (2, N'Gözde Başar', N'gozde@gmail.com', N'2222', N'true')
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Status]) VALUES (3, N'Murat Ali', N'mali@gmail.com', N'3333', N'true')
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Status]) VALUES (4, N'Başak Sen', N'basak@gmail.com', N'4444', N'true')
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Status]) VALUES (6, N'Ali Ala', N'aa@gmail.com', N'5555', N'true')
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Status]) VALUES (7, N'Erva Aya', N'ea@gmail.com', N'6666', N'true')
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Status]) VALUES (8, N'Buse Tek', N'bt@gmail.com', N'7777', N'true')
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Status]) VALUES (9, N'Buket Ak', N'ba@gmail.com', N'8888', N'true')
INSERT [dbo].[Users] ([UserID], [Name], [Email], [Password], [Status]) VALUES (10, N'Sade Sarı', N'ss@gmail.com', N'8888', N'true')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_CartItem_CartID]    Script Date: 9.12.2023 21:11:56 ******/
CREATE NONCLUSTERED INDEX [IX_CartItem_CartID] ON [dbo].[CartItem]
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartItem_ProductID]    Script Date: 9.12.2023 21:11:56 ******/
CREATE NONCLUSTERED INDEX [IX_CartItem_ProductID] ON [dbo].[CartItem]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_ProductID]    Script Date: 9.12.2023 21:11:56 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_ProductID] ON [dbo].[Comments]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_UserID]    Script Date: 9.12.2023 21:11:56 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_UserID] ON [dbo].[Comments]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryID]    Script Date: 9.12.2023 21:11:56 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT ((0)) FOR [ProductID]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT ((0)) FOR [UserID]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Carts_CartID] FOREIGN KEY([CartID])
REFERENCES [dbo].[Carts] ([CartID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Carts_CartID]
GO
ALTER TABLE [dbo].[CartItem]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItem] CHECK CONSTRAINT [FK_CartItem_Products_ProductID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products_ProductID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users_UserID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryID]
GO
USE [master]
GO
ALTER DATABASE [BCShop.db] SET  READ_WRITE 
GO
