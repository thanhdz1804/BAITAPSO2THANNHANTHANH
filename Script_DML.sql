-- Tạo cơ sở dữ liệu
CREATE DATABASE QLSV;
GO
USE QLSV;
GO
-- Tạo bảng Khoa
CREATE TABLE Khoa (
    maKhoa INT PRIMARY KEY,
    tenKhoa NVARCHAR(100) NOT NULL
);
-- Tạo bảng BoMon
CREATE TABLE BoMon (
    maBM INT PRIMARY KEY,
    tenBM NVARCHAR(100) NOT NULL,
    maKhoa INT FOREIGN KEY REFERENCES Khoa(maKhoa)
);
-- Tạo bảng GiaoVien
CREATE TABLE GiaoVien (
    maGV INT PRIMARY KEY,
    hoTen NVARCHAR(100) NOT NULL,
    ngaySinh DATE,
    maBM INT FOREIGN KEY REFERENCES BoMon(maBM)
);
-- Tạo bảng SinhVienrdt nh
CREATE TABLE SinhVien (
    maSV INT PRIMARY KEY,
    hoTen NVARCHAR(100) NOT NULL,
    ngaySinh DATE
);
-- Tạo bảng Lop
CREATE TABLE Lop (
    maLop INT PRIMARY KEY,
    tenLop NVARCHAR(100) NOT NULL
);
-- Tạo bảng MonHoc
CREATE TABLE MonHoc (
    maMon INT PRIMARY KEY,
    tenMon NVARCHAR(100) NOT NULL,
    STC INT CHECK (STC > 0)
);
-- Tạo bảng LopHP
CREATE TABLE LopHP (
    maLopHP INT PRIMARY KEY,
    tenLopHP NVARCHAR(100) NOT NULL,
    HK NVARCHAR(50),
    maMon INT FOREIGN KEY REFERENCES MonHoc(maMon),
    maGV INT FOREIGN KEY REFERENCES GiaoVien(maGV)
);
-- Tạo bảng GVCN
CREATE TABLE GVCN (
    maLop INT,
    maGV INT,
    HK NVARCHAR(50),
    PRIMARY KEY (maLop, maGV, HK),
    FOREIGN KEY (maLop) REFERENCES Lop(maLop),
    FOREIGN KEY (maGV) REFERENCES GiaoVien(maGV)
);
-- Tạo bảng LopSV
CREATE TABLE LopSV (
    maLop INT,
    maSV INT,
    ChucVu NVARCHAR(100),
    PRIMARY KEY (maLop, maSV),
    FOREIGN KEY (maLop) REFERENCES Lop(maLop),
    FOREIGN KEY (maSV) REFERENCES SinhVien(maSV)
);
-- Tạo bảng DKMH
CREATE TABLE DKMH (
    maLopHP INT,
    maSV INT,
    DiemTP FLOAT CHECK (DiemTP BETWEEN 0 AND 10),
    DiemThi FLOAT CHECK (DiemThi BETWEEN 0 AND 10),
    PhanTramThi FLOAT CHECK (PhanTramThi BETWEEN 0 AND 100),
    PRIMARY KEY (maLopHP, maSV),
    FOREIGN KEY (maLopHP) REFERENCES LopHP(maLopHP),
    FOREIGN KEY (maSV) REFERENCES SinhVien(maSV)
);
