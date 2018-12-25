-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 19, 2018 lúc 07:06 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `movie_manager`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `link`
--

CREATE TABLE `link` (
  `linkID` int(10) UNSIGNED NOT NULL,
  `linkDayUp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `number` int(10) NOT NULL,
  `movieID` int(10) UNSIGNED NOT NULL,
  `Link` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `link`
--

INSERT INTO `link` (`linkID`, `linkDayUp`, `number`, `movieID`, `Link`) VALUES
(1, '2018-12-14 00:00:00', 3, 1, '../../videos/dao hai tac 3.mp4'),
(8, '2018-12-14 00:00:00', 2, 1, '../../videos/dao hai tac 2.mp4'),
(9, '2018-12-14 00:00:00', 1, 7, '../../videos/dao hai tac 1.mp4'),
(10, '2018-12-14 00:00:00', 3, 2, '../../videos/dao hai tac 3.mp4'),
(11, '2018-12-14 00:00:00', 1, 7, '../../videos/dao hai tac 1.mp4'),
(12, '2018-12-14 00:00:00', 1, 1, '../../videos/dao hai tac 1.mp4'),
(13, '2018-12-14 00:00:00', 1, 8, '../../videos/dao hai tac 1.mp4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie`
--

CREATE TABLE `movie` (
  `movieID` int(10) UNSIGNED NOT NULL,
  `movieName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `movieNation` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `movieYear` year(4) NOT NULL,
  `movieTime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `movieNumber` int(5) NOT NULL,
  `groupID` int(10) UNSIGNED NOT NULL,
  `image` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `movieContent` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`movieID`, `movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `image`, `movieContent`) VALUES
(1, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n'),
(2, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.'),
(4, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.'),
(5, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.'),
(6, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n'),
(7, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.'),
(8, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n'),
(9, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.'),
(10, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.'),
(11, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.'),
(12, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.'),
(13, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `moviegroup`
--

CREATE TABLE `moviegroup` (
  `groupID` int(10) UNSIGNED NOT NULL,
  `groupName` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `moviegroup`
--

INSERT INTO `moviegroup` (`groupID`, `groupName`) VALUES
(1, 'Phim Lẻ'),
(2, 'Phim bộ ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(10) UNSIGNED NOT NULL,
  `userName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userLevel` int(1) DEFAULT '0',
  `activeCode` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `userActive` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `userName`, `userEmail`, `userPassword`, `userLevel`, `activeCode`, `userActive`) VALUES
(8, 'khai12', 'honganh7434@gmail.com', '$2y$10$EjJyWS4BvOSw0z/M2ts2o.iK1VX.60gwt9EDklOzdT362UnITLpm.', 0, '', 1),
(10, 'khai13', 'honganh7434@gmail.com', '$2y$10$whJuBbW8wUw2dWcCa5glFuaxi0vTLKy4qRCX4aL3aTTzsAv4s7uRe', 0, '', 0),
(11, 'khai11', 'honganh7434@gmail.com', '$2y$10$6GfcNxMaf9F.ohiN1zPdjesQYrFYOM4FJlVmLS0uC4N407wIEA9py', 1, '', 1),
(12, 'khai21', 'honganh7434@gmail.com', '$2y$10$hIGonyyDX8FPW6k2yAc44O/eB/XL0y4NQBOa2.6SChLJ/4tbYYJ5m', 0, '', 0),
(13, 'khai31', 'honganh7434@gmail.com', '$2y$10$ZAa/jPE5/93NFLfV1BT54OPWNSWV0ABzT7IKmFZV3MaO5GVT5THGW', 0, '', 0),
(14, 'khai321', 'honganh7434@gmail.com', '$2y$10$aKyYNKO1NvV97zRZgfmwKOSpu3d0UgmLh.0Gq9s6HSnh7/M9ImBtm', 0, '', 0),
(15, 'khai98', 'honganh7434@gmail.com', '$2y$10$gAEFt/TINZpuVzh0are/UudA5AIJQuoT9D/.A0SgHBqUfTzH7foYC', 0, '', 0),
(16, 'khai89', 'honganh7434@gmail.com', '$2y$10$Kqc954lF.Lb6pXsUvcTTje7.VWPwiT/sfQcHwppympIPLZrTetrPW', 0, 'aa942ab2bfa6ebda4840e7360ce6e7ef', 0),
(17, 'khai1998', 'honganh7434@gmail.com', '$2y$10$atw7y7NTbqOKmtITAQWhxe49EpATIOoGNYJK8zFoDErz6rCgaJhHm', 0, '1595af6435015c77a7149e92a551338e', 1),
(18, 'khai332', 'honganh7434@gmail.com', '$2y$10$9WbegwUA8YpEbWQWu1GM2.QpZg3XaNdiWuK.QW1uH5C9ZtjL0wP82', 0, '42998cf32d552343bc8e460416382dca', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`linkID`),
  ADD KEY `fk_link` (`movieID`);

--
-- Chỉ mục cho bảng `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movieID`),
  ADD KEY `fk_movie` (`groupID`);

--
-- Chỉ mục cho bảng `moviegroup`
--
ALTER TABLE `moviegroup`
  ADD PRIMARY KEY (`groupID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `link`
--
ALTER TABLE `link`
  MODIFY `linkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `movieID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `moviegroup`
--
ALTER TABLE `moviegroup`
  MODIFY `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `link`
--
ALTER TABLE `link`
  ADD CONSTRAINT `fk_link` FOREIGN KEY (`movieID`) REFERENCES `movie` (`movieID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `fk_movie` FOREIGN KEY (`groupID`) REFERENCES `moviegroup` (`groupID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
