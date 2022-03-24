USE [master]
GO
/****** Object:  Database [Webbanthuoc]    Script Date: 03/24/2022 10:58:11 ******/
CREATE DATABASE [Webbanthuoc] ON  PRIMARY 
( NAME = N'Webbanthuoc', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Webbanthuoc.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Webbanthuoc_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Webbanthuoc_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Webbanthuoc] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Webbanthuoc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Webbanthuoc] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Webbanthuoc] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Webbanthuoc] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Webbanthuoc] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Webbanthuoc] SET ARITHABORT OFF
GO
ALTER DATABASE [Webbanthuoc] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Webbanthuoc] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Webbanthuoc] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Webbanthuoc] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Webbanthuoc] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Webbanthuoc] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Webbanthuoc] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Webbanthuoc] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Webbanthuoc] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Webbanthuoc] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Webbanthuoc] SET  ENABLE_BROKER
GO
ALTER DATABASE [Webbanthuoc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Webbanthuoc] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Webbanthuoc] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Webbanthuoc] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Webbanthuoc] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Webbanthuoc] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Webbanthuoc] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Webbanthuoc] SET  READ_WRITE
GO
ALTER DATABASE [Webbanthuoc] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Webbanthuoc] SET  MULTI_USER
GO
ALTER DATABASE [Webbanthuoc] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Webbanthuoc] SET DB_CHAINING OFF
GO
USE [Webbanthuoc]
GO
/****** Object:  Table [dbo].[InforShipping]    Script Date: 03/24/2022 10:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InforShipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/24/2022 10:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Cid] [int] NOT NULL,
	[Cname] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/24/2022 10:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[displayName] [nvarchar](150) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[avatar] [nvarchar](500) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/24/2022 10:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[Pname] [nvarchar](250) NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
	[description] [nvarchar](2000) NULL,
	[images] [nvarchar](2000) NULL,
	[startdate] [date] NULL,
	[C_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03/24/2022 10:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/24/2022 10:58:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
	[productId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Orders_created_date]    Script Date: 03/24/2022 10:58:11 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
/****** Object:  ForeignKey [FK__Product__C_id__3C69FB99]    Script Date: 03/24/2022 10:58:11 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([C_id])
REFERENCES [dbo].[Category] ([Cid])
GO
/****** Object:  ForeignKey [FK__Orders__account___0DAF0CB0]    Script Date: 03/24/2022 10:58:11 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
/****** Object:  ForeignKey [FK__Orders__shipping__0EA330E9]    Script Date: 03/24/2022 10:58:11 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([shipping_id])
REFERENCES [dbo].[InforShipping] ([id])
GO
/****** Object:  ForeignKey [FK__OrderDeta__order__0CBAE877]    Script Date: 03/24/2022 10:58:11 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
/****** Object:  ForeignKey [FK_OrderDetail_Product]    Script Date: 03/24/2022 10:58:11 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([Pid])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
