USE [master]
GO
/****** Object:  Database [CSD-RDC]    Script Date: 3/30/2018 4:07:42 PM ******/
CREATE DATABASE [CSD-RDC] ON  PRIMARY 
( NAME = N'CSD-RDC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CSD-RDC.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CSD-RDC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\CSD-RDC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CSD-RDC] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSD-RDC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSD-RDC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSD-RDC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSD-RDC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSD-RDC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSD-RDC] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSD-RDC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CSD-RDC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CSD-RDC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSD-RDC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSD-RDC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSD-RDC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSD-RDC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSD-RDC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSD-RDC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSD-RDC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CSD-RDC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSD-RDC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSD-RDC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSD-RDC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSD-RDC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSD-RDC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSD-RDC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSD-RDC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CSD-RDC] SET  MULTI_USER 
GO
ALTER DATABASE [CSD-RDC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSD-RDC] SET DB_CHAINING OFF 
GO
USE [CSD-RDC]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 3/30/2018 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[maHD] [int] NOT NULL,
	[maSP] [int] NOT NULL,
	[donGia] [float] NOT NULL,
	[soLuong] [int] NOT NULL,
	[tongTien] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC,
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 3/30/2018 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[maKH] [int] NOT NULL,
	[maNV] [int] NOT NULL,
	[tongTien] [float] NULL,
	[ngayLHD] [date] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/30/2018 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [int] IDENTITY(1,1) NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[tenCongTy] [nvarchar](max) NULL,
	[diaChi] [nvarchar](max) NULL,
	[thanhPho] [nvarchar](max) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/30/2018 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](100) NULL,
	[gioiTinh] [nvarchar](3) NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](max) NULL,
	[dienThoai] [nchar](15) NULL,
	[ghiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomSP]    Script Date: 3/30/2018 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomSP](
	[maNSP] [int] IDENTITY(1,1) NOT NULL,
	[tenNSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhomSP] PRIMARY KEY CLUSTERED 
(
	[maNSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 3/30/2018 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[personId] [int] NOT NULL,
	[firstName] [varchar](30) NOT NULL,
	[middleName] [varchar](30) NOT NULL,
	[lastName] [varchar](30) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[phone] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[personId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/30/2018 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSP] [int] IDENTITY(1,1) NOT NULL,
	[tenSP] [nvarchar](100) NULL,
	[maNSP] [int] NOT NULL,
	[donGia] [float] NOT NULL,
	[soLuong] [int] NOT NULL,
	[anh] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/30/2018 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[studentId] [int] NULL,
	[fullName] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[age] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHD] ADD  CONSTRAINT [DF_ChiTietHD_donGia]  DEFAULT ((0)) FOR [donGia]
GO
ALTER TABLE [dbo].[ChiTietHD] ADD  CONSTRAINT [DF_ChiTietHD_soLuong]  DEFAULT ((0)) FOR [soLuong]
GO
ALTER TABLE [dbo].[ChiTietHD] ADD  CONSTRAINT [DF_ChiTietHD_tongTien]  DEFAULT ((0)) FOR [tongTien]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_donGia]  DEFAULT ((0)) FOR [donGia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_soLuong]  DEFAULT ((0)) FOR [soLuong]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HoaDon] FOREIGN KEY([maHD])
REFERENCES [dbo].[HoaDon] ([maHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_SanPham] FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([maSP])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhomSP] FOREIGN KEY([maNSP])
REFERENCES [dbo].[NhomSP] ([maNSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhomSP]
GO
USE [master]
GO
ALTER DATABASE [CSD-RDC] SET  READ_WRITE 
GO
