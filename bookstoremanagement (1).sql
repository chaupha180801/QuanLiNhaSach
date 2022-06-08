-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 05:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstoremanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_author`
--

CREATE TABLE `tbl_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_phone` varchar(20) NOT NULL,
  `author_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_birthday` int(11) NOT NULL,
  `author_story` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_author`
--

INSERT INTO `tbl_author` (`author_id`, `author_name`, `author_phone`, `author_email`, `author_birthday`, `author_story`) VALUES
(1, 'Nguyễn Nhật Ánh', '0975555331', 'nguyennhatanh.contact@gmail.com', 1955, 'Người viết sách tuổi thơ thành công nhất hiện nay. '),
(2, 'Nguyễn Nhật Minh', '0975556430', 'nguyennhatminh.contact@gmail.com', 1997, 'Tác giả được yêu thích năm 2021. '),
(3, 'Gào', '0343988250', 'gao.contact@gmail.com', 1988, 'Blogger, CEO ở tuổi 21. '),
(4, 'Trang Hạ', '0223459981', 'trangha.contact@gmail.com', 1990, 'Tác giả với ánh nhìn phóng khoáng của thời đại, '),
(5, 'Anh Khang', '0975555331', 'anhkhang.contact@gmail.com', 1987, 'TP.HCM '),
(6, 'Kim Khánh', '0397652389', 'kimkhanh.contact@gmail.com', 2001, 'Tác giả Việt Nam. '),
(7, 'Fujiko F Fujio', '0123000001', 'fujiko.f.fujio.contact@gmail.com', 1950, 'Tác giả nước ngoài. '),
(8, 'DK', '0123000000', 'dk.author.contact@gmail.com', 1999, 'Tác giả nước ngoài. '),
(9, 'The Windy', '0123000002', 'thewindy.author.contact@gmail.com', 1991, 'Tác giả nước ngoài. '),
(10, 'Gosho Aoyama', '0123000003', 'gosho.aoyama.contact@gmail.com', 1996, 'Tác giả nước ngoài. '),
(11, 'Nguyễn Hiến Lê', '0889442178', 'nguyenhienle.contact@gmail.com', 1987, 'Tác giả Việt Nam.'),
(12, 'Eiichiro Oda', '0123000004', 'eiichiro.oda.contact@gmail.com', 1982, 'Tác giả nước ngoài. '),
(13, 'Akira Toriyama', '0123000005', 'akira.toriyama.contact@gmail.com', 1977, 'Tác giả nước ngoài. '),
(14, 'Yoshito Usui', '0123000006', 'yoshito.usui.contact@gmail.com', 1985, 'Tác giả nước ngoài. '),
(15, 'Dale Carnegie', '0123000007', 'dale.carnegie.contact@gmail.com', 1979, 'Tác giả nước ngoài. '),
(16, 'Diệu Hồ', '0586894220', 'dieuho.contact@gmail.com', 2000, 'Tác giả trẻ Việt Nam. '),
(17, 'Nhật Phạm', '0375566332', 'nhatpham.contact@gmail.com', 1955, 'Tác giả Việt Nam. '),
(18, 'Huyền Linh', '0975555349', 'huyenlinh.contact@gmail.com', 1983, 'Tác giả Việt Nam '),
(19, 'Phan Minh Đạo', '0974443000', 'phanminhdao.contact@gmail.com', 1999, 'Tác giả Việt Nam '),
(20, 'Brown Watson', '0123000008', 'brown.watson.contact@gmail.com', 1992, 'Tác giả nước ngoài. '),
(21, 'Jeff Kinny', '0123000009', 'jeff.kinny.contact@gmail.com', 1955, 'Tác giả nước ngoài. '),
(22, 'Masashi Kishimoto', '0123000010', 'masashi.kishimoto.contact@gmail.com', 1969, 'Tác giả nước ngoài. '),
(23, 'Osho', '0123000011', 'osho.contact@gmail.com', 1970, 'Tác giả nước ngoài. '),
(24, 'Nguyễn Lan Hạ', '0384566732', 'lanhanguyen.contact@gmail.com', 2000, 'Người viết sách tp.HCM. '),
(25, 'A Tòn', '0976209861', 'atonnguyen.contact@gmail.com', 2002, 'Người trẻ viết sách. '),
(26, 'Lê Khanh', '0891252900', 'lekhanh.contact@gmail.com', 1989, 'TP.HCM '),
(27, 'hhh', '0903829692', 'hotro@arikavn.com', 2019, 'sdfg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bill`
--

CREATE TABLE `tbl_bill` (
  `bill_id` int(11) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_total` float NOT NULL,
  `bill_pay` float NOT NULL,
  `client_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bill`
--

INSERT INTO `tbl_bill` (`bill_id`, `bill_date`, `bill_total`, `bill_pay`, `client_id`, `staff_id`) VALUES
(1, '2022-02-28', 2457000, 2457000, 1, 1),
(2, '2022-04-20', 2467500, 2400500, 3, 1),
(3, '2022-04-30', 5250000, 5250000, 2, 1),
(4, '2022-05-22', 5145000, 5145000, 6, 1),
(5, '2022-05-31', 6405000, 6405000, 11, 1),
(6, '2022-05-31', 4620000, 4620000, 5, 1),
(7, '2022-05-31', 6090000, 6090000, 8, 1),
(8, '2022-05-31', 2100000, 2100000, 28, 1),
(9, '2022-05-31', 1470000, 1470000, 3, 1),
(10, '2022-05-31', 3150000, 3000000, 14, 1),
(11, '2022-05-31', 1575000, 1500000, 25, 1),
(12, '2022-05-31', 945000, 845000, 29, 1),
(13, '2022-05-31', 1365000, 1265000, 7, 1),
(14, '2022-05-31', 1386000, 1286000, 11, 1),
(15, '2022-05-31', 2047500, 2000500, 20, 1),
(16, '2022-05-31', 5040000, 5000000, 24, 1),
(17, '2022-05-31', 4725000, 4525000, 10, 1),
(18, '2022-05-31', 1365000, 1165000, 26, 1),
(19, '2022-06-01', 19068000, 19068000, 1, 1),
(20, '2022-06-07', 84000, 84000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_publish` int(11) NOT NULL,
  `price` float NOT NULL,
  `stock` int(11) NOT NULL,
  `edition` int(11) NOT NULL,
  `title_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`book_id`, `book_name`, `image`, `year_publish`, `price`, `stock`, `edition`, `title_id`) VALUES
(1, 'Tiếng anh giao tiếp', 'TAGT_B13.jpg', 2010, 42000, 110, 1, 1),
(2, '900 câu tiếng anh giao tiếp cuộc sống', '900TA-GTCS-179.jpg', 2020, 42000, 74, 1, 1),
(3, '900 câu tiếng anh giao tiếp cuộc sống tập 2', '900TA-GTCS-258.jpg', 2021, 52500, 120, 2, 1),
(4, 'Doraemon Nobita và 3 chàng hiệp sĩ mộng mơ', '280379346_703543351081212_4325108807034617144_n19.jpg', 2014, 42000, 115, 1, 5),
(5, 'Doraemon tập 1', '283971005_5247629238628452_7087086097989064129_n55.jpg', 2018, 105000, 246, 1, 5),
(6, 'Doraemon tập 10', '280102709_540111084432185_4204326685449600541_n87.jpg', 2018, 42000, 115, 1, 5),
(7, 'Từ điển Anh -Việt', '275198448_663024628236111_6470931140271756999_n76.png', 2019, 105000, 131, 1, 24),
(8, 'Từ điển Anh-Anh_Viêt', '271427681_297203598905284_3477258789287202823_n81.png', 2017, 105000, 151, 1, 25),
(9, 'Muôn kiếp nhân sách', '282137255_559122398938315_1289297623485610714_n14.png', 2020, 42000, 170, 1, 4),
(10, 'Nhà giả Kim', '280183877_565251695114198_7893895702865072594_n87.png', 2019, 31500, 130, 1, 29),
(11, 'Nhật kí từ thiên đường', '281957373_272664148350819_6745612507502290350_n36.png', 2010, 105000, 131, 1, 17),
(12, '10 vạn câu hỏi vì sao loài người', '281771839_466947978624118_4668970538475455840_n57.png', 2019, 105000, 411, 1, 13),
(13, '10 vạn câu hỏi vì sao động vật', '285317081_970051653638771_8964894693995682754_n89.png', 2015, 105000, 90, 1, 13),
(14, 'Tam quốc diễn nghĩa', '258742170_1505143519854767_5444300345653350190_n61.png', 1998, 42000, 110, 1, 28),
(15, 'Hack Não Ngữ Pháp', '271434825_486490639566839_8717142731436725911_n17.png', 2020, 42000, 130, 1, 27),
(16, 'Lịch sử loài người', '281618985_420859436552797_7609037634559049934_n63.png', 2020, 42000, 50, 1, 29),
(17, 'Thất tịch không mưa', '271880736_658728275573861_4488183446587341948_n63.png', 2018, 42000, 100, 1, 18),
(18, 'Vua trò chơi tập 16', '282272964_4766716596767108_1047803791535490384_n33.png', 2018, 105000, 136, 1, 7),
(19, 'Vua trò chơi tập 16', '282272964_4766716596767108_1047803791535490384_n20.png', 2020, 105000, 131, 1, 7),
(20, 'Vua trò chơi tập 8', '283883936_1227928288006505_2042251446405254776_n3.png', 2021, 105000, 116, 1, 7),
(21, 'Chuyện con mèo dạy hải âu bay', '260902903_336193671176997_674366837667202999_n86.png', 2020, 105000, 271, 1, 2),
(22, 'Gặp nhau lên thiên đường', '281516600_1048659805856600_8179752716886955443_n29.png', 2017, 52500, 120, 1, 9),
(23, 'Tây du kí', '281484147_268472618794573_7912181186934030501_n87.png', 1890, 105000, 136, 1, 12),
(24, 'Tìm hiểu cơ thể người', '280128022_802721487771990_3442330953544558605_n91.png', 2020, 105000, 131, 1, 15),
(25, 'Vì một hành tinh xanh', '279938723_1158408124938513_7697396729064501756_n61.png', 2019, 42000, 128, 2, 14),
(26, 'Sói đội lốt cừu', '280439828_412952447348417_2229643676042501339_n40.png', 2018, 105000, 131, 1, 20),
(27, 'Phát minh vĩ đại', '280092801_3336597499892341_6692832033522616258_n10.png', 2020, 42000, 120, 1, 16),
(28, 'Chó sủa nhầm cây', '281954980_726215215290387_101656070236116846_n56.png', 2021, 73500, 105, 1, 22),
(29, 'Thiêu nhi', '280092801_3336597499892341_6692832033522616258_n35.png', 2020, 105000, 151, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_desc`) VALUES
(1, 'Trinh thám', 'Thám hiểm, khám phá'),
(2, 'Kinh dị', 'Truyện kinh dị hay sẽ khiến bạn rợn người, ám ảnh bạn tỏng những giấc mơ.'),
(3, 'Huyen huyen', 'Duoc dat ten va phan loai dua theo he thong phan loai truyen chu cua Trung Quoc'),
(4, 'Dị giới', 'Trong truyen co xuat hien nhung the gioi ky di, khac voi the gioi chung ta dang sinh song'),
(5, 'Tu tien', 'Mot nguoi binh thuong nhung lai gap vo van co duyen de buoc di tren con duong tu tien'),
(6, 'Thơ', 'Một thể loại văn học'),
(7, 'Xuyên không', 'Nhan vat chinh bi dua den sinh song o mot khong gian hay mot khoang thoi gian khac'),
(8, 'Trung sinh', 'Sinh vat song trong mot sinh vat khac'),
(9, 'Sách giáo khoa', 'Dùng trong nhà trường'),
(10, 'Lãng mạn', 'Dành cho những độc giả yêu thích tình cảm, lãng mạn'),
(11, 'Học trò', 'Dành cho lứa tuổi học trò'),
(12, 'Thiếu nhi', 'Dành cho lứa tuổi thiếu nhi'),
(13, 'Thể thao', 'Các thông tin về thể thao'),
(14, 'Hư cấu', 'Những câu chuyện không có thật'),
(15, 'Truyện tranh, Comic, Manga', 'Thể loaị truyện bằng hình vẽ dành cho thiếu nhi'),
(16, 'Game', 'Chiến thuật trong các trò chơi'),
(17, 'Ngôn tính', 'Truyện thuộc kiểu lãng mạn, kể về những sự kiện vui buồn trong tình yêu của nhân vật chính.'),
(18, 'Đời thường', 'Những câu chuyện đời thường'),
(19, 'Giả tưởng', 'Những câu chuyện tưởng tượng, không có thật'),
(20, 'Tiên hiệp', 'Kể về quá trình tu luyện và khám phá thế giới tu sĩ thần tiên đầy bí ẩn của nhân vật chính'),
(21, 'Huyền ảo', 'Có vẻ đẹp kì lạ và bí ẩn, vua nhu thuc vua nhu hu, tao suc cuon hut manh me canh vat huyen ao qua man suong'),
(22, 'Khoa học giả tưởng ', 'la mot the loai tieu thuyet hu cau mang cac yeu to khoa hoc'),
(23, 'Kỳ ảo', 'la mot the loai van hoc nghe thuat trong do phep thuat va cac yeu to sieu nhien khac duoc su dung lam de tai, cot truyen hay boi canh'),
(24, 'Sử thi', 'một thể loại văn học có yêu tố lịch sử'),
(25, 'Ngoại ngữ', 'Sách ngôn ngữ nước ngoài'),
(26, 'Từ điển', 'Từ điển tiếng Việt và từ điển nước ngoài'),
(27, 'Sách thường thức - đời sống', 'Nói về đời sống hằng ngày'),
(28, 'Sách văn học - truyện ngắn', 'Văn học theo cách nói chung nhất, là bất kì tác phẩm nào bằng văn bản.'),
(29, 'Ngược', 'Tác phẩm truyện mang ý nghĩa ngược, hoặc có yếu tố ngược.'),
(30, 'Khoa học', 'Sách nói về khoa học');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_phone` int(11) NOT NULL,
  `client_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_birthday` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `client_type` int(11) NOT NULL,
  `client_debt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`client_id`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_birthday`, `client_type`, `client_debt`) VALUES
(1, 'Nguyễn Văn B', 385276440, 'vanb@gmail.com', 'TPHCM', '2001-05-23 07:49:38', 1, 0),
(2, 'Nguyễn Quốc Khải', 385276441, 'quockhai@gmail.com', 'TPHCM', '2001-06-25 07:49:38', 2, 0),
(3, 'Trịnh Thị Thu Hà', 385276442, 'thuha@gmail.com', 'TPHCM', '2022-05-31 09:45:28', 1, 0),
(4, 'Nguyễn Thị Khánh Hà', 385276443, 'khanhha@gmail.com', 'TPHCM', '2003-05-13 07:49:38', 2, 0),
(5, 'Lê Duy Hưng', 385276444, 'duyhung@gmail.com', 'TPHCM', '2003-05-25 07:49:38', 1, 0),
(6, 'Nguyễn Minh Phát', 385276445, 'minhphat@gmail.com', 'TPHCM', '2003-04-25 07:49:38', 1, 0),
(7, 'Nguyễn Quốc Hữu Duy', 385276446, 'huuduy@gmail.com', 'Dong Nai', '2022-05-31 09:49:39', 2, 0),
(8, 'Lê Thị Kim', 385276447, 'kimle@gmail.com', 'Dong Nai', '2005-05-25 07:49:38', 1, 0),
(9, 'Nguyễn Thúy Nga', 385276448, 'thuynga@gmail.com', 'Dong Nai', '2003-06-25 07:49:38', 1, 0),
(10, 'Trần Trung Hiếu', 385276449, 'trunghieu@gmail.com', 'Dong Nai', '2022-05-31 09:50:03', 1, 0),
(11, 'Trần Ngọc Minh Anh', 385276450, 'minhanh@gmail.com', 'Dong Nai', '2022-05-31 09:49:30', 1, 0),
(12, 'Lê Thị Thúy An', 385276451, 'thuyan@gmail.com', 'Dong Nai', '2003-05-25 07:49:38', 1, 0),
(13, 'Nguyễn Ngọc Thùy Anh', 385276452, 'thuyanh@gmail.com', 'Dong Thap', '2006-07-18 07:49:38', 2, 0),
(14, 'Nguyễn Minh Huy', 385276453, 'minhhuy@gmail.com', 'Dong Thap', '2022-05-31 09:48:52', 1, 0),
(15, 'Trần Kim Sang', 385276454, 'kimsang@gmail.com', 'Dong Thap', '2007-05-25 07:49:38', 1, 0),
(16, 'Nguyễn Quốc Thịnh', 385276455, 'quocthinh@gmail.com', 'Dong Thap', '2009-10-06 07:49:38', 2, 0),
(17, 'Tạ Tấn Hoàng', 385276456, 'tanhoang@gmail.com', 'Dong Thap', '2003-05-25 07:49:38', 1, 0),
(18, 'Bùi Minh Trung Trực', 385276457, 'trungtruc@gmail.com', 'Dong Thap', '2004-05-05 07:49:38', 1, 0),
(19, 'Nguyễn Thanh Lam', 385276458, 'thanhlam@gmail.com', 'Dong Thap', '2001-11-25 07:49:38', 1, 0),
(20, 'Võ Trọng Danh', 385276459, 'trongdanh@gmail.com', 'An Giang', '2022-05-31 09:49:13', 2, 0),
(21, 'Lê Kim Tiền', 385276460, 'kimtien@gmail.com', 'An Giang', '2002-12-25 07:49:38', 1, 0),
(22, 'Lê Văn Quyết', 385276461, 'vanquyet@gmail.com', 'An Giang', '2002-09-25 07:49:38', 1, 0),
(23, 'Phạm Chiến Thắng', 385276462, 'chienthang@gmail.com', 'An Giang', '2001-10-01 07:49:38', 1, 0),
(24, 'Trần Chí Trung', 385276463, 'chitrung@gmail.com', 'An Giang', '2022-05-31 09:48:23', 2, 0),
(25, 'Lý Bằng', 385276464, 'lybang@gmail.com', 'Da Lat', '2022-05-31 09:49:47', 1, 0),
(26, 'Mai Văn Vở', 385276465, 'vanvo@gmail.com', 'Da Lat', '2022-05-31 09:49:04', 1, 0),
(27, 'Phạm Hoàng Mai', 385276466, 'hoangmai@gmail.com', 'Da Lat', '2001-05-03 07:49:38', 1, 0),
(28, 'Bùi Kim Công', 385276467, 'kimcong@gmail.com', 'Da Lat', '2002-01-25 07:49:38', 1, 0),
(29, 'Bùi Công Hùng', 385276468, 'conghung@gmail.com', 'Da Lat', '2022-05-31 09:49:55', 1, 0),
(30, 'Văn Thị Hồng', 385276469, 'hongvan@gmail.com', 'Da Lat', '2001-04-30 10:00:00', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_debt`
--

CREATE TABLE `tbl_debt` (
  `debt_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `money` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_debt`
--

INSERT INTO `tbl_debt` (`debt_id`, `client_id`, `date`, `money`) VALUES
(2, 3, '2022-05-31', 67000),
(3, 24, '2022-05-31', 40000),
(4, 10, '2022-05-31', 100000),
(5, 14, '2022-05-31', 150000),
(6, 26, '2022-05-31', 200000),
(7, 20, '2022-05-31', 47000),
(8, 11, '2022-05-31', 100000),
(9, 7, '2022-05-31', 100000),
(10, 25, '2022-05-31', 75000),
(11, 29, '2022-05-31', 100000),
(12, 10, '2022-05-31', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_author`
--

CREATE TABLE `tbl_detail_author` (
  `title_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_detail_author`
--

INSERT INTO `tbl_detail_author` (`title_id`, `author_id`) VALUES
(1, 2),
(1, 3),
(2, 2),
(3, 4),
(3, 6),
(4, 5),
(5, 5),
(5, 6),
(6, 7),
(7, 7),
(7, 8),
(7, 9),
(8, 10),
(9, 11),
(10, 11),
(10, 12),
(11, 13),
(11, 14),
(12, 15),
(12, 6),
(13, 7),
(18, 16),
(18, 17),
(19, 18),
(20, 20),
(21, 19),
(22, 20),
(22, 21),
(23, 4),
(23, 5),
(24, 22),
(25, 23),
(26, 24),
(26, 2),
(27, 1),
(27, 25),
(27, 20),
(28, 13),
(28, 21),
(29, 26),
(30, 28);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_bill`
--

CREATE TABLE `tbl_detail_bill` (
  `detail_bill_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_detail_bill`
--

INSERT INTO `tbl_detail_bill` (`detail_bill_id`, `bill_id`, `book_id`, `quantity`, `price`, `total`) VALUES
(1, 1, 12, 10, 42000, 420000),
(2, 1, 13, 11, 105000, 1155000),
(3, 1, 2, 21, 42000, 882000),
(4, 2, 3, 10, 52500, 525000),
(5, 2, 28, 15, 73500, 1102500),
(6, 2, 6, 20, 42000, 840000),
(7, 3, 21, 30, 42000, 1260000),
(8, 3, 5, 40, 52500, 2100000),
(9, 3, 4, 20, 42000, 840000),
(10, 3, 22, 20, 52500, 1050000),
(11, 4, 15, 20, 42000, 840000),
(12, 4, 13, 10, 105000, 1050000),
(13, 4, 3, 20, 52500, 1050000),
(14, 4, 28, 30, 73500, 2205000),
(15, 5, 16, 100, 42000, 4200000),
(16, 5, 9, 20, 42000, 840000),
(17, 5, 10, 10, 31500, 315000),
(18, 5, 11, 10, 105000, 1050000),
(19, 6, 27, 30, 42000, 1260000),
(20, 6, 14, 40, 42000, 1680000),
(21, 6, 1, 40, 42000, 1680000),
(22, 7, 17, 50, 42000, 2100000),
(23, 7, 25, 20, 42000, 840000),
(24, 7, 20, 30, 105000, 3150000),
(25, 8, 19, 10, 105000, 1050000),
(26, 8, 7, 10, 105000, 1050000),
(27, 9, 12, 10, 42000, 420000),
(28, 9, 13, 10, 105000, 1050000),
(29, 10, 26, 10, 105000, 1050000),
(30, 10, 23, 10, 105000, 1050000),
(31, 10, 24, 10, 105000, 1050000),
(32, 11, 22, 10, 52500, 525000),
(33, 11, 26, 10, 105000, 1050000),
(34, 12, 9, 10, 42000, 420000),
(35, 12, 18, 5, 105000, 525000),
(36, 13, 12, 5, 42000, 210000),
(37, 13, 4, 5, 42000, 210000),
(38, 13, 6, 10, 42000, 420000),
(39, 13, 18, 5, 105000, 525000),
(40, 14, 25, 3, 42000, 126000),
(41, 14, 23, 5, 105000, 525000),
(42, 14, 2, 5, 42000, 210000),
(43, 14, 5, 10, 52500, 525000),
(44, 15, 6, 5, 42000, 210000),
(45, 15, 5, 5, 52500, 262500),
(46, 15, 20, 5, 105000, 525000),
(47, 15, 19, 5, 105000, 525000),
(48, 15, 18, 5, 105000, 525000),
(49, 16, 4, 10, 42000, 420000),
(50, 16, 12, 10, 42000, 420000),
(51, 16, 9, 100, 42000, 4200000),
(52, 17, 2, 50, 42000, 2100000),
(53, 17, 19, 5, 105000, 525000),
(54, 17, 7, 10, 105000, 1050000),
(55, 17, 24, 10, 105000, 1050000),
(56, 18, 10, 10, 31500, 315000),
(57, 18, 11, 10, 105000, 1050000),
(58, 19, 12, 4, 42000, 168000),
(59, 19, 13, 180, 105000, 18900000),
(60, 20, 12, 2, 42000, 84000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_entry_money`
--

CREATE TABLE `tbl_detail_entry_money` (
  `detail_entry_money_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `entry_money_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `book_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_detail_entry_money`
--

INSERT INTO `tbl_detail_entry_money` (`detail_entry_money_id`, `book_id`, `entry_money_id`, `quantity`, `price`, `total`, `book_name`) VALUES
(3, 12, 3, 150, 40000, 6000000, '10 vạn câu hỏi vì sao loài người'),
(7, 13, 7, 150, 40000, 6000000, '10 vạn câu hỏi vì sao loài người'),
(8, 2, 8, 150, 40000, 6000000, '900 câu tiếng anh giao tiếp cuộc sống'),
(9, 3, 9, 150, 50000, 7500000, '900 câu tiếng anh giao tiếp cuộc sống tập 2'),
(10, 21, 10, 150, 40000, 6000000, 'Chuyện con mèo dạy hải âu bay'),
(11, 28, 11, 150, 70000, 10500000, 'Chó sủa nhầm cây'),
(12, 4, 12, 150, 40000, 6000000, 'Doraemon Nobita và 3 chàng hiệp sĩ mộng mơ'),
(13, 5, 13, 150, 50000, 7500000, 'Doraemon tập 1'),
(18, 6, 16, 150, 40000, 6000000, 'Doraemon tập 10'),
(19, 22, 16, 150, 50000, 7500000, 'Gặp nhau lên thiên đường'),
(24, 15, 19, 150, 40000, 6000000, 'Hack Não Ngữ Pháp'),
(25, 16, 20, 150, 40000, 6000000, 'Lịch sử loài người'),
(26, 9, 20, 300, 40000, 12000000, 'Muôn kiếp nhân sách'),
(27, 10, 20, 150, 30000, 4500000, 'Nhà giả Kim'),
(34, 11, 22, 150, 40000, 6000000, 'Nhật kí từ thiên đường'),
(35, 27, 22, 150, 40000, 6000000, 'Phát minh vĩ đại'),
(36, 14, 22, 150, 40000, 6000000, 'Tam quốc diễn nghĩa'),
(37, 17, 22, 150, 40000, 6000000, 'Thất tịch không mưa'),
(38, 1, 22, 150, 40000, 6000000, 'Tiếng anh giao tiếp'),
(39, 26, 23, 151, 100000, 15100000, 'Sói đội lốt cừu'),
(40, 11, 23, 151, 100000, 15100000, 'Nhật kí từ thiên đường'),
(41, 23, 23, 151, 100000, 15100000, 'Tây du kí'),
(42, 24, 23, 151, 100000, 15100000, 'Tìm hiểu cơ thể người'),
(46, 7, 25, 151, 100000, 15100000, 'Từ điển Anh -Việt'),
(47, 18, 25, 151, 100000, 15100000, 'Vua trò chơi tập 16'),
(48, 19, 25, 151, 100000, 15100000, 'Vua trò chơi tập 16'),
(49, 20, 25, 151, 100000, 15100000, 'Vua trò chơi tập 8'),
(50, 25, 25, 151, 40000, 6040000, 'Vì một hành tinh xanh'),
(51, 8, 26, 151, 100000, 15100000, 'Từ điển Anh-Anh_Viêt'),
(52, 5, 26, 151, 100000, 15100000, 'Doraemon tập 1'),
(53, 12, 27, 151, 40000, 6040000, '10 vạn câu hỏi vì sao loài người'),
(54, 21, 27, 151, 100000, 15100000, 'Chuyện con mèo dạy hải âu bay'),
(55, 29, 27, 151, 100000, 15100000, 'Thiêu nhi'),
(56, 12, 28, 151, 100000, 15100000, '10 vạn câu hỏi vì sao loài người'),
(57, 13, 28, 151, 100000, 15100000, '10 vạn câu hỏi vì sao động vật');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_entry_money`
--

CREATE TABLE `tbl_entry_money` (
  `entry_money_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `total` float NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_entry_money`
--

INSERT INTO `tbl_entry_money` (`entry_money_id`, `date`, `total`, `staff_id`) VALUES
(3, '2022-01-08', 6000000, 1),
(7, '2022-01-19', 6000000, 1),
(8, '2022-01-31', 6000000, 1),
(9, '2022-02-10', 7500000, 1),
(10, '2022-02-26', 6000000, 1),
(11, '2022-02-28', 10500000, 1),
(12, '2022-03-06', 6000000, 1),
(13, '2022-03-17', 7500000, 1),
(16, '2022-03-30', 13500000, 1),
(19, '2022-04-17', 6000000, 1),
(20, '2022-04-26', 22500000, 1),
(22, '2022-05-11', 30000000, 1),
(23, '2022-05-22', 60400000, 1),
(25, '2022-05-31', 66440000, 1),
(26, '2022-06-01', 30200000, 1),
(27, '2022-06-01', 36240000, 1),
(28, '2022-06-07', 30100000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_publisher`
--

CREATE TABLE `tbl_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `publisher_phone` int(11) NOT NULL,
  `publisher_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_publisher`
--

INSERT INTO `tbl_publisher` (`publisher_id`, `publisher_name`, `publisher_phone`, `publisher_email`, `publisher_address`) VALUES
(1, 'Alphabooks', 975234560, 'alphabook.vietnam@gmail.com', 'TP.HCM'),
(2, 'MCBOOKS', 975234500, 'mcbooks.contact@gmail.com', 'TP.HCM'),
(3, 'Nhã Nam', 975234460, 'nhanam.contact@gmail.com', 'TP.HCM'),
(4, 'Nhà xuất bản Kim Đồng', 965234560, 'kimdong.punlisher@gmail.com', 'VietNam'),
(5, 'NXB Trẻ', 235234541, 'nxbtre.contact@gmail.com', 'Việt Nam'),
(6, 'Đinh Tị', 974239520, 'dinhti.contact@gmail.com', 'Việt Nam'),
(7, 'NXB Thái Hà', 445234440, 'nxbthaiha.contact@gmail.com', 'Việt Nam'),
(8, 'NXB Phụ Nữ Việt Nam', 991234000, 'nxbphunu.vietnam@gmail.com', 'Việt Nam'),
(9, 'FIRST NEWS', 975777560, 'first.news.contact@gmail.com', 'TP.HCM'),
(10, 'VanLangBooks', 295234560, 'vanlangbooks@gmail.com', 'TP.HCM'),
(11, 'NXB ABC', 975234569, 'abc.publisher.vietnam@gmail.com', 'Việt Nam'),
(12, 'BIZBOOKS', 267577560, 'bizbooks.vietnam@gmail.com', 'TP.HCM'),
(13, '1980 Books', 966652560, '1980books.vietnam@gmail.com', 'Việt Nam'),
(14, 'NXB Tổng Hợp TP.HCM', 543888560, 'nxbtonghop.vietnam@gmail.com', 'TP.HCM'),
(15, 'Bách Việt', 935010102, 'bachviet.publicsher.contact@gmail.com', 'Việt Nam'),
(16, 'NXB Giáo dục', 335790860, 'nxbgiaoduc.@gmail.com', 'Việt Nam'),
(17, 'NXB Lao động', 335790852, 'nxblaodong.contact@gmail.com', 'Việt Nam'),
(18, 'NXB DHQG Hà Nội', 975447222, 'nxhdhqg.hanoi.contact@gmail.com', 'Việt Nam'),
(19, 'NXB DHQG TP.HCM', 979987331, 'nxbdhqg.tphcm@gmail.com', 'Việt Nam'),
(20, 'ThaoQuyenbooks', 343988240, 'thaoquyenbook.contact@gmail.com', 'TP.HCM'),
(21, 'Mixbooks', 969732118, 'mixbook.vietnam@gmail.com', 'Việt Nam'),
(22, 'NXB Người trẻ Việt', 856923814, 'nguoitreviet@gmail.com', 'Việt Nam'),
(23, 'Mini books', 866341990, 'minibooks@gmail.com', 'TP.HCM'),
(24, 'Skybooks', 312666597, 'skybook.contact@gmail.com', 'Hà Nội'),
(25, 'MinBooks', 975974436, 'minbook.contact@gmail.com', 'TP.HCM'),
(26, 'NXB Tuổi Thơ', 763112006, 'tuoithobook.vietnam@gmail.com', 'Việt Nam'),
(27, 'Nhím Xù', 888341225, 'nhimxu.publisher@gmail.com', 'Việt Nam'),
(28, 'NXB Mùa Hạ', 375460963, 'muahabook.contact@gmail.com', 'TP.HCM'),
(29, 'NXB Thiếu Nhi', 852346394, 'nxbthieunhi.contact@gmail.com', 'TP.HCM'),
(30, 'Learningbooks', 341777426, 'learningbook.vietnam@gmail.com', 'TP.HCM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_regulation`
--

CREATE TABLE `tbl_regulation` (
  `id` int(11) NOT NULL,
  `SoTienNoToiDa` int(11) NOT NULL,
  `SoLuongNhapToiThieu` int(11) NOT NULL,
  `SoLuongTonToiDaTruocKhiNhap` int(11) NOT NULL,
  `SoLuongTonToiThieu` int(11) NOT NULL,
  `TiLeTinhDonGiaBan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_regulation`
--

INSERT INTO `tbl_regulation` (`id`, `SoTienNoToiDa`, `SoLuongNhapToiThieu`, `SoLuongTonToiDaTruocKhiNhap`, `SoLuongTonToiThieu`, `TiLeTinhDonGiaBan`) VALUES
(1, 200000, 150, 300, 20, 1.05);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report_debt`
--

CREATE TABLE `tbl_report_debt` (
  `report_debt_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `first_debt` float NOT NULL,
  `incurred` int(11) NOT NULL,
  `final_debt` float NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_report_debt`
--

INSERT INTO `tbl_report_debt` (`report_debt_id`, `client_id`, `first_debt`, `incurred`, `final_debt`, `month`, `year`) VALUES
(1, 3, 67000, 67000, 0, 5, 2022),
(2, 24, 40000, 40000, 0, 5, 2022),
(3, 10, 100000, 100000, 0, 5, 2022),
(4, 14, 150000, 150000, 0, 5, 2022),
(5, 26, 200000, 200000, 0, 5, 2022),
(6, 20, 47000, 47000, 0, 5, 2022),
(7, 11, 100000, 100000, 0, 5, 2022),
(8, 7, 100000, 100000, 0, 5, 2022),
(9, 25, 75000, 75000, 0, 5, 2022),
(10, 29, 100000, 100000, 0, 5, 2022),
(11, 10, 100000, 100000, 0, 5, 2022);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report_stock`
--

CREATE TABLE `tbl_report_stock` (
  `stock_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `first_stock` int(11) NOT NULL,
  `incurred` int(11) NOT NULL,
  `final_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_report_stock`
--

INSERT INTO `tbl_report_stock` (`stock_id`, `book_id`, `month`, `year`, `first_stock`, `incurred`, `final_stock`) VALUES
(1, 12, 1, 2022, 0, 150, 150),
(2, 13, 1, 2022, 0, 150, 150),
(3, 2, 1, 2022, 0, 150, 150),
(4, 3, 2, 2022, 0, 150, 150),
(5, 21, 2, 2022, 0, 150, 150),
(6, 28, 2, 2022, 0, 150, 150),
(7, 4, 3, 2022, 0, 150, 150),
(8, 5, 3, 2022, 0, 150, 150),
(9, 6, 3, 2022, 0, 150, 150),
(10, 22, 3, 2022, 0, 150, 150),
(11, 15, 4, 2022, 0, 150, 150),
(12, 16, 4, 2022, 0, 150, 150),
(13, 9, 4, 2022, 0, 150, 150),
(14, 10, 4, 2022, 0, 150, 150),
(15, 3, 4, 2022, 150, 10, 140),
(16, 28, 4, 2022, 150, 15, 135),
(17, 6, 4, 2022, 150, 20, 130),
(18, 21, 4, 2022, 150, 30, 120),
(19, 5, 4, 2022, 150, 40, 110),
(20, 4, 4, 2022, 150, 20, 130),
(21, 22, 4, 2022, 150, 20, 130),
(22, 12, 2, 2022, 150, 10, 140),
(23, 13, 2, 2022, 150, 11, 139),
(24, 2, 2, 2022, 150, 21, 129),
(25, 26, 5, 2022, 0, 151, 151),
(26, 11, 5, 2022, 0, 151, 151),
(27, 23, 5, 2022, 0, 151, 151),
(28, 24, 5, 2022, 0, 151, 151),
(29, 18, 5, 2022, 0, 151, 151),
(30, 15, 5, 2022, 150, 20, 130),
(31, 13, 5, 2022, 150, 10, 140),
(32, 3, 5, 2022, 150, 20, 130),
(33, 28, 5, 2022, 150, 30, 120),
(34, 16, 5, 2022, 150, 100, 50),
(35, 9, 5, 2022, 150, 20, 130),
(36, 10, 5, 2022, 150, 10, 140),
(37, 11, 5, 2022, 0, 141, 141),
(38, 27, 5, 2022, 0, 120, 120),
(39, 14, 5, 2022, 0, 110, 110),
(40, 1, 5, 2022, 0, 110, 110),
(41, 17, 5, 2022, 0, 100, 100),
(42, 25, 5, 2022, 0, 131, 131),
(43, 20, 5, 2022, 0, 121, 121),
(44, 19, 5, 2022, 0, 141, 141),
(45, 7, 5, 2022, 0, 141, 141);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_address` varchar(255) NOT NULL,
  `staff_phone` int(11) NOT NULL,
  `staff_email` varchar(255) NOT NULL,
  `staff_startdate` datetime NOT NULL,
  `staff_position` varchar(255) NOT NULL,
  `staff_salary` float NOT NULL,
  `staff_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`staff_id`, `staff_name`, `staff_address`, `staff_phone`, `staff_email`, `staff_startdate`, `staff_position`, `staff_salary`, `staff_password`) VALUES
(1, 'Sophia', 'dsgfj', 385276400, 'ch@gmail.com', '2022-04-04 00:00:00', '1', 124568000, '5c2003b28da02b48e9ac0dae12dc799a'),
(2, 'Nguyễn Thị Lan Hương', 'TPHCM', 385276411, 'lanhuong@gmail.com', '2022-04-04 00:00:00', '1', 2456800, '123456@'),
(3, 'Lâm Quốc Thái', 'TPHCM', 385276412, 'quocthai@gmail.com', '2022-04-04 00:00:00', '1', 4456800, '234567@'),
(4, 'Nguyễn Thị Thu', 'TPHCM', 385276413, 'thunguyen@gmail.com', '2022-04-04 00:00:00', '1', 4568000, '5c20038da02b48e9ac0dae12dc799a'),
(5, 'Nguyễn Thị Hương Thảo', 'TPHCM', 385276414, 'huongthao@gmail.com', '2022-04-04 00:00:00', '2', 5568000, '5c03b28da02b48e9ac0dae12dc799a'),
(6, 'Nguyễn Hữu Nhật Tân', 'TPHCM', 385276415, 'huutan@gmail.com', '2022-04-04 00:00:00', '1', 8000000, '5c2003b28da02b48ac0dae12dc799a'),
(7, 'Phạm Gia Lộc', 'TPHCM', 385276416, 'gialoc@gmail.com', '2022-04-04 00:00:00', '1', 2458000, '5c2003b28da02b48e90dae12dc799a'),
(8, 'Lê Trịnh Thảo My', 'Dong Nai', 385276417, 'thaomy@gmail.com', '2022-04-04 00:00:00', '2', 1456000, '5c2003b28da02be9ac0dae12dc799a'),
(9, 'Nguyễn Thị Thanh Hân', 'Dong Nai', 385276418, 'thanhhan@gmail.com', '2022-04-04 00:00:00', '1', 2456800, '5c2003b28d2b48e9ac0dae12dc799a'),
(10, 'Lê Quốc Trưởng', 'Dong Nai', 385276419, 'quoctruong@gmail.com', '2022-04-04 00:00:00', '1', 1456800, '5c2003b28da028e9ac0dae12dc799a'),
(11, 'Nguyễn Thị Minh Thu', 'Dong Nai', 385276420, 'minthu@gmail.com', '2022-04-04 00:00:00', '1', 12456800, '5c2003b28da02be9ac0dae12dc799a'),
(12, 'Lê Kim Phụng', 'Dong Nai', 385276421, 'kimphung@gmail.com', '2022-05-04 00:00:00', '2', 2456800, '5c2003b28da02b48e9adae12dc799a'),
(13, 'Vũ Thái Hòa', 'Dong Nai', 385276422, 'thaihoa@gmail.com', '2022-05-04 00:00:00', '1', 1245680, '5c2003b28da02b48ec0dae12dc799a'),
(14, 'Trần Thị Thanh Vân', 'Long An', 385276423, 'thanhvan@gmail.com', '2022-05-04 00:00:00', '1', 1245680, '5c20028da02b48e9ac0dae12dc799a'),
(15, 'Phan Thị Yến Nhi', 'Long An', 385276424, 'yennhi@gmail.com', '2022-03-04 00:00:00', '1', 1245680, '5c2003b28da02b48e9ac0d2dc799a'),
(16, 'Nguyễn Hải Đăng', 'Long An', 385276425, 'haidang@gmail.com', '2022-04-04 00:00:00', '1', 1245600, '5c2003b28da02b48e9ace12dc799a'),
(17, 'Lê Minh Tiến', 'Long An', 385276426, 'minhtien@gmail.com', '2022-03-04 00:00:00', '2', 1245600, '5c2003b28da02b48ee12dc799a'),
(18, 'Trần Hoàng Khang', 'Long An', 385276427, 'hoangkhang@gmail.com', '2022-04-04 00:00:00', '2', 1245680, '5c2003b28db48e0dae12dc799a'),
(19, 'Trần Mai Thùy Trang', 'Dong Thap', 385276428, 'thuytrang@gmail.com', '2022-05-04 00:00:00', '1', 1245680, '5c2003b28d8e9ac0dae12dc799a'),
(20, 'Nguyễn Ngọc Như Quỳnh', 'Dong Thap', 385276429, 'nhuquynh@gmail.com', '2022-04-04 00:00:00', '1', 1245680, '5c2003b28d9ac0dae12dc799a'),
(21, 'Nguyễn Thu Thảo', 'Dong Thap', 385276430, 'thuthao@gmail.com', '2022-01-04 00:00:00', '1', 1245680, '5c2003b28da02b9ac0dae12dc799a'),
(22, 'Nguyễn Phước Thiên', 'Dong Thap', 385276431, 'phuocthien@gmail.com', '2022-01-04 00:00:00', '2', 1245680, '5c2003b28da8e9ac0dae12dc799a'),
(23, 'Nguyễn Duy', 'Dong Thap', 385276432, 'nguyenduy@gmail.com', '2022-01-04 00:00:00', '1', 12456800, '5c2003b28da02b48e9ae12dc799a'),
(24, 'Nguyễn Ngọc Vy', 'Dong Thap', 385276433, 'ngocvy@gmail.com', '2022-04-04 00:00:00', '1', 1345680, '5c2003b28da02b480dae12dc799a'),
(25, 'Lê Thanh Tú', 'Dong Thap', 385276434, 'thanhtu@gmail.com', '2022-04-04 00:00:00', '2', 6245680, '5c2003b28da02bac0dae12dc799a'),
(26, 'Trần Nguyễn Thanh Tú', 'Dong Thap', 385276435, 'tuthanh@gmail.com', '2022-03-04 00:00:00', '1', 2456800, '5c2003b02b48e9ac0dae12dc799a'),
(27, 'Nguyễn Hưng', 'Dong Thap', 385276436, 'hungnguyen@gmail.com', '2022-04-04 00:00:00', '2', 12456800, '5c2003b28da02bac0dae12dc799a'),
(28, 'Lê Chính Tuệ', 'Dong Thap', 385276437, 'tuechinh@gmail.com', '2022-04-04 00:00:00', '1', 12568000, '5c2003b28da029ac0dae12dc799a'),
(29, 'Nguyễn Phùng Các Các', 'Dong Thap', 385276438, 'caccac@gmail.com', '2022-03-04 00:00:00', '1', 2456800, '5c2003b202b48e9ac0dae12dc799a'),
(30, 'Nguyễn Thị Yến Linh', 'TPHCM', 385276439, 'yenlinh@gmail.com', '2022-02-04 00:00:00', '1', 1246800, '5c2003b28d8e9ac0d2dc799a'),
(31, 'Nguyễn Ngọc Châu Pha', 'TP Quãng Ngãi', 385276400, 'chaupha180801@gmail.com', '2022-05-16 15:50:53', '1', 12000000, 'pha180801');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_title`
--

CREATE TABLE `tbl_title` (
  `title_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_title`
--

INSERT INTO `tbl_title` (`title_id`, `publisher_id`, `category_id`, `title_name`) VALUES
(1, 3, 3, 'Tiếng anh giao tiếp'),
(2, 2, 4, 'Truyện con mèo nhỏ'),
(3, 4, 4, 'Muôn vạn nẻo đường'),
(4, 5, 27, 'Muôn kiếp nhân sinh'),
(5, 10, 15, 'Doraemon - Chú mèo máy đến từ tương lai'),
(6, 12, 12, 'Hoàng tử bé'),
(7, 5, 16, 'Yugio - Vua trò chơi'),
(8, 3, 27, 'Hành trình tìm đến trái tim'),
(9, 20, 14, 'Bay đến thiên đường'),
(10, 11, 21, 'Sương mờ huyền ảo'),
(11, 5, 20, 'Tu tiên chốn thiên đình'),
(12, 6, 20, 'Tây du kí'),
(13, 15, 30, '10 vạn câu hỏi vì sao'),
(14, 7, 30, 'Hành tinh xanh'),
(15, 7, 30, 'Thấu hiểu cơ thể người'),
(16, 7, 30, 'Những phát minh vĩ đại của loài người'),
(17, 6, 29, 'Nhật kí từ thiên đường'),
(18, 6, 29, 'Thất tịch không mưa'),
(19, 9, 29, 'Yêu anh hơn cả tử thần'),
(20, 22, 28, 'Sói đội lốt Cừu'),
(21, 18, 28, 'Đóa hoa ngày ấy'),
(22, 19, 26, 'Chó sủa nhầm cây'),
(23, 19, 26, 'Thầm lặng'),
(24, 4, 25, 'Từ điển Anh - Việt'),
(25, 4, 25, 'Từ điển Anh - Anh - Việt'),
(26, 23, 24, 'Ngoại ngữ IELTS'),
(27, 23, 24, 'Hack não ngữ pháp'),
(28, 26, 23, 'Tam Quốc Diễn Nghĩa'),
(29, 26, 23, 'Lịch sử loài người'),
(30, 5, 22, 'Gia đình phép thuật');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_author`
--
ALTER TABLE `tbl_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `client_id` (`client_id`,`staff_id`);

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `title_id` (`title_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_debt`
--
ALTER TABLE `tbl_debt`
  ADD PRIMARY KEY (`debt_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `tbl_detail_author`
--
ALTER TABLE `tbl_detail_author`
  ADD KEY `author_id` (`title_id`),
  ADD KEY `author_id_2` (`author_id`);

--
-- Indexes for table `tbl_detail_bill`
--
ALTER TABLE `tbl_detail_bill`
  ADD PRIMARY KEY (`detail_bill_id`),
  ADD KEY `bill_id` (`bill_id`,`book_id`);

--
-- Indexes for table `tbl_detail_entry_money`
--
ALTER TABLE `tbl_detail_entry_money`
  ADD PRIMARY KEY (`detail_entry_money_id`),
  ADD KEY `book_id` (`book_id`,`entry_money_id`);

--
-- Indexes for table `tbl_entry_money`
--
ALTER TABLE `tbl_entry_money`
  ADD PRIMARY KEY (`entry_money_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tbl_publisher`
--
ALTER TABLE `tbl_publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `tbl_regulation`
--
ALTER TABLE `tbl_regulation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_report_debt`
--
ALTER TABLE `tbl_report_debt`
  ADD PRIMARY KEY (`report_debt_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `tbl_report_stock`
--
ALTER TABLE `tbl_report_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `tbl_title`
--
ALTER TABLE `tbl_title`
  ADD PRIMARY KEY (`title_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_author`
--
ALTER TABLE `tbl_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_debt`
--
ALTER TABLE `tbl_debt`
  MODIFY `debt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_detail_bill`
--
ALTER TABLE `tbl_detail_bill`
  MODIFY `detail_bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_detail_entry_money`
--
ALTER TABLE `tbl_detail_entry_money`
  MODIFY `detail_entry_money_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_entry_money`
--
ALTER TABLE `tbl_entry_money`
  MODIFY `entry_money_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_publisher`
--
ALTER TABLE `tbl_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_report_debt`
--
ALTER TABLE `tbl_report_debt`
  MODIFY `report_debt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_report_stock`
--
ALTER TABLE `tbl_report_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_title`
--
ALTER TABLE `tbl_title`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
