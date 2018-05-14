USE [CSD-RDC]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/6/2018 10:16:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[studentId] [int] NULL,
	[fullName] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[age] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Student] ([studentId], [fullName], [address], [age]) VALUES (1, N'ha quang trung', N'hiep hoa', 29)
