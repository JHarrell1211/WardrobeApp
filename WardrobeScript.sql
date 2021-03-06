USE [master]
GO
/****** Object:  Database [WardrobeProjectDatabase]    Script Date: 3/19/2018 12:51:59 AM ******/
CREATE DATABASE [WardrobeProjectDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeProjectDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeProjectDatabase.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeProjectDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeProjectDatabase_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeProjectDatabase] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeProjectDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeProjectDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeProjectDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeProjectDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeProjectDatabase]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryTypeID] [int] NOT NULL,
	[AccessoryImage] [nvarchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessoryTypes]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessoryTypes](
	[AccessoryTypeID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AccessoryTypes] PRIMARY KEY CLUSTERED 
(
	[AccessoryTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomTypeID] [int] NOT NULL,
	[BottomImage] [nvarchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BottomTypes]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BottomTypes](
	[BottomTypeID] [int] IDENTITY(1,1) NOT NULL,
	[BottomType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BottomTypes] PRIMARY KEY CLUSTERED 
(
	[BottomTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colors]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasions]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasions](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[OccasionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Occasions] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[OutfitName] [nvarchar](50) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seasons]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seasons](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoeTypeID] [int] NOT NULL,
	[ShoeImage] [nvarchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShoeTypes]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoeTypes](
	[ShoeTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ShoeTypes] PRIMARY KEY CLUSTERED 
(
	[ShoeTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopTypeID] [int] NOT NULL,
	[TopImage] [nvarchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TopTypes]    Script Date: 3/19/2018 12:51:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopTypes](
	[TopTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TopType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TopTypes] PRIMARY KEY CLUSTERED 
(
	[TopTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryTypeID], [AccessoryImage], [ColorID], [OccasionID], [SeasonID]) VALUES (1, N'Cleveland Hat', 2, N'/Content/Images/Accessories/hat1.jpg', 4, 1, 5)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryTypeID], [AccessoryImage], [ColorID], [OccasionID], [SeasonID]) VALUES (2, N'Angels Hat', 2, N'/Content/Images/Accessories/hat2.jpg', 1, 1, 5)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryTypeID], [AccessoryImage], [ColorID], [OccasionID], [SeasonID]) VALUES (3, N'Black Watch', 1, N'/Content/Images/Accessories/watch3.jpg', 2, 5, 6)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryTypeID], [AccessoryImage], [ColorID], [OccasionID], [SeasonID]) VALUES (4, N'Silver Watch', 1, N'/Content/Images/Accessories/watch2.jpg', 8, 5, 6)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryTypeID], [AccessoryImage], [ColorID], [OccasionID], [SeasonID]) VALUES (5, N'Gold Necklace', 3, N'/Content/Images/Accessories/necklace.jpg', 7, 5, 6)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryTypeID], [AccessoryImage], [ColorID], [OccasionID], [SeasonID]) VALUES (6, N'Beaded Bracelet', 6, N'/Content/Images/Accessories/bracelet1.jpg', 2, 5, 6)
INSERT [dbo].[Accessories] ([AccessoryID], [AccessoryName], [AccessoryTypeID], [AccessoryImage], [ColorID], [OccasionID], [SeasonID]) VALUES (7, N'Skull Cap', 2, N'/Content/Images/Accessories/skullcap.jpg', 2, 1, 1)
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[AccessoryTypes] ON 

