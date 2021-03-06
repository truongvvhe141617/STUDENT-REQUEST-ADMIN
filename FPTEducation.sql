USE [StudentRequest]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/6/2021 10:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 8/6/2021 10:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[id] [int] NOT NULL,
	[departmentName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 8/6/2021 10:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department] [varchar](150) NOT NULL,
	[studentID] [varchar](50) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[req_content] [varchar](max) NOT NULL,
	[req_state] [bit] NULL,
	[date_created] [date] NOT NULL,
	[date_closed] [date] NULL,
	[solved] [varchar](50) NULL,
	[attached] [varchar](150) NULL,
	[solution] [varchar](max) NULL,
	[studentName] [varchar](150) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password]) VALUES (1, N'Truongvv', N'123')
INSERT [dbo].[Account] ([id], [username], [password]) VALUES (2, N'truong', N'456')
INSERT [dbo].[Account] ([id], [username], [password]) VALUES (3, N'1', N'1')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[department] ([id], [departmentName]) VALUES (1, N'Trainning department')
INSERT [dbo].[department] ([id], [departmentName]) VALUES (2, N'Academic ')
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([id], [department], [studentID], [title], [req_content], [req_state], [date_created], [date_closed], [solved], [attached], [solution], [studentName]) VALUES (2, N'Trainning department', N'SE14769', N'inquery for PE result', N'I wanna check result again', 1, CAST(N'2021-07-11' AS Date), CAST(N'2021-07-11' AS Date), N'BaoHN', NULL, N'Mark changedxxx', N'Nguyen Chi')
INSERT [dbo].[Request] ([id], [department], [studentID], [title], [req_content], [req_state], [date_created], [date_closed], [solved], [attached], [solution], [studentName]) VALUES (5, N'Trainning department', N'SE14737', N'remake PE', N'I wanna check it', 1, CAST(N'2021-07-12' AS Date), CAST(N'2021-07-12' AS Date), N'LanTK', NULL, N'Fixed. new mark is updated', N'Hai Minh')
INSERT [dbo].[Request] ([id], [department], [studentID], [title], [req_content], [req_state], [date_created], [date_closed], [solved], [attached], [solution], [studentName]) VALUES (6, N'Trainning department', N'SE14000', N'Need more', N'check PE 1', 1, CAST(N'2021-07-18' AS Date), CAST(N'2021-07-15' AS Date), N'ChiNN', N'', N'new mark is updated. Notice to student', N'Ngoc Minh')
INSERT [dbo].[Request] ([id], [department], [studentID], [title], [req_content], [req_state], [date_created], [date_closed], [solved], [attached], [solution], [studentName]) VALUES (7, N'Trainning department', N'SE14235', N'Check mark PRJ321', N'i need check PRJ321 mark again', 1, CAST(N'2021-07-19' AS Date), CAST(N'2021-08-02' AS Date), N'MeoH', NULL, N'fixed. Send mail to student. check 10000', N'Hoang Vu')
INSERT [dbo].[Request] ([id], [department], [studentID], [title], [req_content], [req_state], [date_created], [date_closed], [solved], [attached], [solution], [studentName]) VALUES (8, N'Trainning department', N'SE14175', N'Small test 2', N'check SE01475', 1, CAST(N'2021-07-19' AS Date), CAST(N'2021-08-01' AS Date), N'HungDB', NULL, N'check timeout', N'Tuan Minh')
INSERT [dbo].[Request] ([id], [department], [studentID], [title], [req_content], [req_state], [date_created], [date_closed], [solved], [attached], [solution], [studentName]) VALUES (9, N'Trainning department', N'SE14569', N'Midterm check', N'question 3 error', 1, CAST(N'2021-08-03' AS Date), CAST(N'2021-08-18' AS Date), N'LongVDH1236', NULL, N'check mark1236', N'Nhat Hoang')
INSERT [dbo].[Request] ([id], [department], [studentID], [title], [req_content], [req_state], [date_created], [date_closed], [solved], [attached], [solution], [studentName]) VALUES (10, N'Academic ', N'SE14959', N'Lab101', N'Java lab', 1, CAST(N'2021-05-17' AS Date), CAST(N'2021-05-30' AS Date), N'HuongHTTH', NULL, N'marked', N'Ninh Hung')
INSERT [dbo].[Request] ([id], [department], [studentID], [title], [req_content], [req_state], [date_created], [date_closed], [solved], [attached], [solution], [studentName]) VALUES (11, N'Academic ', N'SE01468', N'Lab202', N'Check lab', 1, CAST(N'2021-07-20' AS Date), CAST(N'2021-07-16' AS Date), N'NhungKY', NULL, N'checked', N'Long Vu')
INSERT [dbo].[Request] ([id], [department], [studentID], [title], [req_content], [req_state], [date_created], [date_closed], [solved], [attached], [solution], [studentName]) VALUES (12, N'Academic ', N'SE14789', N'LAB mid', N'i wanna be', 0, CAST(N'2021-08-02' AS Date), CAST(N'2021-08-15' AS Date), N'MinhQQ', NULL, N'making', N'Truong Vuong')
INSERT [dbo].[Request] ([id], [department], [studentID], [title], [req_content], [req_state], [date_created], [date_closed], [solved], [attached], [solution], [studentName]) VALUES (13, N'Trainning department', N'SE14728', N'PE return', N'i wanna be check it', 0, CAST(N'2021-08-02' AS Date), CAST(N'2021-08-15' AS Date), N'MyNH', NULL, N'reject it', N'Minh Pham')
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
