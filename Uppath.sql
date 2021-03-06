USE [master]
GO
/****** Object:  Database [UPPart2]    Script Date: 4/4/2562 23:19:16 ******/
CREATE DATABASE [UPPart2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UPPart2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\UPPart2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UPPart2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\UPPart2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [UPPart2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UPPart2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UPPart2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UPPart2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UPPart2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UPPart2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UPPart2] SET ARITHABORT OFF 
GO
ALTER DATABASE [UPPart2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UPPart2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UPPart2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UPPart2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UPPart2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UPPart2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UPPart2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UPPart2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UPPart2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UPPart2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UPPart2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UPPart2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UPPart2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UPPart2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UPPart2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UPPart2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UPPart2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UPPart2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UPPart2] SET  MULTI_USER 
GO
ALTER DATABASE [UPPart2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UPPart2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UPPart2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UPPart2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UPPart2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UPPart2] SET QUERY_STORE = OFF
GO
USE [UPPart2]
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 4/4/2562 23:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NOT NULL,
	[Day] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[PicturePath] [varchar](255) NULL,
 CONSTRAINT [PK_Calendar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreeView]    Script Date: 4/4/2562 23:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreeView](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Parent] [int] NULL,
	[URL] [varchar](255) NULL,
	[PicturePath] [varchar](255) NULL,
 CONSTRAINT [PK_TreeView] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Calendar] ON 

INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (4, N'cake iiii', 26, 3, 2562, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (5, N'Ford', 20, 8, 2562, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (6, N'Gib', 28, 1, 2562, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (7, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (8, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (9, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (10, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (11, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (12, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (13, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (14, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (15, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (16, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (17, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (18, N'', 2, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (19, N'', 1, 1, 2014, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (20, N'', 1, 1, 2018, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (21, N'', 1, 1, 2014, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (22, N'', 1, 1, 2014, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (23, N'', 1, 1, 2014, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (24, N'', 1, 1, 2018, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (25, N'', 1, 1, 2018, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (26, N'', 3, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (27, N'', 3, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (28, N'', 3, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (29, N'', 3, 2, 2015, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (30, N'', 1, 1, 2014, NULL)
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (31, N'images.jpg', 7, 4, 2560, N'Upload/1c31d8d3-f05c-4842-bc3b-eef54a63b277.jpg')
INSERT [dbo].[Calendar] ([ID], [Title], [Day], [Month], [Year], [PicturePath]) VALUES (32, N'Farm_Tour.jpg', 9, 4, 2562, N'Upload/6aabfb6d-8b12-4150-9fe3-fb1d9ee1c7e4.jpg')
SET IDENTITY_INSERT [dbo].[Calendar] OFF
SET IDENTITY_INSERT [dbo].[TreeView] ON 

INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (11, N'Level 1x', NULL, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (12, N'Level 1y', NULL, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (13, N'Level 1z', NULL, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (14, N'Level 11x', 11, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (15, N'Level 11y', 12, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (16, N'Level 11z', 13, NULL, NULL)
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (17, N'images.jpg', NULL, NULL, N'Upload/87cc1957-d52a-4e90-a0e9-fb164935ac33.jpg')
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (18, N'images.jpg', NULL, NULL, N'Upload/91efcba2-7def-49e9-8098-0b08aa9e12e5.jpg')
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (19, N'images.jpg', NULL, NULL, N'Upload/6cc85808-646a-46dd-8abb-7c0b44b2d341.jpg')
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (20, N'images.jpg', NULL, NULL, N'Upload/f4a4d9ee-6b77-4f9a-87ef-a39741d2f306.jpg')
INSERT [dbo].[TreeView] ([ID], [Name], [Parent], [URL], [PicturePath]) VALUES (21, N'images.jpg', NULL, NULL, N'Upload/40daf13f-8c36-4cec-a3af-a4cea946a1d2.jpg')
SET IDENTITY_INSERT [dbo].[TreeView] OFF
/****** Object:  StoredProcedure [dbo].[spCalendar]    Script Date: 4/4/2562 23:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCalendar]
	@Day int,
	@Month int,
	@Year int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  ID, Title
	FROM    Calendar
	WHERE   (Day = @Day) AND (Month = @Month) AND (Year = @Year)

   
END
GO
/****** Object:  StoredProcedure [dbo].[spCalendarByID]    Script Date: 4/4/2562 23:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCalendarByID]
	@ID  int
	
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT  ID, Title, Day, Month, Year
	FROM  Calendar
	WHERE (ID = @ID)

   
END
GO
/****** Object:  StoredProcedure [dbo].[spCalendarInsert]    Script Date: 4/4/2562 23:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCalendarInsert]
	@ID int = null,
	@Title varchar(50),
	@Day int,
	@Month int,
	@Year int,
	@PicturePath varchar(255)

AS
BEGIN
	IF @ID IS NULL
		BEGIN
			INSERT  INTO  Calendar(Title, Day, Month, Year,PicturePath)
			VALUES  (@Title,@Day,@Month,@Year,@PicturePath)
			END
	ELSE
		BEGIN
			UPDATE Calendar 
			SET 
				Title = @Title,
				Day = @Day,
				Month = @Month,
				Year = @Year,
				PicturePath = @PicturePath
			WHERE ID = @ID

		END
	
END
GO
/****** Object:  StoredProcedure [dbo].[spTreeViewInsertedFile]    Script Date: 4/4/2562 23:19:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTreeViewInsertedFile]
	@Name varchar(50),
	@PicturePath varchar(255) 
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT  INTO TreeView(Name, PicturePath)
	VALUES(@Name,@PicturePath)

    
	
END
GO
USE [master]
GO
ALTER DATABASE [UPPart2] SET  READ_WRITE 
GO
