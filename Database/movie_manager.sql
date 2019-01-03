-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 03, 2019 lúc 10:07 AM
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
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `cmttID` int(10) UNSIGNED NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `movieID` int(10) UNSIGNED NOT NULL,
  `cmtContent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cmtDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `link`
--

CREATE TABLE `link` (
  `linkID` int(10) UNSIGNED NOT NULL,
  `linkDayUp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `number` int(10) NOT NULL,
  `movieID` int(10) UNSIGNED NOT NULL,
  `Link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `link`
--

INSERT INTO `link` (`linkID`, `linkDayUp`, `number`, `movieID`, `Link`) VALUES
(1, '2019-01-03 00:00:00', 1, 26, '../../videos/diep vien khong khong thay 3 .mp4'),
(2, '2019-01-03 00:00:00', 1, 12, '../../videos/Tap 01 Anh hung xa dieu 2003 360p.mp4'),
(3, '2019-01-03 00:00:00', 2, 12, '../../videos/Tap 02 Anh hung xa dieu 2003 360p.mp4'),
(4, '2019-01-03 00:00:00', 1, 36, '../../videos/thần điêu đại hiệp tập 1.mp4'),
(5, '2019-01-03 00:00:00', 2, 36, '../../videos/thần điêu đại hiệp tập 2.mp4'),
(6, '2019-01-03 00:00:00', 3, 36, '../../videos/thần điêu đại hiệp tập 3 .mp4'),
(7, '2019-01-03 00:00:00', 1, 37, '../../videos/aqua men .mp4'),
(8, '2019-01-03 00:00:00', 1, 39, '../../videos/venon.mp4'),
(9, '2019-01-03 00:00:00', 1, 40, '../../videos/bumblebee.mp4');

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
  `movieContent` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movie`
--

INSERT INTO `movie` (`movieID`, `movieName`, `movieNation`, `movieYear`, `movieTime`, `movieNumber`, `groupID`, `image`, `movieContent`, `view`) VALUES
(12, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.', 3),
(26, 'Điệp viên không không thấy 3', 'Anh', 2018, '160', 1, 1, '../../images/poster.medium.jpg', 'JOHNNY ENGLISH: TÁI XUẤT GIANG HỒ là phần thứ ba của loạt phim hài Johnny English, với Rowan Atkinson trong vai một gã bỗng dưng trở thành một điệp viên bí mật. Cuộc phiêu lưu mới bắt đầu khi một vụ điều tra hệ thống an ninh mạng cho thấy danh tính của tất cả các điệp viên đang hoạt động tại Anh, và Johnny là hy vọng cuối cùng để điều tra bí mật ấy. \r\n\r\nDù được biết là một điệp viên nghỉ hưu nhưng đây là lần đầu tiên gã giang hồ này bắt tay động với sứ mệnh tìm kiếm kẻ tấn công. Là một người với kỹ năng ít ỏi và năng lực hạn chế, Johnny English có phải vượt qua được những thách thức trong thời buổi công nghệ hiện đại để hoàn thành sứ mệnh này thành công hay không? ', 14),
(35, 'Điệp viên không không thấy 2', 'Anh', 2014, '160', 1, 1, '../../images/DSC100336737.jpg', 'Đặc vụ xuất sắc bậc nhất của MI7, Johnny English, đã lui về sống ẩn dật trong một ngôi chùa Tây Tạng do Ting Wang trụ trì; sau vụ lộn xộn đáng xấu hổ ở Mozambique 8 năm về trước. Nhưng khi nhận được cuộc gọi từ cục tình báo, đề nghị nắm giữ một sứ mệnh mà chỉ mình anh làm được, English đã sẵn sàng để quay trở lại.', 82),
(36, 'Thần điêu đại hiệp ', 'Trung quốc ', 2006, '45', 41, 2, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.', 7),
(37, 'Aquaman', 'Mỹ ', 2018, '160', 1, 1, '../../images/Aquaman_DC_Comics_Banner_Home.jpg', 'Aquaman: Đế vương Atlantis là phim điện ảnh siêu anh hùng của Mỹ dựa trên nhân vật Aquaman của DC Comics. Đây là phần phim thứ sáu thuộc DC Extended Universe, do James Wan đảm nhiệm vai trò đạo diễn, David Leslie Johnson-McGoldrick và Will Beall thực hiện phần kịch bản từ phần cốt truyện của Wan, Beall và Geoff Johns', 1),
(38, 'Robin Hood ', 'Anh', 2018, '160', 1, 1, '../../images/0e2442a7d933c8950321bbf3d31373f0830200de.jpg', 'Được dịch từ tiếng Anh-Robin Hood là một bộ phim phiêu lưu hành động Mỹ năm 2018 của đạo diễn Otto Bathurst và được viết bởi Ben Chandler và David James Kelly, từ một câu chuyện của Chandler. Nó dựa trên câu chuyện về Robin Hood, và sau khi John được huấn luyện để đánh cắp từ Cảnh sát trưởng thành phố Nottingham.', 0),
(39, 'Venom', 'Mỹ ', 2018, '160', 1, 1, '../../images/anh-1-15392447728191706575080.jpg', 'Venom là một phim siêu anh hùng của Mỹ dựa trên nhân vật cùng tên của Marvel Comics, do Columbia Pictures sản xuất và Sony Pictures Releasing phát hành. Nó được dự định là bộ phim đầu tiên trong Thế giới Marvel của Sony, được hỗ trợ nhưng tách biệt khỏi Vũ trụ Điện ảnh Marve', 0),
(40, 'Bumblebee', 'Mỹ ', 2018, '120', 1, 1, '../../images/bumblebee-transformers-movie.jpg', 'Bumblebee là phim điện ảnh khoa học viễn tưởng của Mỹ năm 2018 tập trung vào nhân vật cùng tên của thương hiệu Transformers. Đây là phần phim thứ sáu của loạt phim người đóng Transformers và đồng thời cũng là phần tiền truyện của bộ phim Transformers năm 2007.', 2);

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
(8, 'khai12', 'honganh7434@gmail.com', '$2y$10$EjJyWS4BvOSw0z/M2ts2o.iK1VX.60gwt9EDklOzdT362UnITLpm.', 2, '', 1),
(11, 'khai11', 'honganh7434@gmail.com', '$2y$10$6GfcNxMaf9F.ohiN1zPdjesQYrFYOM4FJlVmLS0uC4N407wIEA9py', 1, '', 1),
(19, 'khanh11', 'honganh7434@gmail.com', '$2y$10$QFu8JhbYd2qx4t3T/JZ7h.v41piNLBKKod6JdoMJ/3gZl5c09aQbu', 0, 'fc8001f834f6a5f0561080d134d53d29', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cmttID`),
  ADD KEY `fk_comment_users` (`ID`),
  ADD KEY `fk_comment_movie` (`movieID`);

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
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `cmttID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `link`
--
ALTER TABLE `link`
  MODIFY `linkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `movieID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `moviegroup`
--
ALTER TABLE `moviegroup`
  MODIFY `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_movie` FOREIGN KEY (`movieID`) REFERENCES `movie` (`movieID`),
  ADD CONSTRAINT `fk_comment_users` FOREIGN KEY (`ID`) REFERENCES `users` (`ID`);

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