INSERT [dbo].[AccessoryTypes] ([AccessoryTypeID], [AccessoryType]) VALUES (1, N'Watch')
INSERT [dbo].[AccessoryTypes] ([AccessoryTypeID], [AccessoryType]) VALUES (2, N'Hat')
INSERT [dbo].[AccessoryTypes] ([AccessoryTypeID], [AccessoryType]) VALUES (3, N'Necklace')
INSERT [dbo].[AccessoryTypes] ([AccessoryTypeID], [AccessoryType]) VALUES (4, N'Scarf')
INSERT [dbo].[AccessoryTypes] ([AccessoryTypeID], [AccessoryType]) VALUES (5, N'Jacket')
INSERT [dbo].[AccessoryTypes] ([AccessoryTypeID], [AccessoryType]) VALUES (6, N'Bracelet')
INSERT [dbo].[AccessoryTypes] ([AccessoryTypeID], [AccessoryType]) VALUES (7, N'Ring')
SET IDENTITY_INSERT [dbo].[AccessoryTypes] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomTypeID], [BottomImage], [ColorID], [OccasionID], [SeasonID]) VALUES (1, N'Light Jeans', 2, N'/Content/Images/Bottoms/jeans3.jpg', 11, 5, 6)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomTypeID], [BottomImage], [ColorID], [OccasionID], [SeasonID]) VALUES (2, N'Dark Jeans', 2, N'/Content/Images/Bottoms/jeans2.jpg', 12, 5, 6)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomTypeID], [BottomImage], [ColorID], [OccasionID], [SeasonID]) VALUES (3, N'Khaki Shorts', 1, N'/Content/Images/Bottoms/khakishorts.jpg', 6, 1, 5)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomTypeID], [BottomImage], [ColorID], [OccasionID], [SeasonID]) VALUES (4, N'Jean Shorts', 1, N'/Content/Images/Bottoms/jeanshorts.jpg', 11, 1, 5)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomTypeID], [BottomImage], [ColorID], [OccasionID], [SeasonID]) VALUES (5, N'Khakis', 3, N'/Content/Images/Bottoms/khakis1.jpg', 16, 5, 6)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomTypeID], [BottomImage], [ColorID], [OccasionID], [SeasonID]) VALUES (6, N'Gray Sweatpants', 6, N'/Content/Images/Bottoms/sweatpant1.jpg', 19, 5, 6)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomTypeID], [BottomImage], [ColorID], [OccasionID], [SeasonID]) VALUES (7, N'Black Sweatpants', 6, N'/Content/Images/Bottoms/sweatpant2.jpg', 2, 1, 6)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomTypeID], [BottomImage], [ColorID], [OccasionID], [SeasonID]) VALUES (8, N'White Gym Shorts', 1, N'/Content/Images/Bottoms/ballshorts1.jpg', 3, 3, 6)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomTypeID], [BottomImage], [ColorID], [OccasionID], [SeasonID]) VALUES (9, N'Red Gym Shorts', 1, N'/Content/Images/Bottoms/ballshorts2.jpg', 1, 3, 6)
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomTypeID], [BottomImage], [ColorID], [OccasionID], [SeasonID]) VALUES (10, N'Black Jeans', 2, N'/Content/Images/Bottoms/jeans4.jpg', 2, 5, 6)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[BottomTypes] ON 

INSERT [dbo].[BottomTypes] ([BottomTypeID], [BottomType]) VALUES (1, N'Shorts')
INSERT [dbo].[BottomTypes] ([BottomTypeID], [BottomType]) VALUES (2, N'Jeans')
INSERT [dbo].[BottomTypes] ([BottomTypeID], [BottomType]) VALUES (3, N'Slacks')
INSERT [dbo].[BottomTypes] ([BottomTypeID], [BottomType]) VALUES (4, N'Corduroy')
INSERT [dbo].[BottomTypes] ([BottomTypeID], [BottomType]) VALUES (5, N'Cargo')
INSERT [dbo].[BottomTypes] ([BottomTypeID], [BottomType]) VALUES (6, N'Sweatpants')
SET IDENTITY_INSERT [dbo].[BottomTypes] OFF
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (1, N'Red')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (2, N'Black')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (3, N'White')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (4, N'Blue')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (5, N'Brown')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (6, N'Tan')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (7, N'Gold')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (8, N'Silver')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (9, N'Orange')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (10, N'Green')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (11, N'Light Blue')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (12, N'Dark Blue')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (13, N'Pink')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (14, N'Yellow')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (15, N'Multiple')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (16, N'Khaki')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (17, N'Purple')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (18, N'Teal')
INSERT [dbo].[Colors] ([ColorID], [ColorName]) VALUES (19, N'Gray')
SET IDENTITY_INSERT [dbo].[Colors] OFF
SET IDENTITY_INSERT [dbo].[Occasions] ON 

INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (1, N'Casual')
INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (2, N'Dress')
INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (3, N'Exercise')
INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (4, N'Formal')
INSERT [dbo].[Occasions] ([OccasionID], [OccasionName]) VALUES (5, N'Multiple')
SET IDENTITY_INSERT [dbo].[Occasions] OFF
SET IDENTITY_INSERT [dbo].[Outfits] ON 

INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (1, N'Work day', 1, 2, 7, 3)
INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (2, N'Normal Day', 6, 2, 2, 2)
INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (3, N'Relaxing', 11, 7, 10, 6)
INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (4, N'Summer Family Outing', 3, 3, 5, 4)
INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (5, N'Gym', 5, 9, 6, 1)
INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (6, N'Work Day 2', 2, 5, 3, 5)
INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (7, N'Out Shopping', 10, 1, 8, 4)
INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (8, N'Winter Night Out', 7, 10, 4, 7)
INSERT [dbo].[Outfits] ([OutfitID], [OutfitName], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (9, N'Visiting Family', 11, 10, 9, 3)
SET IDENTITY_INSERT [dbo].[Outfits] OFF
SET IDENTITY_INSERT [dbo].[Seasons] ON 

INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (1, N'Winter')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (2, N'Summer')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (3, N'Spring')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (4, N'Fall')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (5, N'Multiple')
INSERT [dbo].[Seasons] ([SeasonID], [SeasonName]) VALUES (6, N'All')
SET IDENTITY_INSERT [dbo].[Seasons] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoeTypeID], [ShoeImage], [ColorID], [OccasionID], [SeasonID]) VALUES (1, N'Jordan XI', 1, N'/Content/Images/Shoes/shoe1.jpg', 2, 1, 5)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoeTypeID], [ShoeImage], [ColorID], [OccasionID], [SeasonID]) VALUES (2, N'Air Max 90', 1, N'/Content/Images/Shoes/shoe4.jpg', 3, 1, 5)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoeTypeID], [ShoeImage], [ColorID], [OccasionID], [SeasonID]) VALUES (3, N'Dress Shoe', 3, N'/Content/Images/Shoes/shoe2.jpg', 5, 2, 6)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoeTypeID], [ShoeImage], [ColorID], [OccasionID], [SeasonID]) VALUES (4, N'Timberlands', 2, N'/Content/Images/Shoes/shoe3.jpg', 6, 1, 5)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoeTypeID], [ShoeImage], [ColorID], [OccasionID], [SeasonID]) VALUES (5, N'Red Boat Shoe', 4, N'/Content/Images/Shoes/shoe5.jpeg', 1, 1, 2)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoeTypeID], [ShoeImage], [ColorID], [OccasionID], [SeasonID]) VALUES (6, N'Hurrache', 1, N'/Content/Images/Shoes/shoe6.jpg', 2, 3, 6)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoeTypeID], [ShoeImage], [ColorID], [OccasionID], [SeasonID]) VALUES (7, N'Black Dress Shoe', 3, N'/Content/Images/Shoes/shoe7.jpg', 2, 2, 6)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoeTypeID], [ShoeImage], [ColorID], [OccasionID], [SeasonID]) VALUES (8, N'Dress Boot', 2, N'/Content/Images/Shoes/shoe8.jpg', 5, 1, 5)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoeTypeID], [ShoeImage], [ColorID], [OccasionID], [SeasonID]) VALUES (9, N'Vans', 5, N'/Content/Images/Shoes/shoe10.jpg', 2, 1, 5)
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoeTypeID], [ShoeImage], [ColorID], [OccasionID], [SeasonID]) VALUES (10, N'Air Force 270 Safari', 1, N'/Content/Images/Shoes/shoe9.jpg', 15, 5, 5)
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[ShoeTypes] ON 

