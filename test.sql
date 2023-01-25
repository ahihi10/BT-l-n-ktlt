-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 25, 2023 lúc 04:21 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Tên người dùng` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mật khẩu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Tên người dùng`, `Email`, `Mật khẩu`) VALUES
('ad1', 'ad1@gmail.com', 123),
('ad2', 'ad2@gmail.com', 123),
('ad3', 'ad3@gmail.com', 123);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `người thuê`
--

CREATE TABLE `người thuê` (
  `id` int(10) NOT NULL,
  `tên` varchar(100) NOT NULL,
  `số điện thoại` int(10) NOT NULL,
  `id phim truyện đã thuê` int(10) NOT NULL,
  `thời gian thuê` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `số tiền cược` varchar(100) NOT NULL,
  `tổng tiền phải thanh toán` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `người thuê`
--

INSERT INTO `người thuê` (`id`, `tên`, `số điện thoại`, `id phim truyện đã thuê`, `thời gian thuê`, `số tiền cược`, `tổng tiền phải thanh toán`) VALUES
(101, 'Lan', 123123321, 1, '2023-01-22 08:52:45', '5000vnd', ''),
(102, 'Linh', 123456789, 12, '2023-01-25 11:19:53', '5000vnd', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `id` int(10) NOT NULL,
  `tên phim` varchar(100) NOT NULL,
  `đạo diễn` varchar(100) NOT NULL,
  `năm xuất bản` year(4) NOT NULL,
  `thể loại` varchar(100) NOT NULL,
  `giá thuê theo ngày` varchar(100) NOT NULL,
  `thời gian` time NOT NULL,
  `dung lượng` varchar(100) NOT NULL,
  `độ phân giải` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`id`, `tên phim`, `đạo diễn`, `năm xuất bản`, `thể loại`, `giá thuê theo ngày`, `thời gian`, `dung lượng`, `độ phân giải`) VALUES
(1, 'Vườn sao băng', 'Jeon Ki Sang', 2009, 'Chính kịch', '10000vnd', '05:59:59', '64bit', 'FHD'),
(2, 'Và em sẽ đến', 'Lee Jang-hoon', 2018, 'Lãng mạn', '10000vnd', '02:12:22', '64bit', 'FHD');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyện`
--

CREATE TABLE `truyện` (
  `id` int(10) NOT NULL,
  `tên truyện` varchar(100) NOT NULL,
  `tác giả` varchar(100) NOT NULL,
  `năm xuất bản` year(4) NOT NULL,
  `thể loại` varchar(100) NOT NULL,
  `giá thuê theo ngày` varchar(100) NOT NULL,
  `số trang` varchar(100) NOT NULL,
  `khổ giấy` varchar(10) NOT NULL,
  `ngôn ngữ` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `truyện`
--

INSERT INTO `truyện` (`id`, `tên truyện`, `tác giả`, `năm xuất bản`, `thể loại`, `giá thuê theo ngày`, `số trang`, `khổ giấy`, `ngôn ngữ`) VALUES
(11, 'Doraemon tập 1', 'Fujiko F.Fujio', 1969, 'truyện tranh', '5000vnd', '194', 'A5', 'Việt Nam'),
(12, 'Doraemon tập 2', 'Fujiko F.Fujio', 1969, 'truyện tranh', '5000vnd', '194', 'A5', 'Việt Nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `người thuê`
--
ALTER TABLE `người thuê`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyện`
--
ALTER TABLE `truyện`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
