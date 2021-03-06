USE [WebProject]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/13/2020 3:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookRoom]    Script Date: 12/13/2020 3:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookRoom](
	[id_room] [int] NULL,
	[id_customer] [int] NULL,
	[start] [date] NULL,
	[expire] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/13/2020 3:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id_customer] [int] IDENTITY(1,1) NOT NULL,
	[name_customer] [nvarchar](50) NULL,
	[age] [int] NULL,
	[id_admin] [int] NULL,
	[noid] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[note] [nvarchar](100) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id_customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 12/13/2020 3:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[id_room] [int] NOT NULL,
	[type_room] [int] NOT NULL,
	[status_room] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[id_room] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeRoom]    Script Date: 12/13/2020 3:52:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeRoom](
	[id] [int] NULL,
	[name] [nvarchar](50) NULL,
	[num_bed] [int] NULL,
	[price] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([username], [password], [id], [role]) VALUES (N'longvu', N'123456', 2, 2)
INSERT [dbo].[Account] ([username], [password], [id], [role]) VALUES (N'phamphong', N'123456', 1, 1)
INSERT [dbo].[Account] ([username], [password], [id], [role]) VALUES (N'phonglong', N'123456', 3, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[BookRoom] ([id_room], [id_customer], [start], [expire]) VALUES (101, 1, CAST(N'2020-09-03' AS Date), CAST(N'2020-12-20' AS Date))
INSERT [dbo].[BookRoom] ([id_room], [id_customer], [start], [expire]) VALUES (101, 2, CAST(N'2020-09-26' AS Date), CAST(N'2020-12-28' AS Date))
INSERT [dbo].[BookRoom] ([id_room], [id_customer], [start], [expire]) VALUES (102, 3, CAST(N'2020-09-01' AS Date), CAST(N'2020-12-22' AS Date))
INSERT [dbo].[BookRoom] ([id_room], [id_customer], [start], [expire]) VALUES (103, 4, CAST(N'2020-09-01' AS Date), CAST(N'2020-12-20' AS Date))
INSERT [dbo].[BookRoom] ([id_room], [id_customer], [start], [expire]) VALUES (104, 5, CAST(N'2020-09-01' AS Date), CAST(N'2020-12-20' AS Date))
INSERT [dbo].[BookRoom] ([id_room], [id_customer], [start], [expire]) VALUES (201, 6, CAST(N'2020-10-10' AS Date), CAST(N'2020-12-25' AS Date))
INSERT [dbo].[BookRoom] ([id_room], [id_customer], [start], [expire]) VALUES (204, 11, CAST(N'2020-12-10' AS Date), CAST(N'2020-12-11' AS Date))
INSERT [dbo].[BookRoom] ([id_room], [id_customer], [start], [expire]) VALUES (203, 11, CAST(N'2020-12-12' AS Date), CAST(N'2020-12-28' AS Date))
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (1, N'Chuong    ', 21, 1, N'101341112', N'0936616785', N'null')
INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (2, N'Phạm Thành Phong', 21, 1, N'101341112', N'0936616785', N'null')
INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (3, N'Long', 21, 2, N'101341112', N'0936616785', N'null')
INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (4, N'Khoa', 21, 3, N'101341112', N'0936616785', N'null')
INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (5, N'Tung', 21, 2, N'101341112', N'0936616785', N'null')
INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (6, N'Đăng Khoa', 21, 2, N'101341112', N'0936616785', N'none')
INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (7, N'Pham Phong', 18, 1, N'101341112', N'0936616785', N'null')
INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (8, N'Pham Phong', 18, 1, N'101341112', N'0936616785', N'null')
INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (9, N'Pham Phong', 18, 1, N'101341112', N'0936616785', N'null')
INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (10, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([id_customer], [name_customer], [age], [id_admin], [noid], [phone], [note]) VALUES (11, N'Pham Phong', 18, 1, N'101341112           ', N'0936616785', N'null')
SET IDENTITY_INSERT [dbo].[Customer] OFF
INSERT [dbo].[Room] ([id_room], [type_room], [status_room]) VALUES (101, 1, N'Hỏng')
INSERT [dbo].[Room] ([id_room], [type_room], [status_room]) VALUES (102, 1, N'OK')
INSERT [dbo].[Room] ([id_room], [type_room], [status_room]) VALUES (103, 3, N'OK')
INSERT [dbo].[Room] ([id_room], [type_room], [status_room]) VALUES (104, 4, N'Hỏng')
INSERT [dbo].[Room] ([id_room], [type_room], [status_room]) VALUES (201, 2, N'OK')
INSERT [dbo].[Room] ([id_room], [type_room], [status_room]) VALUES (202, 1, N'OK')
INSERT [dbo].[Room] ([id_room], [type_room], [status_room]) VALUES (203, 2, N'OK')
INSERT [dbo].[Room] ([id_room], [type_room], [status_room]) VALUES (204, 3, N'OK')
INSERT [dbo].[TypeRoom] ([id], [name], [num_bed], [price]) VALUES (1, N'Standard', 1, 150000)
INSERT [dbo].[TypeRoom] ([id], [name], [num_bed], [price]) VALUES (2, N'Superior', 2, 200000)
INSERT [dbo].[TypeRoom] ([id], [name], [num_bed], [price]) VALUES (3, N'Deluxe', 2, 300000)
INSERT [dbo].[TypeRoom] ([id], [name], [num_bed], [price]) VALUES (4, N'Suite', 2, 400000)
