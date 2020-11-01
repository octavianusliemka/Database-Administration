USE [master]
GO
/****** Object:  Database [IXXCinema_db]    Script Date: 27-Mar-20 09:16:15 ******/
CREATE DATABASE [IXXCinema_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IXXCinema_db', FILENAME = N'D:\IXXCinema_db.mdf' , SIZE = 8192KB , MAXSIZE = 512000KB , FILEGROWTH = 10%)
 LOG ON 
( NAME = N'IXXCinema_db_log', FILENAME = N'D:\IXXCinema_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 512000KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [IXXCinema_db] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IXXCinema_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IXXCinema_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IXXCinema_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IXXCinema_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IXXCinema_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IXXCinema_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [IXXCinema_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IXXCinema_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IXXCinema_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IXXCinema_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IXXCinema_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IXXCinema_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IXXCinema_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IXXCinema_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IXXCinema_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IXXCinema_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IXXCinema_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IXXCinema_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IXXCinema_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IXXCinema_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IXXCinema_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IXXCinema_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IXXCinema_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IXXCinema_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IXXCinema_db] SET  MULTI_USER 
GO
ALTER DATABASE [IXXCinema_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IXXCinema_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IXXCinema_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IXXCinema_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IXXCinema_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IXXCinema_db] SET QUERY_STORE = OFF
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [SystemAdmin]    Script Date: 27-Mar-20 09:16:15 ******/
CREATE LOGIN [SystemAdmin] WITH PASSWORD=N'TkRy+sPjbV36w1qeHlDIU7SX6yfPw6vo4M8zPEt3bbM=', DEFAULT_DATABASE=[IXXCinema_db], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [SystemAdmin] DISABLE
GO
/****** Object:  Login [OCTAVIANUS\Octavianus]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE LOGIN [OCTAVIANUS\Octavianus] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY$SQLEXPRESS]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE LOGIN [NT Service\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Users]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE LOGIN [BUILTIN\Users] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'eEPvA+WrLl4eWAHLnS5Da5172t8GoKzwvIZaUmfxnLE=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'Wn1iNalutlJxdBu4Y7lfvzusmvLGo2KKpZ8ylEuslBg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [SystemAdmin]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [OCTAVIANUS\Octavianus]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQLEXPRESS]
GO
USE [IXXCinema_db]
GO
/****** Object:  User [SystemAdmin]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE USER [SystemAdmin] FOR LOGIN [SystemAdmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CinemaTransactionStaff]    Script Date: 27-Mar-20 09:16:16 ******/
CREATE USER [CinemaTransactionStaff] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [SystemAdmin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CinemaTransactionStaff]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CinemaTransactionStaff]
GO
GRANT CONNECT TO [CinemaTransactionStaff] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
GRANT CONNECT TO [SystemAdmin] AS [dbo]
GO
/****** Object:  Table [dbo].[CinemaTransaction]    Script Date: 27-Mar-20 09:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CinemaTransaction](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[StaffId] [int] NOT NULL,
	[CinemaId] [int] NOT NULL,
	[MovieId] [int] NOT NULL,
	[TransactionDate] [date] NOT NULL,
 CONSTRAINT [PK_CinemaTransaction] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
GRANT INSERT ON [dbo].[CinemaTransaction] TO [CinemaTransactionStaff] AS [dbo]
GO
GRANT SELECT ON [dbo].[CinemaTransaction] TO [CinemaTransactionStaff] AS [dbo]
GO
/****** Object:  Table [dbo].[MsCinema]    Script Date: 27-Mar-20 09:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsCinema](
	[CinemaId] [int] IDENTITY(1,1) NOT NULL,
	[CinemaName] [varchar](50) NOT NULL,
	[CinemaAddress] [varchar](50) NOT NULL,
	[CinemaPhone] [char](15) NOT NULL,
	[TotalSeat] [int] NOT NULL,
 CONSTRAINT [PK_MsCinema] PRIMARY KEY CLUSTERED 
(
	[CinemaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsMovie]    Script Date: 27-Mar-20 09:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsMovie](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [varchar](50) NOT NULL,
	[MovieRating] [int] NOT NULL,
	[Duration] [int] NOT NULL,
	[ReleaseDate] [date] NOT NULL,
 CONSTRAINT [PK_MsMovie] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsStaff]    Script Date: 27-Mar-20 09:16:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsStaff](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[StaffName] [varchar](50) NOT NULL,
	[StaffGender] [varchar](10) NOT NULL,
	[StaffDOB] [date] NOT NULL,
	[StaffSalary] [bigint] NOT NULL,
 CONSTRAINT [PK_MsStaff] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CinemaTransaction] ON 
GO
INSERT [dbo].[CinemaTransaction] ([TransactionId], [StaffId], [CinemaId], [MovieId], [TransactionDate]) VALUES (1, 1, 2, 2, CAST(N'2019-11-12' AS Date))
GO
INSERT [dbo].[CinemaTransaction] ([TransactionId], [StaffId], [CinemaId], [MovieId], [TransactionDate]) VALUES (2, 3, 4, 4, CAST(N'2019-09-10' AS Date))
GO
INSERT [dbo].[CinemaTransaction] ([TransactionId], [StaffId], [CinemaId], [MovieId], [TransactionDate]) VALUES (3, 1, 3, 3, CAST(N'2019-08-08' AS Date))
GO
INSERT [dbo].[CinemaTransaction] ([TransactionId], [StaffId], [CinemaId], [MovieId], [TransactionDate]) VALUES (4, 4, 1, 1, CAST(N'2019-12-01' AS Date))
GO
INSERT [dbo].[CinemaTransaction] ([TransactionId], [StaffId], [CinemaId], [MovieId], [TransactionDate]) VALUES (5, 1, 5, 5, CAST(N'2019-07-03' AS Date))
GO
INSERT [dbo].[CinemaTransaction] ([TransactionId], [StaffId], [CinemaId], [MovieId], [TransactionDate]) VALUES (6, 4, 2, 2, CAST(N'2019-12-12' AS Date))
GO
INSERT [dbo].[CinemaTransaction] ([TransactionId], [StaffId], [CinemaId], [MovieId], [TransactionDate]) VALUES (7, 3, 3, 3, CAST(N'2019-01-11' AS Date))
GO
INSERT [dbo].[CinemaTransaction] ([TransactionId], [StaffId], [CinemaId], [MovieId], [TransactionDate]) VALUES (8, 1, 1, 1, CAST(N'2019-01-01' AS Date))
GO
INSERT [dbo].[CinemaTransaction] ([TransactionId], [StaffId], [CinemaId], [MovieId], [TransactionDate]) VALUES (9, 3, 1, 1, CAST(N'2019-12-01' AS Date))
GO
INSERT [dbo].[CinemaTransaction] ([TransactionId], [StaffId], [CinemaId], [MovieId], [TransactionDate]) VALUES (10, 5, 5, 5, CAST(N'2019-07-03' AS Date))
GO
SET IDENTITY_INSERT [dbo].[CinemaTransaction] OFF
GO
SET IDENTITY_INSERT [dbo].[MsCinema] ON 
GO
INSERT [dbo].[MsCinema] ([CinemaId], [CinemaName], [CinemaAddress], [CinemaPhone], [TotalSeat]) VALUES (1, N'Bintaro IXX', N'Jl. Bintaro Raya', N'085696987123   ', 1000)
GO
INSERT [dbo].[MsCinema] ([CinemaId], [CinemaName], [CinemaAddress], [CinemaPhone], [TotalSeat]) VALUES (2, N'Menceng IXX', N'Jl Menceng Luar', N'085123456789   ', 500)
GO
INSERT [dbo].[MsCinema] ([CinemaId], [CinemaName], [CinemaAddress], [CinemaPhone], [TotalSeat]) VALUES (3, N'Central IXX', N'Jl Central Tengah', N'087858555224   ', 800)
GO
INSERT [dbo].[MsCinema] ([CinemaId], [CinemaName], [CinemaAddress], [CinemaPhone], [TotalSeat]) VALUES (4, N'Jelambar IXX', N'Jl Jelambar Dalam', N'085555556788   ', 800)
GO
INSERT [dbo].[MsCinema] ([CinemaId], [CinemaName], [CinemaAddress], [CinemaPhone], [TotalSeat]) VALUES (5, N'Kembangan IXX', N'Jl Kembangan Bunga', N'08645484212    ', 1000)
GO
SET IDENTITY_INSERT [dbo].[MsCinema] OFF
GO
SET IDENTITY_INSERT [dbo].[MsMovie] ON 
GO
INSERT [dbo].[MsMovie] ([MovieId], [MovieName], [MovieRating], [Duration], [ReleaseDate]) VALUES (1, N'Koe No Katachi', 8, 150, CAST(N'2019-06-07' AS Date))
GO
INSERT [dbo].[MsMovie] ([MovieId], [MovieName], [MovieRating], [Duration], [ReleaseDate]) VALUES (2, N'Kimi No Nawa', 9, 125, CAST(N'2019-12-12' AS Date))
GO
INSERT [dbo].[MsMovie] ([MovieId], [MovieName], [MovieRating], [Duration], [ReleaseDate]) VALUES (3, N'CountDown', 7, 200, CAST(N'2019-09-12' AS Date))
GO
INSERT [dbo].[MsMovie] ([MovieId], [MovieName], [MovieRating], [Duration], [ReleaseDate]) VALUES (4, N'Boruto', 5, 120, CAST(N'2019-08-11' AS Date))
GO
INSERT [dbo].[MsMovie] ([MovieId], [MovieName], [MovieRating], [Duration], [ReleaseDate]) VALUES (5, N'Jojo Bizarre', 10, 90, CAST(N'2019-06-08' AS Date))
GO
SET IDENTITY_INSERT [dbo].[MsMovie] OFF
GO
SET IDENTITY_INSERT [dbo].[MsStaff] ON 
GO
INSERT [dbo].[MsStaff] ([StaffId], [StaffName], [StaffGender], [StaffDOB], [StaffSalary]) VALUES (1, N'James Hogwart', N'Male', CAST(N'2000-04-03' AS Date), 5000000)
GO
INSERT [dbo].[MsStaff] ([StaffId], [StaffName], [StaffGender], [StaffDOB], [StaffSalary]) VALUES (2, N'John Wik', N'Male', CAST(N'1998-03-04' AS Date), 5000000)
GO
INSERT [dbo].[MsStaff] ([StaffId], [StaffName], [StaffGender], [StaffDOB], [StaffSalary]) VALUES (3, N'Anna Kimberly', N'Female', CAST(N'2000-08-11' AS Date), 8000000)
GO
INSERT [dbo].[MsStaff] ([StaffId], [StaffName], [StaffGender], [StaffDOB], [StaffSalary]) VALUES (4, N'Jane Mary', N'Female', CAST(N'1995-12-12' AS Date), 8000000)
GO
INSERT [dbo].[MsStaff] ([StaffId], [StaffName], [StaffGender], [StaffDOB], [StaffSalary]) VALUES (5, N'Tommy Back', N'Male', CAST(N'2000-01-01' AS Date), 10000000)
GO
SET IDENTITY_INSERT [dbo].[MsStaff] OFF
GO
ALTER TABLE [dbo].[CinemaTransaction]  WITH CHECK ADD  CONSTRAINT [FK_CinemaTransaction_MsCinema] FOREIGN KEY([CinemaId])
REFERENCES [dbo].[MsCinema] ([CinemaId])
GO
ALTER TABLE [dbo].[CinemaTransaction] CHECK CONSTRAINT [FK_CinemaTransaction_MsCinema]
GO
ALTER TABLE [dbo].[CinemaTransaction]  WITH CHECK ADD  CONSTRAINT [FK_CinemaTransaction_MsMovie] FOREIGN KEY([MovieId])
REFERENCES [dbo].[MsMovie] ([MovieId])
GO
ALTER TABLE [dbo].[CinemaTransaction] CHECK CONSTRAINT [FK_CinemaTransaction_MsMovie]
GO
ALTER TABLE [dbo].[CinemaTransaction]  WITH CHECK ADD  CONSTRAINT [FK_CinemaTransaction_MsStaff] FOREIGN KEY([StaffId])
REFERENCES [dbo].[MsStaff] ([StaffId])
GO
ALTER TABLE [dbo].[CinemaTransaction] CHECK CONSTRAINT [FK_CinemaTransaction_MsStaff]
GO
ALTER TABLE [dbo].[MsMovie]  WITH CHECK ADD  CONSTRAINT [Check_Rating] CHECK  (([MovieRating]>=(1) AND [MovieRating]<=(10)))
GO
ALTER TABLE [dbo].[MsMovie] CHECK CONSTRAINT [Check_Rating]
GO
ALTER TABLE [dbo].[MsStaff]  WITH CHECK ADD  CONSTRAINT [Check_Name] CHECK  ((len([StaffName])>(5)))
GO
ALTER TABLE [dbo].[MsStaff] CHECK CONSTRAINT [Check_Name]
GO
USE [master]
GO
ALTER DATABASE [IXXCinema_db] SET  READ_WRITE 
GO
