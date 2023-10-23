USE [master]
GO
/****** Object:  Database [BDSeries]    Script Date: 23/10/2023 09:15:42 ******/
CREATE DATABASE [BDSeries]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDSeries', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BDSeries.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDSeries_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BDSeries_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BDSeries] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDSeries].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDSeries] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDSeries] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDSeries] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDSeries] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDSeries] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDSeries] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDSeries] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDSeries] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDSeries] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDSeries] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDSeries] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDSeries] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDSeries] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDSeries] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDSeries] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDSeries] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDSeries] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDSeries] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDSeries] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDSeries] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDSeries] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDSeries] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDSeries] SET RECOVERY FULL 
GO
ALTER DATABASE [BDSeries] SET  MULTI_USER 
GO
ALTER DATABASE [BDSeries] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDSeries] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDSeries] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDSeries] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDSeries] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDSeries', N'ON'
GO
ALTER DATABASE [BDSeries] SET QUERY_STORE = OFF
GO
USE [BDSeries]
GO
/****** Object:  User [alumno]    Script Date: 23/10/2023 09:15:42 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Actores]    Script Date: 23/10/2023 09:15:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actores](
	[IdActor] [int] IDENTITY(1,1) NOT NULL,
	[IdSerie] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Actores] PRIMARY KEY CLUSTERED 
(
	[IdActor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Series]    Script Date: 23/10/2023 09:15:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Series](
	[IdSerie] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[AñoInicio] [int] NULL,
	[Sinopsis] [text] NULL,
	[ImagenSerie] [varchar](300) NULL,
 CONSTRAINT [PK_Series] PRIMARY KEY CLUSTERED 
(
	[IdSerie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temporadas]    Script Date: 23/10/2023 09:15:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temporadas](
	[IdTemporada] [int] IDENTITY(1,1) NOT NULL,
	[IdSerie] [int] NOT NULL,
	[NumeroTemporada] [int] NULL,
	[TituloTemporada] [varchar](100) NULL,
 CONSTRAINT [PK_Temporadas] PRIMARY KEY CLUSTERED 
(
	[IdTemporada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actores] ON 
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (1, 4, N'Cillian Murphy')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (2, 4, N'Paul Anderson')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (3, 4, N'Tom Hardy')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (4, 4, N'Helen McCrory')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (5, 3, N'Sadie Sink')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (6, 3, N'Caleb McLaughin')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (7, 3, N'Fin Wofthard')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (8, 3, N'Millie Bobby Brown')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (9, 2, N'Jennifer Aniston')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (10, 2, N'Lisa Kudrow')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (11, 2, N'David Schwimmer')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (12, 2, N'Courteney Cox')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (13, 2, N'Matthew Perry')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (14, 2, N'Matt Leblanc')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (15, 1, N'Hugh Laurie')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (16, 1, N'Robert Sean Leonard')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (17, 1, N'Lisa Edelstein')
GO
INSERT [dbo].[Actores] ([IdActor], [IdSerie], [Nombre]) VALUES (18, 1, N'Omar Epps')
GO
SET IDENTITY_INSERT [dbo].[Actores] OFF
GO
SET IDENTITY_INSERT [dbo].[Series] ON 
GO
INSERT [dbo].[Series] ([IdSerie], [Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (1, N'House', 2004, N'La serie gira alrededor del Dr. Gregory House, un misántropo genio de la medicina, ególatra y de fuerte y marcada personalidad que dirige el departamento de diagnóstico médico del ficticio Hospital Universitario Princeton-Plainsboro de Nueva Jersey', N'https://www.vistazo.com/binrepository/768x487/0c28/768d432/none/12727/YTMK/el-primer-episodio-de-house_VI205981_MG8572114.jpg')
GO
INSERT [dbo].[Series] ([IdSerie], [Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (2, N'Friends', 1994, N'Tuvo un total de 10 temporadas, con 236 episodios. El argumento general gira en torno a un grupo de 6 amigos, 3 chicos y 3 chicas, que conviven en Nueva York y van desarrollando sus vidas profesionales y amorosas.', N'https://i.blogs.es/4c73b4/friends/1366_2000.jpg')
GO
INSERT [dbo].[Series] ([IdSerie], [Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (3, N'Stranger Things', 2016, N'Cuando un niño desaparece, sus amigos, la familia y la policía se ven envueltos en una serie de eventos misteriosos al tratar de encontrarlo. Su ausencia coincide con el avistamiento de una criatura terrorífica y la aparición de una extraña niña.', N'https://www.icmedianet.org/wp/ndog/wp-content/uploads/2016/12/netflix-stranger-things-poster.jpg')
GO
INSERT [dbo].[Series] ([IdSerie], [Nombre], [AñoInicio], [Sinopsis], [ImagenSerie]) VALUES (4, N'Peaky Blinders', 2013, N'Gran Bretaña vive la posguerra. Los soldados regresan, se acuñan nuevas revoluciones y nacen bandas criminales en una nación agitada. En Birmingham, una pandilla de gánsters callejeros asciende hasta convertirse en los reyes de la clase obrera.', N'https://img.asmedia.epimg.net/resizer/w8luGMKsqKZt14q5eNKikqE3adA=/1472x828/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/MIBE3RUHAFGNTNGXFFB3PSJVD4.jpg')
GO
SET IDENTITY_INSERT [dbo].[Series] OFF
GO
SET IDENTITY_INSERT [dbo].[Temporadas] ON 
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (1, 1, 1, N'Bla bla bla Temporada 1')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (2, 1, 2, N'Bla bla bla Temporada 2')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (3, 1, 3, N'Bla bla bla Temporada 3')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (4, 1, 4, N'Bla bla bla Temporada 4')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (5, 1, 5, N'Bla bla bla Temporada 5')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (6, 1, 6, N'Bla bla bla Temporada 6')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (7, 1, 7, N'Bla bla bla Temporada 7')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (8, 1, 8, N'Bla bla bla Temporada 8')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (9, 2, 1, N'Bla bla bla Temporada 1')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (10, 2, 2, N'Bla bla bla Temporada 2')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (11, 2, 3, N'Bla bla bla Temporada 3')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (12, 2, 4, N'Bla bla bla Temporada 4')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (13, 2, 5, N'Bla bla bla Temporada 5')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (14, 2, 6, N'Bla bla bla Temporada 6')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (15, 2, 7, N'Bla bla bla Temporada 7')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (16, 2, 8, N'Bla bla bla Temporada 8')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (17, 2, 9, N'Bla bla bla Temporada 9')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (18, 2, 10, N'Bla bla bla Temporada 10')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (19, 3, 1, N'Bla bla bla Temporada 1')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (20, 3, 2, N'Bla bla bla Temporada 2')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (21, 3, 3, N'Bla bla bla Temporada 3')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (22, 3, 4, N'Bla bla bla Temporada 4')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (23, 4, 1, N'Bla bla bla Temporada 1')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (24, 4, 2, N'Bla bla bla Temporada 2')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (25, 4, 3, N'Bla bla bla Temporada 3')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (26, 4, 4, N'Bla bla bla Temporada 4')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (27, 4, 5, N'Bla bla bla Temporada 5')
GO
INSERT [dbo].[Temporadas] ([IdTemporada], [IdSerie], [NumeroTemporada], [TituloTemporada]) VALUES (28, 4, 6, N'Bla bla bla Temporada 6')
GO
SET IDENTITY_INSERT [dbo].[Temporadas] OFF
GO
ALTER TABLE [dbo].[Actores]  WITH CHECK ADD  CONSTRAINT [FK_Actores_Series] FOREIGN KEY([IdSerie])
REFERENCES [dbo].[Series] ([IdSerie])
GO
ALTER TABLE [dbo].[Actores] CHECK CONSTRAINT [FK_Actores_Series]
GO
ALTER TABLE [dbo].[Temporadas]  WITH CHECK ADD  CONSTRAINT [FK_Temporadas_Series] FOREIGN KEY([IdSerie])
REFERENCES [dbo].[Series] ([IdSerie])
GO
ALTER TABLE [dbo].[Temporadas] CHECK CONSTRAINT [FK_Temporadas_Series]
GO
/****** Object:  StoredProcedure [dbo].[GetActores]    Script Date: 23/10/2023 09:15:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetActores]
	-- Add the parameters for the stored procedure here
	(
		@IdSerie int
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT [IdActor]
      ,[IdSerie]
      ,[Nombre]
  FROM [dbo].[Actores]
  WHERE IdSerie = @IdSerie
END
GO
/****** Object:  StoredProcedure [dbo].[GetSeries]    Script Date: 23/10/2023 09:15:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSeries]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT [IdSerie]
      ,[Nombre]
      ,[AñoInicio]
      ,[Sinopsis]
      ,[ImagenSerie]
  FROM [dbo].[Series]
END
GO
/****** Object:  StoredProcedure [dbo].[GetTemporadas]    Script Date: 23/10/2023 09:15:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTemporadas]
	-- Add the parameters for the stored procedure here
	(
		@IdSerie int
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT [IdTemporada]
      ,[IdSerie]
      ,[NumeroTemporada]
      ,[TituloTemporada]
  FROM [dbo].[Temporadas]
  WHERE IdSerie = @IdSerie
END
GO
USE [master]
GO
ALTER DATABASE [BDSeries] SET  READ_WRITE 
GO
