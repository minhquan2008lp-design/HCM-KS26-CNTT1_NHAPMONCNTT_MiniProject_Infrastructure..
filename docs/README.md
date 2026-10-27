# Hệ thống quản lý hạ tầng GreenTech

## 1. Giới thiệu
GreenTech quản lý hạ tầng máy chủ và 100 trạm cảm biến IoT.

## 2. Mô hình IPO và DIKW
- Input: Log hệ thống và dữ liệu thiết bị.
- Process: Lọc lỗi, chuẩn hóa mã linh kiện, đối soát dữ liệu.
- Output: Báo cáo sự cố và danh mục phần cứng.
- Data: Dữ liệu thô từ cảm biến.
- Information: Dữ liệu đã được phân loại.
- Knowledge: Nhận biết xu hướng lỗi.
- Wisdom: Đưa ra quyết định bảo trì phù hợp.

## 3. Cấu trúc thư mục
- docs/: Tài liệu kỹ thuật.
- scripts/: Script tự động hóa.
- data/: Dữ liệu hệ thống.
- backup/: Báo cáo và bản sao lưu.

## 4. Hướng dẫn chạy script
Mở Terminal tại thư mục dự án và chạy:

```bat
.\scripts\auto_report.bat
```

## 5. Checklist kiểm tra thiết bị
- [ ] Kiểm tra CPU
- [ ] Kiểm tra RAM
- [ ] Kiểm tra SSD
- [ ] Kiểm tra kết nối IoT
- [ ] Kiểm tra log sự cố

## 6. Bảng thông số phần cứng

| Thiết bị | Thông số | Vai trò |
|---|---|---|
| CPU | 4 cores | Xử lý dữ liệu |
| RAM | 8 GB | Lưu dữ liệu tạm |
| SSD | 256 GB | Lưu hệ điều hành |
| IoT | Wi-Fi | Truyền dữ liệu |

## 7. Quy trình xử lý log
Script sử dụng Pipe và findstr để lọc các dòng chứa CRITICAL hoặc ERROR. Kết quả được nối vào báo cáo trong thư mục backup.

## 8. An toàn hệ thống
Không lưu mật khẩu thật trong GitHub. Kiểm tra đường dẫn và nội dung script trước khi chạy.
