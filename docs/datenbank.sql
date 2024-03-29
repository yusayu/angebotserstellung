USE [master]
GO
/****** Object:  Database [Angebotserstellung]    Script Date: 25.01.2023 11:41:08 ******/
CREATE DATABASE [Angebotserstellung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Angebotserstellung', FILENAME = N'C:\Users\i21hiekelto\Angebotserstellung.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Angebotserstellung_log', FILENAME = N'C:\Users\i21hiekelto\Angebotserstellung_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Angebotserstellung] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Angebotserstellung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Angebotserstellung] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Angebotserstellung] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Angebotserstellung] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Angebotserstellung] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Angebotserstellung] SET ARITHABORT OFF 
GO
ALTER DATABASE [Angebotserstellung] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Angebotserstellung] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Angebotserstellung] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Angebotserstellung] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Angebotserstellung] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Angebotserstellung] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Angebotserstellung] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Angebotserstellung] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Angebotserstellung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Angebotserstellung] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Angebotserstellung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Angebotserstellung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Angebotserstellung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Angebotserstellung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Angebotserstellung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Angebotserstellung] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Angebotserstellung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Angebotserstellung] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Angebotserstellung] SET  MULTI_USER 
GO
ALTER DATABASE [Angebotserstellung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Angebotserstellung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Angebotserstellung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Angebotserstellung] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Angebotserstellung] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Angebotserstellung] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Angebotserstellung] SET QUERY_STORE = OFF
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Vertrieb]    Script Date: 25.01.2023 11:41:08 ******/
CREATE LOGIN [Vertrieb] WITH PASSWORD=N'5/mpG7YzRPqwcw+E9VuFcA6+RN37IGJDfgcBONO0PCQ=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Vertrieb] DISABLE
GO
/****** Object:  Login [schule\i21hiekelto]    Script Date: 25.01.2023 11:41:08 ******/
CREATE LOGIN [schule\i21hiekelto] FROM WINDOWS WITH DEFAULT_DATABASE=[master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Projektleitung]    Script Date: 25.01.2023 11:41:08 ******/
CREATE LOGIN [Projektleitung] WITH PASSWORD=N'5cOupbmLkfe42yppk/UfDQaGaTB6ok4XMzQd+ZOEH3E=', DEFAULT_DATABASE=[Angebotserstellung], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Projektleitung] DISABLE
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 25.01.2023 11:41:08 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Gebäudeplaner]    Script Date: 25.01.2023 11:41:08 ******/
CREATE LOGIN [Gebäudeplaner] WITH PASSWORD=N'SEsfj77N3OpOTQzubBPjsJIJxmWTQJuKr3t42Jpbls8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Gebäudeplaner] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [Einkauf]    Script Date: 25.01.2023 11:41:08 ******/
CREATE LOGIN [Einkauf] WITH PASSWORD=N'z2uk2lerJSVFTMS6Jm+Sr0lUFMb68+YwP4rFsgxGM1k=', DEFAULT_DATABASE=[Angebotserstellung], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [Einkauf] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 25.01.2023 11:41:08 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'klX6drGjvbECObMzc3Lu7A+O95o7D27Elp08e2fwq3E=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 25.01.2023 11:41:08 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'iaE7cr4ShoKh+L2+gsfEbGapoesuKj6kEZ70Ryeykcw=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[Angebotserstellung] TO [schule\i21hiekelto]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [schule\i21hiekelto]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
USE [Angebotserstellung]
GO
/****** Object:  User [Wach Turm]    Script Date: 25.01.2023 11:41:08 ******/
CREATE USER [Wach Turm] FOR LOGIN [Gebäudeplaner] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Tim Heinze]    Script Date: 25.01.2023 11:41:08 ******/
CREATE USER [Tim Heinze] FOR LOGIN [Projektleitung] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Mark Tomaten]    Script Date: 25.01.2023 11:41:08 ******/
CREATE USER [Mark Tomaten] FOR LOGIN [Einkauf] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [Frank o' Fon]    Script Date: 25.01.2023 11:41:08 ******/
CREATE USER [Frank o' Fon] FOR LOGIN [Vertrieb] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [Vertrieb]    Script Date: 25.01.2023 11:41:08 ******/
CREATE ROLE [Vertrieb]
GO
/****** Object:  DatabaseRole [Projektleitung]    Script Date: 25.01.2023 11:41:08 ******/
CREATE ROLE [Projektleitung]
GO
/****** Object:  DatabaseRole [Gebäudeplanung]    Script Date: 25.01.2023 11:41:08 ******/
CREATE ROLE [Gebäudeplanung]
GO
/****** Object:  DatabaseRole [Einkauf]    Script Date: 25.01.2023 11:41:08 ******/
CREATE ROLE [Einkauf]
GO
ALTER AUTHORIZATION ON ROLE::[Vertrieb] TO [dbo]
GO
ALTER AUTHORIZATION ON ROLE::[Projektleitung] TO [dbo]
GO
ALTER AUTHORIZATION ON ROLE::[Gebäudeplanung] TO [dbo]
GO
ALTER AUTHORIZATION ON ROLE::[Einkauf] TO [dbo]
GO
ALTER ROLE [Gebäudeplanung] ADD MEMBER [Wach Turm]
GO
ALTER ROLE [Projektleitung] ADD MEMBER [Tim Heinze]
GO
ALTER ROLE [Einkauf] ADD MEMBER [Mark Tomaten]
GO
ALTER ROLE [Vertrieb] ADD MEMBER [Frank o' Fon]
GO
GRANT CONNECT TO [Frank o' Fon] AS [dbo]
GO
GRANT CONNECT TO [Mark Tomaten] AS [dbo]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
GRANT CONNECT TO [Tim Heinze] AS [dbo]
GO
GRANT CONNECT TO [Wach Turm] AS [dbo]
GO
/****** Object:  Table [dbo].[Addresse]    Script Date: 25.01.2023 11:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresse](
	[Ort] [nvarchar](max) NOT NULL,
	[PLZ] [nvarchar](5) NOT NULL,
	[Hausnummer] [nvarchar](10) NOT NULL,
	[Straße] [nvarchar](50) NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_Addresse] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Addresse] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Addresse] TO [Vertrieb] AS [dbo]
GO
GRANT DELETE ON [dbo].[Addresse] TO [Vertrieb] AS [dbo]
GO
GRANT INSERT ON [dbo].[Addresse] TO [Vertrieb] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[Addresse] TO [Vertrieb] AS [dbo]
GO
GRANT SELECT ON [dbo].[Addresse] TO [Vertrieb] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Addresse] TO [Vertrieb] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Addresse] TO [Vertrieb] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Addresse] TO [Vertrieb] AS [dbo]
GO
/****** Object:  Table [dbo].[Angebot]    Script Date: 25.01.2023 11:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Angebot](
	[Personalaufwand] [float] NULL,
	[Gesamtpreis] [money] NOT NULL,
	[Zeitauwand] [float] NULL,
	[AngebotsID] [int] NOT NULL,
 CONSTRAINT [PK_Angebot] PRIMARY KEY CLUSTERED 
(
	[AngebotsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Angebot] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Angebot] TO [Projektleitung] AS [dbo]
GO
GRANT DELETE ON [dbo].[Angebot] TO [Projektleitung] AS [dbo]
GO
GRANT INSERT ON [dbo].[Angebot] TO [Projektleitung] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[Angebot] TO [Projektleitung] AS [dbo]
GO
GRANT SELECT ON [dbo].[Angebot] TO [Projektleitung] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Angebot] TO [Projektleitung] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Angebot] TO [Projektleitung] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Angebot] TO [Projektleitung] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[Angebot] TO [Vertrieb] AS [dbo]
GO
GRANT SELECT ON [dbo].[Angebot] TO [Vertrieb] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Angebot] TO [Vertrieb] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Angebot] TO [Vertrieb] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Angebot] TO [Vertrieb] AS [dbo]
GO
/****** Object:  Table [dbo].[Komponente]    Script Date: 25.01.2023 11:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Komponente](
	[Bestand] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Artikelnummer] [int] NOT NULL,
	[Preis] [money] NOT NULL,
	[Mindestbestand] [int] NOT NULL,
 CONSTRAINT [PK_Komponente] PRIMARY KEY CLUSTERED 
(
	[Artikelnummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Komponente] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Komponente] TO [Einkauf] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Komponente] TO [Einkauf] AS [dbo]
GO
GRANT DELETE ON [dbo].[Komponente] TO [Einkauf] AS [dbo]
GO
GRANT INSERT ON [dbo].[Komponente] TO [Einkauf] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[Komponente] TO [Einkauf] AS [dbo]
GO
GRANT SELECT ON [dbo].[Komponente] TO [Einkauf] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Komponente] TO [Einkauf] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Komponente] TO [Einkauf] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Komponente] TO [Einkauf] AS [dbo]
GO
GRANT SELECT ON [dbo].[Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Komponente] TO [Projektleitung] AS [dbo]
GO
/****** Object:  Table [dbo].[Kunde]    Script Date: 25.01.2023 11:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kunde](
	[Kundennummer] [int] NOT NULL,
	[IBAN] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_Kunde] PRIMARY KEY CLUSTERED 
(
	[Kundennummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Kunde] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Kunde] TO [Vertrieb] AS [dbo]
GO
GRANT DELETE ON [dbo].[Kunde] TO [Vertrieb] AS [dbo]
GO
GRANT INSERT ON [dbo].[Kunde] TO [Vertrieb] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[Kunde] TO [Vertrieb] AS [dbo]
GO
GRANT SELECT ON [dbo].[Kunde] TO [Vertrieb] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Kunde] TO [Vertrieb] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Kunde] TO [Vertrieb] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Kunde] TO [Vertrieb] AS [dbo]
GO
/****** Object:  Table [dbo].[Lieferant]    Script Date: 25.01.2023 11:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lieferant](
	[Lieferantennummer] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_Lieferant] PRIMARY KEY CLUSTERED 
(
	[Lieferantennummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Lieferant] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Lieferant] TO [Einkauf] AS [dbo]
GO
GRANT DELETE ON [dbo].[Lieferant] TO [Einkauf] AS [dbo]
GO
GRANT INSERT ON [dbo].[Lieferant] TO [Einkauf] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[Lieferant] TO [Einkauf] AS [dbo]
GO
GRANT SELECT ON [dbo].[Lieferant] TO [Einkauf] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Lieferant] TO [Einkauf] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Lieferant] TO [Einkauf] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Lieferant] TO [Einkauf] AS [dbo]
GO
/****** Object:  Table [dbo].[Lieferant_Komponente]    Script Date: 25.01.2023 11:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lieferant_Komponente](
	[Artikelnummer] [int] NOT NULL,
	[Lieferantennummer] [int] NOT NULL,
 CONSTRAINT [PK_Lieferant_Komponente] PRIMARY KEY CLUSTERED 
(
	[Artikelnummer] ASC,
	[Lieferantennummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Lieferant_Komponente] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Lieferant_Komponente] TO [Einkauf] AS [dbo]
GO
GRANT DELETE ON [dbo].[Lieferant_Komponente] TO [Einkauf] AS [dbo]
GO
GRANT INSERT ON [dbo].[Lieferant_Komponente] TO [Einkauf] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[Lieferant_Komponente] TO [Einkauf] AS [dbo]
GO
GRANT SELECT ON [dbo].[Lieferant_Komponente] TO [Einkauf] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Lieferant_Komponente] TO [Einkauf] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Lieferant_Komponente] TO [Einkauf] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Lieferant_Komponente] TO [Einkauf] AS [dbo]
GO
/****** Object:  Table [dbo].[Projekt]    Script Date: 25.01.2023 11:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projekt](
	[Maximalbudget] [money] NOT NULL,
	[Enddatum] [datetime] NOT NULL,
	[Bezeichnung] [nvarchar](max) NOT NULL,
	[ProjektID] [int] NOT NULL,
	[AngebotsID] [int] NOT NULL,
	[RaumplanID] [int] NOT NULL,
	[KundenID] [int] NOT NULL,
 CONSTRAINT [PK_Projekt] PRIMARY KEY CLUSTERED 
(
	[ProjektID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Projekt] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Projekt] TO [Gebäudeplanung] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Projekt] TO [Gebäudeplanung] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Projekt] TO [Gebäudeplanung] AS [dbo]
GO
GRANT DELETE ON [dbo].[Projekt] TO [Projektleitung] AS [dbo]
GO
GRANT INSERT ON [dbo].[Projekt] TO [Projektleitung] AS [dbo]
GO
GRANT SELECT ON [dbo].[Projekt] TO [Projektleitung] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Projekt] TO [Projektleitung] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Projekt] TO [Projektleitung] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Projekt] TO [Projektleitung] AS [dbo]
GO
GRANT SELECT ON [dbo].[Projekt] TO [Vertrieb] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Projekt] TO [Vertrieb] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Projekt] TO [Vertrieb] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Projekt] TO [Vertrieb] AS [dbo]
GO
/****** Object:  Table [dbo].[Raumplan]    Script Date: 25.01.2023 11:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raumplan](
	[Netzwerkplanlink] [nvarchar](max) NOT NULL,
	[Grundrisslink] [nvarchar](max) NOT NULL,
	[RaumplanID] [int] NOT NULL,
 CONSTRAINT [PK_Raumplan] PRIMARY KEY CLUSTERED 
(
	[RaumplanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Raumplan] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Raumplan] TO [Gebäudeplanung] AS [dbo]
GO
GRANT DELETE ON [dbo].[Raumplan] TO [Gebäudeplanung] AS [dbo]
GO
GRANT INSERT ON [dbo].[Raumplan] TO [Gebäudeplanung] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[Raumplan] TO [Gebäudeplanung] AS [dbo]
GO
GRANT SELECT ON [dbo].[Raumplan] TO [Gebäudeplanung] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Raumplan] TO [Gebäudeplanung] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Raumplan] TO [Gebäudeplanung] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Raumplan] TO [Gebäudeplanung] AS [dbo]
GO
GRANT ALTER ON [dbo].[Raumplan] TO [Projektleitung] AS [dbo]
GO
GRANT DELETE ON [dbo].[Raumplan] TO [Projektleitung] AS [dbo]
GO
GRANT INSERT ON [dbo].[Raumplan] TO [Projektleitung] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[Raumplan] TO [Projektleitung] AS [dbo]
GO
GRANT SELECT ON [dbo].[Raumplan] TO [Projektleitung] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Raumplan] TO [Projektleitung] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Raumplan] TO [Projektleitung] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Raumplan] TO [Projektleitung] AS [dbo]
GO
/****** Object:  Table [dbo].[Raumplan_Komponente]    Script Date: 25.01.2023 11:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raumplan_Komponente](
	[RaumplanID] [int] NOT NULL,
	[Artikelnummer] [int] NOT NULL,
	[Anzahl] [int] NOT NULL,
 CONSTRAINT [PK_Raumplan_Komponente] PRIMARY KEY CLUSTERED 
(
	[RaumplanID] ASC,
	[Artikelnummer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Raumplan_Komponente] TO  SCHEMA OWNER 
GO
GRANT ALTER ON [dbo].[Raumplan_Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT CONTROL ON [dbo].[Raumplan_Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT DELETE ON [dbo].[Raumplan_Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT INSERT ON [dbo].[Raumplan_Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT REFERENCES ON [dbo].[Raumplan_Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT SELECT ON [dbo].[Raumplan_Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Raumplan_Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT VIEW DEFINITION ON [dbo].[Raumplan_Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Raumplan_Komponente] TO [Projektleitung] AS [dbo]
GO
GRANT SELECT ON [dbo].[Raumplan_Komponente] TO [Vertrieb] AS [dbo]
GO
GRANT UPDATE ON [dbo].[Raumplan_Komponente] TO [Vertrieb] AS [dbo]
GO
GRANT VIEW CHANGE TRACKING ON [dbo].[Raumplan_Komponente] TO [Vertrieb] AS [dbo]
GO
USE [master]
GO
ALTER DATABASE [Angebotserstellung] SET  READ_WRITE 
GO
