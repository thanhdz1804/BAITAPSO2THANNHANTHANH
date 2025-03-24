# Bài tập 02 của sv: K225480106059 - Thân Nhân Thành - Môn Hệ quản trị csdl

## BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:

## DEADLINE: 23H59 NGÀY 25/03/2025

## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

## YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql

## HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)

## Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

---

## PASTE ẢNH CHỤP MÀN HÌNH
### Mô tả tạo database 
![image](https://github.com/user-attachments/assets/26eebda7-07a1-4adf-ab8f-319bddbda43f)
### Mô tả cách tạo bảng.
![image](https://github.com/user-attachments/assets/a511288c-8541-44f2-ab6f-f660dbfe5607)
### Mô tả tạo khóa chính
![image](https://github.com/user-attachments/assets/e2daf51b-e638-49a6-b592-b109155a6eca)
### Mô tả tạo bảng check.
![image](https://github.com/user-attachments/assets/d6527c36-ba87-415a-b86b-44b2f8375f11)
![image](https://github.com/user-attachments/assets/2ae5f29a-fbbf-4eeb-9d8d-37db25ce95af)
### Mô tả cách hiện code ra ngoài màn hình 
![image](https://github.com/user-attachments/assets/73701aad-5848-4461-bf08-3213773103c6)
![image](https://github.com/user-attachments/assets/8572d2d7-f4d2-46db-8e57-2777e35f7262)
## SinhVien(#masv,hoten,NgaySinh)
###tạo bảng khóa chính sinh viên.
![image](https://github.com/user-attachments/assets/abc3cd0f-cf7d-4504-b069-ae1675b3ca53)
###code
![image](https://github.com/user-attachments/assets/81214c33-4fd9-40ea-ac3b-da7369ca2d96)
### bảng check sinh viên
![image](https://github.com/user-attachments/assets/8572d2d7-f4d2-46db-8e57-2777e35f7262)
### Kết quả
![image](https://github.com/user-attachments/assets/6b3c9a43-b068-4567-9b45-9191f5653009)
## Lop(#maLop,tenLop)
###tạo bảng khóa chính lớp
![image](https://github.com/user-attachments/assets/7d458039-b4f2-457f-9b5b-9185733bde3e)
###code
![image](https://github.com/user-attachments/assets/12aa7670-6ee3-480a-aac0-3a8f890b55b8)
### bảng check
![image](https://github.com/user-attachments/assets/282d15b6-2619-439a-8c51-1a961d3b47b2)
### Kết quả
![image](https://github.com/user-attachments/assets/b1756e01-fd6f-4bf0-b6fd-7c8f78c9bb88)
## GVCN(#@maLop,#@magv,#HK)
### Bảng GVCN
![image](https://github.com/user-attachments/assets/08a543d8-2c62-4d7e-a56d-90bdc85ef978)
### Tạo khóa ngoại của bảng GVCN
![image](https://github.com/user-attachments/assets/4797b6a5-5765-4562-89e9-a6abfbcfed7d)
### Tạo bảng ngoại khóa GVCN
![image](https://github.com/user-attachments/assets/e9d3158a-1d82-41df-919e-e3bdb5fef97f)
![image](https://github.com/user-attachments/assets/bf4c5bec-cafe-46aa-b4f0-2a7dfc170079)
### code
![image](https://github.com/user-attachments/assets/0c19a2b1-cd85-416e-9763-b3f6ed60b9ba)
## Các phần còn lại làm tương tự như trên!!
Mô tả các tham số được sử dụng
1. Stored Procedure_ @hoTen NVARCHAR(100), @ngaySinh DATE:Nhận giá trị đầu vào để thêm dữ liệu vào bảng.
2. Trigger (INSERTED, DELETED)_ INSERTED, DELETED:Lấy dữ liệu trước/sau khi thao tác INSERT/UPDATE/DELETE.
3. Query động_@tenSV NVARCHAR(100): Dùng trong sp_executesql để tránh SQL Injection.
4. Table-Valued Function_@maLop INT:	Dùng trong hàm trả về danh sách sinh viên của một lớp.
![image](https://github.com/user-attachments/assets/c23ea553-9e83-4949-8be2-9135da5a2c35)
![image](https://github.com/user-attachments/assets/b0e51355-7e62-4b7b-96e3-80e402d8e28c)
## full code sql






