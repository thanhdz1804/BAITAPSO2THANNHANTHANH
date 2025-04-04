USE [QLSV]
GO
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [ngaySinh]) VALUES (1243125, N'Hoai an ', CAST(N'2004-02-11' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [ngaySinh]) VALUES (22548010, N'thannhanthanh', CAST(N'2004-04-18' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [ngaySinh]) VALUES (225480101, N'VanAN', CAST(N'2004-10-11' AS Date))
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (555, N'DIENTU')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (666, N'COKHI')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (777, N'NGOAINGU')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (987, N'PYTHON', 555)
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (988, N'csdl', 666)
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (999, N'TIENGANH', 777)
GO
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [ngaySinh], [maBM]) VALUES (111, N'TTT', CAST(N'1999-10-10' AS Date), 987)
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [ngaySinh], [maBM]) VALUES (222, N'Than Nhan ', CAST(N'2000-11-11' AS Date), 988)
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [ngaySinh], [maBM]) VALUES (333, N'Tran Huy', CAST(N'1980-12-12' AS Date), 999)
GO
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (123, N'TIENG ANH', 3)
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (124, N'PYTHON', 3)
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (125, N'DABONG', 1)
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (126, N'csdl', 3)
GO
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (1, N'K2222', N'3', 123, 111)
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (2, N'k1234', N'3', 124, 222)
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (42, N'z134', N'3', 125, 333)
GO
SET IDENTITY_INSERT [dbo].[DKMH] ON 

INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (2, 1, 1243125, 8, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (3, 2, 22548010, 10, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (5, 42, 225480101, 9, 60)
SET IDENTITY_INSERT [dbo].[DKMH] OFF
GO
SET IDENTITY_INSERT [dbo].[Diem] ON 

INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (3, 2, 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (4, 3, 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (5, 5, 8)
SET IDENTITY_INSERT [dbo].[Diem] OFF
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (12, N'ktkt')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (13, N'tdh')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (14, N'kmt')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (15, N'ktp')
GO
