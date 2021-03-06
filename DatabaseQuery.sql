USE [master]
GO
/****** Object:  Database [WorkLoadBalance]    Script Date: 20/12/2018 01:11:42 p. m. ******/
CREATE DATABASE [WorkLoadBalance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WorkLoadBalance', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WorkLoadBalance.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WorkLoadBalance_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\WorkLoadBalance_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WorkLoadBalance] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WorkLoadBalance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WorkLoadBalance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET ARITHABORT OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WorkLoadBalance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WorkLoadBalance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WorkLoadBalance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WorkLoadBalance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WorkLoadBalance] SET  MULTI_USER 
GO
ALTER DATABASE [WorkLoadBalance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WorkLoadBalance] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WorkLoadBalance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WorkLoadBalance] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WorkLoadBalance] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WorkLoadBalance] SET QUERY_STORE = OFF
GO
USE [WorkLoadBalance]
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
USE [WorkLoadBalance]
GO
/****** Object:  User [jack_user]    Script Date: 20/12/2018 01:11:42 p. m. ******/
CREATE USER [jack_user] FOR LOGIN [jack] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AUTH\camachoj]    Script Date: 20/12/2018 01:11:42 p. m. ******/
CREATE USER [AUTH\camachoj] FOR LOGIN [AUTH\camachoj] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AUTH\$roleroll123]    Script Date: 20/12/2018 01:11:42 p. m. ******/
CREATE USER [AUTH\$roleroll123] FOR LOGIN [AUTH\$roleroll123] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[AccountData]    Script Date: 20/12/2018 01:11:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountData](
	[VCI Country Name] [nvarchar](255) NULL,
	[Collector Name] [nvarchar](255) NULL,
	[Coll Code] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Customer Number] [nvarchar](255) NULL,
	[Total Amt USD] [float] NULL,
	[Monthly AR] [float] NULL,
	[No# Documents# ] [float] NULL,
	[Customer Type] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[Family ] [nvarchar](255) NULL,
	[Aging] [float] NULL,
	[Total Doc Cnt] [float] NULL,
	[Payment Trend] [float] NULL,
	[Data Availability] [float] NULL,
	[Data Availability Total] [float] NULL,
	[Ease of communication] [float] NULL,
	[Ease of communication Total] [float] NULL,
	[Dispute Resolution] [float] NULL,
	[Dispute Resolution Total] [float] NULL,
	[Monthly AR2] [float] NULL,
	[Monthly AR Total] [float] NULL,
	[Payment Behavior] [float] NULL,
	[Payment Behavior Total] [float] NULL,
	[EOM Due Date] [float] NULL,
	[EOM Due Date Total] [float] NULL,
	[Number of documents] [float] NULL,
	[Total of documents] [float] NULL,
	[Most Important] [float] NULL,
	[Category] [nvarchar](255) NULL,
	[Lock Account] [nvarchar](255) NULL,
	[Inactive] [bit] NULL,
	[Categorized] [bit] NULL,
	[SMB] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountData_bk]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountData_bk](
	[VCI Country Name] [nvarchar](255) NULL,
	[Collector Name] [nvarchar](255) NULL,
	[Coll Code] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Customer Number] [nvarchar](255) NULL,
	[Total Amt USD] [float] NULL,
	[Monthly AR] [float] NULL,
	[No# Documents# ] [float] NULL,
	[Customer Type] [nvarchar](255) NULL,
	[BU] [nvarchar](255) NULL,
	[Family ] [nvarchar](255) NULL,
	[Aging] [float] NULL,
	[Total Doc Cnt] [float] NULL,
	[Payment Trend] [float] NULL,
	[Data Availability] [float] NULL,
	[Data Availability Total] [float] NULL,
	[Ease of communication] [float] NULL,
	[Ease of communication Total] [float] NULL,
	[Dispute Resolution] [float] NULL,
	[Dispute Resolution Total] [float] NULL,
	[Monthly AR2] [float] NULL,
	[Monthly AR Total] [float] NULL,
	[Payment Behavior] [float] NULL,
	[Payment Behavior Total] [float] NULL,
	[EOM Due Date] [float] NULL,
	[EOM Due Date Total] [float] NULL,
	[Number of documents] [float] NULL,
	[Total of documents] [float] NULL,
	[Most Important] [float] NULL,
	[Category] [nvarchar](255) NULL,
	[Lock Account] [nvarchar](255) NULL,
	[Inactive] [bit] NULL,
	[Categorized] [bit] NULL,
	[SMB] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountFamily]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountFamily](
	[Customer Number] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[FamilyID] [float] NULL,
	[AccountFamilyID] [float] NULL,
	[Coll Code] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collector]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collector](
	[Coll Code] [nvarchar](255) NOT NULL,
	[Collector Name] [nvarchar](255) NULL,
	[Collector Category] [nvarchar](255) NULL,
	[GoldPort] [float] NULL,
	[SilverPort] [nvarchar](255) NULL,
	[BronzePort] [nvarchar](255) NULL,
	[Summary Most Important] [float] NULL,
	[Sum of Total Amt USD] [float] NULL,
	[Limit Portion] [float] NULL,
	[Total Limit] [float] NULL,
	[Gold Limit] [float] NULL,
	[Silver Limit] [float] NULL,
	[Bronze Limit] [float] NULL,
	[Limit Reached] [bit] NULL,
 CONSTRAINT [PK_Collector] PRIMARY KEY CLUSTERED 
(
	[Coll Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collector_bk]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collector_bk](
	[Coll Code] [nvarchar](255) NOT NULL,
	[Collector Name] [nvarchar](255) NULL,
	[Collector Category] [nvarchar](255) NULL,
	[GoldPort] [float] NULL,
	[SilverPort] [nvarchar](255) NULL,
	[BronzePort] [nvarchar](255) NULL,
	[Summary Most Important] [float] NULL,
	[Sum of Total Amt USD] [float] NULL,
	[Limit Portion] [float] NULL,
	[Total Limit] [float] NULL,
	[Gold Limit] [float] NULL,
	[Silver Limit] [float] NULL,
	[Bronze Limit] [float] NULL,
	[Limit Reached] [bit] NULL,
 CONSTRAINT [PK_Collector_bk] PRIMARY KEY CLUSTERED 
(
	[Coll Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPAT]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPAT](
	[COMPANY CODE] [nvarchar](255) NULL,
	[INV2SITE ID] [nvarchar](255) NULL,
	[NEW COLLECTOR CODE] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Total Amt USD] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPAT_bk]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPAT_bk](
	[COMPANY CODE] [nvarchar](255) NULL,
	[INV2SITE ID] [nvarchar](255) NULL,
	[NEW COLLECTOR CODE] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Total Amt USD] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyDashboardTable]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyDashboardTable](
	[Comp Code] [nvarchar](255) NULL,
	[VCI Country Name] [nvarchar](255) NULL,
	[Collector Name] [nvarchar](255) NULL,
	[Coll Code] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Customer Number] [nvarchar](255) NULL,
	[Customer Type] [nvarchar](255) NULL,
	[Total Doc Cnt] [float] NULL,
	[Total Amt USD] [float] NULL,
	[Current USD] [float] NULL,
	[Doc Cnt Curr] [float] NULL,
	[Curr %] [float] NULL,
	[Amt 1-7 DPD USD] [float] NULL,
	[Doc Cnt 1-7 DPD] [float] NULL,
	[1-7%] [float] NULL,
	[Amt 8-15 DPD USD] [float] NULL,
	[Doc Cnt 8-15 DPD] [float] NULL,
	[8-15%] [float] NULL,
	[Amt 1-15 DPD USD] [float] NULL,
	[Doc Cnt 1-15 DPD] [float] NULL,
	[1-15 %] [float] NULL,
	[Amt 16-30 DPD USD] [float] NULL,
	[Doc Cnt 16-30 DPD] [float] NULL,
	[16-30%] [float] NULL,
	[Amt 31-60 DPD USD] [float] NULL,
	[Doc Cnt 31-60] [float] NULL,
	[31-60%] [float] NULL,
	[Amt 61-90 DPD USD] [float] NULL,
	[Doc Cnt 61-90] [float] NULL,
	[61-90%] [float] NULL,
	[Over 7 DPD USD] [float] NULL,
	[Over 7 Cnt] [float] NULL,
	[Over 7 %] [float] NULL,
	[Over 15 DPD USD] [float] NULL,
	[Over 15 Cnt] [float] NULL,
	[Over 15 %] [float] NULL,
	[Over 30 DPD AR USD] [float] NULL,
	[Over 30 Cnt] [float] NULL,
	[Over 30 %] [float] NULL,
	[Amt Over 60 DPD USD] [float] NULL,
	[Over 60 Cnt] [float] NULL,
	[Over 60 %] [float] NULL,
	[Over 90 DPD AR USD] [float] NULL,
	[Over 90 Cnt] [float] NULL,
	[Over 90 %] [float] NULL,
	[Over 180 DPD AR USD] [float] NULL,
	[Over 180 Cnt] [float] NULL,
	[Over 180 %] [float] NULL,
	[Over 365 DPD AR USD] [float] NULL,
	[Over 365 Cnt] [float] NULL,
	[Over 365 %] [float] NULL,
	[Score] [float] NULL,
	[Risk Class] [nvarchar](255) NULL,
	[Cash At Risk] [float] NULL,
	[Category] [nvarchar](255) NULL,
	[Most ImportantEvaluate] [nvarchar](255) NULL,
	[Most Important] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyDashboardTable_bk]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyDashboardTable_bk](
	[Comp Code] [nvarchar](255) NULL,
	[VCI Country Name] [nvarchar](255) NULL,
	[Collector Name] [nvarchar](255) NULL,
	[Coll Code] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Customer Number] [nvarchar](255) NULL,
	[Customer Type] [nvarchar](255) NULL,
	[Total Doc Cnt] [float] NULL,
	[Total Amt USD] [float] NULL,
	[Current USD] [float] NULL,
	[Doc Cnt Curr] [float] NULL,
	[Curr %] [float] NULL,
	[Amt 1-7 DPD USD] [float] NULL,
	[Doc Cnt 1-7 DPD] [float] NULL,
	[1-7%] [float] NULL,
	[Amt 8-15 DPD USD] [float] NULL,
	[Doc Cnt 8-15 DPD] [float] NULL,
	[8-15%] [float] NULL,
	[Amt 1-15 DPD USD] [float] NULL,
	[Doc Cnt 1-15 DPD] [float] NULL,
	[1-15 %] [float] NULL,
	[Amt 16-30 DPD USD] [float] NULL,
	[Doc Cnt 16-30 DPD] [float] NULL,
	[16-30%] [float] NULL,
	[Amt 31-60 DPD USD] [float] NULL,
	[Doc Cnt 31-60] [float] NULL,
	[31-60%] [float] NULL,
	[Amt 61-90 DPD USD] [float] NULL,
	[Doc Cnt 61-90] [float] NULL,
	[61-90%] [float] NULL,
	[Over 7 DPD USD] [float] NULL,
	[Over 7 Cnt] [float] NULL,
	[Over 7 %] [float] NULL,
	[Over 15 DPD USD] [float] NULL,
	[Over 15 Cnt] [float] NULL,
	[Over 15 %] [float] NULL,
	[Over 30 DPD AR USD] [float] NULL,
	[Over 30 Cnt] [float] NULL,
	[Over 30 %] [float] NULL,
	[Amt Over 60 DPD USD] [float] NULL,
	[Over 60 Cnt] [float] NULL,
	[Over 60 %] [float] NULL,
	[Over 90 DPD AR USD] [float] NULL,
	[Over 90 Cnt] [float] NULL,
	[Over 90 %] [float] NULL,
	[Over 180 DPD AR USD] [float] NULL,
	[Over 180 Cnt] [float] NULL,
	[Over 180 %] [float] NULL,
	[Over 365 DPD AR USD] [float] NULL,
	[Over 365 Cnt] [float] NULL,
	[Over 365 %] [float] NULL,
	[Score] [float] NULL,
	[Risk Class] [nvarchar](255) NULL,
	[Cash At Risk] [float] NULL,
	[Category] [nvarchar](255) NULL,
	[Most ImportantEvaluate] [nvarchar](255) NULL,
	[Most Important] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyDashboardTableBefore]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyDashboardTableBefore](
	[Comp Code] [nvarchar](255) NULL,
	[VCI Country Name] [nvarchar](255) NULL,
	[Collector Name] [nvarchar](255) NULL,
	[Coll Code] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Customer Number] [nvarchar](255) NULL,
	[Customer Type] [nvarchar](255) NULL,
	[Total Doc Cnt] [float] NULL,
	[Total Amt USD] [float] NULL,
	[Current USD] [float] NULL,
	[Doc Cnt Curr] [float] NULL,
	[Curr %] [float] NULL,
	[Amt 1-7 DPD USD] [float] NULL,
	[Doc Cnt 1-7 DPD] [float] NULL,
	[1-7%] [float] NULL,
	[Amt 8-15 DPD USD] [float] NULL,
	[Doc Cnt 8-15 DPD] [float] NULL,
	[8-15%] [float] NULL,
	[Amt 1-15 DPD USD] [float] NULL,
	[Doc Cnt 1-15 DPD] [float] NULL,
	[1-15 %] [float] NULL,
	[Amt 16-30 DPD USD] [float] NULL,
	[Doc Cnt 16-30 DPD] [float] NULL,
	[16-30%] [float] NULL,
	[Amt 31-60 DPD USD] [float] NULL,
	[Doc Cnt 31-60] [float] NULL,
	[31-60%] [float] NULL,
	[Amt 61-90 DPD USD] [float] NULL,
	[Doc Cnt 61-90] [float] NULL,
	[61-90%] [float] NULL,
	[Over 7 DPD USD] [float] NULL,
	[Over 7 Cnt] [float] NULL,
	[Over 7 %] [float] NULL,
	[Over 15 DPD USD] [float] NULL,
	[Over 15 Cnt] [float] NULL,
	[Over 15 %] [float] NULL,
	[Over 30 DPD AR USD] [float] NULL,
	[Over 30 Cnt] [float] NULL,
	[Over 30 %] [float] NULL,
	[Amt Over 60 DPD USD] [float] NULL,
	[Over 60 Cnt] [float] NULL,
	[Over 60 %] [float] NULL,
	[Over 90 DPD AR USD] [float] NULL,
	[Over 90 Cnt] [float] NULL,
	[Over 90 %] [float] NULL,
	[Over 180 DPD AR USD] [float] NULL,
	[Over 180 Cnt] [float] NULL,
	[Over 180 %] [float] NULL,
	[Over 365 DPD AR USD] [float] NULL,
	[Over 365 Cnt] [float] NULL,
	[Over 365 %] [float] NULL,
	[Score] [float] NULL,
	[Risk Class] [nvarchar](255) NULL,
	[Cash At Risk] [float] NULL,
	[Category] [nvarchar](255) NULL,
	[Most ImportantEvaluate] [nvarchar](255) NULL,
	[Most Important] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyDashboardTableBefore_bk]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyDashboardTableBefore_bk](
	[Comp Code] [nvarchar](255) NULL,
	[VCI Country Name] [nvarchar](255) NULL,
	[Collector Name] [nvarchar](255) NULL,
	[Coll Code] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Customer Number] [nvarchar](255) NULL,
	[Customer Type] [nvarchar](255) NULL,
	[Total Doc Cnt] [float] NULL,
	[Total Amt USD] [float] NULL,
	[Current USD] [float] NULL,
	[Doc Cnt Curr] [float] NULL,
	[Curr %] [float] NULL,
	[Amt 1-7 DPD USD] [float] NULL,
	[Doc Cnt 1-7 DPD] [float] NULL,
	[1-7%] [float] NULL,
	[Amt 8-15 DPD USD] [float] NULL,
	[Doc Cnt 8-15 DPD] [float] NULL,
	[8-15%] [float] NULL,
	[Amt 1-15 DPD USD] [float] NULL,
	[Doc Cnt 1-15 DPD] [float] NULL,
	[1-15 %] [float] NULL,
	[Amt 16-30 DPD USD] [float] NULL,
	[Doc Cnt 16-30 DPD] [float] NULL,
	[16-30%] [float] NULL,
	[Amt 31-60 DPD USD] [float] NULL,
	[Doc Cnt 31-60] [float] NULL,
	[31-60%] [float] NULL,
	[Amt 61-90 DPD USD] [float] NULL,
	[Doc Cnt 61-90] [float] NULL,
	[61-90%] [float] NULL,
	[Over 7 DPD USD] [float] NULL,
	[Over 7 Cnt] [float] NULL,
	[Over 7 %] [float] NULL,
	[Over 15 DPD USD] [float] NULL,
	[Over 15 Cnt] [float] NULL,
	[Over 15 %] [float] NULL,
	[Over 30 DPD AR USD] [float] NULL,
	[Over 30 Cnt] [float] NULL,
	[Over 30 %] [float] NULL,
	[Amt Over 60 DPD USD] [float] NULL,
	[Over 60 Cnt] [float] NULL,
	[Over 60 %] [float] NULL,
	[Over 90 DPD AR USD] [float] NULL,
	[Over 90 Cnt] [float] NULL,
	[Over 90 %] [float] NULL,
	[Over 180 DPD AR USD] [float] NULL,
	[Over 180 Cnt] [float] NULL,
	[Over 180 %] [float] NULL,
	[Over 365 DPD AR USD] [float] NULL,
	[Over 365 Cnt] [float] NULL,
	[Over 365 %] [float] NULL,
	[Score] [float] NULL,
	[Risk Class] [nvarchar](255) NULL,
	[Cash At Risk] [float] NULL,
	[Category] [nvarchar](255) NULL,
	[Most ImportantEvaluate] [nvarchar](255) NULL,
	[Most Important] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Famile]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Famile](
	[FamilyID] [float] NOT NULL,
	[Title] [nvarchar](255) NULL,
 CONSTRAINT [PK_Famile] PRIMARY KEY CLUSTERED 
(
	[FamilyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Famile_bk]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Famile_bk](
	[FamilyID] [float] NOT NULL,
	[Title] [nvarchar](255) NULL,
 CONSTRAINT [PK_Famile_bk] PRIMARY KEY CLUSTERED 
(
	[FamilyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Family]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Family](
	[FamilyID] [float] NULL,
	[Title] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewAccount]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewAccount](
	[Customer Number] [nvarchar](255) NULL,
	[VCI Country Name] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Coll Code] [nvarchar](255) NULL,
	[Total Amt USD] [float] NULL,
	[FamilyFound] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewAccount_bk]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewAccount_bk](
	[Customer Number] [nvarchar](255) NULL,
	[VCI Country Name] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Coll Code] [nvarchar](255) NULL,
	[Total Amt USD] [float] NULL,
	[FamilyFound] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parameter]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parameter](
	[Collector Level] [nvarchar](255) NULL,
	[Gold Portion] [float] NULL,
	[Silver Portion] [float] NULL,
	[Bronze Portion] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemoveAccount]    Script Date: 20/12/2018 01:11:43 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemoveAccount](
	[Customer Number] [nvarchar](255) NULL,
	[VCI Country Name] [nvarchar](255) NULL,
	[Collector Name] [nvarchar](255) NULL,
	[Coll Code] [nvarchar](255) NULL,
	[Total Amt USD] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RemoveAccount_bk]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RemoveAccount_bk](
	[Customer Number] [nvarchar](255) NULL,
	[VCI Country Name] [nvarchar](255) NULL,
	[Collector Name] [nvarchar](255) NULL,
	[Coll Code] [nvarchar](255) NULL,
	[Total Amt USD] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_BackUpDatabase]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BackUpDatabase]
