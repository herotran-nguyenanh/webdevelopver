-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2015 at 09:46 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phpsimple`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `status`) VALUES
(1, 'Bóng Đá', 1),
(2, 'Tin Hot', 1),
(3, 'Thời Sự', 1),
(4, 'Giải Trí', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `content` varchar(450) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `email`, `post_id`, `content`, `status`, `datetime`) VALUES
(10, 'anhnt0212@gmail.com', 51, 'Thử cmt tại chỗ', 1, '2015-07-21 16:47:00'),
(11, 'tuannah@gmail.com', 51, 'cmt 2', 1, '2015-07-21 16:47:50'),
(12, 'fanthanht@gmail.com', 52, 'tao bình luận thử', 1, '2015-07-22 09:10:36'),
(13, 'fanthanht@gmail.com', 52, 'tao bình luận thử', 1, '2015-07-22 09:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` mediumtext,
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `user_id`, `category_id`, `title`, `description`, `content`, `datetime`, `status`, `view`, `images`) VALUES
(50, 1, 3, 'Một người không được vay ngân hàng quá 6 tỷ đồng', 'Để đảm bảo rủi ro hoạt động, nhà băng không được cho vay quá 6 tỷ đồng với một cá nhân, hộ gia đình và doanh nghiệp siêu nhỏ, theo đề xuất mới của Ngân hàng Nhà nước.', 'gân hàng Nhà nước vừa lấy ý kiến Dự thảo Thông tư về tỷ lệ an toàn vốn của các tổ chức tín dụng. Thông tư này được xem là một trong những quy định để cụ thể hoá việc triển khai Basel II với nhiều "tường lửa" chặt chẽ hơn nhằm đảm bảo an toàn cho hoạt động ngân hàng.\r\n\r\nDự thảo lần này cũng đề cập tới khái niệm "cấp tín dụng bán lẻ", hoạt động cho vay đối với cá nhân, hộ kinh doanh, doanh nghiệp siêu nhỏ. Theo đó, tổng dư nợ cho vay với nhóm khách hàng này không được vượt quá 6 tỷ đồng và không vượt 0,2% tổng dư nợ cho vay bán lẻ.\r\n\r\nTrao đổi với VnExpress, tổng giám đốc một ngân hàng cổ phần cho biết không nhiều cá nhân có dư nợ hơn 6 tỷ đồng nhưng với một hộ gia đình hay doanh nghiệp siêu nhỏ, mức này hơi thấp. Ông cũng cho rằng cơ quan soạn thảo cần giải thích rõ lấy cơ sở nào để chọn ra con số 6 tỷ đồng này.\r\n\r\nDự thảo Thông tư cũng dành phần lớn nội dung để đưa ra các quy định chi tiết về tỷ lệ an toàn vốn và vốn tự có, hệ số rủi ro tín dụng với các loại tài sản. Tiền, vàng, các kh', '2015-07-20 18:01:18', 1, NULL, 'uploads/10422548_622771357868833_1594092164965878929_n.jpg'),
(51, 1, 2, 'Nghìn người đến phiên xử kẻ sát hại cả gia đình ở phố núi', 'Đúng nửa năm sau khi trộm chó rồi sát hại cả gia đình quân nhân ở Gia Lai, Tiến bị đưa ra xét xử lưu động. Khi hắn bị tuyên án tử hình, mọi người đồng loạt vỗ tay.', '\r\n\r\nSáng 20/7, hàng nghìn người kéo đến tham dự phiên xử lưu động của TAND tỉnh Gia Lai đối với Nguyễn Văn Tiến (23 tuổi) - bị cáo đột nhập biệt thự của ông Nguyễn Văn Cường (56 tuổi) trộm chó sau đó sát hại vợ chồng ông này cùng con gái.\r\ntrom-cho-2-2733-1437371114.jpg\r\n\r\nTiến khá bình thản khi khai nhận hành vi phạm tội. Ảnh: Tùy Phong\r\n\r\nTheo cáo trạng, cuối năm 2014, sau khi hoàn thành nghĩa vụ quân sự, Tiến mướn nhà trọ ở thôn 4 (xã Biển Hồ, TP Pleiku, Gia Lai) để làm thuê cho đại lý cám gạo. Muốn có nhiều tiền tiêu xài, anh ta nảy sinh ý định trộm chó nên mua một cây vợt bắt muỗi, cắt phần lưới vợt rồi chế thành dụng cụ chích điện.\r\n\r\nĐêm 20/1, Tiến mang vợt và con dao bấm đi "kiếm mồi". Ngang qua căn biệt thự của ông Cường thấy chó sủa, Tiến đeo khẩu trang rồi mở lưới B40 đột nhập vào trong. Ông Cường nghe động thức dậy bật điện, Tiến trốn sau gốc tiêu.\r\n\r\nChờ chủ nhà tắt điện đi ngủ lại, Tiến theo đường bên hông trái ra cửa trước, cầm dụng cụ chích điện định bắt trộm con chó mà', '2015-07-20 18:03:20', 1, NULL, 'uploads/6267_1257665512.jpg'),
(52, 1, 2, 'Bộ Giáo dục độc quyền công bố điểm thi', 'Năm nay tất cả cụm thi phải gửi kết quả về Bộ Giáo dục và Đào tạo, duy nhất Bộ được quyền công bố. Nôn nóng xem điểm, thí sinh đổ dồn truy cập vào website của Bộ khiến trang này bị nghẽn mạng suốt buổi sáng 21/7.', '<p class="Normal">\r\n	Hiện nay, tất cả cụm thi tr&ecirc;n cả nước đ&atilde; ho&agrave;n tất chấm thi, nhập điểm v&agrave; gửi dữ liệu kết quả điểm thi về Cục Khảo th&iacute; v&agrave; Kiểm định chất lượng gi&aacute;o dục (Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo). Ng&agrave;y 16/7, Bộ c&oacute; c&ocirc;ng văn gửi c&aacute;c cụm thi y&ecirc;u cầu kh&ocirc;ng c&ocirc;ng bố kết quả, lưu giữ đĩa dữ liệu kết quả thi v&agrave; Bộ sẽ c&ocirc;ng bố kết quả sau khi c&oacute; đầy đủ dữ liệu điểm.</p>\r\n<p class="Normal">\r\n	Đến ng&agrave;y 17/7, Bộ Gi&aacute;o dục tiếp tục ra th&ocirc;ng b&aacute;o kh&ocirc;ng cho c&aacute;c cụm c&ocirc;ng bố điểm thi v&agrave; th&iacute; sinh sẽ biết kết quả theo 3 c&aacute;ch: nhận giấy chứng nhận kết quả tại nơi đăng k&yacute; dự thi, tra cứu kết quả thi qua website của Bộ Gi&aacute;o dục, xem kết quả thi qua c&aacute;c b&aacute;o điện tử đ&atilde; đăng k&yacute; kết nối với Bộ.</p>\r\n<p class="Normal">\r\n	L&yacute; giải cho lệnh cấm n&oacute;i tr&ecirc;n, Bộ Gi&aacute;o dục cho biết, năm nay kỳ thi ho&agrave;n to&agrave;n kh&aacute;c với những năm trước n&ecirc;n việc quản l&yacute; dữ liệu cũng c&oacute; thay đổi. Bộ quy về một mối v&agrave; c&ocirc;ng bố đồng thời nhằm đảm bảo việc c&ocirc;ng bố kết quả thi, x&eacute;t c&ocirc;ng nhận tốt nghiệp THPT v&agrave; tuyển sinh đại học, cao đẳng được thực hiện đ&uacute;ng quy định, theo tiến độ dự kiến.</p>\r\n<p class="Normal">\r\n	&quot;Nếu cụm thi tự c&ocirc;ng bố sẽ c&oacute; sự sai lệch v&agrave; kh&ocirc;ng đầy đủ th&ocirc;ng tin&quot;, Thứ trưởng B&ugrave;i Văn Ga n&oacute;i th&ecirc;m.</p>\r\n<p class="Normal">\r\n	Tuy nhi&ecirc;n, &ocirc;ng Đỗ Văn X&ecirc;, Hiệu ph&oacute; Đại học Cần Thơ cho rằng, giải th&iacute;ch n&agrave;y kh&ocirc;ng thỏa đ&aacute;ng. V&igrave; c&aacute;c trường chỉ c&ocirc;ng bố điểm của th&iacute; sinh thi tại cụm thi do m&igrave;nh chủ tr&igrave; v&agrave; chấm th&igrave; kh&ocirc;ng thể sai lệch. &ldquo;N&oacute;i về độ ch&iacute;nh x&aacute;c th&igrave; ch&uacute;ng t&ocirc;i đảm bảo hơn v&igrave; trường giữ hồ sơ li&ecirc;n quan tới điểm: b&agrave;i thi, ph&aacute;ch, phiếu điểm, bi&ecirc;n bản chấm thi... Nếu c&oacute; sự kh&aacute;c nhau về điểm do Bộ Gi&aacute;o dục c&ocirc;ng bố với điểm do ch&uacute;ng t&ocirc;i quản l&yacute; th&igrave; Bộ phải sửa theo điểm của ch&uacute;ng t&ocirc;i&rdquo;, &ocirc;ng X&ecirc; n&oacute;i.</p>\r\n<table border="0" cellpadding="3" cellspacing="0" style="width: 100%;">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt="Huong-dan-thi-sinh-xem-diem-7642-1437450" data-natural-width="500" data-pwidth="470.4" data-width="500" src="http://m.f29.img.vnecdn.net/2015/07/21/Huong-dan-thi-sinh-xem-diem-7642-1437450951.jpg" style="width: 100%;" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<p class="Image">\r\n					Nh&acirc;n vi&ecirc;n Cơ quan Đại diện Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo tại TP HCM hướng dẫn th&iacute; sinh đăng nhập v&agrave;o phần mềm để xem điểm thi THPT quốc gia 2015. Ảnh: <em>Nguyễn Duy.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class="Normal">\r\n	<span>Hiệu trưởng một trường đại học c&ocirc;ng lập tại TP HCM cũng cho biết, n</span><span>hững năm trước, c&aacute;c trường chấm xong,</span><span>&nbsp;c&ocirc;ng bố điểm, đều kh&ocirc;ng xảy ra sai s&oacute;t. &quot;Năm nay, số lượng th&iacute; sinh của c&aacute;c cụm thi đều &iacute;t hơn năm trước, v&agrave; kh&ocirc;ng phải lần đầu ti&ecirc;n trường tổ chức thi. Ch&uacute;ng t&ocirc;i thấy rất kh&oacute; hiểu với c&aacute;ch l&agrave;m của Bộ Gi&aacute;o dục&quot;, vị hiệu trưởng n&agrave;y n&oacute;i.</span></p>\r\n<p class="Normal">\r\n	<strong>Nhiều chuy&ecirc;n gia trong lĩnh vực c&ocirc;ng nghệ th&ocirc;ng tin lo ngại việc tập trung dữ liệu về một đầu mối rồi c&ocirc;ng bố tr&ecirc;n website của Bộ Gi&aacute;o dục sẽ dẫn đến việc nghẽn mạng.</strong> &quot;C&oacute; hơn một triệu th&iacute; sinh dự thi, nếu c&ugrave;ng một l&uacute;c c&oacute; qu&aacute; nhiều người truy cập th&igrave; hệ thống rất dễ bị sập&quot;, một chuy&ecirc;n gia cảnh b&aacute;o. Bằng chứng l&agrave; trong suốt buổi s&aacute;ng 21/7, website của Bộ Gi&aacute;o dục ở địa chỉ Moet.gov.vn kh&ocirc;ng thể truy cập.</p>\r\n<p class="Normal">\r\n	<span>Trước đ&oacute; năm 2002, lần đầu ti&ecirc;n cả nước thực hiện kỳ thi tuyển sinh đại học, cao đẳng theo phương thức 3 chung, c&aacute;c trường phải găm giữ v&agrave; chậm trễ c&ocirc;ng bố kết quả thi để chờ l&agrave;m điểm chuẩn chung th&igrave; sự cố kỹ thuật xảy ra.&nbsp;</span><span>Cơn sốt tra cứu điểm đ&atilde; dẫn đến lưu lượng truy cập Internet tăng vọt ngay sau khi th&ocirc;ng tin tra cứu được c&ocirc;ng bố tr&ecirc;n truyền h&igrave;nh. Tại H&agrave; Nội v&agrave; TP HCM, c&aacute;c nh&agrave; cung cấp dịch vụ Internet cho biết số lượng kết nối đ&atilde; tăng 25-30% so với b&igrave;nh thường.</span></p>\r\n<p class="Normal">\r\n	<span>Số lượng giao dịch tra cứu tr&ecirc;n trang web của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo đ&atilde; tăng đột biến dẫn đến sự qu&aacute; tải, từ chối dịch vụ trong suốt thời gian từ 20h ng&agrave;y 21/8/2002 v&agrave; đến ng&agrave;y h&ocirc;m sau mới được khắc phục. Th&iacute; sinh khi tra cứu phải ki&ecirc;n nhẫn v&agrave; li&ecirc;n tục bấm &quot;refresh&quot; hoặc &quot;reload&quot; lại trang web để chờ đến lượt được phục vụ.</span></p>\r\n<p class="Normal">\r\n	<span>Theo th&ocirc;ng b&aacute;o của Cục Khảo th&iacute;, sớm nhất ng&agrave;y mai Bộ sẽ c&ocirc;ng bố điểm thi; trước ng&agrave;y 31/7 sẽ c&oacute; ngưỡng x&eacute;t tuyển đầu v&agrave;o. V&agrave; từ 1/8, th&iacute; sinh bắt đầu l&agrave;m hồ sơ x&eacute;t tuyển v&agrave;o đại học, cao đẳng đợt đầu ti&ecirc;n.</span></p>\r\n', '2015-07-21 12:26:25', 1, NULL, 'uploads/1912465_1486139921674167_2743849314125543215_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
`id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `name`) VALUES
(1, 'Thể thao'),
(2, 'Tin thời sự'),
(3, 'MC');

-- --------------------------------------------------------

--
-- Table structure for table `tag_has_post`
--

CREATE TABLE IF NOT EXISTS `tag_has_post` (
  `tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag_has_post`
--

INSERT INTO `tag_has_post` (`tag_id`, `post_id`) VALUES
(1, 50),
(2, 50),
(3, 51);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `role_id`, `name`, `status`) VALUES
(1, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'anhnt0212@gmail.com', 1, 'Nguyễn Tuấn Anh', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`id`), ADD KEY `id_post_idx` (`post_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`), ADD KEY `user_id_idx` (`user_id`), ADD KEY `category_id_idx` (`category_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_has_post`
--
ALTER TABLE `tag_has_post`
 ADD PRIMARY KEY (`tag_id`,`post_id`), ADD KEY `fk_tag_has_post_post1_idx` (`post_id`), ADD KEY `fk_tag_has_post_tag1_idx` (`tag_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD KEY `role_id_idx` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
ADD CONSTRAINT `id_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tag_has_post`
--
ALTER TABLE `tag_has_post`
ADD CONSTRAINT `fk_tag_has_post_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tag_has_post_tag1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
