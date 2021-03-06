USE [master]
GO
/****** Object:  Database [yeniakad]    Script Date: 22.1.2021 17:29:00 ******/
CREATE DATABASE [yeniakad]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'yeniakad', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\yeniakad.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'yeniakad_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\yeniakad_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [yeniakad] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yeniakad].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yeniakad] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yeniakad] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yeniakad] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yeniakad] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yeniakad] SET ARITHABORT OFF 
GO
ALTER DATABASE [yeniakad] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yeniakad] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [yeniakad] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yeniakad] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yeniakad] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yeniakad] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yeniakad] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yeniakad] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yeniakad] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yeniakad] SET  ENABLE_BROKER 
GO
ALTER DATABASE [yeniakad] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yeniakad] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yeniakad] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yeniakad] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yeniakad] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yeniakad] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yeniakad] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yeniakad] SET RECOVERY FULL 
GO
ALTER DATABASE [yeniakad] SET  MULTI_USER 
GO
ALTER DATABASE [yeniakad] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [yeniakad] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yeniakad] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yeniakad] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [yeniakad] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'yeniakad', N'ON'
GO
ALTER DATABASE [yeniakad] SET QUERY_STORE = OFF
GO
USE [yeniakad]
GO
/****** Object:  Table [dbo].[ogr]    Script Date: 22.1.2021 17:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogr](
	[OgrNumara] [varchar](6) NULL,
	[OgrTc] [varchar](11) NULL,
	[OgrAd] [varchar](15) NULL,
	[OgrSoyad] [varchar](15) NULL,
	[OgrOkul] [text] NULL,
	[OgrBilgi] [text] NULL,
	[OgrMatyazılı] [tinyint] NULL,
	[OgrTurkceyazılı] [tinyint] NULL,
	[OgrFenyazılı] [tinyint] NULL,
	[OgrSosyalyazılı] [tinyint] NULL,
	[Ogrİngyazılı] [tinyint] NULL,
	[lgsdeneme_2] [int] NULL,
	[lgsdeneme_3] [int] NULL,
	[lgsdeneme_4] [int] NULL,
	[lgsdeneme_5] [int] NULL,
	[lgsdeneme_6] [int] NULL,
	[lgsdeneme_1] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogretmenler]    Script Date: 22.1.2021 17:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogretmenler](
	[ogretmenAdı] [char](15) NULL,
	[ogretmenSoyad] [char](20) NULL,
	[brans] [text] NULL,
	[calıştıgıKurum] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TavsiyeKit]    Script Date: 22.1.2021 17:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TavsiyeKit](
	[KitapAd] [varchar](50) NULL,
	[YazarAd] [varchar](50) NULL,
	[Sayfasy] [varchar](50) NULL,
	[Yayinev] [varchar](50) NULL,
	[Tur] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TavsiyeKitaplar]    Script Date: 22.1.2021 17:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TavsiyeKitaplar](
	[KitapAdi] [varchar](50) NULL,
	[Yazar] [varchar](50) NULL,
	[SayfaSayisi] [varchar](50) NULL,
	[Yayinevi] [varchar](50) NULL,
	[KitapTuru] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestKitaplari]    Script Date: 22.1.2021 17:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestKitaplari](
	[KitapNo] [int] NULL,
	[KitapAdi] [varchar](50) NULL,
	[KitapYazar] [varchar](50) NULL,
	[KitapSayfa] [smallint] NULL,
	[KitapYayinEvi] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [index_egtm]    Script Date: 22.1.2021 17:29:01 ******/
CREATE NONCLUSTERED INDEX [index_egtm] ON [dbo].[ogr]
(
	[OgrNumara] ASC,
	[lgsdeneme_1] ASC,
	[lgsdeneme_2] ASC,
	[lgsdeneme_3] ASC,
	[lgsdeneme_4] ASC,
	[lgsdeneme_5] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[insertintoo]    Script Date: 22.1.2021 17:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[insertintoo]
 as
 
 INSERT INTO dbo.ogr ([ogrNumara],[ogrTc],[ogrAd], [ogrSoyad],[ogrOkul]) 
    VALUES (202125,56985774125,'OSMAN', 'YILDIZ','OSMANGAZI OKULU') 
GO
/****** Object:  StoredProcedure [dbo].[joinlebakalim]    Script Date: 22.1.2021 17:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[joinlebakalim]
as

select KitapAdi,Yazar from TavsiyeKitaplar k1 inner join TavsiyeKit k2
on
k1.Yazar=k2.YazarAd
GO
/****** Object:  StoredProcedure [dbo].[kitapgetirme]    Script Date: 22.1.2021 17:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[kitapgetirme]
as
select KitapAd  from TavsiyeKitaplar f1 inner join TavsiyeKit f2
on
f1.Yazar=f2.YazarAd
GO
/****** Object:  StoredProcedure [dbo].[sayfasayisinagore]    Script Date: 22.1.2021 17:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sayfasayisinagore]
as
select * from TavsiyeKitaplar where SayfaSayisi>300
GO
/****** Object:  StoredProcedure [dbo].[Sayfsay]    Script Date: 22.1.2021 17:29:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sayfsay]
as
select * from TavsiyeKitaplar where SayfaSayisi>300
GO
USE [master]
GO
ALTER DATABASE [yeniakad] SET  READ_WRITE 
GO