AS
BEGIN

DELETE FROM [dbo].[CPAT]
DELETE FROM [dbo].[CPAT_bk]

DELETE FROM [dbo].[AccountData_bk]
INSERT INTO [dbo].[AccountData_bk]
SELECT * FROM [dbo].[AccountData];


DELETE FROM [dbo].[Collector_bk]
INSERT INTO Collector_bk
SELECT * FROM Collector;																																								      
																																														       
DELETE FROM [dbo].[CPAT_bk]																																								     
INSERT INTO [dbo].[CPAT_bk] 
SELECT * FROM [dbo].[CPAT];																																							    

DELETE FROM [dbo].[DailyDashboardTable_bk]
INSERT INTO [dbo].[DailyDashboardTable_bk] 
SELECT * FROM [dbo].[DailyDashboardTable];

DELETE FROM [dbo].[DailyDashboardTableBefore_bk]
INSERT INTO [dbo].[DailyDashboardTableBefore_bk]
SELECT * FROM [dbo].[DailyDashboardTableBefore];

DELETE FROM [dbo].[Famile_bk]
INSERT INTO [dbo].[Famile_bk] 
SELECT * FROM [dbo].[Famile];

DELETE FROM [dbo].[NewAccount_bk] 

INSERT INTO [dbo].[NewAccount_bk] 
SELECT * FROM [dbo].[NewAccount];


