-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2018 lúc 06:20 PM
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
  `Link` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `link`
--

INSERT INTO `link` (`linkID`, `linkDayUp`, `number`, `movieID`, `Link`) VALUES
(1, '2018-12-14 00:00:00', 3, 1, 'https://zingtv-video-4.zadn.vn/2013/0521/0a/118fc2c5b8fb1e89c11e518c49bbf382.mp4?authen=exp=1545640363~acl=118fc2c5b8fb1e89c11e518c49bbf382~hmac=bdb2a3d5ba25c2a6cc674376cd4aefb6'),
(8, '2018-12-14 00:00:00', 2, 1, 'https://zingtv-video-4.zadn.vn/2013/0521/1d/a1840477788433fabfa8d65f0f488f90.mp4?authen=exp=1545640333~acl=a1840477788433fabfa8d65f0f488f90~hmac=83aa690f98268bd1f8beb54972e5b7b8'),
(9, '2018-12-14 00:00:00', 2, 7, 'https://zingtv-video-16.zadn.vn/2017/0117/1a/48daf40cd4e58bbd133f581b369d31d2.mp4?authen=exp=1545640573~acl=48daf40cd4e58bbd133f581b369d31d2~hmac=59f4143530dd4c35b905397e30420524'),
(10, '2018-12-14 00:00:00', 1, 2, 'https://zingtv-video-16.zadn.vn/2017/0117/83/9bdc88e60fe870c4ea4ae9dfa0f13692.mp4?authen=exp=1545640633~acl=9bdc88e60fe870c4ea4ae9dfa0f13692~hmac=48d420b90220a40464db019a44ca152d'),
(11, '2018-12-14 00:00:00', 1, 7, 'https://zingtv-video-16.zadn.vn/2017/0117/83/9bdc88e60fe870c4ea4ae9dfa0f13692.mp4?authen=exp=1545640467~acl=9bdc88e60fe870c4ea4ae9dfa0f13692~hmac=98fbd1917ce3c988b9ad3c0804ff3ed9'),
(12, '2018-12-14 00:00:00', 1, 1, 'https://zingtv-video-4.zadn.vn/2013/0521/81/080958e66deb4a047a3d3b67c22e9918.mp4?authen=exp=1545751860~acl=080958e66deb4a047a3d3b67c22e9918~hmac=eef849512fff84f40dff373dac978a72'),
(13, '2018-12-14 00:00:00', 1, 8, 'https://zingtv-video-4.zadn.vn/2013/0521/81/080958e66deb4a047a3d3b67c22e9918.mp4?authen=exp=1545751860~acl=080958e66deb4a047a3d3b67c22e9918~hmac=eef849512fff84f40dff373dac978a72'),
(16, '2018-12-14 00:00:00', 1, 10, 'https://r2---sn-i3belne6.googlevideo.com/videoplayback?id=e28da06da712dffc&itag=18&source=webdrive&requiressl=yes&pl=20&sc=yes&ttl=transient&ei=cOAeXOThJ4fc4wL11JGYCg&susc=drp&app=fife&driveid=1mnJrULvwxhWO2wVTf74Z3KzM7pCBk4rT&mime=video/mp4&dur=5313.399&lmt=1545318660798013&ip=2001:ee0:305:1::14&ipbits=48&expire=1545534608&sparams=app,driveid,dur,ei,expire,id,ip,ipbits,ipbypass,itag,lmt,mime,mip,mm,mn,ms,mv,pl,requiressl,sc,source,susc,ttl&signature=474527ADAED9EF8FAFCBCC574A30A0EFBA0BAA22.0A23D3CFD431443F7A0E5EFD2EE87C1BEC4BF0B0&key=cms1&redirect_counter=1&rm=sn-i3b6d7l&fexp=23763603&req_id=bc32f9b1c58ba3ee&cms_redirect=yes&ipbypass=yes&mip=117.7.252.76&mm=30&mn=sn-i3belne6&ms=nxu&mt=1545527984&mv=m'),
(28, '2018-12-14 00:00:00', 1, 26, 'https://r4---sn-i3b7knld.googlevideo.com/videoplayback?id=f653c4548d498&itag=18&source=webdrive&&requiressl=yes&mm=30&mn=sn-i3b7knld&ms=nxu&mv=u&pl=48&sc=yes&ttl=transient&ei=swIdXJmENZCk4QKs37X4AQ&susc=drp&app=fife&driveid=1BqQB3puNpZW1bL2wxqYMdUkWxyvRYWps&mime=video/mp4&dur=5313.329&lmt=1545142088512896&mt=1545403797&ip=2001:ee0:305:1::14&ipbits=48&expire=1545412307&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ttl,ei,susc,app,driveid,mime,dur,lmt&signature=A908DBB69523B9E3F445EC13771518E420A535115185090D8F2D5BA84AB7C5D1.5813A5AF4A4F41D01E26910B219CFDDE2615CF9EF5E231316270A389446F564A&key=us0'),
(29, '2018-12-14 00:00:00', 1, 32, 'https://r4---sn-i3b7knld.googlevideo.com/videoplayback?id=f653c4548d498&itag=18&source=webdrive&&requiressl=yes&mm=30&mn=sn-i3b7knld&ms=nxu&mv=u&pl=48&sc=yes&ttl=transient&ei=swIdXJmENZCk4QKs37X4AQ&susc=drp&app=fife&driveid=1BqQB3puNpZW1bL2wxqYMdUkWxyvRYWps&mime=video/mp4&dur=5313.329&lmt=1545142088512896&mt=1545403797&ip=2001:ee0:305:1::14&ipbits=48&expire=1545412307&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ttl,ei,susc,app,driveid,mime,dur,lmt&signature=A908DBB69523B9E3F445EC13771518E420A535115185090D8F2D5BA84AB7C5D1.5813A5AF4A4F41D01E26910B219CFDDE2615CF9EF5E231316270A389446F564A&key=us0'),
(30, '2018-12-14 00:00:00', 1, 33, 'https://r4---sn-i3b7knld.googlevideo.com/videoplayback?id=f653c4548d498&itag=18&source=webdrive&&requiressl=yes&mm=30&mn=sn-i3b7knld&ms=nxu&mv=u&pl=48&sc=yes&ttl=transient&ei=swIdXJmENZCk4QKs37X4AQ&susc=drp&app=fife&driveid=1BqQB3puNpZW1bL2wxqYMdUkWxyvRYWps&mime=video/mp4&dur=5313.329&lmt=1545142088512896&mt=1545403797&ip=2001:ee0:305:1::14&ipbits=48&expire=1545412307&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ttl,ei,susc,app,driveid,mime,dur,lmt&signature=A908DBB69523B9E3F445EC13771518E420A535115185090D8F2D5BA84AB7C5D1.5813A5AF4A4F41D01E26910B219CFDDE2615CF9EF5E231316270A389446F564A&key=us0'),
(31, '2018-12-14 00:00:00', 1, 34, 'https://r4---sn-i3b7knld.googlevideo.com/videoplayback?id=f653c4548d498&itag=18&source=webdrive&&requiressl=yes&mm=30&mn=sn-i3b7knld&ms=nxu&mv=u&pl=48&sc=yes&ttl=transient&ei=swIdXJmENZCk4QKs37X4AQ&susc=drp&app=fife&driveid=1BqQB3puNpZW1bL2wxqYMdUkWxyvRYWps&mime=video/mp4&dur=5313.329&lmt=1545142088512896&mt=1545403797&ip=2001:ee0:305:1::14&ipbits=48&expire=1545412307&sparams=ip,ipbits,expire,id,itag,source,requiressl,mm,mn,ms,mv,pl,sc,ttl,ei,susc,app,driveid,mime,dur,lmt&signature=A908DBB69523B9E3F445EC13771518E420A535115185090D8F2D5BA84AB7C5D1.5813A5AF4A4F41D01E26910B219CFDDE2615CF9EF5E231316270A389446F564A&key=us0'),
(33, '2018-12-23 00:00:00', 1, 35, '../../videos/bandicam 2018-12-23 09-03-48-248.mp4');

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
(1, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n', 5),
(2, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.', 2),
(4, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.', 0),
(5, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.', 0),
(6, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n', 0),
(7, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.', 6),
(8, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n', 0),
(9, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.', 0),
(10, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.', 1),
(11, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.', 0),
(12, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.', 0),
(14, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n', 0),
(26, 'Điệp viên không không thấy 3', 'Anh', 2018, '160', 1, 1, '../../images/poster.medium.jpg', 'JOHNNY ENGLISH: TÁI XUẤT GIANG HỒ là phần thứ ba của loạt phim hài Johnny English, với Rowan Atkinson trong vai một gã bỗng dưng trở thành một điệp viên bí mật. Cuộc phiêu lưu mới bắt đầu khi một vụ điều tra hệ thống an ninh mạng cho thấy danh tính của tất cả các điệp viên đang hoạt động tại Anh, và Johnny là hy vọng cuối cùng để điều tra bí mật ấy. \r\n\r\nDù được biết là một điệp viên nghỉ hưu nhưng đây là lần đầu tiên gã giang hồ này bắt tay động với sứ mệnh tìm kiếm kẻ tấn công. Là một người với kỹ năng ít ỏi và năng lực hạn chế, Johnny English có phải vượt qua được những thách thức trong thời buổi công nghệ hiện đại để hoàn thành sứ mệnh này thành công hay không? ', 4),
(27, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n', 0),
(28, 'Anh Hùng Xạ Điêu ', 'Trung Quốc', 2006, '45', 40, 2, '../../images/anh-hung-xa-dieu-201612899.jpg', 'Anh hùng xạ điêu xoay quanh câu chuyện của hai nhà họ Dương và Quách vốn có mối quan hệ thân thiết với nhau. Những mối quan hệ này được nối tiếp nhau, đẩy nội dung phim lên đến cao trào và vỡ òa bằng những cung bậc cảm xúc khác nhau: có yêu, có hận, có tiếc thương.', 0),
(29, 'Điệp viên không không thấy 3', 'Anh', 2018, '160', 1, 1, '../../images/poster.medium.jpg', 'JOHNNY ENGLISH: TÁI XUẤT GIANG HỒ là phần thứ ba của loạt phim hài Johnny English, với Rowan Atkinson trong vai một gã bỗng dưng trở thành một điệp viên bí mật. Cuộc phiêu lưu mới bắt đầu khi một vụ điều tra hệ thống an ninh mạng cho thấy danh tính của tất cả các điệp viên đang hoạt động tại Anh, và Johnny là hy vọng cuối cùng để điều tra bí mật ấy. \r\n\r\nDù được biết là một điệp viên nghỉ hưu nhưng đây là lần đầu tiên gã giang hồ này bắt tay động với sứ mệnh tìm kiếm kẻ tấn công. Là một người với kỹ năng ít ỏi và năng lực hạn chế, Johnny English có phải vượt qua được những thách thức trong thời buổi công nghệ hiện đại để hoàn thành sứ mệnh này thành công hay không? ', 0),
(30, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n', 0),
(31, 'Điệp viên không không thấy 3', 'Anh', 2018, '160', 1, 1, '../../images/poster.medium.jpg', 'JOHNNY ENGLISH: TÁI XUẤT GIANG HỒ là phần thứ ba của loạt phim hài Johnny English, với Rowan Atkinson trong vai một gã bỗng dưng trở thành một điệp viên bí mật. Cuộc phiêu lưu mới bắt đầu khi một vụ điều tra hệ thống an ninh mạng cho thấy danh tính của tất cả các điệp viên đang hoạt động tại Anh, và Johnny là hy vọng cuối cùng để điều tra bí mật ấy. \r\n\r\nDù được biết là một điệp viên nghỉ hưu nhưng đây là lần đầu tiên gã giang hồ này bắt tay động với sứ mệnh tìm kiếm kẻ tấn công. Là một người với kỹ năng ít ỏi và năng lực hạn chế, Johnny English có phải vượt qua được những thách thức trong thời buổi công nghệ hiện đại để hoàn thành sứ mệnh này thành công hay không? ', 0),
(32, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n', 0),
(33, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n', 4),
(34, 'Thần Điêu Đại Hiệp', 'Trung Quốc', 2003, '45', 40, 1, '../../images/than_dieu_dại_hiep.jpg', 'Thần điêu hiệp lữ là phim dựa trên tiểu thuyết cùng tên của Kim Dung, còn có tên khác là Thần Điêu đại hiệp. Thần điêu hiệp lữ là phần hai trong bộ Xạ điêu tam bộ khúc. Bối cảnh của Thần điêu hiệp lữ là vào cuối thời Nam Tống, khi quân Mông Cổ đã lớn mạnh, tiêu diệt hầu hết châu Á, châu Âu, đang trực tiếp uy hiếp an nguy của Nam Tống.\r\n\r\nCâu chuyện xoay quanh tình yêu của hai nhân vật chính là Dương Quá và Tiểu Long Nữ giữa những cuộc chiến tang thương đẫm máu cả trên giang hồ lẫn chiến trường.\r\n', 1),
(35, 'Điệp viên không không thấy 2', 'Anh', 2014, '160', 1, 1, '../../images/DSC100336737.jpg', 'Đặc vụ xuất sắc bậc nhất của MI7, Johnny English, đã lui về sống ẩn dật trong một ngôi chùa Tây Tạng do Ting Wang trụ trì; sau vụ lộn xộn đáng xấu hổ ở Mozambique 8 năm về trước. Nhưng khi nhận được cuộc gọi từ cục tình báo, đề nghị nắm giữ một sứ mệnh mà chỉ mình anh làm được, English đã sẵn sàng để quay trở lại.', 0);

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
  MODIFY `linkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `movie`
--
ALTER TABLE `movie`
  MODIFY `movieID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `moviegroup`
--
ALTER TABLE `moviegroup`
  MODIFY `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
