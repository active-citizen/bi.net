USE [master]
GO

CREATE DATABASE [ActiveCitizen.DataWarehouse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ActiveCitizen.DataWarehouse', FILENAME = N'D:\DATA\ActiveCitizen.DataWarehouse.mdf' , SIZE = 2GB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB )
 LOG ON 
( NAME = N'ActiveCitizen.DataWarehouse_log', FILENAME = N'D:\LOG\ActiveCitizen.DataWarehouse_log.ldf' , SIZE = 1GB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ActiveCitizen.DataWarehouse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET ARITHABORT OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET  MULTI_USER 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ActiveCitizen.DataWarehouse] SET  READ_WRITE 
GO


