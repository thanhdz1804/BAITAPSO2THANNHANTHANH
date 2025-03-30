BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 30/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

## TAO BẢNG ĐIỂM
![image](https://github.com/user-attachments/assets/a1cd292f-72c0-4fc2-b1a4-f99b506ca929)
## BẢNG DKMH ĐÃ SỬA
![image](https://github.com/user-attachments/assets/a227c245-04cd-46c2-a71d-9de0fc17d3d3)
## ĐẶT NGOẠI KHÓA BẢNG ĐIỂM
![image](https://github.com/user-attachments/assets/9cca5321-5694-4cd7-89d4-95b4b6448ec3)
## ĐẶT BẢNG CHECK CHO BẢNG ĐIỂM
![image](https://github.com/user-attachments/assets/af2470ce-99c6-4a8f-887c-cc3408676218)
![image](https://github.com/user-attachments/assets/0a158ff2-76ea-4128-b129-458d564417eb)
## CÁC PK,PK CỦA DATABASES
![image](https://github.com/user-attachments/assets/fab78804-4ad3-448d-af09-b6bd743c9193)
## BẢNG SINH VIÊN
![image](https://github.com/user-attachments/assets/2c97c7b6-76cc-47f8-9e41-c316f487e8e6)
## BẢNG MÔN HỌC
![image](https://github.com/user-attachments/assets/20f588bc-1005-44d8-8e99-c57bcbe7934e)
## BẢNG LOPHP
![image](https://github.com/user-attachments/assets/f91f4eb5-f7d3-4824-a8fd-5c7115e74998)
## DKMH
![image](https://github.com/user-attachments/assets/16190914-3688-4cc9-8717-881ecfa8f022)
## BẢNG ĐIỂM 
![image](https://github.com/user-attachments/assets/17f4de55-ae10-4b5a-9987-ca4a40572c9d)
## CODE TRUY VẤN 
![image](https://github.com/user-attachments/assets/e09e8d28-5451-4d14-ad12-099da19704ca)






