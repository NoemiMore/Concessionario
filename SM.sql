USE [master]
GO
/****** Object:  Database [Magazzino2]    Script Date: 25/08/2021 10:33:57 ******/
CREATE DATABASE [Magazzino2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Magazzino2', FILENAME = N'C:\Users\arian\Magazzino2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Magazzino2_log', FILENAME = N'C:\Users\arian\Magazzino2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Magazzino2] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Magazzino2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Magazzino2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Magazzino2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Magazzino2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Magazzino2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Magazzino2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Magazzino2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Magazzino2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Magazzino2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Magazzino2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Magazzino2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Magazzino2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Magazzino2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Magazzino2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Magazzino2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Magazzino2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Magazzino2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Magazzino2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Magazzino2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Magazzino2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Magazzino2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Magazzino2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Magazzino2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Magazzino2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Magazzino2] SET  MULTI_USER 
GO
ALTER DATABASE [Magazzino2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Magazzino2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Magazzino2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Magazzino2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Magazzino2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Magazzino2] SET QUERY_STORE = OFF
GO
USE [Magazzino2]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Magazzino2]
GO
/****** Object:  Table [dbo].[Bus]    Script Date: 25/08/2021 10:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bus](
	[Brand] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[SeatsNumber] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 25/08/2021 10:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[Brand] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[Supply] [int] NOT NULL,
	[DoorsNumber] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Motocycle]    Script Date: 25/08/2021 10:33:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Motocycle](
	[Brand] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[ProductionYear] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bus] ON 

INSERT [dbo].[Bus] ([Brand], [Model], [SeatsNumber], [Id]) VALUES (N'Iveco', N'Euroclass', 10, 1)
INSERT [dbo].[Bus] ([Brand], [Model], [SeatsNumber], [Id]) VALUES (N'Renault', N'Trafic', 8, 2)
INSERT [dbo].[Bus] ([Brand], [Model], [SeatsNumber], [Id]) VALUES (N'Fiat', N'Talento', 12, 3)
SET IDENTITY_INSERT [dbo].[Bus] OFF
GO
SET IDENTITY_INSERT [dbo].[Car] ON 

INSERT [dbo].[Car] ([Brand], [Model], [Supply], [DoorsNumber], [Id]) VALUES (N'Fiat', N'500', 0, 3, 1)
INSERT [dbo].[Car] ([Brand], [Model], [Supply], [DoorsNumber], [Id]) VALUES (N'Tesla', N'Model X', 2, 5, 2)
INSERT [dbo].[Car] ([Brand], [Model], [Supply], [DoorsNumber], [Id]) VALUES (N'Lancia', N'Y', 1, 5, 3)
SET IDENTITY_INSERT [dbo].[Car] OFF
GO
SET IDENTITY_INSERT [dbo].[Motocycle] ON 

INSERT [dbo].[Motocycle] ([Brand], [Model], [ProductionYear], [Id]) VALUES (N'Honda', N'CB', 2020, 1)
INSERT [dbo].[Motocycle] ([Brand], [Model], [ProductionYear], [Id]) VALUES (N'Vespa', N'P125X', 1985, 4)
INSERT [dbo].[Motocycle] ([Brand], [Model], [ProductionYear], [Id]) VALUES (N'Ducati', N'Panigale', 2021, 3)
INSERT [dbo].[Motocycle] ([Brand], [Model], [ProductionYear], [Id]) VALUES (N'Pippo', N'Pluto', 1111, 5)
SET IDENTITY_INSERT [dbo].[Motocycle] OFF
GO
USE [master]
GO
ALTER DATABASE [Magazzino2] SET  READ_WRITE 
GO
