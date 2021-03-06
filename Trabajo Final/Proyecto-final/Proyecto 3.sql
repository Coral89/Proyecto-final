/****** Nombre Coral Ramona Cruz Suarez, Matricula 16-SIIT-1-016, Sección 0541******/
/****** Nombre Sergio David Soriano Polanco, Mantricula 16-SISN-1-006, Sección 0541******/
USE [master]
GO
/****** Object:  Database [trabajo]    Script Date: 4/7/2018 10:17:30 PM ******/
CREATE DATABASE [trabajo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'trabajo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\trabajo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'trabajo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\trabajo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [trabajo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [trabajo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [trabajo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [trabajo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [trabajo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [trabajo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [trabajo] SET ARITHABORT OFF 
GO
ALTER DATABASE [trabajo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [trabajo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [trabajo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [trabajo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [trabajo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [trabajo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [trabajo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [trabajo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [trabajo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [trabajo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [trabajo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [trabajo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [trabajo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [trabajo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [trabajo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [trabajo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [trabajo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [trabajo] SET RECOVERY FULL 
GO
ALTER DATABASE [trabajo] SET  MULTI_USER 
GO
ALTER DATABASE [trabajo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [trabajo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [trabajo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [trabajo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [trabajo] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'trabajo', N'ON'
GO
ALTER DATABASE [trabajo] SET QUERY_STORE = OFF
GO
USE [trabajo]
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
USE [trabajo]
GO
/****** Object:  Table [dbo].[tabla1]    Script Date: 4/7/2018 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla1](
	[codigo] [int] NULL,
	[apellidos] [varchar](30) NULL,
	[sueldo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabla2]    Script Date: 4/7/2018 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla2](
	[codigo] [int] NULL,
	[apellidos] [varchar](30) NULL,
	[sueldo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabla3]    Script Date: 4/7/2018 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabla3](
	[codigo] [int] NULL,
	[apellidos] [varchar](30) NULL,
	[sueldo] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (235, N'Kennedy perez', 7000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (236, N'Armando Perez', 8000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (237, N'Pedro Belliar', 1000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (235, N'Kennedy perez', 7000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (236, N'Armando Perez', 8000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (237, N'Pedro Belliar', 1000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (238, N'Lorena Abreu', 12000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (239, N'Antonio Mejia', 15000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (240, N'Roja Maria', 25000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (241, N'Laura De La Rosa', 3000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (242, N'Mario Rodriguez', 12000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (243, N'Jenifer Lara', 9000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (244, N'Robinson Pujols', 80000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (235, N'Kennedy perez', 7000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (236, N'Armando Perez', 8000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (237, N'Pedro Belliar', 1000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (238, N'Lorena Abreu', 12000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (239, N'Antonio Mejia', 15000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (240, N'Roja Maria', 25000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (241, N'Laura De La Rosa', 3000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (242, N'Mario Rodriguez', 12000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (243, N'Jenifer Lara', 9000)
INSERT [dbo].[tabla1] ([codigo], [apellidos], [sueldo]) VALUES (244, N'Robinson Pujols', 80000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (120, N'Armando Belliar', 8000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (120, N'Armando Belliar', 8000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (121, N'Benito Perez', 9000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (122, N'Pedro Gonzales ', 11000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (123, N'Lorena Abreu', 14000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (124, N'Antonio Patiño', 15000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (125, N'Roja Maria', 25000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (126, N'Pastol De La Rosa', 30000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (127, N'Mario Rodriguez', 45000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (128, N'Jenifer Lara', 94000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (120, N'Armando Belliar', 8000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (121, N'Benito Perez', 9000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (122, N'Pedro Gonzales ', 11000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (123, N'Lorena Abreu', 14000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (124, N'Antonio Patiño', 15000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (125, N'Roja Maria', 25000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (126, N'Pastol De La Rosa', 30000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (127, N'Mario Rodriguez', 45000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (128, N'Jenifer Lara', 94000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (129, N'Judas peña', 870000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (120, N'Armando Belliar', 8000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (121, N'Benito Perez', 9000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (122, N'Pedro Gonzales ', 11000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (123, N'Lorena Abreu', 14000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (124, N'Antonio Patiño', 15000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (125, N'Roja Maria', 25000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (126, N'Pastol De La Rosa', 30000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (127, N'Mario Rodriguez', 45000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (128, N'Jenifer Lara', 94000)
INSERT [dbo].[tabla2] ([codigo], [apellidos], [sueldo]) VALUES (129, N'Judas peña', 870000)
INSERT [dbo].[tabla3] ([codigo], [apellidos], [sueldo]) VALUES (50, N'Pedro Ramirez', 28000)
INSERT [dbo].[tabla3] ([codigo], [apellidos], [sueldo]) VALUES (51, N'Adrian Gonzales', 92000)
INSERT [dbo].[tabla3] ([codigo], [apellidos], [sueldo]) VALUES (52, N'Lorenzo Jimenez ', 51000)
INSERT [dbo].[tabla3] ([codigo], [apellidos], [sueldo]) VALUES (53, N'Diogenes Bonifacio', 18000)
INSERT [dbo].[tabla3] ([codigo], [apellidos], [sueldo]) VALUES (54, N'Alex Guerrero', 15000)
INSERT [dbo].[tabla3] ([codigo], [apellidos], [sueldo]) VALUES (55, N'Bartalo Soto', 25000)
INSERT [dbo].[tabla3] ([codigo], [apellidos], [sueldo]) VALUES (56, N'Antonio Peña', 30000)
INSERT [dbo].[tabla3] ([codigo], [apellidos], [sueldo]) VALUES (57, N'Virgen Pereira', 12000)
INSERT [dbo].[tabla3] ([codigo], [apellidos], [sueldo]) VALUES (58, N'Estefania Rosario', 12000)
INSERT [dbo].[tabla3] ([codigo], [apellidos], [sueldo]) VALUES (59, N'Steven Morel', 90000)
USE [master]
GO
ALTER DATABASE [trabajo] SET  READ_WRITE 
GO