INSERT [dbo].[ShoeTypes] ([ShoeTypeID], [ShoeType]) VALUES (1, N'Sneaker')
INSERT [dbo].[ShoeTypes] ([ShoeTypeID], [ShoeType]) VALUES (2, N'Boot')
INSERT [dbo].[ShoeTypes] ([ShoeTypeID], [ShoeType]) VALUES (3, N'Dress')
INSERT [dbo].[ShoeTypes] ([ShoeTypeID], [ShoeType]) VALUES (4, N'Boat')
INSERT [dbo].[ShoeTypes] ([ShoeTypeID], [ShoeType]) VALUES (5, N'Canvas')
SET IDENTITY_INSERT [dbo].[ShoeTypes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (1, N'Long-Sleeved Black Shirt', 3, N'/Content/Images/Tops/buttonshirt1.jpg', 2, 2, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (2, N'Long-Sleeved Pink Shirt', 3, N'/Content/Images/Tops/buttonshirt2.jpg', 13, 5, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (3, N'Dark Red Polo', 2, N'/Content/Images/Tops/polo1.jpg', 1, 1, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (4, N'White Polo w/ Black Collar', 2, N'/Content/Images/Tops/polo2.jpg', 3, 5, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (5, N'Captain America T-Shirt', 1, N'/Content/Images/Tops/tshirt1.jpg', 4, 5, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (6, N'Marvel Shirt', 1, N'/Content/Images/Tops/tshirt2.jpg', 1, 5, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (7, N'Black White Gray Sweater', 4, N'/Content/Images/Tops/sweater1.jpg', 15, 1, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (8, N'Yellow Sweater', 4, N'/Content/Images/Tops/sweater2.jpg', 14, 1, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (9, N'Black Turtleneck', 5, N'/Content/Images/Tops/turtleneck.jpg', 2, 5, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (10, N'Plaid Short Sleeve', 3, N'/Content/Images/Tops/buttonshirt3.jpg', 15, 1, 5)
INSERT [dbo].[Tops] ([TopID], [TopName], [TopTypeID], [TopImage], [ColorID], [OccasionID], [SeasonID]) VALUES (11, N'White Shirt Black Sleeves', 1, N'/Content/Images/Tops/tshirt3.jpg', 3, 1, 5)
SET IDENTITY_INSERT [dbo].[Tops] OFF
SET IDENTITY_INSERT [dbo].[TopTypes] ON 

INSERT [dbo].[TopTypes] ([TopTypeID], [TopType]) VALUES (1, N'T-shirt')
INSERT [dbo].[TopTypes] ([TopTypeID], [TopType]) VALUES (2, N'Polo')
INSERT [dbo].[TopTypes] ([TopTypeID], [TopType]) VALUES (3, N'Button Up')
INSERT [dbo].[TopTypes] ([TopTypeID], [TopType]) VALUES (4, N'Sweater')
INSERT [dbo].[TopTypes] ([TopTypeID], [TopType]) VALUES (5, N'Turtleneck')
SET IDENTITY_INSERT [dbo].[TopTypes] OFF
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_AccessoryTypes] FOREIGN KEY([AccessoryTypeID])
REFERENCES [dbo].[AccessoryTypes] ([AccessoryTypeID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_AccessoryTypes]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Colors]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Occasions]
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD  CONSTRAINT [FK_Accessories_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessories] CHECK CONSTRAINT [FK_Accessories_Seasons]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_BottomTypes] FOREIGN KEY([BottomTypeID])
REFERENCES [dbo].[BottomTypes] ([BottomTypeID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_BottomTypes]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Colors]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Occasions]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Seasons]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessories] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Colors]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Occasions]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Seasons]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_ShoeTypes] FOREIGN KEY([ShoeTypeID])
REFERENCES [dbo].[ShoeTypes] ([ShoeTypeID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_ShoeTypes]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Colors] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colors] ([ColorID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Colors]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occasions] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasions] ([OccasionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occasions]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Seasons] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Seasons] ([SeasonID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Seasons]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_TopTypes] FOREIGN KEY([TopTypeID])
REFERENCES [dbo].[TopTypes] ([TopTypeID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_TopTypes]
GO
USE [master]
GO
ALTER DATABASE [WardrobeProjectDatabase] SET  READ_WRITE 
GO