DELETE FROM [dbo].[RemoveAccount_bk]
INSERT INTO [dbo].[RemoveAccount_bk]
SELECT * FROM [dbo].[RemoveAccount];

END
GO
/****** Object:  StoredProcedure [dbo].[sp_BalanceAccount]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_BalanceAccount]
    @AccNum AS NVARCHAR(255)
AS
BEGIN
	DECLARE @Candidate AS NVARCHAR(255), 
			@CompanyCode AS NVARCHAR(255),
			@CustName AS NVARCHAR(255),
			@TotalAMT AS NVARCHAR(255),
			@Categ AS NVARCHAR(255),
			@TotalLimit AS NVARCHAR(255)
	IF @AccNum = (SELECT [Customer Number] FROM AccountFamily WHERE [Customer Number] = @AccNum)
	begin
		SET @Candidate = (SELECT [Coll Code] FROM AccountFamily WHERE [Customer Number] = @AccNum);
		SET @CompanyCode = (SELECT [Comp Code] FROM DailyDashboardTable WHERE [Customer Number] = @AccNum);
		SET @CustName = (SELECT [Customer Name] FROM DailyDashboardTable WHERE [Customer Number] = @AccNum);
		SET @TotalAMT = (SELECT [Total Amt USD] FROM DailyDashboardTable WHERE [Customer Number] = @AccNum);		
		INSERT INTO CPAT ([COMPANY CODE],[INV2SITE ID],[NEW COLLECTOR CODE],[Customer Name],[Total Amt USD])
		VALUES (@CompanyCode,@AccNum,@Candidate,@CustName,@TotalAMT);

		UPDATE  NewAccount 
		SET [FamilyFound] = 1
		WHERE [Customer Number] = @AccNum;
	end
	ELSE
	BEGIN
		



		SET @Categ = (SELECT[Category]

    FROM AccountData

    WHERE[Customer Number] = 'VP15482')/*@AccNum*/

	/*SELECT *  FROM Collector WHERE NOT  [Coll Code] = '00'  AND NOT [Coll Code] = 'CX' AND [Collector Category] = 'ADVANCED' AND [Limit Reached] = 0 ORDER BY [Summary Most Important] ASC ,[GoldPort] ASC*/
	IF @Categ = 'Gold'

            BEGIN
        SET @Candidate = (SELECT TOP(1)
           [Coll Code]

        FROM Collector

        WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Collector Category] = 'ADVANCED' AND[Limit Reached] = 0

        ORDER BY[Summary Most Important] ASC ,[GoldPort] ASC)
		IF @Candidate IS NULL

                 BEGIN

            SET @Candidate	= (SELECT TOP(1)
				[Coll Code]
        FROM Collector

            WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Collector Category] = 'INTER' AND[Limit Reached] = 0
			ORDER BY[Summary Most Important] ASC , [GoldPort] ASC);
			IF @Candidate IS NULL

                    BEGIN
                SET @Candidate	= (SELECT TOP(1)
					[Coll Code]
        FROM Collector

                WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Collector Category] = 'ADVANCED'
				ORDER BY[GoldPort] ASC,[Summary Most Important] ASC);
				IF @Candidate IS NULL

                        BEGIN
                    SET @Candidate	= (SELECT TOP(1)
						[Coll Code]
        FROM Collector

                    WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Collector Category] = 'INTER'
					ORDER BY[Summary Most Important] ASC);
				END
                IF @Candidate IS NULL
                        BEGIN

                    SET @Candidate = (SELECT TOP(1)

                        [Coll Code]
        FROM Collector

                    WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX'

                    ORDER BY[Summary Most Important] ASC);
				END
            END

        END
    END



    IF @Categ = 'Silver'

            BEGIN
        SET @Candidate	= (SELECT TOP(1)
			[Coll Code]
        FROM Collector

        WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Collector Category] = 'INTER' AND[Limit Reached] = 0
		ORDER BY[Summary Most Important] ASC ,[SilverPort] ASC)
		IF @Candidate IS NULL

                 BEGIN

            SET @Candidate	= (SELECT TOP(1)
				[Coll Code]
        FROM Collector

            WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Collector Category] = 'ADVANCED' AND[Limit Reached] = 0
			ORDER BY[Summary Most Important] ASC ,[SilverPort] ASC);
			IF @Candidate IS NULL

                    BEGIN
                SET @Candidate	= (SELECT TOP(1)
					[Coll Code]
        FROM Collector

                WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Collector Category] = 'INTER'
				ORDER BY[SilverPort] ASC,[Summary Most Important] ASC);
				IF @Candidate IS NULL

                        BEGIN
                    SET @Candidate	= (SELECT TOP(1)
						[Coll Code]
        FROM Collector

                    WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Collector Category] = 'INTER'
					ORDER BY[Summary Most Important] ASC);
				END
                IF @Candidate IS NULL
                        BEGIN

                    SET @Candidate = (SELECT TOP(1)

                        [Coll Code]
        FROM Collector

                    WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX'

                    ORDER BY[Summary Most Important] ASC);
				END
            END

        END
    END




    IF @Categ = 'Bronze'

            BEGIN
        SET @Candidate	= (SELECT TOP(1)
			[Coll Code]
        FROM Collector

        WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Limit Reached] = 0
		ORDER BY[Summary Most Important] ASC ,[BronzePort] ASC)
		IF @Candidate IS NULL

                 BEGIN

            SET @Candidate	= (SELECT TOP(1)
				[Coll Code]
        FROM Collector

            WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' 
			ORDER BY[Summary Most Important] ASC ,[BronzePort] ASC);
			IF @Candidate IS NULL

                    BEGIN
                SET @Candidate	= (SELECT TOP(1)
					[Coll Code]
        FROM Collector

                WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Collector Category] = 'BEGINNER'
				ORDER BY[BronzePort] ASC,[Summary Most Important] ASC);
				IF @Candidate IS NULL

                        BEGIN
                    SET @Candidate	= (SELECT TOP(1)
						[Coll Code]
        FROM Collector

                    WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX' AND[Collector Category] = 'INTER'
					ORDER BY[Summary Most Important] ASC);
				END
                IF @Candidate IS NULL
                        BEGIN

                    SET @Candidate = (SELECT TOP(1)

                        [Coll Code]
        FROM Collector

                    WHERE NOT[Coll Code] = '00' AND NOT[Coll Code] = 'CX'

                    ORDER BY[Summary Most Important] ASC);
				END
            END

        END
    END


    IF @Candidate IS NOT NULL            

