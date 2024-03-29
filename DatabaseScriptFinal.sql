USE [master]
GO
/****** Object:  Database [Project_Women_Empowerment]    Script Date: 11/12/2019 3:15:18 PM ******/
CREATE DATABASE [Project_Women_Empowerment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Project_Women_Empowerment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Project_Women_Empowerment.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Project_Women_Empowerment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Project_Women_Empowerment_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Project_Women_Empowerment] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Project_Women_Empowerment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Project_Women_Empowerment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Project_Women_Empowerment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Project_Women_Empowerment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Project_Women_Empowerment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Project_Women_Empowerment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Project_Women_Empowerment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET RECOVERY FULL 
GO
ALTER DATABASE [Project_Women_Empowerment] SET  MULTI_USER 
GO
ALTER DATABASE [Project_Women_Empowerment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Project_Women_Empowerment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Project_Women_Empowerment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Project_Women_Empowerment] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Project_Women_Empowerment', N'ON'
GO
USE [Project_Women_Empowerment]
GO
/****** Object:  Table [dbo].[Admin_Detail]    Script Date: 11/12/2019 3:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Detail](
	[Admin_ID] [int] NOT NULL,
	[Admin_Username] [nvarchar](50) NOT NULL,
	[Admin_Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Admin_Detail] PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bank_Detail]    Script Date: 11/12/2019 3:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank_Detail](
	[Bank_ID] [int] NOT NULL,
	[NGO_ID] [int] NOT NULL,
	[Bank_Name] [nvarchar](50) NOT NULL,
	[IFSC_Code] [nvarchar](12) NOT NULL,
	[Account_Number] [nvarchar](16) NOT NULL,
	[Account_Holder_Name] [nvarchar](30) NOT NULL,
	[PAN_Number] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Bank_Detail] PRIMARY KEY CLUSTERED 
(
	[Bank_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course_Detail]    Script Date: 11/12/2019 3:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Detail](
	[Course_ID] [int] NOT NULL,
	[NGO_ID] [int] NOT NULL,
	[Course_Name] [nchar](20) NOT NULL,
	[Course_Start_Date] [datetime] NOT NULL,
	[Course_End_Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Course_Detail] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGO_Detail]    Script Date: 11/12/2019 3:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGO_Detail](
	[NGO_ID] [int] NOT NULL,
	[Organization_Name] [nvarchar](max) NOT NULL,
	[Project_Incharge_Name] [nvarchar](20) NOT NULL,
	[Project_Incharge_Mobile_Number] [nvarchar](10) NOT NULL,
	[Course_ID] [int] NOT NULL,
	[Organization_Address] [nvarchar](max) NOT NULL,
	[Email_ID] [nvarchar](max) NOT NULL,
	[Website_Address] [nvarchar](max) NOT NULL,
	[FileUpload] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NGO_Detail_1] PRIMARY KEY CLUSTERED 
(
	[NGO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NGO_Status_Detail]    Script Date: 11/12/2019 3:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGO_Status_Detail](
	[NGO_Status_ID] [int] NOT NULL,
	[NGO_ID] [int] NOT NULL,
	[NGO_Status] [nchar](10) NOT NULL,
 CONSTRAINT [PK_NGO_Status_Detail] PRIMARY KEY CLUSTERED 
(
	[NGO_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sceheme_Detail]    Script Date: 11/12/2019 3:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sceheme_Detail](
	[Scheme_ID] [int] NOT NULL,
	[Scheme_Name] [nchar](20) NOT NULL,
	[Bank_ID] [int] NOT NULL,
	[NGO_ID] [int] NOT NULL,
	[Child_Gender] [nchar](10) NOT NULL,
	[Child_Age] [int] NOT NULL,
	[Deposit_Amount] [float] NOT NULL,
	[Women_Category] [nchar](30) NOT NULL,
	[Monthly_Income] [float] NOT NULL,
	[Proof] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Sceheme_Detail] PRIMARY KEY CLUSTERED 
(
	[Scheme_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trainee_Detail]    Script Date: 11/12/2019 3:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainee_Detail](
	[Registration_ID] [int] NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](20) NULL,
	[NGO_ID] [int] NOT NULL,
	[Course_ID] [int] NOT NULL,
	[Age] [int] NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Confirm_Password] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Mobile_Number] [nvarchar](10) NOT NULL,
	[Email_ID] [nvarchar](max) NOT NULL,
	[Marital_Status] [nchar](10) NOT NULL,
	[File_Upload] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Trainee_Detail] PRIMARY KEY CLUSTERED 
(
	[Registration_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trainee_Status_Detail]    Script Date: 11/12/2019 3:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainee_Status_Detail](
	[Trainee_Status_ID] [int] NOT NULL,
	[Registration_ID] [int] NOT NULL,
	[Trainee_Status] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Trainee_Status_Detail] PRIMARY KEY CLUSTERED 
(
	[Trainee_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Bank_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Bank_Detail_NGO_Detail] FOREIGN KEY([NGO_ID])
REFERENCES [dbo].[NGO_Detail] ([NGO_ID])
GO
ALTER TABLE [dbo].[Bank_Detail] CHECK CONSTRAINT [FK_Bank_Detail_NGO_Detail]
GO
ALTER TABLE [dbo].[Course_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Course_Detail_NGO_Detail] FOREIGN KEY([NGO_ID])
REFERENCES [dbo].[NGO_Detail] ([NGO_ID])
GO
ALTER TABLE [dbo].[Course_Detail] CHECK CONSTRAINT [FK_Course_Detail_NGO_Detail]
GO
ALTER TABLE [dbo].[NGO_Detail]  WITH CHECK ADD  CONSTRAINT [FK_NGO_Detail_Course_Detail] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course_Detail] ([Course_ID])
GO
ALTER TABLE [dbo].[NGO_Detail] CHECK CONSTRAINT [FK_NGO_Detail_Course_Detail]
GO
ALTER TABLE [dbo].[NGO_Status_Detail]  WITH CHECK ADD  CONSTRAINT [FK_NGO_Status_Detail_NGO_Detail] FOREIGN KEY([NGO_ID])
REFERENCES [dbo].[NGO_Detail] ([NGO_ID])
GO
ALTER TABLE [dbo].[NGO_Status_Detail] CHECK CONSTRAINT [FK_NGO_Status_Detail_NGO_Detail]
GO
ALTER TABLE [dbo].[Sceheme_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Sceheme_Detail_Bank_Detail] FOREIGN KEY([Bank_ID])
REFERENCES [dbo].[Bank_Detail] ([Bank_ID])
GO
ALTER TABLE [dbo].[Sceheme_Detail] CHECK CONSTRAINT [FK_Sceheme_Detail_Bank_Detail]
GO
ALTER TABLE [dbo].[Sceheme_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Sceheme_Detail_NGO_Detail] FOREIGN KEY([NGO_ID])
REFERENCES [dbo].[NGO_Detail] ([NGO_ID])
GO
ALTER TABLE [dbo].[Sceheme_Detail] CHECK CONSTRAINT [FK_Sceheme_Detail_NGO_Detail]
GO
ALTER TABLE [dbo].[Trainee_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Trainee_Detail_Course_Detail] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course_Detail] ([Course_ID])
GO
ALTER TABLE [dbo].[Trainee_Detail] CHECK CONSTRAINT [FK_Trainee_Detail_Course_Detail]
GO
ALTER TABLE [dbo].[Trainee_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Trainee_Detail_NGO_Detail] FOREIGN KEY([NGO_ID])
REFERENCES [dbo].[NGO_Detail] ([NGO_ID])
GO
ALTER TABLE [dbo].[Trainee_Detail] CHECK CONSTRAINT [FK_Trainee_Detail_NGO_Detail]
GO
ALTER TABLE [dbo].[Trainee_Status_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Trainee_Status_Detail_Trainee_Detail] FOREIGN KEY([Registration_ID])
REFERENCES [dbo].[Trainee_Detail] ([Registration_ID])
GO
ALTER TABLE [dbo].[Trainee_Status_Detail] CHECK CONSTRAINT [FK_Trainee_Status_Detail_Trainee_Detail]
GO
USE [master]
GO
ALTER DATABASE [Project_Women_Empowerment] SET  READ_WRITE 
GO
