USE [master]
GO
/****** Object:  Database [interview]    Script Date: 12/20/2015 8:26:42 AM ******/
CREATE DATABASE [interview]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'interview', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\interview.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'interview_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\interview_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [interview] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [interview].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [interview] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [interview] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [interview] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [interview] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [interview] SET ARITHABORT OFF 
GO
ALTER DATABASE [interview] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [interview] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [interview] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [interview] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [interview] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [interview] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [interview] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [interview] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [interview] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [interview] SET  DISABLE_BROKER 
GO
ALTER DATABASE [interview] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [interview] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [interview] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [interview] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [interview] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [interview] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [interview] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [interview] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [interview] SET  MULTI_USER 
GO
ALTER DATABASE [interview] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [interview] SET DB_CHAINING OFF 
GO
ALTER DATABASE [interview] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [interview] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [interview] SET DELAYED_DURABILITY = DISABLED 
GO
USE [interview]
GO
/****** Object:  Table [dbo].[tUser]    Script Date: 12/20/2015 8:26:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_tUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [interview] SET  READ_WRITE 
GO
