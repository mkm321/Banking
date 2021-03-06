USE [master]
GO
/****** Object:  Database [Mohit]    Script Date: 7/29/2018 8:09:28 PM ******/
CREATE DATABASE [Mohit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mohit', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Mohit.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'Mohit_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Mohit_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Mohit] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mohit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mohit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mohit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mohit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mohit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mohit] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mohit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mohit] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Mohit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mohit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mohit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mohit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mohit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mohit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mohit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mohit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mohit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mohit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mohit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mohit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mohit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mohit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mohit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mohit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mohit] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mohit] SET  MULTI_USER 
GO
ALTER DATABASE [Mohit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mohit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mohit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mohit] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Mohit]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/29/2018 8:09:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Account_Number] [int] NOT NULL,
	[Full_Name] [varchar](50) NOT NULL,
	[Amount] [int] NOT NULL,
	[Account_Type] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Account_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Mohit] SET  READ_WRITE 
GO
