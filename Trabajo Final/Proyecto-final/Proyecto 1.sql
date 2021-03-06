/****** Nombre Coral Ramona Cruz Suarez, Matricula 16-SIIT-1-016, Sección 0541******/
/****** Nombre Sergio David Soriano Polanco, Mantricula 16-SISN-1-006, Sección 0541******/
USE [master]
GO
/****** Object:  Database [SuperMercadoCoral]    Script Date: 4/7/2018 11:49:42 PM ******/
CREATE DATABASE [SuperMercadoCoral]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SuperMercadoCoral', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SuperMercadoCoral.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SuperMercadoCoral_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SuperMercadoCoral_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SuperMercadoCoral] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SuperMercadoCoral].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SuperMercadoCoral] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET ARITHABORT OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SuperMercadoCoral] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SuperMercadoCoral] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SuperMercadoCoral] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SuperMercadoCoral] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET RECOVERY FULL 
GO
ALTER DATABASE [SuperMercadoCoral] SET  MULTI_USER 
GO
ALTER DATABASE [SuperMercadoCoral] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SuperMercadoCoral] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SuperMercadoCoral] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SuperMercadoCoral] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SuperMercadoCoral] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SuperMercadoCoral', N'ON'
GO
ALTER DATABASE [SuperMercadoCoral] SET QUERY_STORE = OFF
GO
USE [SuperMercadoCoral]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SuperMercadoCoral]
GO
/****** Object:  Table [dbo].[cajero]    Script Date: 4/7/2018 11:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cajero](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maquina_registradora]    Script Date: 4/7/2018 11:49:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maquina_registradora](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 4/7/2018 11:49:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[precio] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 4/7/2018 11:49:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[cajero] [int] NULL,
	[maquina] [int] NULL,
	[producto] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cajero] ON 

INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (1, N'Ramon Lara')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (2, N'Pedro Martinez')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (3, N'Maria otoñe')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (4, N'Juan Duarte')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (5, N'Jenifer Lara')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (6, N'Steven Soto')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (7, N'Noelia Abreu')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (8, N'Diones pez')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (9, N'Robinso Perez')
INSERT [dbo].[cajero] ([codigo], [nombre]) VALUES (10, N'Ramon Paulino')
SET IDENTITY_INSERT [dbo].[cajero] OFF
SET IDENTITY_INSERT [dbo].[maquina_registradora] ON 

INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (1, 1)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (2, 2)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (3, 3)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (4, 4)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (5, 5)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (6, 6)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (7, 7)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (8, 8)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (9, 9)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (10, 10)
INSERT [dbo].[maquina_registradora] ([codigo], [piso]) VALUES (11, 11)
SET IDENTITY_INSERT [dbo].[maquina_registradora] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (1, N'arroz', 20)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (2, N'azucar', 22)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (3, N'pan', 5)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (4, N'pollo', 50)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (5, N'habichuela', 45)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (6, N'aceite', 150)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (7, N'manzana', 20)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (8, N'uva', 80)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (9, N'pera', 21)
INSERT [dbo].[Productos] ([codigo], [nombre], [precio]) VALUES (10, N'leche', 29)
SET IDENTITY_INSERT [dbo].[Productos] OFF
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (1, 1, 1)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (2, 2, 2)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (3, 3, 3)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (4, 4, 4)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (5, 5, 5)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (6, 6, 6)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (7, 7, 7)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (8, 8, 8)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (9, 9, 9)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (10, 10, 10)
INSERT [dbo].[venta] ([cajero], [maquina], [producto]) VALUES (11, 11, 11)
USE [master]
GO
ALTER DATABASE [SuperMercadoCoral] SET  READ_WRITE 
GO
