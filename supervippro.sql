 
USE [PRJ301-Project]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[brand_id] [varchar](30) NOT NULL,
	[brand_name] [varchar](30) NOT NULL,
	[brand_description] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cate_id] [varchar](30) NOT NULL,
	[cate_name] [varchar](30) NOT NULL,
	[cate_description] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[order_id] [int] NOT NULL,
	[product_id] [varchar](30) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[order_date] [date] NULL,
	[totalmoney] [money] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [varchar](30) NOT NULL,
	[product_name] [varchar](30) NOT NULL,
	[product_image] [varchar](30) NOT NULL,
	[brand_id] [varchar](30) NOT NULL,
	[product_size] [int] NOT NULL,
	[product_price] [money] NOT NULL,
	[product_description] [varchar](30) NOT NULL,
	[tech_id] [varchar](30) NOT NULL,
	[cate_id] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[r_id] [int] NOT NULL,
	[r_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[r_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology](
	[tech_id] [varchar](30) NOT NULL,
	[tech_name] [varchar](30) NOT NULL,
	[tech_description] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tech_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[email] [varchar](100) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[address] [varchar](150) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[r_id] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Brand] ([brand_id], [brand_name], [brand_description]) VALUES (N'acer', N'Acer', N'description')
INSERT [dbo].[Brand] ([brand_id], [brand_name], [brand_description]) VALUES (N'aoc', N'AOC', N'description')
INSERT [dbo].[Brand] ([brand_id], [brand_name], [brand_description]) VALUES (N'asus', N'Asus', N'description')
INSERT [dbo].[Brand] ([brand_id], [brand_name], [brand_description]) VALUES (N'benq', N'BenQ', N'description')
INSERT [dbo].[Brand] ([brand_id], [brand_name], [brand_description]) VALUES (N'dell', N'Dell', N'description')
INSERT [dbo].[Brand] ([brand_id], [brand_name], [brand_description]) VALUES (N'hp', N'HP', N'description')
INSERT [dbo].[Brand] ([brand_id], [brand_name], [brand_description]) VALUES (N'lenovo', N'Lenovo', N'description')
INSERT [dbo].[Brand] ([brand_id], [brand_name], [brand_description]) VALUES (N'lg', N'LG', N'description')
INSERT [dbo].[Brand] ([brand_id], [brand_name], [brand_description]) VALUES (N'samsung', N'SamSung', N'description')
GO
INSERT [dbo].[Category] ([cate_id], [cate_name], [cate_description]) VALUES (N'design', N'Design', N'description')
INSERT [dbo].[Category] ([cate_id], [cate_name], [cate_description]) VALUES (N'game', N'Gaming', N'description')
INSERT [dbo].[Category] ([cate_id], [cate_name], [cate_description]) VALUES (N'orther', N'Orther', N'descripton')
INSERT [dbo].[Category] ([cate_id], [cate_name], [cate_description]) VALUES (N'program', N'Program', N'description')
GO
INSERT [dbo].[OrderDetails] ([order_id], [product_id], [quantity], [price]) VALUES (40, N'p12', 1, 6690.0000)
INSERT [dbo].[OrderDetails] ([order_id], [product_id], [quantity], [price]) VALUES (40, N'p11', 1, 3890.0000)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([order_id], [email], [order_date], [totalmoney], [status]) VALUES (40, N'koko123@gmail.com', CAST(N'2022-10-31' AS Date), 10580.0000, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'ace324', N'Acer Pro Book', N'photo/asus.jpg', N'acer', 32, 4539.0000, N'Acer Vip Pro Book 16gb ram', N'ips', N'design')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'JAC-1235', N'Gaming Vip pro TUF', N'photo/asus.jpg', N'asus', 28, 7002.0000, N'Gaming max ping', N'ips', N'game')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p1', N'24MP59G', N'photo/p1.jpg', N'lg', 24, 3190.0000, N'LG Gaming 24 inch', N'ips', N'game')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p10', N'LF27T450FQEXXV', N'photo/p10.jpg', N'samsung', 27, 1290.0000, N'Samsung 27 inch', N'ips', N'program')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p11', N'9RV16AA', N'photo/p11.jpg', N'hp', 24, 3890.0000, N'HP 23.8 inch V24i ', N'ips', N'program')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p12', N'EL2870U', N'photo\p12.jpg', N'benq', 28, 6690.0000, N'Man hinh BenQ', N'tn', N'design')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p13', N'U2520D', N'photo\p13.jpg', N'dell', 24, 9900.0000, N'Dell UltraSharp 25 inch', N'ips', N'program')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p14', N'24QP550', N'photo\p14.jpg', N'lg', 24, 6390.0000, N'LG 24 inch', N'ips', N'program')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p15', N'P2719H', N'photo\p15.jpg', N'dell', 27, 5290.0000, N'Dell 27 inch', N'ips', N'program')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p16', N'LC24F390FHEXXV', N'photo\p16.jpg', N'samsung', 24, 4090.0000, N'Samsung 24 inch cong', N'va', N'program')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p17', N'EK220QA', N'photo\p17.jpg', N'acer', 24, 3590.0000, N'ACER 24 inch', N'va', N'program')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p18', N'PROART PA278QV', N'photo\p18.jpg', N'asus', 27, 9290.0000, N'ASUS 27 PROART ', N'ips', N'design')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p19', N' P3421W', N'photo\p19.jpg', N'dell', 34, 14590.0000, N'Ultrawide Dell 34 inch cong', N'ips', N'design')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p2', N'32GN600', N'photo\p2.jpg', N'lg', 32, 8590.0000, N'LG Gaming UltraGear 32 inch', N'tn', N'game')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p3', N'VG270YS', N'photo\p3.jpg', N'acer', 27, 6590.0000, N'Gaming ACER Nitro 27 inch', N'ips', N'game')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p4', N'S2421HGF', N'photo\p4.jpg', N'dell', 24, 4990.0000, N'Dell Gaming 24 inch', N'tn', N'game')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p5', N'VG249Q1R', N'photo\p5.jpg', N'asus', 24, 4890.0000, N'Asus Tuf Gaming 24', N'ips', N'game')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p6', N'LC32G55TQWEXXV', N'photo\p6.jpg', N'samsung', 32, 9490.0000, N'Samsung Odyssey G5 32 inch', N'va', N'game')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p7', N'29WP60G', N'photo\p7.jpg', N'lg', 27, 7090.0000, N'LG UltraWide 29 inch', N'ips', N'design')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'p8', N'U2422HE', N'photo\p8.jpg', N'dell', 24, 7590.0000, N'Dell Ultrasharp 24 inch', N'ips', N'design')
INSERT [dbo].[Product] ([product_id], [product_name], [product_image], [brand_id], [product_size], [product_price], [product_description], [tech_id], [cate_id]) VALUES (N'pi234', N'Nasus Gaming', N'photo/asus.jpg', N'asus', 23, 3004.0000, N'Nasus 1k Q ultra hd', N'oled', N'program')
GO
INSERT [dbo].[Role] ([r_id], [r_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([r_id], [r_name]) VALUES (2, N'Manager')
INSERT [dbo].[Role] ([r_id], [r_name]) VALUES (3, N'Guest')
GO
INSERT [dbo].[Technology] ([tech_id], [tech_name], [tech_description]) VALUES (N'ips', N'IPS', N'description')
INSERT [dbo].[Technology] ([tech_id], [tech_name], [tech_description]) VALUES (N'oled', N'OLED', N'description')
INSERT [dbo].[Technology] ([tech_id], [tech_name], [tech_description]) VALUES (N'tn', N'TN', N'description')
INSERT [dbo].[Technology] ([tech_id], [tech_name], [tech_description]) VALUES (N'va', N'VA', N'description')
GO
INSERT [dbo].[User] ([email], [password], [name], [phone], [address], [dob], [gender], [r_id]) VALUES (N'koko123@gmail.com', N'hahaha1234', N'okok', N'9238423452', N'nam nam', CAST(N'2001-05-28' AS Date), 1, 3)
INSERT [dbo].[User] ([email], [password], [name], [phone], [address], [dob], [gender], [r_id]) VALUES (N'kson8504@gmail.com', N'sonloc123', N'Sonnk7', N'0384104668', N'12 son tay', CAST(N'2001-05-28' AS Date), 1, 1)
INSERT [dbo].[User] ([email], [password], [name], [phone], [address], [dob], [gender], [r_id]) VALUES (N'elaaigiuacuocdoinay@gmail.com', N'depoet', N'Test Nay', N'092830093', N'123 sonloc', CAST(N'2001-12-03' AS Date), 1, 1)
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_User] FOREIGN KEY([email])
REFERENCES [dbo].[User] ([email])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [dbo].[Brand] ([brand_id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([cate_id])
REFERENCES [dbo].[Category] ([cate_id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([tech_id])
REFERENCES [dbo].[Technology] ([tech_id])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([r_id])
REFERENCES [dbo].[Role] ([r_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
