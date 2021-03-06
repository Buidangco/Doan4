-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2020 lúc 07:17 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phpdoan_4`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `codeloai`
--

CREATE TABLE `codeloai` (
  `idLoai` bigint(20) UNSIGNED NOT NULL,
  `nameLoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `codeloai`
--

INSERT INTO `codeloai` (`idLoai`, `nameLoai`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Iphone', 'codeIphone', NULL, NULL),
(2, 'SAMSUNG', 'codeSamsung', NULL, NULL),
(3, 'OPPO', 'codeOPPO', NULL, NULL),
(4, 'XIAOMI', 'codexiaomi', NULL, NULL),
(5, 'VIVO', 'codevivo', NULL, NULL),
(6, 'NOKIA', 'codenokia', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthd`
--

CREATE TABLE `cthd` (
  `Gia` int(15) DEFAULT NULL,
  `id` int(15) DEFAULT NULL,
  `MaCTHD` int(15) NOT NULL,
  `Mancc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soluong` int(15) DEFAULT NULL,
  `TenNCC` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tensanpham` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cthd`
--

INSERT INTO `cthd` (`Gia`, `id`, `MaCTHD`, `Mancc`, `soluong`, `TenNCC`, `Tensanpham`) VALUES
(21990000, 1, 1, 'iphone', 76, 'C?ng ty iphone', 'Điện thoại iPhone 11 64GB'),
(40990000, 2, 66, 'iphone', 50, 'Công ty nokia', 'Điện thoại iPhone 11 Pro Max 512GB'),
(37990000, 3, 68, 'iphone', 10, 'Công ty nokia', 'Điện thoại iPhone 11 Pro Max 256GB'),
(34990000, 4, 69, 'iphone', 10, 'Công ty nokia', 'Điện thoại iPhone 11 Pro 256GB'),
(33990000, 5, 79, 'iphone', 40, 'Công ty nokia', 'Điện thoại iPhone Xs Max 256GB'),
(30990000, 6, 80, 'iphone', 40, 'Công ty nokia', 'Điện thoại iPhone 11 Pro 64GB'),
(27990000, 7, 81, 'iphone', 10, 'Công ty iphone', 'Điện thoại iPhone Xs Max 64GB'),
(24990000, 8, 82, 'iphone', 10, 'Công ty iphone', 'Điện thoại iPhone 11 256GB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthoadonban`
--

CREATE TABLE `cthoadonban` (
  `Gia` int(15) DEFAULT NULL,
  `mahoadon` varchar(255) NOT NULL,
  `masanpham` int(15) DEFAULT NULL,
  `soluong` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cthoadonban`
--

INSERT INTO `cthoadonban` (`Gia`, `mahoadon`, `masanpham`, `soluong`) VALUES
(40990000, 'HD493', 2, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonban`
--

CREATE TABLE `hoadonban` (
  `gia` int(15) DEFAULT NULL,
  `mahoadon` varchar(255) NOT NULL,
  `makh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngayban` date DEFAULT NULL,
  `xacnhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hoadonban`
--

INSERT INTO `hoadonban` (`gia`, `mahoadon`, `makh`, `ngayban`, `xacnhan`) VALUES
(204950000, 'HD493', 'kh274', '2020-05-04', 'Đã duyệt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `diachi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `makh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sdt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenKh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`diachi`, `email`, `makh`, `phai`, `Sdt`, `tenKh`) VALUES
('Đoàn đào', 'kiemtienonline19c@gmail.com', 'kh167', NULL, '0973030450', 'Buidangco'),
('Đoàn đào', 'kiemtienonline19c@gmail.com', 'kh274', NULL, '0973030450', 'Buidangco'),
('Đoàn đào', 'kiemtienonline19c@gmail.com', 'kh37', NULL, '0973030450', 'Buidangco'),
('Đoàn đào', 'kiemtienonline19c@gmail.com', 'kh741', NULL, '0973030450', 'Buidangco'),
('Đoàn đào', 'kiemtienonline19c@gmail.com', 'kh76', NULL, '0973030450', 'Buidangco');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` int(15) NOT NULL,
  `Mancc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sdt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `Mancc`, `Sdt`, `Ten`) VALUES
(1, 'iphone', '0973030450', 'Công ty iphone'),
(2, 'samsung', '0973030450', 'Công ty Samsung'),
(3, 'oppo', '0973030450', 'Công ty oppo'),
(4, 'vivo', '0973034050', 'CÔng ty Vivo'),
(5, 'xiaomi', '097303040', 'Công ty xiaomi'),
(6, 'nokia', '097303040', 'Công ty nokia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(15) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(15) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale` int(15) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `soluong` int(15) DEFAULT NULL,
  `Mancc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masery` int(15) DEFAULT NULL,
  `mausac` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngayketthuc` datetime DEFAULT NULL,
  `thongso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`code`, `id`, `name`, `price`, `image`, `sale`, `comment`, `introduce`, `time`, `soluong`, `Mancc`, `masery`, `mausac`, `ngayketthuc`, `thongso`) VALUES
('codeIphone', 1, 'Điện thoại iPhone 11 64GB', 21990000, 'iphone-11-pro-max-256gb-black-400x460.png', 10, NULL, 'Sau bao nhiêu chờ đợi cũng như đồn đoán thì cuối cùng Apple đã chính thức giới thiệu bộ 3 siêu phẩm iPhone 11 mạnh mẽ nhất của mình vào tháng 9/2019. Có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như chiếc iPhone Xr năm ngoái, đó chính là phiên bản i', '2020-04-16 00:00:00', 13, 'iphone', 1, '', '2020-05-05 00:00:00', ''),
('codeIphone', 2, 'Điện thoại iPhone 11 Pro Max 512GB\r\n', 40990000, 'iphone-11-pro-max-512gb-gold-400x460.png', 10, NULL, 'Để tìm kiếm một chiếc smartphone có hiệu năng mạnh mẽ và có thể sử dụng mượt mà trong 2-3 năm tới thì không có chiếc máy nào xứng đang hơn chiếc iPhone 11 Pro Max 512GB mới ra mắt trong năm 2019 của Apple.', '2020-04-16 00:00:00', 13, 'iphone', 2, '', '2020-05-05 00:00:00', ''),
('codeIphone', 3, 'Điện thoại iPhone 11 Pro Max 256GB\r\n', 37990000, 'iphone-11-pro-max-256gb-black-400x460.png', 10, NULL, 'iPhone 11 Pro Max 256GB là chiếc iPhone cao cấp nhất trong bộ 3 iPhone Apple giới thiệu trong năm 2019 và quả thực chiếc smartphone này mang trong mình nhiều trang bị xứng đáng với tên gọi \"Pro\".\r\n', '2020-04-16 00:00:00', 13, 'iphone', 3, '', '2020-05-05 00:00:00', ''),
('codeIphone', 4, 'Điện thoại iPhone 11 Pro 256GB\r\n', 34990000, 'iphone-11-pro-256gb-black-400x460.png', 10, NULL, 'iPhone 11 Pro 256GB có lẽ sẽ là chiếc iPhone được nhiều người dùng lựa chọn khi nó sở hữu mức giá tốt hơn chiếc iPhone 11 Pro Max nhưng vẫn sở hữu tất cả những ưu điểm trên người anh em của mình.giới thiệu trong năm 2019 và quả thực chiếc smartphone này m', '2020-04-16 00:00:00', 13, 'iphone', 4, '', '2020-05-05 00:00:00', ''),
('codeIphone', 5, 'Điện thoại iPhone Xs Max 256GB', 33990000, 'iphone-xs-max-256gb-white-400x460.png', 10, NULL, 'Sau 1 năm mong chờ, chiếc smartphone cao cấp nhất của Apple đã chính thức ra mắt mang tên iPhone Xs Max 256 GB. Máy các trang bị các tính năng cao cấp nhất từ chip A12 Bionic, dàn loa đa chiều cho tới camera kép tích hợp trí tuệ nhân tạo.', '2020-04-16 00:00:00', 13, 'iphone', 5, '', '2020-05-05 00:00:00', ''),
('codeIphone', 6, 'Điện thoại iPhone 11 Pro 64GB', 30990000, 'iphone-11-pro-black-400x460.png', 10, NULL, 'Nếu như bây giờ để lựa chọn một thiết bị có thể sử dụng ổn định và được cập nhật trong khoảng 3 năm nữa thì không có sự lựa chọn nào xuất sắc hơn chiếc iPhone 11 Pro 64GB, siêu phẩm mới được giới thiệu cách đây không lâu tới từ Apple.', '2020-04-16 00:00:00', 13, 'iphone', 6, '', '2020-05-05 00:00:00', ''),
('codeIphone', 7, 'Điện thoại iPhone Xs Max 64GB', 27990000, 'iphone-xs-max-256gb-white-400x460.png', 10, NULL, 'Hoàn toàn xứng đáng với những gì được mong chờ, phiên bản cao cấp nhất iPhone Xs Max 64 GB của Apple năm nay nổi bật với chip A12 Bionic mạnh mẽ, màn hình rộng đến 6.5 inch, cùng camera kép trí tuệ nhân tạo và Face ID được nâng cấp.', '2020-04-16 00:00:00', 13, 'iphone', 7, '', '2020-05-05 00:00:00', ''),
('codeIphone', 8, 'Điện thoại iPhone 11 256GB', 24990000, 'iphone-11-128gb-green-400x460.png', 10, NULL, 'iPhone 11 256GB là chiếc máy có mức giá \"dễ chịu\" trong bộ 3 iPhone vừa được Apple giới thiệu và nếu bạn muốn được trải nghiệm những nâng cấp về camera mới hay hiệu năng hàng đầu mà lại không muốn bỏ ra quá nhiều tiền thì đây thực sự là lựa chọn hàng đầu ', '2020-04-16 00:00:00', 13, 'iphone', 8, '', '2020-05-05 00:00:00', ''),
('codeIphone', 9, 'Điện thoại iPhone Xs 256GB', 24990000, 'iphone-xs-256gb-white-400x460.png', 10, NULL, 'Chiếc điện thoại iPhone mới đã chính thức được ra mắt vào đêm 12/9 theo giờ Việt Nam, trong đó có phiên bản iPhone Xs 256GB với bộ nhớ khủng, cấu hình mạnh mẽ với chip Apple A12 và những tính năng đẳng cấp khác', '2020-04-16 00:00:00', 13, 'iphone', 9, '', '2020-05-05 00:00:00', ''),
('codeIphone', 10, 'Điện thoại iPhone 11 128GB', 23990000, 'iphone-11-256gb-white-400x460.png', 10, NULL, 'Được xem là phiên bản iPhone \"giá rẻ\" trong bộ 3 iPhone mới ra mắt nhưng iPhone 11 128GB vẫn sở hữu cho mình rất nhiều ưu điểm mà hiếm có một chiếc smartphone nào khác sở hữu.', '2020-04-16 00:00:00', 13, 'iphone', 10, '', '2020-05-05 00:00:00', ''),
('codeIphone', 11, 'Điện thoại iPhone Xs 64GB', 20990000, 'iphone-xs-gold-400x460.png', 10, NULL, 'Đến hẹn lại lên, năm nay Apple giới thiệu tới người dùng thế hệ tiếp theo với 3 phiên bản, trong đó có cái tên iPhone Xs 64 GB với những nâng cấp mạnh mẽ về phần cứng đến hiệu năng, màn hình cùng hàng loạt các trang bị cao cấp khác. ', '2020-04-16 00:00:00', 13, 'iphone', 11, '', '2020-05-05 00:00:00', ''),
('codeIphone', 12, 'Điện thoại iPhone 8 Plus 64GB', 15190000, 'iphone-8-plus-1-400x460.png', 10, NULL, 'Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ iPhone 8 Plus thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.', '2020-04-16 00:00:00', 13, 'iphone', 12, '', '2020-05-05 00:00:00', ''),
('codeIphone', 13, 'Điện thoại iPhone 7 Plus 32GB', 11490000, 'iphone-7-plus-gold-400x460-400x460.png', 10, NULL, 'Mặc dù giữ nguyên vẻ bề ngoài so với dòng điện thoại iPhone đời trước, bù lại iPhone 7 Plus 32GB lại được trang bị nhiều nâng cấp đáng giá như camera kép đầu tiên cũng như cấu hình mạnh mẽ.', '2020-04-16 00:00:00', 13, 'iphone', 13, '', '2020-05-05 00:00:00', ''),
('codeIphone', 14, 'Điện thoại iPhone 7 32GB', 9990000, 'iphone-7-gold-400x460.png', 10, NULL, 'iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh.', '2020-04-16 00:00:00', 13, 'iphone', 14, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 15, 'Điện thoại Samsung Galaxy A71', 10490000, 'samsung-galaxy-a71-blue-400x460-400x460-1-400x460.png', 10, NULL, 'Sau A51, Samsung tiếp tục ra mắt Galaxy A71 là đại diện kế tiếp thuộc thế hệ smartphone Galaxy A 2020. Máy được cải tiến với camera macro siêu cận đột phá, camera chính lên đến 64 MP cùng thiết kế thời thượng và cao cấp.', '2020-04-16 00:00:00', 13, 'samsung', 15, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 16, 'Điện thoại Samsung Galaxy S10 Lite', 13990000, 'samsung-galaxy-s10-lite-blue-chi-tiet-400x460.png', 10, NULL, 'Samsung Galaxy S10 Lite là một phiên bản khác của dòng Galaxy S10 đã ra mắt trước đó nhưng mang trong mình khá nhiều khác biệt về ngoại hình cũng như bên trong.', '2020-04-16 00:00:00', 13, 'samsung', 16, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 17, 'Điện thoại Samsung Galaxy Fold', 50000000, 'samsung-galaxy-fold-black-400x460.png', 10, NULL, 'Sau rất nhiều chờ đợi thì Samsung Galaxy Fold - chiếc smartphone màn hình gập đầu tiên của Samsung cũng đã chính thức trình làng với thiết kế mới lạ.', '2020-04-16 00:00:00', 13, 'samsung', 17, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 18, 'Điện thoại Samsung Galaxy Z Flip', 36000000, 'samsung-galaxy-z-flip-chitiet-2-788x544.png', 10, NULL, 'Cuối cùng sau bao nhiêu thời gian chờ đợi, chiếc điện thoại Samsung Galaxy Z Flip đã được Samsung ra mắt tại sự kiện Unpacked 2020. Siêu phẩm với thiết kế màn hình gập vỏ sò độc đáo, hiệu năng tuyệt đỉnh cùng nhiều công nghệ thời thượng, dẫn dầu 2020.', '2020-04-16 00:00:00', 13, 'samsung', 18, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 19, 'Điện thoại Samsung Galaxy S20+', 21990000, 'samsung-galaxy-s20-plus-400x460-fix-400x460.png', 10, NULL, 'Chiếc điện thoại Samsung Galaxy S20 Plus - Siêu phẩm với thiết màn hình tràn viền, hiệu năng đỉnh cao kết hợp cùng nhiều đột phá về công nghệ dẫn đầu thế giới smartphone.', '2020-04-16 00:00:00', 13, 'samsung', 19, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 20, 'Điện thoại Samsung Galaxy Note 10', 22990000, 'samsung-galaxy-note-10-silver-400x460.png', 10, NULL, 'Nếu như từ trước tới nay dòng Galaxy Note của Samsung thường ít được các bạn nữ sử dụng bởi kích thước màn hình khá lớn khiến việc cầm nắm trở nên khó khăn thì Samsung Galaxy Note 10 sẽ là chiếc smartphone nhỏ gọn, phù hợp với cả những bạn có bàn tay nhỏ.', '2020-04-16 00:00:00', 13, 'samsung', 20, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 21, 'Điện thoại Samsung Galaxy S20\r\n', 19490000, 'samsung-galaxy-s20-400x460-hong-400x460.png', 10, NULL, 'Samsung Galaxy S20 là chiếc điện thoại với thiết kế màn hình tràn viền không khuyết điểm, camera sau ấn tượng, hiệu năng khủng cùng nhiều những đột phá công nghệ nổi bật, dẫn đầu thế giới.', '2020-04-16 00:00:00', 13, 'samsung', 21, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 22, 'Điện thoại Samsung Galaxy S10+\r\n', 19990000, 'samsung-galaxy-s10-plus-white-400x460.png', 10, NULL, 'Samsung Galaxy S10+ 128GB là một trong những chiếc smartphone được trông chờ nhiều nhất trong năm 2019 và không phụ sự kỳ vọng của mọi người thì chiếc Galaxy S thứ 10 của Samsung thực sự gây ấn tượng mạnh cho người dùng.', '2020-04-16 00:00:00', 13, 'samsung', 22, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 23, 'Điện thoại Samsung Galaxy A80\r\n', 14990000, 'samsung-galaxy-a80-gold-400x460.png', 10, NULL, 'Samsung Galaxy A80 là chiếc smartphone mang trong mình rất nhiều đột phá của Samsung và hứa hẹn sẽ là \"ngọn cờ đầu\" cho những chiếc smartphone sở hữu một màn hình tràn viền thật sự.', '2020-04-16 00:00:00', 13, 'samsung', 23, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 24, 'Điện thoại Samsung Galaxy Note 10 Lite\r\n', 13990000, 'samsung-galaxy-note-10-lite-chi-tiet-1-400x460.png', 10, NULL, 'Sau bao đồn đoán và trông ngóng thì cuối cùng \"người em út\" trong series Note 10 cũng đã chính thức trình làng với tên gọi Samsung Galaxy Note 10 Lite với những thay đổi nhất định về ngoại hình.', '2020-04-16 00:00:00', 13, 'samsung', 24, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 25, 'Điện thoại Samsung Galaxy A70\r\n', 9290000, 'samsung-galaxy-a70-white-400x460.png', 10, NULL, 'Samsung Galaxy A70 là một phiên bản phóng to của chiếc Samsung Galaxy A50 đã ra mắt trước đó với nhiều cải tiến tới từ bên trong.', '2020-04-16 00:00:00', 13, 'samsung', 25, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 26, 'Điện thoại Samsung Galaxy A51', 7990000, 'samsung-galaxy-a51-white-1-400x460.png', 10, NULL, 'Samsung đã ra mắt điện thoại Samsung Galaxy A51 mở đầu cho thế hệ Galaxy A 2020 hướng tới giới trẻ hiện đại, thời thượng. Máy sở hữu cụm 4 camera, bao gồm camera macro chụp cận cảnh lần đầu xuất hiện trên smartphone Galaxy, màn hình tràn viền vô cực cùng ', '2020-04-16 00:00:00', 13, 'samsung', 26, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 27, 'Điện thoại Samsung Galaxy A50 128GB\r\n', 7290000, 'samsung-galaxy-a50-128gb-blue-400x460.png', 10, NULL, 'Samsung Galaxy A50 128GB là mẫu smartphone dòng A mới trong năm 2019 và đặc biệt máy sở hữu công nghệ cảm biến vân tay trong màn hình lần đầu tiên xuất hiện trên một chiếc máy tầm trung tới từ Samsung.', '2020-04-16 00:00:00', 13, 'samsung', 27, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 28, 'Điện thoại Samsung Galaxy A50s\r\n', 6990000, 'samsung-galaxy-a50s-green-400x460.png', 10, NULL, 'Nằm trong sứ mệnh nâng cao khả năng cạnh tranh với các smartphone đến từ nhiều nhà sản xuất Trung Quốc, mới đây Samsung tiếp tục giới thiệu phiên bản Samsung Galaxy A50s với nhiều tính năng mà trước đây chỉ xuất hiện trên dòng cao cấp.', '2020-04-16 00:00:00', 13, 'samsung', 28, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 29, 'Điện thoại Samsung Galaxy A50 64GB', 6490000, 'samsung-galaxy-a50-blue-400x460.png', 10, NULL, 'Samsung Galaxy A50 64GB là chiếc smartphone tầm trung mới của Samsung trong năm 2019 với nhiều tính năng hấp dẫn, đặc biệt là có cả cảm biến vân tay dưới màn hình.', '2020-04-16 00:00:00', 13, 'samsung', 29, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 30, 'Điện thoại Samsung Galaxy A50 64GB', 5590000, 'samsung-galaxy-a50-blue-400x460.png', 10, NULL, 'Samsung Galaxy A30s, chiếc smartphone mới ra mắt sở hữu nhiều ưu điểm nổi bật trong phân khúc, nổi bật nhất phải kể đến là dung lượng pin lên tới 4000 mAh,bộ 3 camera cùng vi xử lý đủ mạnh, ổn định.', '2020-04-16 00:00:00', 13, 'samsung', 30, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 31, 'Điện thoại Samsung Galaxy A20s 64GB', 5390000, 'samsung-galaxy-a20s-black-400x460.png', 10, NULL, 'Samsung Galaxy A20s 64GB là phiên bản cải tiến của chiếc Samsung Galaxy A20 64GB  đã ra mắt trước đó với những nâng cấp về mặt camera và kích thước màn hình.', '2020-04-16 00:00:00', 13, 'samsung', 31, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 32, 'Điện thoại Samsung Galaxy A30 3GB/32GB', 4590000, 'samsung-galaxy-a30-32gb-400x460.png', 10, NULL, 'Samsung Galaxy A30 3GB/32GB là một trong 2 chiếc smartphone thuộc dòng Galaxy A đầu tiên được Samsung giới thiệu trong năm 2019, máy mang nhiều tính năng cao cấp nhưng mức giá rất phải chăng.', '2020-04-16 00:00:00', 13, 'samsung', 32, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 33, 'Điện thoại Samsung Galaxy A20s 32GB', 4390000, 'samsung-galaxy-a20s-32gb-red-400x460.png', 10, NULL, 'Samsung Galaxy A20s 32GB là một chiếc máy tầm trung tới từ thương hiệu Samsung, máy sở hữu những trang bị khá tốt để bạn có thể sử dụng mượt mà và ổn định hằng ngày.', '2020-04-16 00:00:00', 13, 'samsung', 33, '', '2020-05-05 00:00:00', ''),
('codeSamsung', 34, 'Điện thoại Samsung Galaxy A10s', 3690000, 'samsung-galaxy-a10s-400x460.png', 10, NULL, 'Samsung Galaxy A10s là bản nâng cấp của chiếc Galaxy A10 đã ra mắt trước đó với camera kép, dung lượng pin lớn hơn và đã được trang bị thêm cảm biến vân tay.', '2020-04-16 00:00:00', 13, 'samsung', 34, '', '2020-05-05 00:00:00', ''),
('codeOPPO', 35, 'Điện thoại OPPO Reno2 F', 7990000, 'oppo-reno2-f-white-400x460-400x460.png', 10, NULL, 'OPPO Reno2 F là một trong 3 chiếc smartphone thuộc dòng OPPO Reno2 vừa được OPPO giới thiệu với thiết kế thời trang cùng nhiều nâng cấp mạnh mẽ về camera.', '2020-04-16 00:00:00', 13, 'oppo', 35, '', '2020-05-05 00:00:00', ''),
('codeOPPO', 36, 'Điện thoại OPPO A91', 6990000, 'oppo-a91-trang-400x460-1-400x460.png', 10, NULL, 'OPPO A91 là một mẫu smartphone tầm trung mới ra mắt vào cuối năm 2019 của OPPO với nhiều tính năng thú vị, cấu hình ổn cùng giá bán phải chăng.', '2020-04-16 00:00:00', 13, 'oppo', 36, '', '2020-05-05 00:00:00', ''),
('codeOPPO', 37, 'Điện thoại OPPO Find X2\r\n', 23990000, 'oppo-find-x2-xanh-400x460-1-400x460.png', 10, NULL, 'Tiếp nối thành công vang dội của thế hệ Find X, OPPO chính thức ra mắt Find X2 với những đường nét thanh lịch từ thiết kế phần cứng cho đến trải nghiệm phần mềm, hứa hẹn một vẻ đẹp hoàn hảo, một sức mạnh xứng tầm.', '2020-04-16 00:00:00', 13, 'oppo', 37, '', '2020-05-05 00:00:00', ''),
('codeOPPO', 38, 'Điện thoại OPPO Reno2', 12490000, 'oppo-reno-2-pink-400x460.png', 10, NULL, 'Sau sự thành công của chiếc OPPO Reno với thiết kế mới lạ, camera chất lượng thì mới đây OPPO tiếp tục giới thiệu phiên bản nâng cấp của chiếc smartphone này là chiếc OPPO Reno2.', '2020-04-16 00:00:00', 13, 'oppo', 38, '', '2020-05-05 00:00:00', ''),
('codeOPPO', 39, 'Điện thoại OPPO F11 Pro 128GB', 5990000, 'oppo-f11-pro-128gb-400x460.png', 10, NULL, 'Lâu nay, những chiếc điện thoại của OPPO thường được đánh giá cao ở camera selfie và với OPPO F11 Pro 128GB thì ngoài thế mạnh về camera trước với hệ thống trượt, OPPO làm người ta phải ấn tượng thêm cả về camera sau', '2020-04-16 00:00:00', 13, 'oppo', 39, '', '2020-05-05 00:00:00', ''),
('codeOPPO', 40, 'Điện thoại OPPO A9 (2020)', 5990000, 'oppo-a9-400x460-1-400x460.png', 10, NULL, 'Kế thừa phiên bản OPPO A7 đã từng gây hot trước đó, OPPO A9 (2020) có nhiều sự cải tiến hơn về màn hình, camera và hiệu năng trải nghiệm.', '2020-04-16 00:00:00', 13, 'oppo', 40, '', '2020-05-05 00:00:00', ''),
('codeOPPO', 41, 'Điện thoại OPPO A5 (2020) 128GB', 4790000, 'oppo-a5-2020-128gb-trang-400x460-400x460.png', 10, NULL, 'OPPO A5 (2020) 128GB là chiếc smartphone mới ra mắt của thương hiệu OPPO nhận nhiệm vụ đánh chiếm phân khúc giá rẻ/tầm trung với rất nhiều điểm nhấn đáng giá.', '2020-04-16 00:00:00', 13, 'oppo', 41, '', '2020-05-05 00:00:00', ''),
('codeOPPO', 42, 'Điện thoại OPPO A31 (6GB/128GB)\r\n', 5290000, 'oppo-a31-4gb-128gb-trang-400x460-400x460.png', 10, NULL, 'OPPO A31 2020 (6GB/128GB) - Smartphone gây ấn tượng với bộ 3 camera sau trứ danh OPPO, hiệu năng tốt kết hợp nhiều nâng cấp đáng kể về thiết kế trên giá thành phải chăng phù hợp với đại đa số người dùng.', '2020-04-16 00:00:00', 13, 'oppo', 42, '', '2020-05-05 00:00:00', ''),
('codeOPPO', 43, 'Điện thoại OPPO A31 (4GB/128GB)', 4990000, 'oppo-a31-2020-128gb-den-400x460-2-400x460.png', 10, NULL, 'Chiếc điện thoại OPPO A31 2020 4GB/128 GB nổi bật với thiết kế màn hình giọt nước tràn viền, bộ ba camera ấn tượng đi kèm hiệu năng tốt với mức giá bán cực kỳ phải chăng. ', '2020-04-16 00:00:00', 13, 'oppo', 43, '', '2020-05-05 00:00:00', ''),
('codeOPPO', 44, 'Điện thoại OPPO A5 (2020) 64GB', 3990000, 'oppo-a5-2020-128gb-trang-400x460-400x460.png', 10, NULL, 'OPPO A5 (2020) 64GB là mẫu smartphone tầm trung với giá thành phải chăng nhưng được trang bị nhiều công nghệ hấp dẫn hứa hẹn sẽ \"lấy được lòng\" các bạn trẻ năng động, thời trang.', '2020-04-16 00:00:00', 13, 'oppo', 44, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 45, 'Điện thoại Xiaomi Redmi Note 9S', 5990000, 'xiaomi-redmi-note-9s-400x460-400x460.png', 10, NULL, 'Redmi Note 9s vừa được hãng Xiaomi công bố vào ngày 12/3. Model này còn có tên gọi khác là Redmi Note 9 Pro đã ra mắt gần đây tại Ấn Độ. Bộ sưu tập Redmi Note trứ danh của hãng nay lại có thêm sự lựa chọn mới với nhiều nâng cấp ấn tượng so với thế hệ trướ', '2020-04-16 00:00:00', 13, 'xiaomi', 45, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 46, 'Điện thoại Xiaomi Mi Note 10 Pro', 13490000, 'xiaomi-mi-note-10-pro-black-400x460.png', 10, NULL, 'Siêu phẩm tầm trung Xiaomi Mi Note 10 Pro, chiếc smartphone đầu tiên sở hữu ống kính độ phân giải 108 MP cùng hệ thống 5 camera độc đáo, công nghệ sạc siêu nhanh 30W đi kèm nhiều tính năng nổi trội khác.', '2020-04-16 00:00:00', 13, 'xiaomi', 46, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 47, 'Điện thoại Xiaomi Mi 9 SE', 7490000, 'xiaomi-mi-9-se-400x460.png', 10, NULL, 'Vẫn như thường lệ thì bên cạnh chiếc flagship Xiaomi Mi 9 cao cấp của mình thì Xiaomi cũng giới thiệu thêm phiên bản rút gọn là chiếc Xiaomi Mi 9 SE. Máy vẫn sở hữu cho mình nhiều trang bị cao cấp tương tự đàn anh.', '2020-04-16 00:00:00', 13, 'xiaomi', 47, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 48, 'Điện thoại Xiaomi Redmi Note 8 Pro (6GB/128GB)', 5990000, 'xiaomi-redmi-note-8-pro-6gb-128gb-white-400x460.png', 10, NULL, 'Là phiên bản nâng cấp của chiếc Xiaomi Redmi Note 7 Pro đã \"làm mưa làm gió\" trên thị trường trước đó, chiếc Xiaomi Redmi Note 8 Pro (6GB/128GB) sẽ là sự lựa chọn hàng đầu dành cho người dùng quan tâm nhiều về hiệu năng và camera của một chiếc máy tầm tru', '2020-04-16 00:00:00', 13, 'xiaomi', 48, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 49, 'Điện thoại Xiaomi Redmi Note 8 Pro (6GB/64GB)', 5990000, 'xiaomi-redmi-note-8-pro-white-1-400x460.png', 10, NULL, 'Xiaomi Redmi Note 8 Pro là chiếc smartphone hứa hẹn sẽ gây bão trong thời gian tới, khi có vẻ ngoài ấn tượng và được cải tiến mạnh mẽ về cấu hình bên trong.', '2020-04-16 00:00:00', 13, 'xiaomi', 49, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 50, 'Điện thoại Xiaomi Redmi Note 8 (4GB/128GB)', 5490000, 'xiaomi-redmi-note-8-white-400x460.png', 10, NULL, 'Vào đầu tháng 10/2019 Xiaomi đã ra mắt một smartphone tầm trung mới nhất của họ mang tên Xiaomi Redmi Note 8 4GB/128GB. Chiếc điện thoại gây ấn tượng với thiết kế màn hình giọt nước thời trang, bộ 4 camera chất lượng cao, vi xử lý hiệu năng tốt đi kèm giá', '2020-04-16 00:00:00', 13, 'xiaomi', 50, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 51, 'Điện thoại Xiaomi Redmi Note 8 (4GB/64GB)', 4390000, 'xiaomi-redmi-note-8-128gb-black-400x460.png', 10, NULL, 'Xiaomi Redmi Note 8 4GB/64GB là chiếc smartphone tầm trung mới nhất của Xiaomi, chiếc máy này gây ấn tượng với cấu hình phần cứng mạnh mẽ, hệ thống 4 camera sau chất lượng và đi kèm giá bán cực kỳ hấp dẫn.', '2020-04-16 00:00:00', 13, 'xiaomi', 51, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 52, 'Điện thoại Xiaomi Redmi Note 7 (4GB/64GB)', 3990000, 'xiaomi-redmi-note-7-400x460.png', 10, NULL, 'Xiaomi Redmi Note 7 4GB/64GB là chiếc smartphone giá rẻ mới được giới thiệu vào đầu năm 2019 với nhiều trang bị đáng giá như thiết kế notch giọt nước hay camera lên tới 48 MP.', '2020-04-16 00:00:00', 13, 'xiaomi', 52, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 53, 'Điện thoại Xiaomi Mi A3', 3790000, 'xiaomi-mi-a3-white-400x460.png', 10, NULL, 'Xiaomi đã và đang khá thành công với các sản phẩm thuộc dòng Mi A của mình và mới đây hãng đã tiếp tục cho ra mắt phiên bản nâng cấp là chiếc Xiaomi Mi A3 (Mi CC9e) với cải tiến mạnh mẽ về camera và hiệu năng bên trong.', '2020-04-16 00:00:00', 13, 'xiaomi', 53, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 54, 'Điện thoại Xiaomi Redmi Note 8 (3GB/32GB)', 3790000, 'xiaomi-redmi-note-8-pro-6gb-128gb-white-400x460.png', 10, NULL, 'Xiaomi Redmi Note 8 3GB/32GB có lẽ là chiếc điện thoại đáng để người dùng “gom lúa” mua ngay trong những tháng cuối năm 2019 vì nó sở hữu nhiều ưu điểm nổi bật: camera chính 48 MP, pin \"trâu\" kèm sạc nhanh, cấu hình \"khủng\" trong tầm giá.', '2020-04-16 00:00:00', 13, 'xiaomi', 54, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 55, 'Điện thoại Xiaomi Redmi 7 (3GB/32GB)', 2990000, 'xiaomi-redmi-7-black-1-400x460.png', 10, NULL, 'Nếu bạn đang tìm kiếm một smartphone có mức giá rẻ nhưng cũng phải đáp ứng tốt nhu cầu sử dụng hằng ngày và phải có một thiết kế thời trang thì không có sự lựa chọn nào hợp lý hơn Xiaomi Redmi 7 3GB/32GB.', '2020-04-16 00:00:00', 13, 'xiaomi', 55, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 56, 'Điện thoại Xiaomi Redmi 8 (4GB/64GB)', 3190000, 'xiaomi-redmi-note-8-pro-6gb-128gb-white-400x460.png', 10, NULL, 'Với nhiều ưu điểm vượt trội so với các đối thủ, Xiaomi Redmi 8 4GB/64GB hứa hẹn là một con bài chiến lược của Xiaomi trong phân khúc smartphone giá rẻ, hiện đang rất sôi động hiện nay.', '2020-04-16 00:00:00', 13, 'xiaomi', 56, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 57, 'Điện thoại Xiaomi Redmi 8 (3GB/32GB)', 2790000, 'xiaomi-redmi-note-8-pro-6gb-128gb-white-400x460.png', 10, NULL, 'Những sản phẩm của Xiaomi thường trang bị cấu hình mạnh mẽ trong tầm giá, camera nhiều tính năng và viên pin \"trâu\". Xiaomi Redmi 8 3GB/32GB cũng không phải là ngoại lệ và với chiếc smartphone này Xiaomi một lần nữa khẳng định vị thế của mình trong phân k', '2020-04-16 00:00:00', 13, 'xiaomi', 57, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 58, 'Điện thoại Xiaomi Redmi 7 (2GB/16GB)', 2590000, 'xiaomi-redmi-7-16gb-black-400x460.png', 10, NULL, 'Xiaomi Redmi 7 2GB/16GB đã gây được chú ý cho người dùng khi ra mắt với một cấu hình khủng nhưng lại sở hữu một mức giá \"khó tin\".', '2020-04-16 00:00:00', 13, 'xiaomi', 58, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 59, 'Điện thoại Xiaomi Redmi 8A', 2590000, 'xiaomi-redmi-8a-400x460.png', 10, NULL, 'Xiaomi Redmi 8A là một chiếc smartphone nổi bật trong phân khúc giá rẻ với nhiều ưu điểm như pin khủng, chip Snapdragon mới, camera AI và màn hình giọt nước thời thượng.', '2020-04-16 00:00:00', 13, 'xiaomi', 59, '', '2020-05-05 00:00:00', ''),
('codexiaomi', 60, 'Điện thoại Xiaomi Redmi Go 16GB', 1790000, 'xiaomi-redmi-go-16gb-blue-400x460.png', 10, NULL, 'Xiaomi Redmi Go 16GB là một trong những chiếc smartphone giá rẻ nhất tới từ Xiaomi nhưng vẫn mang lại cho bạn một trải nghiệm mượt mà đến \"khó tin\".', '2020-04-16 00:00:00', 13, 'xiaomi', 60, '', '2020-05-05 00:00:00', ''),
('codevivo', 61, 'Điện thoại Vivo V17 Pro', 8990000, 'vivo-v17-pro-blue-400x460.png', 10, NULL, 'Bắt kịp xu thế smartphone có nhiều camera thì Vivo đã nhanh chóng giới thiệu chiếc Vivo V17 Pro với tổng cộng tới 6 camera trên một chiếc máy.', '2020-04-16 00:00:00', 13, 'vivo', 61, '', '2020-05-05 00:00:00', ''),
('codevivo', 62, 'Điện thoại Vivo S1 Pro', 6290000, 'vivo-s1-pro-white-400x460.png', 10, NULL, 'Vivo S1 Pro sở hữu ngoại hình đẹp, khó có thể chê đi kèm trang bị hấp dẫn với vân tay trong màn hình, camera selfie 32 MP đi kèm nhiều công nghệ hiện đại.', '2020-04-16 00:00:00', 13, 'vivo', 62, '', '2020-05-05 00:00:00', ''),
('codevivo', 63, 'Điện thoại Vivo V15 128GB', 5490000, 'vivo-v15-quanghai-400x460.png', 10, NULL, 'Được xem là bản rút gọn của flagship Vivo V15 Pro sắp ra mắt, chiếc điện thoại Vivo V15 128GB vẫn mang trong mình nhiều nét đáng giá với thiết kế cao cấp cùng camera sefie pop-up 32 MP lạ mắt.', '2020-04-16 00:00:00', 13, 'vivo', 63, '', '2020-05-05 00:00:00', ''),
('codevivo', 64, 'Điện thoại Vivo S1', 5490000, 'vivo-s1-blue-400x460.png', 10, NULL, 'Vivo S1 là chiếc smartphone S series mới sở hữu thiết kế tuyệt đẹp, đi kèm hệ thống 3 camera sau, cùng giá bán khá hấp dẫn.', '2020-04-16 00:00:00', 13, 'vivo', 64, '', '2020-05-05 00:00:00', ''),
('codevivo', 65, 'Điện thoại Vivo Y19', 4690000, 'vivo-y19-white-quanghai-400x460.png', 10, NULL, 'Vivo Y19 là chiếc smartphone tập trung mạnh vào khả năng chụp ảnh ở camera chính lẫn camera selfie với công nghệ AI, hứa hẹn sẽ nhận được sự đón nhận tới từ người dùng là những bạn trẻ năng động và cá tính.', '2020-04-16 00:00:00', 13, 'vivo', 65, '', '2020-05-05 00:00:00', ''),
('codevivo', 66, 'Điện thoại Vivo Y17', 4090000, 'vivo-y17-purple-400x460.png', 10, NULL, 'Vivo Y17 là một chiếc máy tầm trung với nhiều trang bị khá đáng giá như cụm 3 camera sau hay dung lượng pin thoải mái dùng 2 ngày.', '2020-04-16 00:00:00', 13, 'vivo', 66, '', '2020-05-05 00:00:00', ''),
('codevivo', 67, 'Điện thoại Vivo U10', 3790000, 'vivo-u10-400x460.png', 10, NULL, 'Chiếc điện thoại Vivo U10 là một chiếc smartphone thuộc phân khúc giá tầm trung, gây ấn tượng với thiết kế màn hình giọt nước tràn viền, dung lượng pin khủng, bộ ba camera trí tuệ nhân tạo cùng nhiều tính năng, công nghệ nổi trội khác.', '2020-04-16 00:00:00', 13, 'vivo', 67, '', '2020-05-05 00:00:00', ''),
('codevivo', 68, 'Điện thoại Vivo Y15', 3790000, 'vivo-y15-blue-quanghai-400x460.png', 10, NULL, 'Vivo Y15 là chiếc smartphone phổ thông mới ra mắt trong thời gian gần đây của Vivo với điểm nhấn chính là dung lượng pin \"siêu khủng\" cùng những trang bị khá hấp dẫn.', '2020-04-16 00:00:00', 13, 'vivo', 68, '', '2020-05-05 00:00:00', ''),
('codevivo', 69, 'Điện thoại Vivo Y12', 3590000, 'vivo-y12-red-400x460.png', 10, NULL, 'Vivo Y12 là chiếc smartphone tầm trung của Vivo vừa mới ra mắt, cấu hình ổn cũng như mức giá tốt vẫn là tiêu chí hàng đầu của chiếc máy này.', '2020-04-16 00:00:00', 13, 'vivo', 69, '', '2020-05-05 00:00:00', ''),
('codevivo', 70, 'Điện thoại Vivo Y11', 2990000, 'vivo-y11-400-460-400x460.png', 10, NULL, 'Những smartphone thuộc dòng Y của Vivo từ trước đến nay đều thu hút được số đông người dùng nhờ mức giá phổ thông mà vẫn mang lại trải nghiệm tốt và Vivo Y11 mới ra mắt gần đây cũng là một chiếc máy như vậy.', '2020-04-16 00:00:00', 13, 'vivo', 70, '', '2020-05-05 00:00:00', ''),
('codevivo', 71, 'Điện thoại Vivo Y93', 2690000, 'vivo-y93-32gb-black-400x460.png', 10, NULL, 'Vivo Y93 32GB là chiếc smartphone giá rẻ, nhưng vẫn sở hữu nhiều ưu điểm mới nhất cho người dùng hiện nay như pin khủng, màn hình tràn giọt nước hay camera kép xoá phông.', '2020-04-16 00:00:00', 13, 'vivo', 71, '', '2020-05-05 00:00:00', ''),
('codevivo', 72, 'Điện thoại Vivo Y91C', 2390000, 'vivo-y91c-400x460.png', 10, NULL, 'Sở hữu thiết kế trẻ trung, năng động cùng kiểu màn hình Halo Fullview độc đáo với mức giá \"hạt dẻ\", chiếc điện thoại Vivo Y91C hứa hẹn sẽ tạo cơn sốt trong thời gian tới.', '2020-04-16 00:00:00', 13, 'vivo', 72, '', '2020-05-05 00:00:00', ''),
('codenokia', 73, 'Điện thoại Nokia 7.2', 4590000, 'nokia-72-black-400x460.png', 10, NULL, 'Nokia 7.2 là một chiếc smartphone rất đáng chú ý trong những tháng cuối năm 2019 với thiết kế thời thượng, hệ điều hành mượt mà và cụm camera chất lượng.', '2020-04-16 00:00:00', 13, 'nokia', 73, '', '2020-05-05 00:00:00', ''),
('codenokia', 74, 'Điện thoại Nokia 2.3', 2290000, 'nokia-23-gray-400x460.png', 10, NULL, 'Nokia 2.3 là thế hệ thứ 4 của dòng Nokia 2 bán ra tại thị trường Việt Nam với những cải tiến mạnh mẽ về camera cũng như thời lượng pin so với thế hệ trước.', '2020-04-16 00:00:00', 13, 'nokia', 74, '', '2020-05-05 00:00:00', ''),
('codenokia', 75, 'Điện thoại Nokia 2.2', 1640000, 'nokia-22-black-400x460.png', 10, NULL, 'Nokia đang rất thành công tại thị trường Việt Nam với những chiếc smartphone phổ thông và một trong số đó là dòng Nokia 2 Series với mức giá cạnh tranh và mới đây hãng tiếp tục tung ra phiên bản kế nhiệm mang tên Nokia 2.2.', '2020-04-16 00:00:00', 13, 'nokia', 75, '', '2020-05-05 00:00:00', ''),
('codenokia', 76, 'Điện thoại Nokia 3.2 16GB', 1990000, 'nokia-32-16gb-black-1-400x460.png', 10, NULL, 'Nokia quay trở lại thị trường mạnh mẽ với những chiếc smartphone giá cả phải chăng nhưng vẫn đáp ứng tốt nhu cầu sử dụng hằng ngày của người dùng và Nokia 3.2 16GB là một chiếc máy như vậy.', '2020-04-16 00:00:00', 13, 'nokia', 76, '', '2020-05-05 00:00:00', ''),
('codenokia', 77, 'Điện thoại Nokia C2', 1490000, 'nokia-c2-xanh-400x460-400x460.png', 10, NULL, 'Nokia C2 là một smartphone giá rẻ chạy Android Go, máy có màn hình rộng, hiệu năng ổn định cùng với mức giá hấp dẫn dễ tiếp cận đến người dùng có nhu cầu cơ bản, phổ thông.', '2020-04-16 00:00:00', 13, 'nokia', 77, '', '2020-05-05 00:00:00', ''),
('codenokia', 78, 'Điện thoại Nokia C1', 1390000, 'nokia-c1-400x460-400x460.png', 10, NULL, 'Nokia C1 là dòng điện thoại giá rẻ hướng tới đối tượng là những người dùng phổ thông, sử dụng smartphone với nhu cầu cơ bản. Chiếc điện thoại cung cấp đầy đủ các tính năng thiết yếu: Không gian hiển thị lớn, bộ đôi camera trước và sau với đèn flash, 2 SIM', '2020-04-16 00:00:00', 13, 'nokia', 78, '', '2020-05-05 00:00:00', ''),
('codenokia', 79, 'Điện thoại Nokia 230 (không tặng thẻ nhớ)', 1250000, 'nokia-230-khong-the-blue-400x460.png', 10, NULL, 'Nokia 230 được trang bị khá nhiều tính năng hay ho, thiết kế đẹp cho người dùng yêu thích một chiếc điện thoại đẹp - đơn giản - tốt.', '2020-04-16 00:00:00', 13, 'nokia', 79, '', '2020-05-05 00:00:00', ''),
('codenokia', 80, 'Điện thoại Nokia 3310', 1060000, 'nokia-3310-2017-black-400x460.png', 10, NULL, 'Chiếc điện thoại cơ bản gây sóng gió trên mạng xã hội nhất trong năm 2017, không ai khác chính là Nokia 3310 mới toanh. Với diện mạo vừa quen thuộc vừa xa lạ, Nokia 3310 hứa hẹn sẽ mang đến người dùng nhiều trải nghiệm thú vị.', '2020-04-16 00:00:00', 13, 'nokia', 80, '', '2020-05-05 00:00:00', ''),
('codenokia', 81, 'Điện thoại Nokia 5310 (2020)', 990000, 'nokia-5310-2020-trang-do-400x460-400x460.png', 10, NULL, 'Được hồi sinh từ mẫu điện thoại nghe nhạc kinh điển của Nokia, phiên bản Nokia 5310 (2020) vẫn giữ phong cách đặc trưng với các phím điều khiển nhạc quen thuộc màu đỏ, hỗ trợ thẻ nhớ lưu trữ nhạc và khả năng nghe FM radio tích hợp.', '2020-04-16 00:00:00', 13, 'nokia', 81, '', '2020-05-05 00:00:00', ''),
('codenokia', 82, 'Điện thoại Nokia 210', 780000, 'nokia-210-400x460-den-400x460.png', 10, NULL, 'Mang đến MWC 2019 ngoài những chiếc smartphone hấp dẫn Nokia còn trình làng chiếc điện thoại phím Nokia 210 dành cho những người thích sử dụng thiết bị nghe, gọi đơn giản.', '2020-04-16 00:00:00', 13, 'nokia', 82, '', '2020-05-05 00:00:00', ''),
('codenokia', 83, 'Điện thoại Nokia 150 (không tặng thẻ nhớ)', 650000, 'nokia-150-khong-the-nho-2-400x460.png', 10, NULL, 'Nokia 150 là một thiết bị hai sim rất gọn nhẹ, đặc biệt hữu dụng cho người thường xuyên di chuyển, cần một chiếc điện thoại bắt sóng tốt, dễ dàng sử dụng.', '2020-04-16 00:00:00', 13, 'nokia', 83, '', '2020-05-05 00:00:00', ''),
('codenokia', 84, 'Điện thoại Nokia 110 (2019)', 470000, 'nokia-110-2019-green-400x460.png', 10, NULL, 'Nhắc đến những chiếc điện thoại cơ bản với thời lượng pin trâu để sử dụng nhiều ngày thì không thể không nhắc tới Nokia và mới đây hãng này cũng tiếp tục giới thiệu chiếc Nokia 110 (2019) để tiếp nối ưu điểm này.', '2020-04-16 00:00:00', 13, 'nokia', 84, '', '2020-05-05 00:00:00', ''),
('codenokia', 85, 'Điện thoại Nokia 105 Dual (2019)', 360000, 'nokia-105-single-sim-2019-blue-400x460.png', 10, NULL, 'Tiếp nối sự thành công của Nokia 105 (2017) thì mới đây Nokia tiếp tục tung ra phiên bản kế nhiệm là chiếc Nokia 105 (2019) với một vài cải tiến và vẫn giữ mức giá bán hấp dẫn.', '2020-04-16 00:00:00', 13, 'nokia', 85, '', '2020-05-05 00:00:00', ''),
('codenokia', 86, 'Điện thoại Nokia 105 Single SIM (2019)', 350000, 'nokia-105-2019-blue-400x460.png', 10, NULL, 'Nokia 105 Single SIM (2019) là sự lựa chọn hàng đầu cho những người dùng muốn một chiếc điện thoại phổ thông giá rẻ với độ bền cao và tới từ thương hiệu Nokia vốn đã tạo được lòng tin từ người dùng.', '2020-04-16 00:00:00', 13, 'nokia', 86, '', '2020-05-05 00:00:00', ''),
('codeIphone', 87, 'ab', 2, 'iphone-11-pro-256gb-black-400x460.png', 1, NULL, '<p>a</p>', '2011-08-19 13:45:00', NULL, NULL, 0, NULL, '2011-08-19 13:45:00', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Buidangco', 'Buidangco@gmail.com', NULL, '$2y$10$JwI9Y9jMOa/wEpxyNUgSu.idLIQXKhn3M6Unti7pqSyMlvEGLlNwS', NULL, NULL, '2020-04-12 23:12:06'),
(3, 'Buidangco19', 'Buidangco19', NULL, '123456', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `codeloai`
--
ALTER TABLE `codeloai`
  ADD PRIMARY KEY (`idLoai`),
  ADD KEY `code` (`code`);

--
-- Chỉ mục cho bảng `cthd`
--
ALTER TABLE `cthd`
  ADD PRIMARY KEY (`MaCTHD`),
  ADD KEY `id` (`id`),
  ADD KEY `Mancc` (`Mancc`);

--
-- Chỉ mục cho bảng `cthoadonban`
--
ALTER TABLE `cthoadonban`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `masanpham` (`masanpham`);

--
-- Chỉ mục cho bảng `hoadonban`
--
ALTER TABLE `hoadonban`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `makh` (`makh`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `Mancc` (`Mancc`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `code` (`code`) USING BTREE,
  ADD KEY `masery` (`masery`),
  ADD KEY `Mancc` (`Mancc`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `codeloai`
--
ALTER TABLE `codeloai`
  MODIFY `idLoai` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `cthd`
--
ALTER TABLE `cthd`
  MODIFY `MaCTHD` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `codeloai`
--
ALTER TABLE `codeloai`
  ADD CONSTRAINT `codeloai_ibfk_1` FOREIGN KEY (`code`) REFERENCES `sanpham` (`code`);

--
-- Các ràng buộc cho bảng `cthd`
--
ALTER TABLE `cthd`
  ADD CONSTRAINT `cthd_ibfk_1` FOREIGN KEY (`id`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `cthd_ibfk_2` FOREIGN KEY (`Mancc`) REFERENCES `nhacungcap` (`Mancc`);

--
-- Các ràng buộc cho bảng `cthoadonban`
--
ALTER TABLE `cthoadonban`
  ADD CONSTRAINT `cthoadonban_ibfk_1` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `cthoadonban_ibfk_2` FOREIGN KEY (`mahoadon`) REFERENCES `hoadonban` (`mahoadon`);

--
-- Các ràng buộc cho bảng `hoadonban`
--
ALTER TABLE `hoadonban`
  ADD CONSTRAINT `hoadonban_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`Mancc`) REFERENCES `nhacungcap` (`Mancc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
