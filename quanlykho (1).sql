-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 16, 2024 lúc 07:39 AM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlykho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_kh` int NOT NULL,
  `id_sp` int NOT NULL,
  `quantity` int NOT NULL,
  `total` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kh` (`id_kh`),
  KEY `id_sp` (`id_sp`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `id_kh`, `id_sp`, `quantity`, `total`, `status`, `create_at`) VALUES
(1, 2, 13, 3, 15000, 1, '2023-12-27 00:00:00'),
(2, 3, 14, 5, 5000, 1, '2023-12-28 00:00:00'),
(3, 4, 13, 5, 25000, 1, '2023-12-28 00:00:00'),
(4, 5, 14, 5, 5000, 1, '2023-12-28 00:00:00'),
(5, 6, 13, 1, 5000, 1, '2023-12-28 00:00:00'),
(6, 7, 13, 1, 5000, 1, '2023-12-28 00:00:00'),
(7, 8, 4, 5, 10000, 1, '2023-12-29 01:08:48'),
(8, 9, 12, 3, 12000, 1, '2023-12-29 01:09:55'),
(9, 10, 14, 2, 8000, 1, '2023-12-29 01:10:28'),
(10, 11, 8, 3, 30000, 1, '2023-12-29 01:10:49'),
(11, 12, 11, 2, 7400, 1, '2023-12-29 01:11:06'),
(12, 13, 12, 3, 12000, 1, '2023-12-29 01:11:36'),
(13, 14, 8, 3, 30000, 1, '2023-12-29 01:11:53'),
(14, 15, 24, 3, 15000, 1, '2023-12-29 01:12:08'),
(15, 16, 3, 2, 3400, 1, '2024-01-16 13:39:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `name`, `phone`, `address`) VALUES
(1, 'cu', '0339266275', 'hn'),
(2, 'cu', '0339266275', 'hn'),
(3, 'cu', '0339266275', 'hn'),
(4, 'cu', '0339266275', 'hn'),
(5, 'cu', '0339266275', 'hn'),
(6, 'cu1', '0339266275', 'hn'),
(7, 'cu2', '0339266275', 'hn'),
(8, 'khiem', '0339266275', 'hn'),
(9, 'Đạt', '0339266275', 'hn'),
(10, 'Khiêm', '0339266275', 'hn'),
(11, 'Khiêm', '0339266275', 'hn'),
(12, 'giang', '0339266275', 'hn'),
(13, 'Đòng', '0339266275', 'hn'),
(14, 'Đạt', '0339266275', 'hn'),
(15, 'Khiêm', '0339266275', 'hn'),
(16, 'xeuu', '0339266275', 'hn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

DROP TABLE IF EXISTS `nhasanxuat`;
CREATE TABLE IF NOT EXISTS `nhasanxuat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`id`, `name`, `address`, `email`, `phone`, `status`) VALUES
(1, 'Apple', 'USA', 'apple@gmail.com', '110', 1),
(2, 'Samsung', 'KOREA', 'samsung@gmail.com', '111', 1),
(3, 'Xiaomi', 'CHINA', 'xiaomi@gmail.com', '112', 1),
(4, 'Oppo', 'TAIWAN', 'oppo@gmail.com', '113', 1),
(5, 'Nokia', 'FINLAND', 'nokia@gmail.com', '114', 1),
(6, 'TECNO', 'CHINA', 'TECNO@GMAIL.COM', '115', 1),
(7, 'Realme', 'CHINA', 'realme@gmail.com', '116', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `desc` varchar(254) NOT NULL,
  `photo` varchar(254) DEFAULT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `id_nsx` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `id_nsx` (`id_nsx`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `desc`, `photo`, `price`, `quantity`, `status`, `id_nsx`) VALUES
(1, 'iPhone 7', 'Loại bỏ jack cắm tai nghe truyền thống ,thay vào đó là cho ra mắt tai nghe dùng chung cổng Lightning.\r\n\r\n', '', 1000, 10, 1, 1),
(2, 'iPhone 8', 'Thay đổi mặt kính phía sau để hỗ trợ sạc không dây.', NULL, 1300, 40, 1, 1),
(3, 'iPhone X', 'Màn hình OLED tràn viền và trang bị hệ thống mở khóa bằng khuôn mặt Face ID.', NULL, 1700, 8, 1, 1),
(4, 'iPhone 11', 'Nâng cấp về mặt hiệu suất, thời lượng pin lớn và thiết kế cụm camera vuông hoàn toàn mới lạ. Bảng màu sắc cũng đa dạng ', NULL, 2000, 30, 1, 1),
(5, 'iPhone 12', 'Sản phẩm được trang bị bộ vi xử lý A14 Bionic với hiệu suất cao', NULL, 3000, 50, 1, 1),
(6, 'iPhone 13', 'Cải tiến đôi chút về kích thước của các ống kính chụp ảnh.', NULL, 5000, 55, 1, 1),
(7, 'iPhone 14', 'Không còn sử dụng màn hình tai thỏ mà thay đổi thành màn hình Dynamic Island', NULL, 7000, 65, 1, 1),
(8, 'iPhone 15', 'Chất lượng màn hình tiên tiến cùng nâng cấp vượt trội về mặt hiệu năng và thay đổi cổng sạc thành USB-C phổ biến', NULL, 10000, 57, 1, 1),
(9, 'Samsung Galaxy S10', 'Điện thoại Samsung Galaxy S Series đầu tiên được trang bị màn hình đục lỗ', NULL, 3000, 45, 1, 2),
(10, 'Samsung Galaxy S20', 'Điện thoại Samsung Galaxy S Series đầu tiên được trang bị camera tele 100x', NULL, 3500, 40, 1, 2),
(11, 'Samsung Galaxy S21', 'Điện thoại Samsung Galaxy S Series đầu tiên được trang bị thiết kế vuông vắn.', NULL, 3700, 35, 1, 2),
(12, 'Samsung Galaxy S22', 'Điện thoại Samsung Galaxy S Series đầu tiên được trang bị vi xử lý Snapdragon 8 Gen 1', NULL, 4000, 44, 1, 2),
(13, 'Xiaomi 12 ', 'Vi xử lí Snapdragon 8 Gen 1 cùng RAM 8 GB', NULL, 5000, 38, 1, 3),
(14, 'Samsung Galaxy Note 10', 'Điện thoại Samsung Galaxy Note Series đầu tiên được trang bị màn hình 6,3 inch và bút S Pen với thiết kế mới', NULL, 4000, 55, 1, 2),
(15, 'Samsung Galaxy Note 20', 'Điện thoại Samsung Galaxy Note Series đầu tiên được trang bị màn hình 6,7 inch và bút S Pen với khả năng Air Action', '', 5000, 15, 1, 2),
(16, 'Samsung Galaxy Note 20 Ultra', 'Điện thoại Samsung Galaxy Note Series đầu tiên được trang bị màn hình 6,8 inch và bút S Pen với khả năng Zoom Space', NULL, 5500, 39, 1, 2),
(17, 'Samsung Galaxy S22 Ultra', 'Điện thoại Samsung Galaxy Note Series đầu tiên được trang bị thiết kế vuông vắn và bút S Pen với nhiều tính năng mới', NULL, 7000, 44, 1, 2),
(18, 'Oppo F11', 'Điện thoại Oppo F Series đầu tiên được trang bị camera selfie ẩn dưới màn hình', NULL, 1000, 30, 1, 4),
(19, 'Oppo F21 Pro', 'Điện thoại Oppo F Series đầu tiên được trang bị bộ xử lý MediaTek Dimensity 900, với camera selfie 32MP', NULL, 1700, 25, 1, 4),
(20, 'Oppo A77s', 'Điện thoại Oppo A Series có màn hình tốt nhất, được trang bị màn hình AMOLED 6.56 inch và tần số quét 90Hz', NULL, 1900, 46, 1, 4),
(21, 'Oppo A98 5G', 'Điện thoại Oppo A Series có hiệu năng tốt nhất, được trang bị chip xử lý MediaTek Dimensity 810', NULL, 2100, 53, 1, 4),
(22, 'Oppo Reno 8 Pro+', 'Điện thoại Oppo Reno Series đầu tiên được trang bị chip xử lý Snapdragon 8 Gen 1 và camera chính 50MP', NULL, 2500, 35, 1, 4),
(23, 'Oppo Find N2', 'Điện thoại màn hình gập Oppo Find Series đầu tiên, được trang bị chip xử lý Snapdragon 8+ Gen 1 và camera chính 50MP IMX766', NULL, 300, 20, 1, 4),
(24, 'Oppo Find N2 Flip', 'Điện thoại màn hình gập vỏ sò Oppo Find Series đầu tiên, được trang bị chip xử lý MediaTek Dimensity 9000+ và camera chính 50MP IMX890', NULL, 5000, 37, 1, 4),
(25, 'Xiaomi ', 'vi xử lý Qualcomm Snapdragon 888', NULL, 4000, 30, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `pw` varchar(50) NOT NULL,
  `level` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `phone` varchar(50) NOT NULL,
  `birth` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `user_name`, `pw`, `level`, `status`, `phone`, `birth`) VALUES
(1, 'Trường Giang', 'giang', '123', 1, 1, '0866777799', '2003-09-22'),
(2, 'giang2', 'giangcutoe', '123', 3, 1, '0866777799', '2003-09-22'),
(3, 'giang3', 'giang3', '123', 3, 1, '0866777799', '2003-09-22'),
(4, 'Quốc Đồng', 'cu', '123', 2, 1, '0339266275', '2003-09-22'),
(5, 'Tiến Đạt', 'Đạt', '123', 3, 1, '0339266275', '2003-09-02'),
(6, 'Hữu Khiêm', 'Khiêm', '123', 3, 1, '0339266275', '2003-09-02'),
(7, 'dong2', 'cu2', '123', 3, 1, '0339266275', '2003-09-22'),
(8, 'khiemtrinh2', 'khiem2', '123', 3, 1, '0339266275', '2003-09-02'),
(9, 'tiendat2', 'dat2', '123', 3, 1, '0339266275', '2003-09-02'),
(10, 'dong3', 'cu3', '123', 1, 1, '0339266275', '2003-09-22');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`id_kh`) REFERENCES `khachhang` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_nsx`) REFERENCES `nhasanxuat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
