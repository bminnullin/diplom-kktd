USE [master]
GO
/****** Object:  Database [SRcenter]    Script Date: 18.03.2023 11:28:28 ******/
CREATE DATABASE [SRcenter]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SRcenter', FILENAME = N'D:\Programms\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SRcenter.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SRcenter_log', FILENAME = N'D:\Programms\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SRcenter_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SRcenter] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SRcenter].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SRcenter] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SRcenter] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SRcenter] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SRcenter] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SRcenter] SET ARITHABORT OFF 
GO
ALTER DATABASE [SRcenter] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SRcenter] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SRcenter] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SRcenter] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SRcenter] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SRcenter] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SRcenter] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SRcenter] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SRcenter] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SRcenter] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SRcenter] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SRcenter] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SRcenter] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SRcenter] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SRcenter] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SRcenter] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SRcenter] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SRcenter] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SRcenter] SET  MULTI_USER 
GO
ALTER DATABASE [SRcenter] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SRcenter] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SRcenter] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SRcenter] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SRcenter] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SRcenter] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SRcenter] SET QUERY_STORE = OFF
GO
USE [SRcenter]
GO
/****** Object:  Table [dbo].[BoughtService]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoughtService](
	[BoughtServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[UserID] [int] NULL,
	[ClientID] [int] NOT NULL,
	[DateVisit] [date] NOT NULL,
 CONSTRAINT [PK_BoughtService] PRIMARY KEY CLUSTERED 
(
	[BoughtServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoughtST]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoughtST](
	[BoughtSTID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[SeasonTicketID] [int] NOT NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
 CONSTRAINT [PK_BoughtST_1] PRIMARY KEY CLUSTERED 
(
	[BoughtSTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[C_name] [nvarchar](50) NOT NULL,
	[C_phone] [nvarchar](50) NULL,
	[C_email] [nvarchar](50) NULL,
	[C_birthday] [date] NOT NULL,
	[C_login] [nvarchar](50) NULL,
	[C_password] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderService]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderService](
	[OrderServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[ServiceID] [int] NULL,
	[DateVisit] [date] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderService] PRIMARY KEY CLUSTERED 
(
	[OrderServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderST]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderST](
	[OrderSTID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[SeasonTicketID] [int] NULL,
	[DateOrder] [date] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_OrderST] PRIMARY KEY CLUSTERED 
(
	[OrderSTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raspisanie]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raspisanie](
	[WeekID] [tinyint] NOT NULL,
	[Time] [time](7) NOT NULL,
	[SeasonTicketID] [int] NOT NULL,
 CONSTRAINT [PK_Raspisanie] PRIMARY KEY CLUSTERED 
(
	[WeekID] ASC,
	[Time] ASC,
	[SeasonTicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[R_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeasonTicket]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeasonTicket](
	[SeasonTicketID] [int] IDENTITY(1,1) NOT NULL,
	[ST_name] [nvarchar](50) NOT NULL,
	[ST_description] [nvarchar](1000) NULL,
	[ServiceID] [int] NULL,
	[ST_period] [nvarchar](50) NULL,
	[ST_price] [decimal](18, 2) NULL,
	[ST_image] [nvarchar](50) NULL,
 CONSTRAINT [PK_SeasonTicket] PRIMARY KEY CLUSTERED 
(
	[SeasonTicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[S_name] [nvarchar](50) NOT NULL,
	[S_description] [nvarchar](500) NULL,
	[S_period] [time](7) NULL,
	[S_price] [decimal](10, 2) NULL,
	[S_image] [nvarchar](50) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ST_Role]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ST_Role](
	[SeasonTicketID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_ST_Role] PRIMARY KEY CLUSTERED 
(
	[SeasonTicketID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timetable]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timetable](
	[TimetableID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ClientID] [int] NULL,
	[BoughtSTID] [int] NOT NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Timetable] PRIMARY KEY CLUSTERED 
(
	[TimetableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[U_name] [nvarchar](50) NOT NULL,
	[U_phone] [nvarchar](50) NOT NULL,
	[U_email] [nvarchar](50) NULL,
	[U_bitrhday] [date] NOT NULL,
	[U_ip] [nvarchar](50) NULL,
	[U_login] [nvarchar](50) NOT NULL,
	[U_password] [nvarchar](50) NOT NULL,
	[U_photo] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Week]    Script Date: 18.03.2023 11:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Week](
	[WeekID] [tinyint] IDENTITY(1,1) NOT NULL,
	[W_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Week] PRIMARY KEY CLUSTERED 
(
	[WeekID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BoughtService] ON 

INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (70, 4, 26, 1, CAST(N'2020-01-25' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (71, 3, 12, 2, CAST(N'2020-02-23' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (72, 2, NULL, 3, CAST(N'2020-04-03' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (73, 1, NULL, 4, CAST(N'2020-04-07' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (74, 3, 20, 5, CAST(N'2020-04-21' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (75, 5, NULL, 6, CAST(N'2020-05-08' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (76, 3, 12, 7, CAST(N'2020-05-13' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (77, 7, 24, 8, CAST(N'2020-05-24' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (78, 6, NULL, 9, CAST(N'2020-05-27' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (79, 4, 4, 10, CAST(N'2020-07-10' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (80, 2, NULL, 11, CAST(N'2020-07-11' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (81, 4, 11, 12, CAST(N'2020-07-12' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (82, 6, NULL, 13, CAST(N'2020-08-12' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (83, 3, 7, 14, CAST(N'2020-09-07' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (84, 4, 26, 15, CAST(N'2020-09-14' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (85, 5, NULL, 16, CAST(N'2020-09-16' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (86, 2, NULL, 17, CAST(N'2020-10-03' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (87, 4, 4, 18, CAST(N'2020-10-18' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (88, 6, NULL, 19, CAST(N'2020-11-03' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (89, 3, 33, 20, CAST(N'2020-11-04' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (90, 2, NULL, 21, CAST(N'2020-11-14' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (91, 2, NULL, 22, CAST(N'2020-11-15' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (92, 7, 35, 23, CAST(N'2020-12-01' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (93, 7, 31, 24, CAST(N'2020-12-02' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (94, 4, 4, 25, CAST(N'2020-12-17' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (95, 6, NULL, 26, CAST(N'2021-01-19' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (96, 3, 33, 27, CAST(N'2021-01-31' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (97, 2, NULL, 28, CAST(N'2021-01-31' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (98, 5, NULL, 29, CAST(N'2021-05-14' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (99, 7, 17, 30, CAST(N'2021-05-16' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (100, 4, 32, 31, CAST(N'2021-05-23' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (101, 3, 15, 32, CAST(N'2021-06-12' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (102, 6, NULL, 33, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (103, 7, 35, 34, CAST(N'2021-06-17' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (104, 7, 24, 35, CAST(N'2021-07-08' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (105, 3, 5, 36, CAST(N'2021-07-16' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (106, 5, NULL, 37, CAST(N'2021-07-26' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (107, 7, 10, 38, CAST(N'2021-07-31' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (108, 2, NULL, 39, CAST(N'2021-09-12' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (109, 6, NULL, 40, CAST(N'2021-09-13' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (110, 3, 9, 41, CAST(N'2021-11-14' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (111, 6, NULL, 42, CAST(N'2021-11-16' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (112, 6, NULL, 43, CAST(N'2021-11-19' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (113, 6, NULL, 44, CAST(N'2021-11-23' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (114, 5, NULL, 45, CAST(N'2021-11-24' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (115, 5, NULL, 46, CAST(N'2021-12-12' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (116, 3, 8, 47, CAST(N'2022-01-16' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (117, 1, NULL, 48, CAST(N'2022-01-30' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (118, 3, 22, 49, CAST(N'2022-02-23' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (119, 7, 24, 50, CAST(N'2022-03-27' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (120, 2, NULL, 51, CAST(N'2022-04-12' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (121, 4, 11, 52, CAST(N'2022-04-13' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (122, 3, 7, 53, CAST(N'2022-05-19' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (123, 5, NULL, 54, CAST(N'2022-05-25' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (124, 1, NULL, 55, CAST(N'2022-05-29' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (125, 7, 35, 56, CAST(N'2022-05-29' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (126, 7, 27, 57, CAST(N'2022-06-02' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (127, 7, 24, 58, CAST(N'2022-07-29' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (128, 5, NULL, 59, CAST(N'2022-08-10' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (129, 1, NULL, 60, CAST(N'2022-08-10' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (130, 5, NULL, 61, CAST(N'2022-08-30' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (131, 5, NULL, 62, CAST(N'2022-09-11' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (132, 1, NULL, 63, CAST(N'2022-09-11' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (133, 6, NULL, 64, CAST(N'2022-11-26' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (134, 7, 31, 65, CAST(N'2022-12-03' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (135, 3, 14, 66, CAST(N'2023-01-30' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (136, 7, 24, 67, CAST(N'2023-02-03' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (137, 7, 10, 68, CAST(N'2023-02-19' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (138, 3, 6, 69, CAST(N'2023-04-23' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (139, 1, NULL, 1, CAST(N'2023-01-05' AS Date))
INSERT [dbo].[BoughtService] ([BoughtServiceID], [ServiceID], [UserID], [ClientID], [DateVisit]) VALUES (140, 2, NULL, 1, CAST(N'2023-03-25' AS Date))
SET IDENTITY_INSERT [dbo].[BoughtService] OFF
GO
SET IDENTITY_INSERT [dbo].[BoughtST] ON 

INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (1, 4, 12, CAST(N'2020-04-17' AS Date), CAST(N'2020-10-17' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (2, 7, 7, CAST(N'2022-02-28' AS Date), CAST(N'2022-05-28' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (3, 12, 15, CAST(N'2021-01-09' AS Date), CAST(N'2022-01-09' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (4, 14, 10, CAST(N'2020-01-22' AS Date), CAST(N'2020-07-22' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (5, 16, 13, CAST(N'2020-05-21' AS Date), CAST(N'2021-05-21' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (6, 17, 12, CAST(N'2020-05-20' AS Date), CAST(N'2020-11-20' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (7, 20, 1, CAST(N'2022-06-28' AS Date), CAST(N'2022-06-28' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (8, 22, 9, CAST(N'2021-06-17' AS Date), CAST(N'2021-09-17' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (9, 23, 7, CAST(N'2021-05-21' AS Date), CAST(N'2021-08-21' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (10, 24, 10, CAST(N'2020-02-08' AS Date), CAST(N'2020-08-08' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (11, 26, 5, CAST(N'2021-06-19' AS Date), CAST(N'2021-07-19' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (12, 29, 9, CAST(N'2020-10-19' AS Date), CAST(N'2021-01-19' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (13, 30, 11, CAST(N'2023-01-24' AS Date), CAST(N'2023-07-24' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (14, 32, 5, CAST(N'2021-09-11' AS Date), CAST(N'2021-10-11' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (15, 33, 3, CAST(N'2021-09-07' AS Date), CAST(N'2021-09-07' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (16, 39, 1, CAST(N'2021-09-03' AS Date), CAST(N'2021-09-03' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (17, 41, 4, CAST(N'2020-04-22' AS Date), CAST(N'2020-05-22' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (18, 47, 11, CAST(N'2022-09-05' AS Date), CAST(N'2023-03-05' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (19, 50, 1, CAST(N'2023-03-26' AS Date), CAST(N'2023-03-26' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (20, 52, 4, CAST(N'2021-05-20' AS Date), CAST(N'2021-06-20' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (21, 53, 8, CAST(N'2020-12-04' AS Date), CAST(N'2021-03-04' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (22, 54, 12, CAST(N'2021-01-18' AS Date), CAST(N'2021-07-18' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (23, 60, 6, CAST(N'2021-04-18' AS Date), CAST(N'2021-05-18' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (24, 61, 14, CAST(N'2022-10-06' AS Date), CAST(N'2023-10-06' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (25, 62, 13, CAST(N'2021-12-15' AS Date), CAST(N'2022-12-15' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (26, 66, 14, CAST(N'2020-09-27' AS Date), CAST(N'2021-09-27' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (27, 67, 15, CAST(N'2022-12-31' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (28, 70, 19, CAST(N'2022-08-13' AS Date), CAST(N'2023-08-13' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (30, 1, 12, CAST(N'2022-06-30' AS Date), CAST(N'2022-12-29' AS Date))
INSERT [dbo].[BoughtST] ([BoughtSTID], [ClientID], [SeasonTicketID], [DateStart], [DateEnd]) VALUES (31, 1, 17, CAST(N'2023-03-13' AS Date), CAST(N'2023-04-13' AS Date))
SET IDENTITY_INSERT [dbo].[BoughtST] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (1, N'Barbabra Retchless', N'+48 (423) 624-0978', N'BarbabraRetchless675@gmail.com', CAST(N'1991-12-28' AS Date), N'client', N'client', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (2, N'Northrop Mably', N'+886 (377) 963-3788', N'NorthropMably708@outlock.com', CAST(N'1997-06-07' AS Date), N'gsymones12', N'LFPUPIiHjTQC', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (3, N'Fabian Rolf', N'+359 (429) 556-2589', N'FabianRolf161@eu.com', CAST(N'2000-07-02' AS Date), N'jbedell13', N'AXdqQT73May', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (4, N'Lauree Raden', N'+56 (228) 313-7377', N'LaureeRaden922@ro.ru', CAST(N'1991-07-17' AS Date), N'chaselwood14', N'aa3Z1wn', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (5, N'Barby Follos', N'+260 (948) 192-3819', N'BarbyFollos77@yandex.ru', CAST(N'1994-06-16' AS Date), N'jwylam15', N'LUoKQAnhd0', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (6, N'Mile Enterle', N'+84 (167) 473-9599', N'MileEnterle961@mail.ru', CAST(N'1992-11-28' AS Date), N'ovayro16', N'AInD47HhaJp', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (7, N'Midge Peaker', N'+86 (131) 481-8494', N'MidgePeaker607@eu.com', CAST(N'1990-08-08' AS Date), N'kboyes17', N'uArXm6mZEOnQ', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (8, N'Manon Robichon', N'+1 (215) 380-7679', N'ManonRobichon581@gmail.com', CAST(N'1993-08-02' AS Date), N'lbarnwall18', N'JcPjBCH', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (9, N'Stavro Robken', N'+591 (150) 814-1572', N'StavroRobken392@yandex.ru', CAST(N'1992-05-13' AS Date), N'mbuckles19', N'0aRzEt41OAG', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (10, N'Bryan Tidmas', N'+7 (840) 690-8129', N'BryanTidmas319@ro.ru', CAST(N'1994-03-06' AS Date), N'dscouse1a', N'biYebaGH', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (11, N'Jeannette Fussie', N'+86 (934) 212-7370', N'JeannetteFussie899@google.com', CAST(N'1993-06-26' AS Date), N'pbeddard1b', N'XTYUf4jXlwI', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (12, N'Stephen Antonacci', N'+62 (219) 745-8269', N'StephenAntonacci381@yandex.ru', CAST(N'1990-05-06' AS Date), N'tmackeig1c', N'3RzzkcX5oMfi', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (13, N'Niccolo Bountiff', N'+359 (801) 251-7230', N'NiccoloBountiff102@yandex.ru', CAST(N'1992-11-24' AS Date), N'apolden1d', N'jo9GbN2s', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (14, N'Clemente Benjefield', N'+41 (372) 940-6083', N'ClementeBenjefield494@google.com', CAST(N'1992-01-17' AS Date), N'stease1e', N'07sH7RvFM', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (15, N'Orlan Corbyn', N'+249 (199) 212-3218', N'OrlanCorbyn718@outlock.com', CAST(N'2001-01-17' AS Date), N'bglayzer1f', N'XXMtznf1Y5B9', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (16, N'Coreen Stickins', N'+46 (975) 714-4410', N'CoreenStickins62@yandex.ru', CAST(N'1991-01-24' AS Date), N'hruf1g', N'iiu0Ks', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (17, N'Daveta Clarage', N'+7 (447) 210-9281', N'DavetaClarage430@eu.com', CAST(N'1999-08-30' AS Date), N'memney1h', N'iMFpWlHolY', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (18, N'Javier McCawley', N'+998 (931) 961-3324', N'JavierMcCawley966@ro.ru', CAST(N'1998-01-18' AS Date), N'gkoene1i', N'yEZr1vBtjMjD', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (19, N'Daile Band', N'+86 (353) 983-7547', N'DaileBand880@eu.com', CAST(N'1998-04-06' AS Date), N'ksabey1j', N'Ae5b7W', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (20, N'Angil Buttery', N'+48 (495) 933-8482', N'AngilButtery863@ro.ru', CAST(N'1992-06-14' AS Date), N'nsammut1k', N'yF7PwpY1qEP', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (21, N'Kyla Kinman', N'+86 (176) 913-2256', N'KylaKinman982@yandex.ru', CAST(N'1994-12-07' AS Date), N'sskepper1l', N'CO8icJv7kxml', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (22, N'Selena Skepper', N'+63 (877) 214-0736', N'SelenaSkepper289@google.com', CAST(N'1992-03-14' AS Date), N'ahulatt1m', N'YTGcPiKAb', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (23, N'Alyson Yeoland', N'+86 (329) 359-5760', N'AlysonYeoland874@eu.com', CAST(N'1995-11-02' AS Date), N'wsalzberg1n', N'RwPH2laRMo2E', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (24, N'Claudie Speeding', N'+27 (575) 986-5083', N'ClaudieSpeeding969@outlock.com', CAST(N'2000-04-09' AS Date), N'adunbleton1o', N'J5jvL5ZtG', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (25, N'Alaric Scarisbrick', N'+62 (159) 330-6404', N'AlaricScarisbrick905@yandex.ru', CAST(N'1990-06-12' AS Date), N'mseman1p', N'yG5ab4RHTS', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (26, N'Marie Thurby', N'+380 (894) 562-6142', N'MarieThurby221@mail.ru', CAST(N'2001-04-26' AS Date), N'zharce1q', N'a8UfhyE', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (27, N'Pegeen McCotter', N'+7 (442) 667-0213', N'PegeenMcCotter290@ro.ru', CAST(N'1993-06-27' AS Date), N'fygou1r', N'TTDlLt2Uk0C', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (28, N'Emilie Collett', N'+241 (189) 277-1492', N'EmilieCollett799@ro.ru', CAST(N'1996-09-21' AS Date), N'pcowen1s', N'FDtc9GIYzTr2', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (29, N'Byrom Terrell', N'+1 (971) 677-6582', N'ByromTerrell280@mail.ru', CAST(N'1991-09-16' AS Date), N'kfurman1t', N'9QAaudonIt', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (30, N'Daphne Bifield', N'+502 (872) 781-5485', N'DaphneBifield102@ro.ru', CAST(N'1994-09-03' AS Date), N'amcgavigan1u', N'04olFNl3xm', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (31, N'Blanca Staig', N'+52 (795) 664-6080', N'BlancaStaig700@google.com', CAST(N'1996-07-18' AS Date), N'abracco1v', N'FWzq258m6', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (32, N'Adriaens Kennsley', N'+53 (686) 790-8425', N'AdriaensKennsley304@yandex.ru', CAST(N'1993-10-29' AS Date), N'dhenden1w', N'VE0Yqa1', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (33, N'Emlyn Bartak', N'+62 (668) 699-8836', N'EmlynBartak42@google.com', CAST(N'1999-11-22' AS Date), N'mtottman1x', N'yKo2Enylsn', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (34, N'Victoria Willshire', N'+1 (713) 697-7601', N'VictoriaWillshire923@gmail.com', CAST(N'1990-09-03' AS Date), N'mfeedham1y', N'XjtwJenr5', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (35, N'Egon Savin', N'+420 (339) 951-9631', N'EgonSavin757@yandex.ru', CAST(N'1992-08-22' AS Date), N'cseman1z', N'h0V11hSGuX19', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (36, N'Phillie Elsom', N'+351 (867) 685-3149', N'PhillieElsom834@gmail.com', CAST(N'1995-03-24' AS Date), N'gsendall20', N'uN5TNp', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (37, N'Adan Semaine', N'+46 (917) 365-4392', N'AdanSemaine766@eu.com', CAST(N'1999-12-23' AS Date), N'jhentzer21', N'Cxf16MLn9h', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (38, N'Constantino Northrop', N'+86 (755) 351-6317', N'ConstantinoNorthrop339@google.com', CAST(N'2001-05-26' AS Date), N'ecicchillo22', N'thV1QZ', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (39, N'Rodie Easson', N'+1 (881) 349-0478', N'RodieEasson809@google.com', CAST(N'1999-05-23' AS Date), N'lshelford23', N'ZuvHF0', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (40, N'Alida Boleyn', N'+850 (446) 471-8022', N'AlidaBoleyn931@gmail.com', CAST(N'1995-10-19' AS Date), N'slujan24', N'Tir99gLW', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (41, N'Hill Scholfield', N'+92 (801) 561-5738', N'HillScholfield134@google.com', CAST(N'1995-08-05' AS Date), N'lcaghan25', N'eh46b8S', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (42, N'Cordell Cowpe', N'+45 (665) 829-7926', N'CordellCowpe152@eu.com', CAST(N'1991-03-23' AS Date), N'mfeak26', N'Sh0pbcchf', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (43, N'Alexandro Eldon', N'+62 (281) 794-5243', N'AlexandroEldon23@google.com', CAST(N'1993-08-21' AS Date), N'bbrixey27', N'j7KAFT', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (44, N'Kayle Collin', N'+86 (730) 603-0997', N'KayleCollin265@ro.ru', CAST(N'1994-08-20' AS Date), N'abeathem28', N'6Q7Eh3', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (45, N'Inesita Larkins', N'+84 (408) 742-8985', N'InesitaLarkins611@ro.ru', CAST(N'1999-10-29' AS Date), N'xfantham29', N'vk5DJF', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (46, N'Waylin Lound', N'+48 (237) 546-3031', N'WaylinLound158@outlock.com', CAST(N'1991-06-11' AS Date), N'egrieveson2a', N'ga8BYZG5kOY', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (47, N'Mechelle Gillogley', N'+63 (206) 885-0033', N'MechelleGillogley868@yandex.ru', CAST(N'1993-04-26' AS Date), N'cportchmouth2b', N'YmVfLyPOMUj7', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (48, N'Donal Muccino', N'+55 (857) 933-6103', N'DonalMuccino634@eu.com', CAST(N'2001-12-04' AS Date), N'ygatehouse2c', N'XdoOhGpPZSt', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (49, N'Joye Leadbetter', N'+62 (473) 833-0990', N'JoyeLeadbetter181@outlock.com', CAST(N'1996-04-07' AS Date), N'alevi2d', N'1HDjFSlJQl', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (50, N'Gianina Trump', N'+86 (118) 991-6553', N'GianinaTrump823@outlock.com', CAST(N'2000-06-16' AS Date), N'alotterington2e', N'Ub3lyxz9F', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (51, N'Read LeEstut', N'+62 (196) 844-3200', N'ReadLeEstut546@ro.ru', CAST(N'2001-09-07' AS Date), N'jstelle2f', N'o9B8Hgso', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (52, N'Jill Anscott', N'+86 (146) 935-1702', N'JillAnscott849@eu.com', CAST(N'1994-01-05' AS Date), N'mbilam2g', N'k7RSPrN8Lvlo', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (53, N'Bud Douch', N'+86 (599) 366-8768', N'BudDouch190@eu.com', CAST(N'1991-02-02' AS Date), N'stindle2h', N'A5P4Jb', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (54, N'Cicily Ossenna', N'+86 (508) 416-6902', N'CicilyOssenna520@outlock.com', CAST(N'1995-06-29' AS Date), N'hbenning2i', N'iOlSrpyWUi', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (55, N'Hew Izzat', N'+86 (434) 306-0018', N'HewIzzat171@eu.com', CAST(N'1991-09-06' AS Date), N'sbegwell2j', N'JwRnHCXYaNzq', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (56, N'Eddie Gimeno', N'+54 (197) 310-1346', N'EddieGimeno847@mail.ru', CAST(N'1994-04-25' AS Date), N'hmignot2k', N'WlJRWMvKcg', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (57, N'Sybyl Fierro', N'+81 (165) 510-7484', N'SybylFierro376@eu.com', CAST(N'2000-01-30' AS Date), N'cgaudin2l', N'Emn7skZ77', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (58, N'Nicol Troup', N'+63 (822) 963-0749', N'NicolTroup41@mail.ru', CAST(N'1995-02-12' AS Date), N'reffnert2m', N'ZykqIEKHRCs', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (59, N'Bondy Pattenden', N'+351 (666) 823-3086', N'BondyPattenden95@mail.ru', CAST(N'1993-03-27' AS Date), N'cbatterton2n', N'UHzs6WCzx', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (60, N'Angus Cockman', N'+86 (622) 253-8948', N'AngusCockman809@yandex.ru', CAST(N'1994-03-03' AS Date), N'csproul2o', N'dJ9gWd1', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (61, N'Mord Hanscome', N'+420 (533) 288-4363', N'MordHanscome758@eu.com', CAST(N'2000-07-09' AS Date), N'dhardiman2p', N'sr19gnqRGefT', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (62, N'Susy Leblanc', N'+504 (331) 371-6584', N'SusyLeblanc155@ro.ru', CAST(N'1993-07-03' AS Date), N'vst2q', N'GrPx9f', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (63, N'Gerard Ciccoloi', N'+62 (956) 571-1101', N'GerardCiccoloi67@eu.com', CAST(N'1991-04-10' AS Date), N'dfranchyonok2r', N'ldxtLF6apA9', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (64, N'Seamus Sayburn', N'+63 (447) 759-8661', N'SeamusSayburn733@outlock.com', CAST(N'1995-02-10' AS Date), N'bpues2s', N'hmFt6sRfRnPD', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (65, N'Washington Gentiry', N'+62 (485) 179-9990', N'WashingtonGentiry816@mail.ru', CAST(N'2000-12-24' AS Date), N'nmoff2t', N'7oU8ahamNo', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (66, N'Rebekkah Westall', N'+1 (189) 431-5279', N'RebekkahWestall637@ro.ru', CAST(N'2001-11-16' AS Date), N'dpocknell2u', N'3UeXjkqs', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (67, N'Court Kulic', N'+31 (620) 416-8430', N'CourtKulic618@gmail.com', CAST(N'1994-11-04' AS Date), N'pdanhel2v', N't4Qu3Sq5V6', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (68, N'Lorilee Roux', N'+63 (176) 424-8784', N'LorileeRoux974@eu.com', CAST(N'1999-02-08' AS Date), N'lgardner2w', N'F7tlcup', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (69, N'Modestine Rolinson', N'+595 (174) 853-8901', N'ModestineRolinson559@yandex.ru', CAST(N'2000-07-28' AS Date), N'ddauncey2x', N'rJQJcJmvocV', 4)
INSERT [dbo].[Client] ([ClientID], [C_name], [C_phone], [C_email], [C_birthday], [C_login], [C_password], [RoleID]) VALUES (70, N'Shelbi Ellgood', N'+62 (844) 153-5433', N'ShelbiEllgood172@mail.ru', CAST(N'2000-07-07' AS Date), N'123', N'123', 4)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderService] ON 

INSERT [dbo].[OrderService] ([OrderServiceID], [ClientID], [ServiceID], [DateVisit], [Status]) VALUES (1, 1, 1, CAST(N'2002-12-02' AS Date), N'Принят')
INSERT [dbo].[OrderService] ([OrderServiceID], [ClientID], [ServiceID], [DateVisit], [Status]) VALUES (2, 1, 2, CAST(N'2021-12-12' AS Date), N'Не принят')
INSERT [dbo].[OrderService] ([OrderServiceID], [ClientID], [ServiceID], [DateVisit], [Status]) VALUES (3, 1, 2, CAST(N'2003-12-03' AS Date), N'Не принят')
INSERT [dbo].[OrderService] ([OrderServiceID], [ClientID], [ServiceID], [DateVisit], [Status]) VALUES (4, 1, 2, CAST(N'2023-03-02' AS Date), N'Не принят')
INSERT [dbo].[OrderService] ([OrderServiceID], [ClientID], [ServiceID], [DateVisit], [Status]) VALUES (5, 1, 4, CAST(N'2023-02-09' AS Date), N'Не принят')
INSERT [dbo].[OrderService] ([OrderServiceID], [ClientID], [ServiceID], [DateVisit], [Status]) VALUES (6, 1, 2, CAST(N'2023-02-23' AS Date), N'Не принят')
INSERT [dbo].[OrderService] ([OrderServiceID], [ClientID], [ServiceID], [DateVisit], [Status]) VALUES (7, 1, 2, CAST(N'2023-03-25' AS Date), N'Принят')
SET IDENTITY_INSERT [dbo].[OrderService] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderST] ON 

INSERT [dbo].[OrderST] ([OrderSTID], [ClientID], [SeasonTicketID], [DateOrder], [Status]) VALUES (1, 1, 19, CAST(N'2023-02-27' AS Date), N'Не принят')
INSERT [dbo].[OrderST] ([OrderSTID], [ClientID], [SeasonTicketID], [DateOrder], [Status]) VALUES (2, 1, 19, CAST(N'2023-02-27' AS Date), N'Не принят')
INSERT [dbo].[OrderST] ([OrderSTID], [ClientID], [SeasonTicketID], [DateOrder], [Status]) VALUES (3, 1, 17, CAST(N'2023-03-13' AS Date), N'Принят')
SET IDENTITY_INSERT [dbo].[OrderST] OFF
GO
INSERT [dbo].[Raspisanie] ([WeekID], [Time], [SeasonTicketID]) VALUES (1, CAST(N'18:00:00' AS Time), 16)
INSERT [dbo].[Raspisanie] ([WeekID], [Time], [SeasonTicketID]) VALUES (1, CAST(N'20:00:00' AS Time), 16)
INSERT [dbo].[Raspisanie] ([WeekID], [Time], [SeasonTicketID]) VALUES (3, CAST(N'18:00:00' AS Time), 16)
INSERT [dbo].[Raspisanie] ([WeekID], [Time], [SeasonTicketID]) VALUES (3, CAST(N'20:00:00' AS Time), 16)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [R_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [R_name]) VALUES (2, N'Manager')
INSERT [dbo].[Role] ([RoleID], [R_name]) VALUES (3, N'Operator')
INSERT [dbo].[Role] ([RoleID], [R_name]) VALUES (4, N'Client')
INSERT [dbo].[Role] ([RoleID], [R_name]) VALUES (5, N'Boxing coach ')
INSERT [dbo].[Role] ([RoleID], [R_name]) VALUES (6, N'Kickboxing coach')
INSERT [dbo].[Role] ([RoleID], [R_name]) VALUES (7, N'Massage therapist')
INSERT [dbo].[Role] ([RoleID], [R_name]) VALUES (8, N'Trainer
')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[SeasonTicket] ON 

INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (1, N'Тренажерный зал разовый', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', NULL, N'1', CAST(150.00 AS Decimal(18, 2)), N'ST1.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (2, N'Тренажерный зал разовый + Бассейн', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', 5, N'1', CAST(299.00 AS Decimal(18, 2)), N'ST2.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (3, N'Тренажерный зал разовый + Сауна ', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', 6, N'1', CAST(249.00 AS Decimal(18, 2)), N'ST3.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (4, N'Тренажерный зал 30 дней', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', NULL, N'30', CAST(1290.00 AS Decimal(18, 2)), N'ST1.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (5, N'Тренажерный зал 30 дней + Бассейн', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', 5, N'30', CAST(1588.40 AS Decimal(18, 2)), N'ST2.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (6, N'Тренажерный зал 30 дней + Сауна ', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', 6, N'30', CAST(1513.40 AS Decimal(18, 2)), N'ST3.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (7, N'Тренажерный зал 90 дней', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', NULL, N'90', CAST(2650.00 AS Decimal(18, 2)), N'ST1.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (8, N'Тренажерный зал 90 дней + Бассейн', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', 5, N'90', CAST(3047.90 AS Decimal(18, 2)), N'ST2.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (9, N'Тренажерный зал 90 дней + Сауна ', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', 6, N'90', CAST(2947.90 AS Decimal(18, 2)), N'ST3.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (10, N'Тренажерный зал на полгода', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', NULL, N'179', CAST(3990.00 AS Decimal(18, 2)), N'ST1.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (11, N'Тренажерный зал на полгода + Бассейн', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', 5, N'179', CAST(1886.90 AS Decimal(18, 2)), N'ST2.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (12, N'Тренажерный зал на полгода + Сауна ', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', 6, N'179', CAST(1736.90 AS Decimal(18, 2)), N'ST3.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (13, N'Тренажерный зал на год', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', NULL, N'365', CAST(6500.00 AS Decimal(18, 2)), N'ST1.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (14, N'Тренажерный зал на год + Бассейн', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', 5, N'365', CAST(7295.90 AS Decimal(18, 2)), N'ST2.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (15, N'Тренажерный зал на год + Сауна ', N'Тренажерный зал – сердце нашего спортивно-развлекательного комплекса, в котором вы добьетесь любых поставленных целей и обретете тело вашей мечты. Здесь созданы лучшие условия для комфортной и эффективной тренировки посетителей с любым уровнем подготовки – как для начинающих, так и опытных спортсменов с повышенными требованиями. ', 6, N'365', CAST(7095.90 AS Decimal(18, 2)), N'ST3.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (16, N'Секция бокса на месяц', N'Спортивное единоборство, в основе которого лежит классический кулачный бой с отрабатыванием техник ударов руками.', 3, N'30', CAST(2780.00 AS Decimal(18, 2)), N'ST4.jpeg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (17, N'Секция кикбокса на месяц', N'Динамичный вид борьбы, сочетающий в себе различные техники ударов руками и ногами', 4, N'30', CAST(3200.00 AS Decimal(18, 2)), N'ST5.jpg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (18, N'Секция бокса на год', N'Спортивное единоборство, в основе которого лежит классический кулачный бой с отрабатыванием техник ударов руками.', 3, N'365', CAST(5900.00 AS Decimal(18, 2)), N'ST4.jpeg')
INSERT [dbo].[SeasonTicket] ([SeasonTicketID], [ST_name], [ST_description], [ServiceID], [ST_period], [ST_price], [ST_image]) VALUES (19, N'Секция кикбокса на год', N'Динамичный вид борьбы, сочетающий в себе различные техники ударов руками и ногами', 4, N'365', CAST(6350.00 AS Decimal(18, 2)), N'ST5.jpg')
SET IDENTITY_INSERT [dbo].[SeasonTicket] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ServiceID], [S_name], [S_description], [S_period], [S_price], [S_image]) VALUES (1, N'Настольный теннис', N'Активная игра, поэтому важно следить за своей физической формой, если вы хотите достигнуть успеха в этом виде спорта. За один час игры в настольный теннис в среднем сжигается до двухсот восьмидесяти ккал.', CAST(N'03:00:00' AS Time), CAST(179.00 AS Decimal(10, 2)), N'ntennis.jpg')
INSERT [dbo].[Service] ([ServiceID], [S_name], [S_description], [S_period], [S_price], [S_image]) VALUES (2, N'Боулинг', N'Цель игры - с помощью как можно меньшего количества пускаемых руками шаров сбить кегли, установленные особым образом в конце безбортовой дорожки.', CAST(N'03:30:00' AS Time), CAST(349.00 AS Decimal(10, 2)), N'bouling.jpg')
INSERT [dbo].[Service] ([ServiceID], [S_name], [S_description], [S_period], [S_price], [S_image]) VALUES (3, N'Бокс', N'Спортивное единоборство, в основе которого лежит классический кулачный бой с отрабатыванием техник ударов руками.', CAST(N'04:00:00' AS Time), CAST(200.00 AS Decimal(10, 2)), N'box.jpg')
INSERT [dbo].[Service] ([ServiceID], [S_name], [S_description], [S_period], [S_price], [S_image]) VALUES (4, N'Кикбокс', N'Динамичный вид борьбы, сочетающий в себе различные техники ударов руками и ногами', CAST(N'04:00:00' AS Time), CAST(249.00 AS Decimal(10, 2)), N'kikbox.jpg')
INSERT [dbo].[Service] ([ServiceID], [S_name], [S_description], [S_period], [S_price], [S_image]) VALUES (5, N'Бассейн', N'Занятия в бассейне — возможность получить хорошую нагрузку за короткое время. Сопротивление воды заставляет работать множество мышц в теле человека. Поэтому плавание — прекрасный способ быстро вернуться в форму, сбросить лишний вес, укрепить тело.', CAST(N'02:00:00' AS Time), CAST(199.00 AS Decimal(10, 2)), N'bassein.jpg')
INSERT [dbo].[Service] ([ServiceID], [S_name], [S_description], [S_period], [S_price], [S_image]) VALUES (6, N'Сауна', N'Любая сауна обладает множеством полезных свойств – снижает нервное и мышечное напряжение, ликвидирует стресс. Тепло способствует расширению кровеносных сосудов, улучшению кровотока, насыщению органов кислородом.', CAST(N'01:00:00' AS Time), CAST(149.00 AS Decimal(10, 2)), N'sauna.jpg')
INSERT [dbo].[Service] ([ServiceID], [S_name], [S_description], [S_period], [S_price], [S_image]) VALUES (7, N'Лечебный массаж', N'Одна из мануальных техник, совокупность приёмов механического и рефлекторного воздействия на ткани и органы в виде растирания, давления, вибрации, проводимых непосредственно на поверхности тела человека как руками.', CAST(N'02:00:00' AS Time), CAST(499.00 AS Decimal(10, 2)), N'massage.jpg')
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (1, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (2, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (3, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (4, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (5, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (6, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (7, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (8, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (9, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (10, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (11, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (12, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (13, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (14, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (15, 8)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (16, 5)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (17, 6)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (18, 5)
INSERT [dbo].[ST_Role] ([SeasonTicketID], [RoleID]) VALUES (19, 6)
GO
SET IDENTITY_INSERT [dbo].[Timetable] ON 

INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (1, 45, 47, 18, CAST(N'2023-01-03' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (2, 42, 24, 10, CAST(N'2020-03-08' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (3, 39, 53, 21, CAST(N'2021-01-14' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (4, 41, 20, 7, CAST(N'2022-06-28' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (5, 42, 23, 9, CAST(N'2021-05-21' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (6, 43, 30, 13, CAST(N'2023-01-26' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (7, 40, 54, 22, CAST(N'2021-01-18' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (8, 42, 23, 9, CAST(N'2021-05-28' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (9, 42, 66, 26, CAST(N'2020-09-27' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (10, 44, 41, 17, CAST(N'2020-04-25' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (11, 43, 67, 27, CAST(N'2022-12-31' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (12, 39, 16, 5, CAST(N'2020-05-21' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (13, 38, 12, 3, CAST(N'2021-12-13' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (14, 39, 53, 21, CAST(N'2021-02-14' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (15, 37, 50, 19, CAST(N'2023-03-26' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (16, 45, 47, 18, CAST(N'2022-09-05' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (17, 43, 29, 12, CAST(N'2020-11-21' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (18, 39, 14, 4, CAST(N'2020-01-22' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (19, 44, 41, 17, CAST(N'2020-04-10' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (20, 44, 39, 16, CAST(N'2021-09-03' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (21, 40, 54, 22, CAST(N'2021-01-22' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (22, 37, 7, 2, CAST(N'2022-05-28' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (23, 39, 14, 4, CAST(N'2020-02-22' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (24, 36, 4, 1, CAST(N'2020-09-08' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (25, 41, 22, 8, CAST(N'2021-07-20' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (26, 45, 47, 18, CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (27, 36, 60, 23, CAST(N'2021-04-18' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (28, 38, 53, 21, CAST(N'2020-12-05' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (29, 36, 60, 23, CAST(N'2021-04-25' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (30, 41, 62, 25, CAST(N'2021-12-15' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (31, 36, 4, 1, CAST(N'2020-07-14' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (32, 36, 60, 23, CAST(N'2021-05-10' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (33, 44, 33, 15, CAST(N'2021-09-07' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (34, 40, 17, 6, CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (35, 45, 47, 18, CAST(N'2022-09-26' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (36, 40, 54, 22, CAST(N'2021-02-12' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (37, 41, 61, 24, CAST(N'2022-10-06' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (38, 37, 52, 20, CAST(N'2021-05-20' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (39, 38, 53, 21, CAST(N'2021-01-08' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (40, 41, 22, 8, CAST(N'2021-06-17' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (41, 36, 4, 1, CAST(N'2020-04-21' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (42, 43, 32, 14, CAST(N'2021-09-15' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (43, 37, 52, 20, CAST(N'2021-05-29' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (44, 36, 4, 1, CAST(N'2020-05-07' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (45, 45, 47, 18, CAST(N'2023-02-08' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (46, 38, 12, 3, CAST(N'2022-01-05' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (47, 40, 17, 6, CAST(N'2020-06-09' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (48, 37, 53, 21, CAST(N'2020-12-04' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (49, 43, 26, 11, CAST(N'2021-06-25' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (50, 40, 17, 6, CAST(N'2020-10-04' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (51, 4, 70, 28, CAST(N'2022-08-13' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (53, 4, 1, 28, CAST(N'2023-02-23' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (56, 11, 70, 28, CAST(N'2023-03-14' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (57, 26, 70, 28, CAST(N'2023-03-16' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (58, 32, 70, 28, CAST(N'2023-03-21' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (59, 4, 70, 28, CAST(N'2023-03-15' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (60, 32, 70, 28, CAST(N'2023-03-16' AS Date))
INSERT [dbo].[Timetable] ([TimetableID], [UserID], [ClientID], [BoughtSTID], [Date]) VALUES (61, 42, 1, 30, CAST(N'2023-03-14' AS Date))
SET IDENTITY_INSERT [dbo].[Timetable] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (1, N'Jesse Wylam', N'+841(33)691-67-50', N'JesseWylam@yandex.ru', CAST(N'1984-08-31' AS Date), N'144.76.193.237', N'admin', N'admin', N'', 1)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (2, N'Owen Vayro', N'+9(5259)000-22-37', N'OwenVayro@mail.ru', CAST(N'1987-12-20' AS Date), N'169.108.108.88', N'manager', N'manager', N'', 2)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (3, N'Kennan Boyes', N'+1(537)784-60-14', N'KennanBoyes@gmail.com', CAST(N'1996-01-28' AS Date), N'143.177.136.232', N'111', N'111', N'', 3)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (4, N'Linoel Barnwall', N'+25(908)085-08-83', N'LinoelBarnwall@outlock.com', CAST(N'1988-11-27' AS Date), N'18.127.87.158', N'kick', N'kick', N'u3.png', 6)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (5, N'Marcus Buckles', N'+5(319)884-73-18', N'MarcusBuckles@gmail.com', CAST(N'1974-10-26' AS Date), N'142.216.95.251', N'box', N'box', N'u4.png', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (6, N'Dilan Scouse', N'+54(1061)127-72-65', N'DilanScouse@google.com', CAST(N'1991-03-19' AS Date), N'229.104.255.175', N'nbountiffc', N'5xfyjS9ZULGA', N'u6.png', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (7, N'Pansie Beddard', N'+80(11)909-38-24', N'PansieBeddard@outlock.com', CAST(N'1988-02-16' AS Date), N'90.207.38.179', N'cbenjefieldd', N'tQOsP0ei9TuD', N'', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (8, N'Tanya MacKeig', N'+701(220)125-90-85', N'TanyaMacKeig@ro.ru', CAST(N'1998-05-25' AS Date), N'172.249.218.50', N'ocorbyne', N'bG1ZIzwIoU', N'u1.png', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (9, N'Archie Polden', N'+53(658)486-77-82', N'ArchiePolden@google.com', CAST(N'1992-12-31' AS Date), N'49.101.94.118', N'cstickinsf', N'QRYADbgNj', N'u14.jpg', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (10, N'Simone Tease', N'+53(958)903-59-34', N'SimoneTease@mail.ru', CAST(N'1985-05-05' AS Date), N'161.5.132.42', N'dclarageg', N'Yp59ZIDnWe', N'u15.jpg', 7)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (11, N'Bax Glayzer', N'+89(5533)729-59-78', N'BaxGlayzer@google.com', CAST(N'1987-09-15' AS Date), N'174.42.8.3', N'jmccawleyh', N'g58zLcmCYON', N'u16.jpg', 6)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (12, N'Heath Ruf', N'+32(37)379-72-80', N'HeathRuf@google.com', CAST(N'1985-06-22' AS Date), N'182.2.128.34', N'dbandi', N'yFAaYuVW', N'u18.jpg', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (13, N'Maryjane Emney', N'+396(42)752-94-89', N'MaryjaneEmney@gmail.com', CAST(N'1992-07-15' AS Date), N'73.212.243.168', N'abutteryj', N'ttOFbWWGtD', N'', 3)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (14, N'Gino Koene', N'+6(58)861-23-19', N'GinoKoene@gmail.com', CAST(N'1995-04-09' AS Date), N'93.126.120.134', N'kkinmank', N'qUr6fdWP6L5G', N'u19.jpg', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (15, N'Karalee Sabey', N'+003(905)301-83-13', N'KaraleeSabey@yandex.ru', CAST(N'1992-12-30' AS Date), N'9.26.5.107', N'sskepperl', N'jHYN0v3', N'u2.png', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (16, N'Nicolle Sammut', N'+1(731)602-82-69', N'NicolleSammut@yandex.ru', CAST(N'1996-01-25' AS Date), N'139.241.156.87', N'ayeolandm', N'QQezRBV9', N'', 3)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (17, N'Ulya Skepper', N'+2(2631)950-97-93', N'UlyaSkepper@gmail.com', CAST(N'1994-05-26' AS Date), N'47.0.240.7', N'cspeedingn', N'UCLYITfw2Vo', N'u5.png', 7)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (18, N'Arty Hulatt', N'+240(2488)909-16-94', N'ArtyHulatt@ro.ru', CAST(N'1999-03-25' AS Date), N'24.185.229.169', N'ascarisbricko', N'fzBcv6GbyCp', N'', 3)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (19, N'Wendall Salzberg', N'+966(83)342-13-50', N'WendallSalzberg@gmail.com', CAST(N'1994-09-03' AS Date), N'171.78.28.229', N'mthurbyp', N'wg0uIskqei', N'', 2)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (20, N'Antonia Dunbleton', N'+00(25)061-06-36', N'AntoniaDunbleton@gmail.com', CAST(N'1986-09-30' AS Date), N'208.81.128.179', N'pmccotterr', N'QG5tdzRpGZJ2', N'u21.jpg', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (21, N'Margit Seman', N'+76(328)615-03-63', N'MargitSeman@ro.ru', CAST(N'1985-11-10' AS Date), N'130.247.20.138', N'icallejas', N'aeDvZk8o9', N'', 3)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (22, N'Zachery Harce', N'+799(2134)062-69-92', N'ZacheryHarce@eu.com', CAST(N'1992-11-12' AS Date), N'243.230.165.161', N'nbroscht', N'DmPJt2', N'', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (23, N'Forest Ygou', N'+57(7613)740-47-01', N'ForestYgou@mail.ru', CAST(N'1981-08-17' AS Date), N'40.140.160.210', N'sallseppu', N't0ko0854Cpvv', N'', 3)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (24, N'Pinilope Cowen', N'+909(44)404-09-33', N'PinilopeCowen@ro.ru', CAST(N'1986-03-02' AS Date), N'253.7.8.82', N'eabbatucciv', N'gUtNdsDu', N'u7.png', 7)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (25, N'Kevin Furman', N'+90(667)444-58-25', N'KevinFurman@outlock.com', CAST(N'1990-05-07' AS Date), N'76.252.15.218', N'sgarnhamw', N'eml6RqbK', N'u24.jpg', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (26, N'Gary Mitchell', N'+881(8155)313-51-94', N'GaryMitchell@gmail.com', CAST(N'1993-05-18' AS Date), N'44.150.92.36', N'4AHYWy7V', N'krtxipX4', N'u26.jpg', 6)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (27, N'Wade Martinez', N'+86(76)417-59-56', N'WadeMartinez@mail.ru', CAST(N'1992-11-13' AS Date), N'239.121.181.127', N'N2BvgS8a', N'MgJCMcu8', N'', 3)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (28, N'Steve Peterson', N'+358(399)120-58-24', N'StevePeterson@ro.ru', CAST(N'1996-07-12' AS Date), N'175.7.143.70', N'u0hpPfVZ', N'ZWYd5pmg', N'', 3)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (29, N'Christopher Smith', N'+7(991)467-21-67', N'ChristopherSmith@yandex.ru', CAST(N'1999-05-21' AS Date), N'5.148.113.12', N'INl6AZvR', N'6Bb7hqAy', N'', 2)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (30, N'Richard Hall', N'+303(46)354-66-95', N'RichardHall@mail.ru', CAST(N'1999-12-27' AS Date), N'13.199.214.249', N'OkTAs6Eo', N'bwXrv2cw', N'', 3)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (31, N'Mia Cruz', N'+377(6693)503-66-05', N'MiaCruz@mail.ru', CAST(N'1994-01-13' AS Date), N'246.155.125.108', N'pYUWvk32', N'62NnUvRR', N'u8.png', 7)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (32, N'Raymond Rose', N'+1(3555)096-69-16', N'RaymondRose@mail.ru', CAST(N'1996-11-12' AS Date), N'97.164.124.78', N'y8gPhwWq', N'j8yLigQy', N'u27.jpg', 6)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (33, N'Jessica Morris', N'+9(06)990-59-32', N'JessicaMorris@gmail.com', CAST(N'1995-07-06' AS Date), N'186.238.247.28', N'9iuRfkfa', N'nvJ8yBzF', N'u28.jpg', 5)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (34, N'Lee Brown', N'+47(5501)611-57-85', N'LeeBrown@mail.ru', CAST(N'2000-08-31' AS Date), N'232.52.168.89', N'ZbQ2SiFE', N'wqixNCa0', N'', 2)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (35, N'Teremi Hale', N'+488(9478)842-26-96', N'TeremiHale@eu.com', CAST(N'1996-03-03' AS Date), N'192.204.156.62', N'h6MlvtM2', N'6YYQJ7Mo', N'u29.jpg', 7)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (36, N'Eugene Barnes', N'+221 (091) 356-05-55', N'EugeneBarnes@yandex.ru', CAST(N'1994-04-09' AS Date), N'239.99.212.46', N'trainer', N'trainer', N'u30.jpg', 8)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (37, N'Gary Smith', N'+880 (643) 482-36-48', N'GarySmith@outlock.com', CAST(N'1994-10-30' AS Date), N'213.76.11.47', N'9ArPAgAE', N'yODm4TXC', N'u31.jpg', 8)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (38, N'Ruth Benson', N'+992 (711) 286-12-60', N'RuthBenson@ro.ru', CAST(N'2001-12-28' AS Date), N'155.198.233.35', N'7x4fWSCI', N'DE5aI47L', N'u32.jpeg', 8)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (39, N'Nora Baker', N'+354 (998) 611-38-47', N'NoraBaker@mail.ru', CAST(N'1990-07-06' AS Date), N'43.38.65.161', N'4AquhBb7', N'uWLsP1xL', N'u23.jpg', 8)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (40, N'Darla Williams', N'+679 (130) 303-30-91', N'DarlaWilliams@mail.ru', CAST(N'1991-11-11' AS Date), N'140.189.222.175', N'bOfBqgK6', N'DDyz3qAp', N'u9.png', 8)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (41, N'Steven White', N'+94 (822) 867-50-78', N'StevenWhite@ro.ru', CAST(N'1999-02-07' AS Date), N'14.151.242.9', N'J5uOBoqW', N'sxaq2piC', N'u12.jpg', 8)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (42, N'Christopher Doyle', N'+993 (024) 712-26-19', N'ChristopherDoyle@ro.ru', CAST(N'1991-04-07' AS Date), N'7.26.56.131', N'rI6DWBsd', N'j3tDzPs5', N'', 8)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (43, N'Kelly Austin', N'+886 (535) 151-00-15', N'KellyAustin@eu.com', CAST(N'2001-11-02' AS Date), N'208.40.205.244', N'8yCAiCqB', N'RPISdvL7', N'', 8)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (44, N'Bernice Barnes', N'+504 (648) 666-04-32', N'BerniceBarnes@yandex.ru', CAST(N'1994-03-23' AS Date), N'197.194.88.232', N'uqf0AGiC', N'oaC1MrG7', N'', 8)
INSERT [dbo].[User] ([UserID], [U_name], [U_phone], [U_email], [U_bitrhday], [U_ip], [U_login], [U_password], [U_photo], [RoleID]) VALUES (45, N'Richard Murphy', N'+503 (380) 948-12-87', N'RichardMurphy@ro.ru', CAST(N'2001-02-04' AS Date), N'87.232.211.155', N'FBiaYM0N', N'9HCrdfM1', N'', 8)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Week] ON 

INSERT [dbo].[Week] ([WeekID], [W_name]) VALUES (1, N'Понедельник')
INSERT [dbo].[Week] ([WeekID], [W_name]) VALUES (2, N'Вторник')
INSERT [dbo].[Week] ([WeekID], [W_name]) VALUES (3, N'Среда')
INSERT [dbo].[Week] ([WeekID], [W_name]) VALUES (4, N'Четверг')
INSERT [dbo].[Week] ([WeekID], [W_name]) VALUES (5, N'Пятница')
INSERT [dbo].[Week] ([WeekID], [W_name]) VALUES (6, N'Суббота')
INSERT [dbo].[Week] ([WeekID], [W_name]) VALUES (7, N'Воскресенье')
SET IDENTITY_INSERT [dbo].[Week] OFF
GO
ALTER TABLE [dbo].[BoughtService]  WITH CHECK ADD  CONSTRAINT [FK_BoughtService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BoughtService] CHECK CONSTRAINT [FK_BoughtService_Client]
GO
ALTER TABLE [dbo].[BoughtService]  WITH CHECK ADD  CONSTRAINT [FK_BoughtService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BoughtService] CHECK CONSTRAINT [FK_BoughtService_Service]
GO
ALTER TABLE [dbo].[BoughtService]  WITH CHECK ADD  CONSTRAINT [FK_BoughtService_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[BoughtService] CHECK CONSTRAINT [FK_BoughtService_User]
GO
ALTER TABLE [dbo].[BoughtST]  WITH CHECK ADD  CONSTRAINT [FK_BoughtST_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BoughtST] CHECK CONSTRAINT [FK_BoughtST_Client]
GO
ALTER TABLE [dbo].[BoughtST]  WITH CHECK ADD  CONSTRAINT [FK_BoughtST_SeasonTicket] FOREIGN KEY([SeasonTicketID])
REFERENCES [dbo].[SeasonTicket] ([SeasonTicketID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BoughtST] CHECK CONSTRAINT [FK_BoughtST_SeasonTicket]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Role]
GO
ALTER TABLE [dbo].[OrderService]  WITH CHECK ADD  CONSTRAINT [FK_OrderService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[OrderService] CHECK CONSTRAINT [FK_OrderService_Client]
GO
ALTER TABLE [dbo].[OrderService]  WITH CHECK ADD  CONSTRAINT [FK_OrderService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[OrderService] CHECK CONSTRAINT [FK_OrderService_Service]
GO
ALTER TABLE [dbo].[OrderST]  WITH CHECK ADD  CONSTRAINT [FK_OrderST_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[OrderST] CHECK CONSTRAINT [FK_OrderST_Client]
GO
ALTER TABLE [dbo].[OrderST]  WITH CHECK ADD  CONSTRAINT [FK_OrderST_SeasonTicket] FOREIGN KEY([SeasonTicketID])
REFERENCES [dbo].[SeasonTicket] ([SeasonTicketID])
GO
ALTER TABLE [dbo].[OrderST] CHECK CONSTRAINT [FK_OrderST_SeasonTicket]
GO
ALTER TABLE [dbo].[Raspisanie]  WITH CHECK ADD  CONSTRAINT [FK_Raspisanie_SeasonTicket] FOREIGN KEY([SeasonTicketID])
REFERENCES [dbo].[SeasonTicket] ([SeasonTicketID])
GO
ALTER TABLE [dbo].[Raspisanie] CHECK CONSTRAINT [FK_Raspisanie_SeasonTicket]
GO
ALTER TABLE [dbo].[Raspisanie]  WITH CHECK ADD  CONSTRAINT [FK_Raspisanie_Week] FOREIGN KEY([WeekID])
REFERENCES [dbo].[Week] ([WeekID])
GO
ALTER TABLE [dbo].[Raspisanie] CHECK CONSTRAINT [FK_Raspisanie_Week]
GO
ALTER TABLE [dbo].[SeasonTicket]  WITH CHECK ADD  CONSTRAINT [FK_SeasonTicket_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[SeasonTicket] CHECK CONSTRAINT [FK_SeasonTicket_Service]
GO
ALTER TABLE [dbo].[ST_Role]  WITH CHECK ADD  CONSTRAINT [FK_ST_Role_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[ST_Role] CHECK CONSTRAINT [FK_ST_Role_Role]
GO
ALTER TABLE [dbo].[ST_Role]  WITH CHECK ADD  CONSTRAINT [FK_ST_Role_SeasonTicket] FOREIGN KEY([SeasonTicketID])
REFERENCES [dbo].[SeasonTicket] ([SeasonTicketID])
GO
ALTER TABLE [dbo].[ST_Role] CHECK CONSTRAINT [FK_ST_Role_SeasonTicket]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK_Timetable_BoughtST1] FOREIGN KEY([BoughtSTID])
REFERENCES [dbo].[BoughtST] ([BoughtSTID])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK_Timetable_BoughtST1]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK_Timetable_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK_Timetable_Client]
GO
ALTER TABLE [dbo].[Timetable]  WITH CHECK ADD  CONSTRAINT [FK_Timetable_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Timetable] CHECK CONSTRAINT [FK_Timetable_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [SRcenter] SET  READ_WRITE 
GO
