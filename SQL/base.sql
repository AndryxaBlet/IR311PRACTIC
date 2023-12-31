USE [master]
GO
/****** Object:  Database [Practic0201Ir311v2]    Script Date: 16.12.2023 11:42:21 ******/
CREATE DATABASE [Practic0201Ir311v2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Practic0201Ir311v2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Practic0201Ir311v2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Practic0201Ir311v2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Practic0201Ir311v2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Practic0201Ir311v2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Practic0201Ir311v2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Practic0201Ir311v2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Practic0201Ir311v2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Practic0201Ir311v2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Practic0201Ir311v2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Practic0201Ir311v2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET RECOVERY FULL 
GO
ALTER DATABASE [Practic0201Ir311v2] SET  MULTI_USER 
GO
ALTER DATABASE [Practic0201Ir311v2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Practic0201Ir311v2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Practic0201Ir311v2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Practic0201Ir311v2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Practic0201Ir311v2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Practic0201Ir311v2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Practic0201Ir311v2', N'ON'
GO
ALTER DATABASE [Practic0201Ir311v2] SET QUERY_STORE = OFF
GO
USE [Practic0201Ir311v2]
GO
/****** Object:  Table [dbo].[Apartaments]    Script Date: 16.12.2023 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apartaments](
	[ID] [int] NOT NULL,
	[HouseID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Area] [decimal](10, 1) NOT NULL,
	[CountOfRooms] [int] NOT NULL,
	[Section] [int] NOT NULL,
	[Floor] [int] NOT NULL,
	[IsSold] [bit] NOT NULL,
	[BuildingCost] [int] NOT NULL,
	[ApartmentValueAdded] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ArC] [int] NOT NULL,
	[RmC] [int] NOT NULL,
	[BaseC] [int] NOT NULL,
	[Прибыль] [int] NULL,
 CONSTRAINT [PK_Apartaments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 16.12.2023 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[ID] [int] NOT NULL,
	[ResidentialComplexID] [int] NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
	[BuildingCost] [int] NOT NULL,
	[HouseValueAdded] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ПрибыльОтКвартир] [int] NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResidentialComplex]    Script Date: 16.12.2023 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResidentialComplex](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[BuildingCost] [int] NOT NULL,
	[ComplexValueAdded] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ПрибыльОтЖК] [int] NULL,
 CONSTRAINT [PK_ResidentialComplex] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[results2]    Script Date: 16.12.2023 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[results2](
	[Номер] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[HouseID] [int] NULL,
	[Прибыль] [int] NULL,
 CONSTRAINT [PK_results2] PRIMARY KEY CLUSTERED 
(
	[Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rreessuullttss11]    Script Date: 16.12.2023 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rreessuullttss11](
	[Номер] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Прибыль] [int] NULL,
 CONSTRAINT [PK_rreessuullttss11] PRIMARY KEY CLUSTERED 
(
	[Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (457, 1, 1, CAST(67.6 AS Decimal(10, 1)), 2, 1, 1, 1, 11882000, 300000, 0, 10, 10, 10, 12482706)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (458, 1, 2, CAST(79.2 AS Decimal(10, 1)), 3, 1, 1, 1, 13925000, 375000, 0, 10, 10, 10, 14450832)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (776, 1, 320, CAST(79.2 AS Decimal(10, 1)), 3, 2, 15, 1, 13925000, 375000, 0, 10, 10, 10, 14450832)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (777, 1, 321, CAST(35.4 AS Decimal(10, 1)), 1, 2, 15, 1, 7852000, 200000, 0, 10, 10, 10, 8552374)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (778, 1, 322, CAST(35.4 AS Decimal(10, 1)), 1, 2, 15, 1, 7852000, 200000, 0, 10, 10, 10, 8552374)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (923, 1, 467, CAST(79.2 AS Decimal(10, 1)), 3, 2, 39, 0, 13925000, 375000, 0, 10, 10, 10, 14450832)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (924, 1, 468, CAST(67.6 AS Decimal(10, 1)), 2, 2, 39, 1, 11882000, 300000, 0, 10, 10, 10, 12482706)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (925, 3, 1, CAST(67.6 AS Decimal(10, 1)), 2, 1, 1, 1, 10697000, 300000, 0, 10, 10, 10, 11397706)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (926, 3, 2, CAST(79.2 AS Decimal(10, 1)), 3, 1, 1, 0, 12558000, 375000, 0, 10, 10, 10, 13183832)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1002, 3, 78, CAST(67.6 AS Decimal(10, 1)), 2, 1, 13, 1, 10697000, 300000, 0, 10, 10, 10, 11397706)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1003, 3, 79, CAST(67.6 AS Decimal(10, 1)), 2, 1, 14, 1, 10697000, 300000, 0, 10, 10, 10, 11397706)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1004, 3, 80, CAST(79.2 AS Decimal(10, 1)), 3, 1, 14, 1, 12558000, 375000, 0, 10, 10, 10, 13183832)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1005, 3, 81, CAST(35.4 AS Decimal(10, 1)), 1, 1, 14, 0, 6900000, 200000, 0, 10, 10, 10, 7700374)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1152, 3, 228, CAST(67.6 AS Decimal(10, 1)), 2, 1, 38, 1, 10697000, 300000, 0, 10, 10, 10, 11397706)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1153, 3, 229, CAST(67.6 AS Decimal(10, 1)), 2, 1, 39, 1, 10697000, 300000, 0, 10, 10, 10, 11397706)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1154, 3, 230, CAST(79.2 AS Decimal(10, 1)), 3, 1, 39, 1, 12558000, 375000, 0, 10, 10, 10, 13183832)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1410, 3, 486, CAST(67.6 AS Decimal(10, 1)), 2, 3, 3, 1, 10697000, 300000, 0, 10, 10, 10, 11397706)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1411, 3, 487, CAST(67.6 AS Decimal(10, 1)), 2, 3, 4, 0, 10697000, 300000, 0, 10, 10, 10, 11397706)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1412, 3, 488, CAST(79.2 AS Decimal(10, 1)), 3, 3, 4, 0, 12558000, 375000, 0, 10, 10, 10, 13183832)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1647, 6, 21, CAST(35.4 AS Decimal(10, 1)), 1, 1, 4, 1, 7200000, 300000, 0, 10, 10, 10, 8100374)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1648, 6, 22, CAST(35.4 AS Decimal(10, 1)), 1, 1, 4, 1, 7200000, 300000, 0, 10, 10, 10, 8100374)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1649, 6, 23, CAST(79.7 AS Decimal(10, 1)), 3, 1, 4, 0, 12560000, 475000, 0, 10, 10, 10, 13285837)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1836, 6, 210, CAST(68.7 AS Decimal(10, 1)), 2, 2, 8, 0, 10854000, 400000, 0, 10, 10, 10, 11654717)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1837, 6, 211, CAST(68.7 AS Decimal(10, 1)), 2, 2, 9, 1, 10854000, 400000, 0, 10, 10, 10, 11654717)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1978, 5, 28, CAST(35.4 AS Decimal(10, 1)), 1, 1, 5, 0, 8955000, 350000, 0, 10, 10, 10, 9805374)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1979, 5, 29, CAST(79.7 AS Decimal(10, 1)), 3, 1, 5, 1, 14432000, 525000, 0, 10, 10, 10, 15107837)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1980, 5, 30, CAST(68.7 AS Decimal(10, 1)), 2, 1, 5, 0, 16885000, 450000, 0, 10, 10, 10, 17635717)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (1981, 5, 31, CAST(68.7 AS Decimal(10, 1)), 2, 1, 6, 0, 16885000, 450000, 0, 10, 10, 10, 17635717)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2274, 5, 324, CAST(68.7 AS Decimal(10, 1)), 2, 2, 27, 0, 16885000, 450000, 0, 10, 10, 10, 17635717)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2275, 8, 1, CAST(68.9 AS Decimal(10, 1)), 2, 1, 1, 1, 10975000, 375000, 0, 10, 10, 10, 11550719)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2276, 8, 2, CAST(79.2 AS Decimal(10, 1)), 3, 1, 1, 1, 12787000, 420000, 0, 10, 10, 10, 13317832)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2597, 8, 323, CAST(79.2 AS Decimal(10, 1)), 3, 2, 27, 1, 14432000, 420000, 0, 10, 10, 10, 14962832)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2598, 8, 324, CAST(68.9 AS Decimal(10, 1)), 2, 2, 27, 0, 16885000, 375000, 0, 10, 10, 10, 17460719)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2599, 9, 1, CAST(68.9 AS Decimal(10, 1)), 2, 1, 1, 0, 14552000, 420000, 0, 10, 10, 10, 15082719)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2600, 9, 2, CAST(59.1 AS Decimal(10, 1)), 3, 1, 1, 0, 11198000, 440000, 0, 10, 10, 10, 11708631)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2787, 9, 189, CAST(39.5 AS Decimal(10, 1)), 1, 2, 8, 1, 8196000, 305000, 0, 10, 10, 10, 8841415)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2788, 9, 190, CAST(39.5 AS Decimal(10, 1)), 1, 2, 8, 1, 8196000, 305000, 0, 10, 10, 10, 8841415)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2923, 10, 37, CAST(65.5 AS Decimal(10, 1)), 2, 2, 1, 0, 7731000, 650000, 0, 10, 10, 10, 14731685)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2924, 10, 38, CAST(40.6 AS Decimal(10, 1)), 1, 2, 1, 0, 5850000, 390000, 0, 10, 10, 10, 13110426)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (2925, 10, 39, CAST(40.6 AS Decimal(10, 1)), 1, 2, 1, 0, 5850000, 390000, 0, 10, 10, 10, 13110426)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (3405, 11, 91, CAST(40.9 AS Decimal(10, 1)), 1, 3, 5, 0, 5955000, 350000, 0, 10, 10, 10, 13055429)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (3406, 11, 92, CAST(62.7 AS Decimal(10, 1)), 2, 3, 5, 1, 7453000, 450000, 0, 10, 10, 10, 14453657)
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted], [ArC], [RmC], [BaseC], [Прибыль]) VALUES (3407, 11, 93, CAST(63.3 AS Decimal(10, 1)), 2, 3, 6, 0, 7453000, 450000, 0, 10, 10, 10, 14453663)
GO
INSERT [dbo].[House] ([ID], [ResidentialComplexID], [Street], [Number], [BuildingCost], [HouseValueAdded], [IsDeleted], [ПрибыльОтКвартир]) VALUES (1, 1, N'Амурская', N'Г8', 400000, 500000, 0, 81922656)
INSERT [dbo].[House] ([ID], [ResidentialComplexID], [Street], [Number], [BuildingCost], [HouseValueAdded], [IsDeleted], [ПрибыльОтКвартир]) VALUES (3, 1, N'Амурская', N'Г7', 500000, 550000, 0, 133619644)
INSERT [dbo].[House] ([ID], [ResidentialComplexID], [Street], [Number], [BuildingCost], [HouseValueAdded], [IsDeleted], [ПрибыльОтКвартир]) VALUES (5, 1, N'Амурская', N'А2', 700000, 850000, 0, 73570362)
INSERT [dbo].[House] ([ID], [ResidentialComplexID], [Street], [Number], [BuildingCost], [HouseValueAdded], [IsDeleted], [ПрибыльОтКвартир]) VALUES (6, 1, N'Амурская', N'А1', 700000, 850000, 0, 48546019)
INSERT [dbo].[House] ([ID], [ResidentialComplexID], [Street], [Number], [BuildingCost], [HouseValueAdded], [IsDeleted], [ПрибыльОтКвартир]) VALUES (8, 1, N'Амурская', N'Б3', 450000, 550000, 0, 55092102)
INSERT [dbo].[House] ([ID], [ResidentialComplexID], [Street], [Number], [BuildingCost], [HouseValueAdded], [IsDeleted], [ПрибыльОтКвартир]) VALUES (9, 1, N'Амурская', N'Б4', 450000, 550000, 0, 42274180)
INSERT [dbo].[House] ([ID], [ResidentialComplexID], [Street], [Number], [BuildingCost], [HouseValueAdded], [IsDeleted], [ПрибыльОтКвартир]) VALUES (10, 2, N'Калужское шоссе', N'01.01', 650000, 700000, 0, 38852537)
INSERT [dbo].[House] ([ID], [ResidentialComplexID], [Street], [Number], [BuildingCost], [HouseValueAdded], [IsDeleted], [ПрибыльОтКвартир]) VALUES (11, 2, N'Калужское шоссе', N'01.02', 450000, 500000, 0, 40462749)
GO
INSERT [dbo].[ResidentialComplex] ([ID], [Name], [City], [Status], [BuildingCost], [ComplexValueAdded], [IsDeleted], [ПрибыльОтЖК]) VALUES (1, N'Level Амурская', N'Москва', N'строительство', 500000, 60000, 0, 434964963)
INSERT [dbo].[ResidentialComplex] ([ID], [Name], [City], [Status], [BuildingCost], [ComplexValueAdded], [IsDeleted], [ПрибыльОтЖК]) VALUES (2, N'Испанские кварталы', N'Москва', N'план', 7000000, 950000, 0, 78365286)
GO
SET IDENTITY_INSERT [dbo].[results2] ON 

INSERT [dbo].[results2] ([Номер], [Name], [HouseID], [Прибыль]) VALUES (11, N'Испанские кварталы', 10, 12000845)
INSERT [dbo].[results2] ([Номер], [Name], [HouseID], [Прибыль]) VALUES (12, N'Испанские кварталы', 11, 12537583)
SET IDENTITY_INSERT [dbo].[results2] OFF
GO
SET IDENTITY_INSERT [dbo].[rreessuullttss11] ON 

INSERT [dbo].[rreessuullttss11] ([Номер], [Name], [Прибыль]) VALUES (9, N'Level Амурская', 438624963)
SET IDENTITY_INSERT [dbo].[rreessuullttss11] OFF
GO
ALTER TABLE [dbo].[Apartaments] ADD  CONSTRAINT [DF_Apartaments_ArC]  DEFAULT ((10)) FOR [ArC]
GO
ALTER TABLE [dbo].[Apartaments] ADD  CONSTRAINT [DF_Apartaments_RmC]  DEFAULT ((10)) FOR [RmC]
GO
ALTER TABLE [dbo].[Apartaments] ADD  CONSTRAINT [DF_Apartaments_BaseC]  DEFAULT ((10)) FOR [BaseC]
GO
ALTER TABLE [dbo].[Apartaments]  WITH CHECK ADD  CONSTRAINT [FK_Apartaments_House] FOREIGN KEY([HouseID])
REFERENCES [dbo].[House] ([ID])
GO
ALTER TABLE [dbo].[Apartaments] CHECK CONSTRAINT [FK_Apartaments_House]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_House_ResidentialComplex] FOREIGN KEY([ResidentialComplexID])
REFERENCES [dbo].[ResidentialComplex] ([ID])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_House_ResidentialComplex]
GO
/****** Object:  StoredProcedure [dbo].[CostKV1]    Script Date: 16.12.2023 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CostKV1]
@ZK int
as
delete from rreessuullttss11
INSERT INTO rreessuullttss11
           ([Name]
           ,[Прибыль])
select ResidentialComplex.Name,Sum(Area*Apartaments.ArC+CountOfRooms*Apartaments.RmC+Apartaments.BuildingCost+House.BuildingCost+
ResidentialComplex.BuildingCost+Apartaments.BaseC-House.HouseValueAdded-Apartaments.ApartmentValueAdded)-ResidentialComplex.ComplexValueAdded as Cумма 
from (House inner join Apartaments on House.ID = Apartaments.HouseID) inner join ResidentialComplex on House.ResidentialComplexID=ResidentialComplex.ID
where ResidentialComplex.ID=@ZK
GROUP BY ResidentialComplex.ID,ResidentialComplex.Name,ResidentialComplex.ComplexValueAdded
GO
/****** Object:  StoredProcedure [dbo].[Prib3]    Script Date: 16.12.2023 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[Prib3]
 as
delete from results2
INSERT INTO results2
           ([Name],HouseID
           ,[Прибыль])
Select ResidentialComplex.Name, House.ID,sum(Area*Apartaments.ArC+CountOfRooms*Apartaments.RmC+Apartaments.BuildingCost+House.BuildingCost+ResidentialComplex.BuildingCost+Apartaments.BaseC-House.HouseValueAdded-Apartaments.ApartmentValueAdded-ResidentialComplex.ComplexValueAdded)/COUNT(House.ID) as Прибыль
From ResidentialComplex inner join House on ResidentialComplex.ID = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID
Where ResidentialComplex.Status = 'План'
GROUP BY ResidentialComplex.Name,House.ID
GO
/****** Object:  StoredProcedure [dbo].[PribOtKV]    Script Date: 16.12.2023 11:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PribOtKV]
as
Delete from rreessuullttss11
Insert into rreessuullttss11 (Name,Прибыль)
Select ResidentialComplex.Name, (Sum(Apartaments.Прибыль-House.BuildingCost)) as Прибыль
From ResidentialComplex inner join House on ResidentialComplex.ID = House.ResidentialComplexID inner join Apartaments on Apartaments.HouseID = House.ID
Where ResidentialComplex.Status = 'строительство'
Group by  ResidentialComplex.Name
GO
USE [master]
GO
ALTER DATABASE [Practic0201Ir311v2] SET  READ_WRITE 
GO
