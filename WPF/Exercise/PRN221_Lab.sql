USE master
go
create database PRN221_Lab
go
USE [PRN221_Lab]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 5/22/2022 11:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 5/22/2022 11:47:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [nchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Dob] [datetime] NULL,
	[Gender] [bit] NULL,
	[Code] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Code], [Name]) VALUES (1, N'Hà Nội')
INSERT [dbo].[Countries] ([Code], [Name]) VALUES (2, N'Hà Nam')
INSERT [dbo].[Countries] ([Code], [Name]) VALUES (3, N'Nam Định')
INSERT [dbo].[Countries] ([Code], [Name]) VALUES (4, N'Quảng Bình')
INSERT [dbo].[Countries] ([Code], [Name]) VALUES (5, N'Hà Tĩnh')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
INSERT [dbo].[Students] ([Id], [Name], [Dob], [Gender], [Code]) VALUES (N'BA002     ', N'Phạm Tiến Dũng', CAST(N'2022-05-02T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Students] ([Id], [Name], [Dob], [Gender], [Code]) VALUES (N'HA001     ', N'Phạm Minh Châu', CAST(N'2022-05-09T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[Students] ([Id], [Name], [Dob], [Gender], [Code]) VALUES (N'HE001     ', N'Đào Hải Chiều', CAST(N'2022-05-06T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[Students] ([Id], [Name], [Dob], [Gender], [Code]) VALUES (N'HE002     ', N'Phạm Quỳnh Anh', CAST(N'2003-07-08T00:00:00.000' AS DateTime), 0, 3)
INSERT [dbo].[Students] ([Id], [Name], [Dob], [Gender], [Code]) VALUES (N'SE001     ', N'Nguyễn Hoàng', CAST(N'2002-12-22T00:00:00.000' AS DateTime), 1, 2)
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Countries] FOREIGN KEY([Code])
REFERENCES [dbo].[Countries] ([Code])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Countries]
GO