INSERT INTO CPAT ([COMPANY CODE],[INV2SITE ID],[NEW COLLECTOR CODE],[Customer Name],[Total Amt USD])
		VALUES (@CompanyCode,@AccNum,@Candidate,@CustName,@TotalAMT);

INSERT INTO AccountData ([VCI Country Name],[Customer Number],[Coll Code],[Collector Name],[Customer Name],[Total Amt USD])
		VALUES (@CompanyCode,@AccNum,@Candidate,(SELECT [Collector Name] FROM Collector WHERE[Coll Code] = @Candidate),@CustName,@TotalAMT);

   UPDATE AccountData
            SET [Coll Code]= @Candidate
            WHERE[Customer Number] = @AccNum;
	
	UPDATE  NewAccount 
		SET [FamilyFound] = 0
		WHERE [Customer Number] = @AccNum;

	END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSummaryRow]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--this Store  procedure is used to delete the summary row of DailydashboardTable
Create procedure [dbo].[sp_DeleteSummaryRow] 
As 
Begin 
	DELETE 
	FROM DailydashboardTable
	WHERE [Coll Code] IS NULL
End
GO
/****** Object:  StoredProcedure [dbo].[sp_ExecuteCollectorQueries]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ExecuteCollectorQueries]
AS
BEGIN
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'CE'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'CG'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'CR'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'CS'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'CT'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'CV'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'CX'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'DA'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'DK'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'IA'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'ID'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'IF'
	 EXECUTE sp_UpdateCollectorsTable @Coll = N'CX'  -- the summary of TBA is needed because have to be 0 at the final.--
END
GO
/****** Object:  StoredProcedure [dbo].[sp_FindFamily]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_FindFamily]   @AccNum AS NVARCHAR(255)
AS
BEGIN
	DECLARE @Coll AS NVARCHAR(255), 
			@CompanyCode AS NVARCHAR(255),
			@CustName AS NVARCHAR(255),
			@TotalAMT AS NVARCHAR(255)
	IF @AccNum = (SELECT [Customer Number] FROM AccountFamily WHERE [Customer Number] = @AccNum)
	begin
		SET @Coll = (SELECT [Coll Code] FROM AccountFamily WHERE [Customer Number] = @AccNum);
		SET @CompanyCode = (SELECT [Comp Code] FROM DailyDashboardTable WHERE [Customer Number] = @AccNum);
		SET @CustName = (SELECT [Customer Name] FROM DailyDashboardTable WHERE [Customer Number] = @AccNum);
		SET @TotalAMT = (SELECT [Total Amt USD] FROM DailyDashboardTable WHERE [Customer Number] = @AccNum);		
		INSERT INTO CPAT ([COMPANY CODE],[INV2SITE ID],[NEW COLLECTOR CODE],[Customer Name],[Total Amt USD])
		VALUES (@CompanyCode,@AccNum,@Coll,@CustName,@TotalAMT);

		DELETE FROM NewAccount WHERE [Customer Number] = @AccNum;
	end
	ELSE
	BEGIN
		PRINT 'Family no found'		
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertNewAccounts]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_InsertNewAccounts] 
As 
Begin 

	INSERT INTO AccountData ([Coll Code],[VCI Country Name],[Customer Name],[Collector Name],[Customer Number],[Customer Type],[Total Amt USD],[Category],[Categorized])
	SELECT [Coll Code],[VCI Country Name],[Customer Name],[Collector Name],[Customer Number],[Customer Type],[Total Amt USD],'NOCATEGORY','0'
	FROM DailyDashboardTable
	WHERE [Customer Number] IN (SELECT [Customer Number] FROM DailyDashboardTable
	EXCEPT
	SELECT [Customer Number] FROM AccountData);	

	INSERT INTO NewAccount
	SELECT [Customer Number],[VCI Country Name],[Customer Name],[Coll Code],[Total Amt USD],0
	FROM AccountData
	WHERE [Customer Number] IN (SELECT [Customer Number] FROM AccountData WHERE [Lock Account] = 0 EXCEPT (SELECT [Customer Number] FROM NewAccount));
	
End
GO
/****** Object:  StoredProcedure [dbo].[sp_RestoreDatabase]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_RestoreDatabase]
AS
BEGIN

DELETE FROM [dbo].[AccountData]
INSERT INTO [dbo].[AccountData] 
SELECT * FROM AccountData_bk;

DELETE FROM [dbo].[Collector]
INSERT INTO [dbo].[Collector] 
SELECT * FROM Collector_bk;

DELETE FROM [dbo].[CPAT]
INSERT INTO [dbo].[CPAT]
SELECT * FROM [dbo].[CPAT_bk];

DELETE FROM [dbo].[DailyDashboardTable]
INSERT INTO [dbo].[DailyDashboardTable] 
SELECT * FROM [dbo].[DailyDashboardTable_bk];

DELETE FROM [dbo].[DailyDashboardTableBefore]
INSERT INTO [dbo].[DailyDashboardTableBefore] 
SELECT * FROM [dbo].[DailyDashboardTableBefore_bk];

DELETE FROM [dbo].[Famile]
INSERT INTO [dbo].[Famile] ([FamilyID], [Title])
(SELECT * FROM [dbo].[Famile]);

DELETE FROM [dbo].[NewAccount] 
INSERT INTO [dbo].[NewAccount]
SELECT * FROM [dbo].[NewAccount_bk];

DELETE FROM [dbo].[RemoveAccount]
INSERT INTO [dbo].[RemoveAccount] 
SELECT * FROM [dbo].[RemoveAccount_bk];

END




GO
/****** Object:  StoredProcedure [dbo].[sp_SaveLockAccountsinNewAccount]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_SaveLockAccountsinNewAccount] 
AS 
BEGIN 
	INSERT INTO NewAccount
	SELECT [Customer Number],[VCI Country Name],[Customer Name],[Coll Code],[Total Amt USD]
	FROM AccountData
	WHERE [Customer Number] IN (SELECT [Customer Number] FROM AccountData WHERE [Lock Account] = 0 EXCEPT SELECT [Customer Number] FROM NewAccount);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveNewAccounts]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_SaveNewAccounts] 
As 
Begin 
	DELETE FROM NewAccount;
	INSERT INTO NewAccount
	SELECT [Customer Number],[VCI Country Name],[Customer Name],[Coll Code],[Total Amt USD],NULL
	FROM DailyDashboardTable
	WHERE [Customer Number] IN (SELECT [Customer Number] FROM DailyDashboardTable EXCEPT SELECT [Customer Number] FROM AccountData);	
End
GO
/****** Object:  StoredProcedure [dbo].[sp_SaveRemoveAccounts]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_SaveRemoveAccounts] 
As 
Begin 
	DELETE FROM RemoveAccount;
	INSERT INTO RemoveAccount
	SELECT [Customer Number],[VCI Country Name],[Customer Name],[Coll Code],[Total Amt USD]
	FROM DailyDashboardTableBefore
	WHERE [Customer Number] IN (SELECT [Customer Number] FROM DailyDashboardTableBefore EXCEPT SELECT [Customer Number] FROM DailyDashboardTable);	
End
GO
/****** Object:  StoredProcedure [dbo].[sp_SetActiveAccounts]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SetActiveAccounts]
AS
BEGIN	

	 UPDATE  AccountData	
	 SET [Inactive] = 0
	 WHERE [Customer Number] IN 
	 (		 
		 SELECT [Customer Number] FROM DailyDashboardTable
	 );

	 UPDATE  AccountData	
	 SET [Inactive] = 1
	 WHERE NOT [Customer Number] IN  
	 (		 
		 SELECT [Customer Number] FROM DailyDashboardTable
	 );	  
END

GO
/****** Object:  StoredProcedure [dbo].[sp_SetAllAccountsAsInactive]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_SetAllAccountsAsInactive] 
AS 
BEGIN 
	UPDATE AccountData
	SET [Inactive] = '1'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_SetLimitsCollectorTable]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_SetLimitsCollectorTable]
AS
BEGIN
	EXECUTE sp_UpdateLimits @CollCo = 'CE'
	EXECUTE sp_UpdateLimits @CollCo = 'CG'
	EXECUTE sp_UpdateLimits @CollCo = 'CR'
	EXECUTE sp_UpdateLimits @CollCo = 'CS'
	EXECUTE sp_UpdateLimits @CollCo = 'CT'
	EXECUTE sp_UpdateLimits @CollCo = 'CV'
	EXECUTE sp_UpdateLimits @CollCo = 'CX'
	EXECUTE sp_UpdateLimits @CollCo = 'DA'
	EXECUTE sp_UpdateLimits @CollCo = 'DK'
	EXECUTE sp_UpdateLimits @CollCo = 'IA'
	EXECUTE sp_UpdateLimits @CollCo = 'ID'
	EXECUTE sp_UpdateLimits @CollCo = 'IF'


	UPDATE Collector
	SET [Limit Reached] = 1
	WHERE [Summary Most Important] > [Total Limit] AND NOT [Coll Code] = 'CX' AND NOT [Coll Code] = '00'

	UPDATE Collector
	SET [Limit Reached] = 0
	WHERE [Summary Most Important] < [Total Limit] AND NOT [Coll Code] = 'CX' AND NOT [Coll Code] = '00'


END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateAccountsCategory]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateAccountsCategory] 
AS 
BEGIN 
	UPDATE AccountData
	SET [Category] = 'Silver',
	[SMB] = 0
	WHERE [Categorized] = '0' AND [Total Amt USD] >500000;
	
	UPDATE AccountData
	SET [Category] = 'Bronze',
	[SMB] = 0
	WHERE [Categorized] = '0' AND [Total Amt USD] >250000 AND [Total Amt USD] < 500000;

	UPDATE AccountData
	SET [Category] = 'Bronze',
	[SMB] = 1
	WHERE [Categorized] = '0' AND [Total Amt USD] <250000;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateAccountsMostImportant]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE procedure [dbo].[sp_UpdateAccountsMostImportant]
AS 
BEGIN 
	UPDATE AccountData
	SET [Most Important] = '277'
	WHERE [Category] = 'Gold' AND [Categorized] = '0';
	
	UPDATE AccountData
	SET [Most Important] = '181'
	WHERE [Category] = 'Silver' AND [Categorized] = '0';
	
	UPDATE AccountData
	SET [Most Important] = '83'
	WHERE [Category] = 'Bronze' AND [Categorized] = '0';	
	
END


GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCollectorsTable]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UpdateCollectorsTable](@Coll AS NVARCHAR(255))
AS
BEGIN
    UPDATE Collector
	SET 
	[GoldPort] = 
	(SELECT SUM([Most Important])
    FROM AccountData
    WHERE [Coll Code] = @Coll AND [Category] = 'Gold' AND [Inactive] = '0'),

	[SilverPort] = 
	(SELECT SUM([Most Important])
    FROM AccountData
    WHERE [Coll Code] = @Coll AND [Category] = 'Silver' AND [Inactive] = '0'),

	[BronzePort] = 
	(SELECT SUM([Most Important])
    FROM AccountData
    WHERE [Coll Code] = @Coll AND [Category] = 'Bronze' AND [Inactive] = '0'),

	[Summary Most Important] = 
	(SELECT SUM([Most Important])
    FROM AccountData
    WHERE [Coll Code] = @Coll AND [Inactive] = '0'), 
	[Sum of Total Amt USD] = 
	(SELECT SUM([Total Amt USD])
    FROM AccountData
    WHERE [Coll Code] = @Coll AND [Inactive] = '0') 

	WHERE [Coll Code] = @Coll;

	UPDATE Collector
	SET [Limit Reached] = 1
	WHERE [Summary Most Important] > [Total Limit] AND NOT [Coll Code] = 'CX' AND NOT [Coll Code] = '00'

	UPDATE Collector
	SET [Limit Reached] = 0
	WHERE [Summary Most Important] < [Total Limit] AND NOT [Coll Code] = 'CX' AND NOT [Coll Code] = '00'



END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateDBwithDailyDashboard]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateDBwithDailyDashboard]
AS
BEGIN     
	UPDATE AccountData
		SET 
		AccountData.[VCI Country Name]	=  DailyDashboardTable.[VCI Country Name],	
		AccountData.[Collector Name]	=  DailyDashboardTable.[Collector Name],	
		AccountData.[Coll Code]			=  DailyDashboardTable.[Coll Code],			
		AccountData.[Customer Name]		=  DailyDashboardTable.[Customer Name],		
		AccountData.[Customer Number]	=  DailyDashboardTable.[Customer Number],	
		AccountData.[Total Amt USD]		=  DailyDashboardTable.[Total Amt USD],		
		AccountData.[Customer Type]		=  DailyDashboardTable.[Customer Type],		
		AccountData.[Total Doc Cnt]		=  DailyDashboardTable.[Total Doc Cnt]	
		FROM AccountData
	INNER JOIN DailyDashboardTable ON AccountData.[Customer Number]=DailyDashboardTable.[Customer Number];
END	
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateLimits]    Script Date: 20/12/2018 01:11:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_UpdateLimits] @CollCo nvarchar(30)
AS
BEGIN

DECLARE @Cat AS NVARCHAR(255),
@totalCollectors AS FLOAT(3),
@totalpoints AS FLOAT(3),
@totalLimit AS FLOAT(3),
@TotalGold AS FLOAT(3),
@TotalSilver AS FLOAT(3),
@TotalBronze AS FLOAT(3),
@portionLimit AS FLOAT(3)

SET @totalCollectors = (SELECT SUM([Limit Portion]) FROM Collector);
SET @totalpoints = (SELECT SUM([Most Important]) FROM AccountData WHERE [Inactive] = '0');
SET @portionLimit = (SELECT [Limit Portion] FROM Collector WHERE [Coll Code] = @CollCo);
SET @totalLimit = @totalpoints / @totalCollectors * @portionLimit;

SET @TotalGold		= (SELECT SUM([Most Important]) FROM AccountData WHERE [Category] = 'Gold'  AND  [Inactive] = '0');
SET @TotalSilver	= (SELECT SUM([Most Important]) FROM AccountData WHERE [Category] = 'Silver'AND  [Inactive] = '0');
SET @TotalBronze	= (SELECT SUM([Most Important]) FROM AccountData WHERE [Category] = 'Bronze'AND  [Inactive] = '0');


	UPDATE Collector
	SET 
	[Total Limit]		= @totalLimit,
	[Gold Limit]		= @TotalGold   * @portionLimit / @totalCollectors *(SELECT [Gold Portion] FROM Parameter WHERE [Collector Level] = 'ADVANCED'),
	[Silver Limit]		= @TotalSilver * @portionLimit / @totalCollectors *(SELECT [Silver Portion] FROM Parameter WHERE [Collector Level] = 'ADVANCED'),
	[Bronze Limit]		= @TotalBronze * @portionLimit / @totalCollectors *(SELECT [Bronze Portion] FROM Parameter WHERE [Collector Level] = 'ADVANCED')
	WHERE [Coll Code] = @CollCo AND [Collector Category] = 'ADVANCED';

	UPDATE Collector
	SET 
	[Total Limit]		= @totalLimit,
	[Gold Limit]		= @TotalGold   * @portionLimit / @totalCollectors *(SELECT [Gold Portion] FROM Parameter WHERE [Collector Level] = 'INTER'),
	[Silver Limit]		= @TotalSilver * @portionLimit / @totalCollectors *(SELECT [Silver Portion] FROM Parameter WHERE [Collector Level] = 'INTER'),
	[Bronze Limit]		= @TotalBronze * @portionLimit / @totalCollectors *(SELECT [Bronze Portion] FROM Parameter WHERE [Collector Level] = 'INTER')
	WHERE [Coll Code] = @CollCo AND [Collector Category] = 'INTER';

	UPDATE Collector
	SET 
	[Total Limit]		= @totalLimit,
	[Gold Limit]		= @TotalGold   * @portionLimit / @totalCollectors *(SELECT [Gold Portion] FROM Parameter WHERE [Collector Level] = 'BEGINNER'),
	[Silver Limit]		= @TotalSilver * @portionLimit / @totalCollectors *(SELECT [Silver Portion] FROM Parameter WHERE [Collector Level] = 'BEGINNER'),
	[Bronze Limit]		= @TotalBronze * @portionLimit / @totalCollectors *(SELECT [Bronze Portion] FROM Parameter WHERE [Collector Level] = 'BEGINNER')
	WHERE [Coll Code] = @CollCo AND [Collector Category] = 'BEGINNER';


END
GO
USE [master]
GO
ALTER DATABASE [WorkLoadBalance] SET  READ_WRITE 
GO
