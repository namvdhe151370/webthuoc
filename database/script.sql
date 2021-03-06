USE [master]
GO
/****** Object:  Database [Webbanthuoc]    Script Date: 03/24/2022 11:24:53 ******/
CREATE DATABASE [Webbanthuoc] ON  PRIMARY 
( NAME = N'Webbanthuoc', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Webbanthuoc.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Webbanthuoc_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Webbanthuoc_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Webbanthuoc] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Webbanthuoc].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Webbanthuoc] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Webbanthuoc] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Webbanthuoc] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Webbanthuoc] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Webbanthuoc] SET ARITHABORT OFF
GO
ALTER DATABASE [Webbanthuoc] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Webbanthuoc] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Webbanthuoc] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Webbanthuoc] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Webbanthuoc] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Webbanthuoc] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Webbanthuoc] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Webbanthuoc] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Webbanthuoc] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Webbanthuoc] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Webbanthuoc] SET  ENABLE_BROKER
GO
ALTER DATABASE [Webbanthuoc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Webbanthuoc] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Webbanthuoc] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Webbanthuoc] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Webbanthuoc] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Webbanthuoc] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Webbanthuoc] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Webbanthuoc] SET  READ_WRITE
GO
ALTER DATABASE [Webbanthuoc] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Webbanthuoc] SET  MULTI_USER
GO
ALTER DATABASE [Webbanthuoc] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Webbanthuoc] SET DB_CHAINING OFF
GO
USE [Webbanthuoc]
GO
/****** Object:  Table [dbo].[InforShipping]    Script Date: 03/24/2022 11:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InforShipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[InforShipping] ON
INSERT [dbo].[InforShipping] ([id], [name], [phone], [address], [email]) VALUES (13, N'1', N'1', N'1', N'1')
INSERT [dbo].[InforShipping] ([id], [name], [phone], [address], [email]) VALUES (15, N'nam', N'1', N'hoà lạc', N'abc123@gmail.com')
INSERT [dbo].[InforShipping] ([id], [name], [phone], [address], [email]) VALUES (16, N'nam1', N'0337779444', N'hoà lạca', N'nam123@gmail.com')
INSERT [dbo].[InforShipping] ([id], [name], [phone], [address], [email]) VALUES (17, N'a', N'0123214213', N'a', N'a')
INSERT [dbo].[InforShipping] ([id], [name], [phone], [address], [email]) VALUES (18, N'a', N'0123410892', N'a', N'a')
SET IDENTITY_INSERT [dbo].[InforShipping] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 03/24/2022 11:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Cid] [int] NOT NULL,
	[Cname] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (1, N'Probiotics')
INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (2, N'Ears, Mouth and Throat')
INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (3, N'Vitamins and Minerals')
INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (4, N'Medical instruments')
INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (5, N'Functional foods')
INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (6, N'Nutrition')
INSERT [dbo].[Category] ([Cid], [Cname]) VALUES (7, N'Sexual Support')
/****** Object:  Table [dbo].[Account]    Script Date: 03/24/2022 11:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[displayName] [nvarchar](150) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[avatar] [nvarchar](500) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([id], [UserName], [Password], [displayName], [address], [email], [phone], [avatar], [role]) VALUES (1, N'nam123', N'123456', N'Duc Nam', N'Ha Noi', N'nam123@gmail.com', N'0333222444', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShqqJ2TaKDjBeOGtGMWhZFWDoTV0Qwg0G0vw&usqp=CAU', N'USER')
INSERT [dbo].[Account] ([id], [UserName], [Password], [displayName], [address], [email], [phone], [avatar], [role]) VALUES (2, N'admin', N'admin', N'Admin', N'unknown', N'admin@admin', N'0123456788', N'https://freenice.net/wp-content/uploads/2021/08/Anh-avatar-vo-danh-doc-dao.jpg', N'ADMIN')
INSERT [dbo].[Account] ([id], [UserName], [Password], [displayName], [address], [email], [phone], [avatar], [role]) VALUES (3, N'abcxyz', N'123456', N'AbcXyz', N'hai duong', N'abc123@gmail.com', N'0123410892', N'https://haycafe.vn/wp-content/uploads/2021/12/hinh-anh-avatar-dep-cho-con-gai-dai-dien-Facebook-Zalo-Tiktok.jpg', N'USER')
INSERT [dbo].[Account] ([id], [UserName], [Password], [displayName], [address], [email], [phone], [avatar], [role]) VALUES (4, N'nam1', N'123456', N'nam 1121', N'hai duong', N'nam1121@gmail.com', N'0337779444', N'https://anhdep123.com/wp-content/uploads/2021/05/hinh-avatar-trang.jpg', N'USER')
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 03/24/2022 11:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[Pname] [nvarchar](250) NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
	[description] [nvarchar](2000) NULL,
	[images] [nvarchar](2000) NULL,
	[startdate] [date] NULL,
	[C_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (2, N'Bb-12 L-Bio Plus8G', 18, 32, N'Usage: Take orally. Shake well before use. Drink 6 drops/day (equivalent to 1 x 109 CFU). Probiotic L - Bio Plus Drops is used in the following cases.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2019/02/00014043-l-bio-plus-giot-chai-8g-5064-5c68_large.JPG', CAST(0xA0430B00 AS Date), 1)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (3, N'Nasomom 4', 20, 15, N'Nasomom 70ml Dong Nai Pharmaceutical Joint Stock Company (DONAIPHARM) dryness of the nose and throat and colds in children and young children.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2020/12/00029003-nasomom-4-tinh-dau-70ml-3846-5fd7_large.JPG', CAST(0x9F430B00 AS Date), 2)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (4, N'Young Plaster-Silk', 25, 3, N'Young Plaster-Silk Tape is used to bandage wounds after surgery, to fix gauze. The adhesive is less irritating, safe for sensitive skin.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2020/09/00021307-bang-keo-cuon-lua-young-plaster-silk-25cm-x-5m-6573-5f73_large.JPG', CAST(0x92430B00 AS Date), 4)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (5, N'Vitamin C', 19, 30, N'Vitamin C 500mg drug of Vidipha Central Pharmaceutical Joint Stock Company (Binh Duong), containing the main drug is ascorbic acid, also known as vitamin C.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/11/00030294-vitamin-c-500mg-quapharco-10x10-2473-617f_large.JPG', CAST(0x93430B00 AS Date), 3)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (6, N'Sphygmomanometer', 10, 150, N'AND UA-611 Automatic Bracelet Blood Pressure Monitor is manufactured according to Japanese standards with outstanding features such as: Irregular heartbeat warning.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/10/00032485-may-do-huyet-ap-bap-tay-tu-dong-and-ua-611-2417-615f_large.jpg', CAST(0x92430B00 AS Date), 4)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (7, N'Blood Pressure', 17, 250, N'Blood Pressure+++ supports stabilizing and regulating blood pressure, increasing blood volume for the body, enhancing blood circulation to organs. Limit symptoms: Dizziness, headache, heart palpitations, anxiety and restlessness.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/12/00032919-vien-uong-ho-tro-huyet-ap-blood-pressure-jpanwell-60v-2806-61aa_large.jpg', CAST(0x82430B00 AS Date), 5)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (8, N'Meisen Aojiru', 19, 149, N'Meisen Aojiru adds fiber to the body from natural green vegetables, supports the digestive system to work better, and reduces constipation.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/02/00029695-bot-xo-meisen-aojiru-60-goi-x-3g-3637-602f_large.JPG', CAST(0x75430B00 AS Date), 5)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (9, N'Vitamin B1', 11, 26, N'Vitamin B1 250 mg is a product of Mekophar Chemical - Pharmaceutical Joint Stock Company, the main ingredient is vitamin B1, which is used to treat severe vitamin B1 deficiency, metabolic disorders caused by genetic deficiency of enzymes with response. response to thiamine.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2017/10/00011064-vitamin-b1-250mg-dmc-100v-3620-458d_large.jpg', CAST(0x73430B00 AS Date), 3)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (10, N'Bix Gentleman', 30, 80, N'Bix Gentleman Male Enhancement Gel 30ml is a line of lubricating gels that help moisturize, fight inflammation and prolong love for men. Bix topical gel is extracted naturally according to the formula of the Thai people.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/12/00032916-gel-boi-tang-cuong-sinh-ly-cho-nam-gioi-bix-gentlement-30ml-4746-61aa_large.jpg', CAST(0x95430B00 AS Date), 7)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (11, N'Dr. Liver Jpanwell', 11, 83, N'Dr.Liver supports liver function, purifies toxins, stabilizes liver enzymes. Support to reduce the risk of blood clots, support to reduce blood pressure due to cholesterol. Helps the body strengthen its ability to fight diseases and bacteria and viruses.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/11/00032920-vien-uong-thai-doc-gan-dr-liver-jpanwell-60v-5501-61a5_large.JPG', CAST(0x85430B00 AS Date), 5)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (12, N'Plurvica green rice', 50, 5, N'Plurivica 40g is manufactured by Pharmaceutical Joint Stock Company 2/9 - Nadyphar, with the main ingredients being calcium gluconate, vitamin B12, vitamin B1, vitamin B2, vitamin D2, vitamin PP, vitamin B5, calcium, calcium pantothenate. Plurivica 40g is used in the case of a debilitating condition caused by a lack of vitamins and calcium.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2018/07/00006006-plurivica-40-3343-5b59_large.JPG', CAST(0xA9430B00 AS Date), 3)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (13, N'Vitatree Ginkgo Plus', 18, 199, N'Vitatree Ginkgo Plus 6000 With Q10 enhances blood circulation, enhances cerebral circulation, reduces symptoms of cerebral circulatory insufficiency such as headache, dizziness, insomnia, stress.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2020/11/00020662-vitatree-ginkgo-plus-6000-q10-60v-kingphar-9173-5fa0_large.jpg', CAST(0x98430B00 AS Date), 5)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (14, N'Durex Kingtex', 100, 16, N'Durex Kingtex condoms are the smallest in size, only 49mm, tight and snug, providing an enjoyable feeling in "love". In particular, the product is made entirely of high quality natural rubber.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2020/09/00008380-durex-kingtex-12s-5610-5f62_large.jpg', CAST(0x77430B00 AS Date), 7)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (15, N'Strepsils Cool', 14, 24, N'Strepsils Cool is packaged in a box of 2 blisters x 12 lozenges, a lozenge used in cases of sore throat in children and adults. The main ingredients are two antibacterial substances that combine menthol.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2018/08/00006920-strepsils-cool-24-vien-7215-5b65_large.JPG', CAST(0x82430B00 AS Date), 2)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (16, N'Strepsils Original', 18, 51, N'Strepsils Orginal is packaged in a box of 2 blisters x 12 lozenges, a lozenge used in cases of sore throat in children and adults. The main ingredients are two antibacterial agents that combine menthol.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2018/08/00006925-strepsils-original-24-vien-2153-5b65_large.JPG', CAST(0x83430B00 AS Date), 2)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (17, N'Medical masks', 10, 37, N'Vinh Tien Advanced Medical Mask KN95 3Hmask is a mask with a special structure, guaranteed to prevent 99+% of droplets and super fine dust. As a result, the ability to prevent disease is many times higher. At the same time, the product has environmentally friendly materials, designed to create comfort for users.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2022/01/00031581-khau-trang-y-te-cao-cap-vinh-tien-kn95-3hmask-hop-10-cai-5311-61ef_large.jpg', CAST(0xAA430B00 AS Date), 4)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (18, N'Rocket 1H', 12, 51, N'Rocket 1h is completely extracted from nature, helps increase testosterone production, helps to replenish kidney yang, enhances vitality, endurance, helps slow down the process of menopause in men.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2020/10/00006402-rocket-1h-tang-cuong-sinh-ly-nam-gioi-2500-5f7d_large.JPG', CAST(0x74430B00 AS Date), 5)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (19, N'Thai Duong Mouthwash', 17, 10, N'Thai Duong mouthwash is a product of Sao Thai Duong Joint Stock Company. The drug has the effect of disinfecting the teeth, mouth, nasopharynx, promoting gingival (gum) circulation, preventing the risk of tartar and inflammation causing tooth decay; help eliminate bad breath, keep breath fresh; strengthen teeth every day.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2018/09/00005428-nuoc-suc-mieng-thai-duong-500ml-huong-bac-ha-4185-5ba1_large.JPG', CAST(0x72430B00 AS Date), 2)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (20, N'Lipitas Jpanwell', 25, 98, N'Lipitas JpanWell oral tablet helps to reduce fat, cholesterol and triglycerides in the blood, helps reduce the risk of blood clots, helps reduce blood pressure due to cholesterol, good for the heart.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/01/00029360-lipitas-jpanwell-60v-4493-6006_large.JPG', CAST(0x8F430B00 AS Date), 5)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (21, N'Lycalci', 25, 15, N'Lycalci 10 ml of OPV pharmaceutical joint stock company, the drug is used to supplement lysine, vitamins and minerals for children and adolescents during the growth period. Especially in the case of malnutrition, dieting, illness, malabsorption, after surgery, in the convalescence period.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/05/00004619-lycalci-10ml-3331-6093_large.jpg', CAST(0x79430B00 AS Date), 3)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (22, N'Natriclorid 0,9', 18, 2, N'Sodium chloride 0.9% 500 ml bottle is manufactured by 3/2 Pharmaceutical Joint Stock Company, with the main ingredient being sodium chloride. Sodium chloride 0.9% medicine is indicated in washing open and closed wounds or using mouthwash to clean teeth, mouth and throat every day.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/04/00005145-natriclorid-09-500ml-32-8311-607d_large.jpg', CAST(0x8F430B00 AS Date), 2)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (23, N'Poly Dexa Eye', 20, 18, N'This is a drug used to treat inflammatory diseases in the eyes and nose: Eye pain, red eyes, swelling, itching, watery eyes, rhinitis, sinusitis, treatment after surgery on eyes and nose.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/08/00022091-poly-dexa-ha-tay-5ml-8311-6127_large.jpg', CAST(0x8F430B00 AS Date), 2)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (24, N'Enterogermina', 20, 12, N'Enterogermina 4B is used for the treatment and prevention of intestinal microflora disorders and endogenous vitamin malabsorption; adjuvant treatment to restore intestinal flora affected by antibiotics or chemotherapy.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/04/00030670-enterogemina-4b-sanofi-2x10-ong-5ml-2836-6087_large.jpg', CAST(0x6D430B00 AS Date), 1)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (25, N'Sanest Khanh Hoa', 25, 45, N'Khanh Hoa Bird Nest Without Sugar is suitable for people who want to improve their health, improve their resistance, dieters, diabetics or those who have problems absorbing nutrients.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/10/00014062-yen-sao-khanh-hoa-loc-6-kd-3998-6162_large.jpg', CAST(0x8B430B00 AS Date), 6)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (26, N'Black Turmeric Honey', 25, 28, N'With the main ingredient is honey combined with Ban Me Thuot black turmeric, the product has the effect of tonic blood for those who have just woken up, enhanced blood purification, very good for women, especially women after giving birth. Besides, it also has the effect of supporting stomach ulcers, duodenal ulcers, digestive disorders.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2020/02/00004695-mat-ong-nghe-den-ban-me-thuot-120g-2314-5e53_large.JPG', CAST(0xE8420B00 AS Date), 6)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (27, N'Vitadairy Gluvita Gold', 25, 88, N'Vitadairy Gluvita Gold milk with optimal nutritional composition helps build a healthy balanced diet, helps control and stabilize blood sugar for people with diabetes or pre-diabetes. Gluvita Gold is easy to digest, especially with added ingredients to help protect the cardiovascular system and vision.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2021/12/00028560-sua-vitadairy-gluvita-gold-400g-9614-61af_large.jpg', CAST(0x9F430B00 AS Date), 6)
INSERT [dbo].[Product] ([Pid], [Pname], [quantity], [price], [description], [images], [startdate], [C_id]) VALUES (28, N'Ok Original', 30, 15, N'Ok Original Condoms are popular cheap condoms for couples, Ok condoms are affordable but the quality is not inferior to other brands.', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2019/03/00008408-bcs-ok-original-12s-2305-5c93_large.JPG', CAST(0x77430B00 AS Date), 7)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 03/24/2022 11:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id], [Status]) VALUES (13, 1, 32, N'Ship nhanh cẩn thận', CAST(0xBB430B00 AS Date), 13, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/24/2022 11:24:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
	[productId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity], [productId]) VALUES (15, 13, N'Bb-12 L-Bio Plus8G', N'https://images.fpt.shop/unsafe/fit-in/600x600/filters:quality(90):fill(white)/nhathuoclongchau.com/images/product/2019/02/00014043-l-bio-plus-giot-chai-8g-5064-5c68_large.JPG', 32, 1, 2)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
/****** Object:  Default [DF_Orders_created_date]    Script Date: 03/24/2022 11:24:54 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
/****** Object:  ForeignKey [FK__Product__C_id__3C69FB99]    Script Date: 03/24/2022 11:24:54 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([C_id])
REFERENCES [dbo].[Category] ([Cid])
GO
/****** Object:  ForeignKey [FK__Orders__account___0DAF0CB0]    Script Date: 03/24/2022 11:24:54 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
/****** Object:  ForeignKey [FK__Orders__shipping__0EA330E9]    Script Date: 03/24/2022 11:24:54 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([shipping_id])
REFERENCES [dbo].[InforShipping] ([id])
GO
/****** Object:  ForeignKey [FK__OrderDeta__order__0CBAE877]    Script Date: 03/24/2022 11:24:54 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
/****** Object:  ForeignKey [FK_OrderDetail_Product]    Script Date: 03/24/2022 11:24:54 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([Pid])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
