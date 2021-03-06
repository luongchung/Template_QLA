USE [dbThanhChin]
GO
/****** Object:  Table [dbo].[GroupID]    Script Date: 7/14/2018 11:51:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupID](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](100) NULL,
	[DienGiai] [nvarchar](200) NULL,
 CONSTRAINT [PK_GroupID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/14/2018 11:51:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](100) NULL,
	[TenNV] [nvarchar](100) NULL,
	[GioiTinh] [bit] NULL,
	[Tuoi] [int] NULL,
	[SDT] [nvarchar](30) NULL,
	[IDLoaiNV] [int] NULL,
	[DiaChi] [nvarchar](500) NULL,
	[Password] [nvarchar](200) NULL,
	[IsLock] [bit] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pqAccessRight]    Script Date: 7/14/2018 11:51:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pqAccessRight](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleID] [int] NULL,
	[GroupID] [int] NULL,
	[IsAccessRight] [bit] NULL,
 CONSTRAINT [PK_pqAccessRight] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pqForm]    Script Date: 7/14/2018 11:51:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pqForm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FormName] [nvarchar](100) NULL,
	[DienGiai] [nchar](500) NULL,
 CONSTRAINT [PK_pqForm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pqModule]    Script Date: 7/14/2018 11:51:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pqModule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[DienGiai] [nvarchar](500) NULL,
	[IDCha] [int] NULL,
 CONSTRAINT [PK_pqModule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pqModule_FormControl]    Script Date: 7/14/2018 11:51:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pqModule_FormControl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleID] [int] NULL,
	[FormID] [int] NULL,
	[ControlName] [nvarchar](500) NULL,
 CONSTRAINT [PK_pqModule_FormControl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pqNhomNhanVien]    Script Date: 7/14/2018 11:51:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pqNhomNhanVien](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NULL,
	[MaNV] [int] NULL,
 CONSTRAINT [PK_pqNhomNhanVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GroupID] ON 

INSERT [dbo].[GroupID] ([ID], [GroupName], [DienGiai]) VALUES (1, N'QTV', N'Quản trị hệ thống')
SET IDENTITY_INSERT [dbo].[GroupID] OFF
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([ID], [MaNV], [TenNV], [GioiTinh], [Tuoi], [SDT], [IDLoaiNV], [DiaChi], [Password], [IsLock]) VALUES (1, N'luongchung', N'Lương Văn Chung', 1, 23, N'01234443401', 1, N'Việt Nam', N'EB18B0463340D4D9A139714B92E31A7F', 0)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[pqNhomNhanVien] ON 

INSERT [dbo].[pqNhomNhanVien] ([ID], [GroupID], [MaNV]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[pqNhomNhanVien] OFF
ALTER TABLE [dbo].[pqAccessRight]  WITH CHECK ADD  CONSTRAINT [FK_pqAccessRight_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GroupID] ([ID])
GO
ALTER TABLE [dbo].[pqAccessRight] CHECK CONSTRAINT [FK_pqAccessRight_GroupID]
GO
ALTER TABLE [dbo].[pqAccessRight]  WITH CHECK ADD  CONSTRAINT [FK_pqAccessRight_pqModule] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[pqModule] ([ID])
GO
ALTER TABLE [dbo].[pqAccessRight] CHECK CONSTRAINT [FK_pqAccessRight_pqModule]
GO
ALTER TABLE [dbo].[pqModule_FormControl]  WITH CHECK ADD  CONSTRAINT [FK_pqModule_FormControl_pqForm] FOREIGN KEY([FormID])
REFERENCES [dbo].[pqForm] ([ID])
GO
ALTER TABLE [dbo].[pqModule_FormControl] CHECK CONSTRAINT [FK_pqModule_FormControl_pqForm]
GO
ALTER TABLE [dbo].[pqModule_FormControl]  WITH CHECK ADD  CONSTRAINT [FK_pqModule_FormControl_pqModule] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[pqModule] ([ID])
GO
ALTER TABLE [dbo].[pqModule_FormControl] CHECK CONSTRAINT [FK_pqModule_FormControl_pqModule]
GO
ALTER TABLE [dbo].[pqNhomNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_pqNhomNhanVien_GroupID] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GroupID] ([ID])
GO
ALTER TABLE [dbo].[pqNhomNhanVien] CHECK CONSTRAINT [FK_pqNhomNhanVien_GroupID]
GO
ALTER TABLE [dbo].[pqNhomNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_pqNhomNhanVien_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[pqNhomNhanVien] CHECK CONSTRAINT [FK_pqNhomNhanVien_NhanVien]
GO
/****** Object:  StoredProcedure [dbo].[AccessRightInsert]    Script Date: 7/14/2018 11:51:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[AccessRightInsert]
@GroupID int
AS
INSERT INTO pqAccessRight(ModuleID,GroupID,IsAccessRight)
SELECT F.ID,@GroupID,1
FROM pqModule AS F
WHERE F.ID NOT IN (SELECT ModuleID
									FROM pqAccessRight
									WHERE GroupID = @GroupID)
GO
/****** Object:  StoredProcedure [dbo].[pqResetNode]    Script Date: 7/14/2018 11:51:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[pqResetNode]
@GroupID int,
@IsAccessRight bit
AS
BEGIN
	UPDATE pqAccessRight
	SET IsAccessRight = @IsAccessRight
	WHERE GroupID = @GroupID
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdatePqAccess]    Script Date: 7/14/2018 11:51:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[spUpdatePqAccess]
	@GroupID int,
	@ModuleID int,
	@IsAccessRight bit
AS
	declare @Valid int
	select @Valid = COUNT(*) from pqAccessRight where GroupID=@GroupID and ModuleID=@ModuleID
	if(@Valid>0)
		BEGIN
			update pqAccessRight set IsAccessRight=@IsAccessRight where GroupID=@GroupID and ModuleID=@ModuleID
		END
	ELSE
		BEGIN
			INSERT INTO pqAccessRight(GroupID,ModuleID,IsAccessRight) values (@GroupID,@ModuleID,@IsAccessRight)
		END
GO
