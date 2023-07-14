-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 24, 2023 lúc 11:07 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `booking_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_account` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_account`, `admin_pass`) VALUES
(1, 'admin', 'chuyendecoso');

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `booking`
-- (See below for the actual view)
--
CREATE TABLE `booking` (
`bill_code` varchar(100)
,`hotel_id` varchar(50)
,`time_booked` timestamp
,`room_code` varchar(50)
,`number` int(50)
,`check_in` date
,`check_out` date
,`price` varchar(100)
,`status` varchar(10)
,`hotel_email` varchar(50)
,`sr_no` int(11)
,`hotel_name` varchar(100)
,`hotline` varchar(30)
,`location` varchar(50)
,`details` varchar(200)
,`gmap` varchar(300)
,`user_name` varchar(50)
,`email_user` varchar(100)
,`address` varchar(200)
,`phonenumber` int(50)
,`dob` date
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_bill`
--

CREATE TABLE `booking_bill` (
  `bill_code` varchar(100) NOT NULL,
  `hotel_id` varchar(50) NOT NULL,
  `time_booked` timestamp NOT NULL DEFAULT current_timestamp(),
  `room_code` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `number` int(50) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `price` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'process'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking_bill`
--

INSERT INTO `booking_bill` (`bill_code`, `hotel_id`, `time_booked`, `room_code`, `email_user`, `number`, `check_in`, `check_out`, `price`, `status`) VALUES
('1FKIDECE', 'HN10160', '2023-06-23 08:19:37', 'standard', 'test@gmail.com', 2, '2023-06-28', '2023-06-30', '800000', 'process'),
('1PN2WSKA', 'HCM50353', '2023-06-16 07:04:24', 'standard', 'test@gmail.com', 1, '2023-06-01', '2023-06-03', '200000', 'payed'),
('4W3A6GY8', 'HP10225', '2023-06-14 10:07:14', 'standard', 'test@gmail.com', 2, '2023-06-01', '2023-06-03', '600000', 'success'),
('52NRV2J6', 'HP10226', '2023-06-14 10:39:27', 'double', 'test@gmail.com', 1, '2023-06-15', '2023-06-21', '1200000', 'cancel'),
('5DPTV2FI', 'HP10226', '2023-06-14 10:38:31', 'vip', 'test@gmail.com', 2, '2023-06-01', '2023-06-03', '3200000', 'success'),
('7JYKVYZL', 'HN10160', '2023-06-17 01:29:04', 'standard', 'test@gmail.com', 1, '2023-06-08', '2023-06-09', '200000', 'success'),
('CRNSF9L4', 'HP10225', '2023-06-19 01:19:59', 'standard', 'test@gmail.com', 1, '2023-07-13', '2023-06-18', '3750000', 'payed'),
('DQQ35N58', 'HCM50353', '2023-06-16 07:24:12', 'double', 'vietlcvn123@gmail.com', 1, '2023-06-29', '2023-06-30', '200000', 'payed'),
('KJBVKK6H', 'HN10160', '2023-06-17 01:27:09', 'standard', 'test@gmail.com', 1, '2023-06-14', '2023-06-16', '400000', 'cancel'),
('WHWSCX3J', 'HN10160', '2023-06-23 08:08:35', 'standard', 'test@gmail.com', 1, '2023-06-28', '2023-06-30', '400000', 'process'),
('Y43J34LU', 'HN10160', '2023-06-17 01:35:57', 'standard', 'test@gmail.com', 1, '2023-06-07', '2023-06-09', '400000', 'success');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(150) NOT NULL,
  `pn1` varchar(30) NOT NULL,
  `pn2` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'Hoàn Kiếm, Hà Nội, Việt Nam', 'https://goo.gl/maps/isaXdJ5XGsFVhXri9', ' 84111111111111111', ' 8400000000', 'help.customer@gmail.com', 'https://vi-vn.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/?lang=vi', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d119175.9525244437!2d105.836964!3d21.022740000000002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbf59d8f429:0x7830a3dfd6e566a1!2zSG_DoG4gS2nhur9tLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1683383806966!5m2!1svi!2sus');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotel_cred`
--

CREATE TABLE `hotel_cred` (
  `sr_no` int(11) NOT NULL,
  `id_hotel` varchar(30) NOT NULL,
  `hpass` varchar(500) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `hotline` varchar(30) NOT NULL,
  `hotel_email` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `details` varchar(200) NOT NULL,
  `gmap` varchar(300) NOT NULL,
  `hotel_intro` varchar(5000) NOT NULL,
  `hotel_about` varchar(5000) NOT NULL,
  `img_hotel` varchar(500) NOT NULL,
  `fb_link` varchar(100) NOT NULL,
  `insta_link` varchar(100) NOT NULL,
  `twitter_link` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hotel_cred`
--

INSERT INTO `hotel_cred` (`sr_no`, `id_hotel`, `hpass`, `hotel_name`, `hotline`, `hotel_email`, `location`, `details`, `gmap`, `hotel_intro`, `hotel_about`, `img_hotel`, `fb_link`, `insta_link`, `twitter_link`, `note`) VALUES
(5, 'DN10355', '955c2655e20261d8f29c843af315e95d', 'Khách sạn Avenis ', '0236 3956888', 'hotel@gmail.com', 'Da Nang', '1691 Nguyễn Tất Thành, Thanh Khê Tây, Thanh Khê, Đà Nẵng', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28125.417747788444!2d108.15567222586061!3d16.07208527612201!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219ab94152e7d%3A0xaf11ebeb0cb50c3d!2sAvenis%20Hotel!5e0!3m2!1svi!2s!4v1683568831152!5m2!1svi!2s', 'Khách sạn Vàng Anh là một điểm đến lý tưởng cho những du khách mong muốn tận hưởng một kỳ nghỉ đáng nhớ tại thành phố này. Với vị trí trung tâm tuyệt vời, chúng tôi cung cấp không gian lưu trú đẳng cấp và dịch vụ chất lượng hàng đầu.', 'Với kiến trúc đẹp mắt và nội thất sang trọng, khách sạn Vàng Anh mang đến một không gian nghỉ dưỡng thoải mái và thư giãn. Tất cả các phòng nghỉ của chúng tôi được trang bị tiện nghi hiện đại, đảm bảo sự thoải mái tối đa cho du khách. Quý khách có thể tận hưởng cảm giác yên tĩnh và sự riêng tư trong mỗi không gian riêng tư của mình.  Ngoài ra, khách sạn Vàng Anh còn có nhà hàng cao cấp phục vụ các món ăn đa dạng từ địa phương đến quốc tế, đảm bảo thỏa mãn vị giác của bạn. Hãy trải nghiệm hương vị tuyệt vời của những món ăn chế biến bởi đầu bếp tài ba, trong một không gian trang nhã và ấm cúng.  Chúng tôi cũng tự hào có một trung tâm thể dục hiện đại, cho phép khách hàng tập luyện và giữ gìn sức khỏe trong suốt thời gian lưu trú. Đội ngũ nhân viên chuyên nghiệp và nhiệt tình của chúng tôi sẽ đảm bảo mọi nhu cầu của bạn được đáp ứng một cách tốt nhất, từ đặt tour du lịch, đưa đón sân bay cho đến các dịch vụ phòng và tiện ích khác.  Khách sạn Vàng Anh là sự lựa chọn hàng đầu cho những ai tìm kiếm một kỳ nghỉ tuyệt vời, với sự kết hợp hoàn hảo giữa dịch vụ chất lượng và không gian nghỉ dưỡng đẳng cấp. Hãy đặt phòng ngay hôm nay để trải nghiệm một kỳ nghỉ đáng nhớ cùng chúng tôi!', 'https://img.freepik.com/free-vector/flat-hotel-facade-background_23-2148157379.jpg?w=2000', 'https://facebook.com', 'Đang cập nhật', 'Đang cập nhật', ''),
(4, 'HCM50353', '955c2655e20261d8f29c843af315e95d', 'Khách Sạn Lam Sơn', 'Đang cập nhật', 'hotel@gmail.com', 'Ho Chi Minh', '241 Đ. Lê Đại Hành, Phường 13, Quận 11, Thành phố Hồ Chí Minh ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d125427.68746417016!2d106.50741370224841!3d10.764107936849797!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752eec80efcd61%3A0x7ee811524fae6237!2zS2jDoWNoIFPhuqFuIExhbSBTxqFu!5e0!3m2!1svi!2s!4v1683567803642!5m2!1svi!2s', 'Khách sạn Vàng Anh là một điểm đến lý tưởng cho những du khách mong muốn tận hưởng một kỳ nghỉ đáng nhớ tại thành phố này. Với vị trí trung tâm tuyệt vời, chúng tôi cung cấp không gian lưu trú đẳng cấp và dịch vụ chất lượng hàng đầu.', 'Với kiến trúc đẹp mắt và nội thất sang trọng, khách sạn Vàng Anh mang đến một không gian nghỉ dưỡng thoải mái và thư giãn. Tất cả các phòng nghỉ của chúng tôi được trang bị tiện nghi hiện đại, đảm bảo sự thoải mái tối đa cho du khách. Quý khách có thể tận hưởng cảm giác yên tĩnh và sự riêng tư trong mỗi không gian riêng tư của mình.  Ngoài ra, khách sạn Vàng Anh còn có nhà hàng cao cấp phục vụ các món ăn đa dạng từ địa phương đến quốc tế, đảm bảo thỏa mãn vị giác của bạn. Hãy trải nghiệm hương vị tuyệt vời của những món ăn chế biến bởi đầu bếp tài ba, trong một không gian trang nhã và ấm cúng.  Chúng tôi cũng tự hào có một trung tâm thể dục hiện đại, cho phép khách hàng tập luyện và giữ gìn sức khỏe trong suốt thời gian lưu trú. Đội ngũ nhân viên chuyên nghiệp và nhiệt tình của chúng tôi sẽ đảm bảo mọi nhu cầu của bạn được đáp ứng một cách tốt nhất, từ đặt tour du lịch, đưa đón sân bay cho đến các dịch vụ phòng và tiện ích khác.  Khách sạn Vàng Anh là sự lựa chọn hàng đầu cho những ai tìm kiếm một kỳ nghỉ tuyệt vời, với sự kết hợp hoàn hảo giữa dịch vụ chất lượng và không gian nghỉ dưỡng đẳng cấp. Hãy đặt phòng ngay hôm nay để trải nghiệm một kỳ nghỉ đáng nhớ cùng chúng tôi!', 'https://img.freepik.com/free-vector/flat-hotel-facade-background_23-2148157379.jpg?w=2000', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', ''),
(3, 'HN10160', '955c2655e20261d8f29c843af315e95d', 'Hanoi Prime Center Hotel', '+842437476265', 'hotel@gmail.com', 'Ha Noi', '36 - Hàng Hương - Quận Hoàn Kiếm - Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9352769304164!2d105.84289777498104!3d21.03527558061566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbc3e679da9%3A0xf8675a27b31f898!2sHanoi%20Prime%20Center%20Hotel!5e0!3m2!1svi!2s!4v1683514488647!5m2!1svi!2s', 'Hanoi Prime Center Hotel là một điểm đến lý tưởng cho những du khách mong muốn tận hưởng một kỳ nghỉ đáng nhớ tại thành phố này. Với vị trí trung tâm tuyệt vời, chúng tôi cung cấp không gian lưu trú đẳng cấp và dịch vụ chất lượng hàng đầu.', 'Với kiến trúc đẹp mắt và nội thất sang trọng, Hanoi Prime Center Hotel mang đến một không gian nghỉ dưỡng thoải mái và thư giãn. Tất cả các phòng nghỉ của chúng tôi được trang bị tiện nghi hiện đại, đảm bảo sự thoải mái tối đa cho du khách. Quý khách có thể tận hưởng cảm giác yên tĩnh và sự riêng tư trong mỗi không gian riêng tư của mình.  Ngoài ra, Hanoi Prime Center Hotel còn có nhà hàng cao cấp phục vụ các món ăn đa dạng từ địa phương đến quốc tế, đảm bảo thỏa mãn vị giác của bạn. Hãy trải nghiệm hương vị tuyệt vời của những món ăn chế biến bởi đầu bếp tài ba, trong một không gian trang nhã và ấm cúng.  Chúng tôi cũng tự hào có một trung tâm thể dục hiện đại, cho phép khách hàng tập luyện và giữ gìn sức khỏe trong suốt thời gian lưu trú. Đội ngũ nhân viên chuyên nghiệp và nhiệt tình của chúng tôi sẽ đảm bảo mọi nhu cầu của bạn được đáp ứng một cách tốt nhất, từ đặt tour du lịch, đưa đón sân bay cho đến các dịch vụ phòng và tiện ích khác.  Hanoi Prime Center Hotel là sự lựa chọn hàng đầu cho những ai tìm kiếm một kỳ nghỉ tuyệt vời, với sự kết hợp hoàn hảo giữa dịch vụ chất lượng và không gian nghỉ dưỡng đẳng cấp. Hãy đặt phòng ngay hôm nay để trải nghiệm một kỳ nghỉ đáng nhớ cùng chúng tôi!', 'https://img.freepik.com/free-vector/flat-hotel-facade-background_23-2148157379.jpg?w=2000', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', ''),
(1, 'HP10225', '955c2655e20261d8f29c843af315e95d', 'Khách sạn Nikko Hải Phòng', ' 0225 3265 666', 'hotel@gmail.com', 'Hai Phong', 'Số 1, Đường 1, Khu đô thị Waterfront City, Phường Vĩnh Niệm , Quận Lê Chân, Thành phố Hải Phòng.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d477333.6317506882!2d106.20156179262287!3d20.824881079422028!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a714f2046d40b%3A0x21454b1ed0c1e009!2zS2jDoWNoIHPhuqFuIE5pa2tvIEjhuqNpIFBow7JuZw!5e0!3m2!1svi!2s!4v1683506199429!5m2!1svi!2s', 'Khách sạn Vàng Anh là một điểm đến lý tưởng cho những du khách mong muốn tận hưởng một kỳ nghỉ đáng nhớ tại thành phố này. Với vị trí trung tâm tuyệt vời, chúng tôi cung cấp không gian lưu trú đẳng cấp và dịch vụ chất lượng hàng đầu.', 'Với kiến trúc đẹp mắt và nội thất sang trọng, khách sạn Vàng Anh mang đến một không gian nghỉ dưỡng thoải mái và thư giãn. Tất cả các phòng nghỉ của chúng tôi được trang bị tiện nghi hiện đại, đảm bảo sự thoải mái tối đa cho du khách. Quý khách có thể tận hưởng cảm giác yên tĩnh và sự riêng tư trong mỗi không gian riêng tư của mình.  Ngoài ra, khách sạn Vàng Anh còn có nhà hàng cao cấp phục vụ các món ăn đa dạng từ địa phương đến quốc tế, đảm bảo thỏa mãn vị giác của bạn. Hãy trải nghiệm hương vị tuyệt vời của những món ăn chế biến bởi đầu bếp tài ba, trong một không gian trang nhã và ấm cúng.  Chúng tôi cũng tự hào có một trung tâm thể dục hiện đại, cho phép khách hàng tập luyện và giữ gìn sức khỏe trong suốt thời gian lưu trú. Đội ngũ nhân viên chuyên nghiệp và nhiệt tình của chúng tôi sẽ đảm bảo mọi nhu cầu của bạn được đáp ứng một cách tốt nhất, từ đặt tour du lịch, đưa đón sân bay cho đến các dịch vụ phòng và tiện ích khác.  Khách sạn Vàng Anh là sự lựa chọn hàng đầu cho những ai tìm kiếm một kỳ nghỉ tuyệt vời, với sự kết hợp hoàn hảo giữa dịch vụ chất lượng và không gian nghỉ dưỡng đẳng cấp. Hãy đặt phòng ngay hôm nay để trải nghiệm một kỳ nghỉ đáng nhớ cùng chúng tôi!', 'https://img.freepik.com/free-vector/flat-hotel-facade-background_23-2148157379.jpg?w=2000', 'https://facebook.com', 'Đang cập nhật', 'Đang cập nhật', ''),
(2, 'HP10226', '955c2655e20261d8f29c843af315e95d', 'Minh Anh Hotel & Apartment', ' 096 221 55 66 ', 'hotel@gmail.com', 'Hai Phong', '161- Nguyễn Văn Hới - Phường Thành Tô - Quận Hải An - Hải Phòng ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d40641.72293232748!2d106.68385206328664!3d20.82930795818602!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a71545e7655d1%3A0xd9d9cc32065f9962!2sMinh%20Anh%20Hotel%20%26%20Apartment!5e0!3m2!1svi!2s!4v1683513542345!5m2!1svi!2s', 'Khách sạn Vàng Anh là một điểm đến lý tưởng cho những du khách mong muốn tận hưởng một kỳ nghỉ đáng nhớ tại thành phố này. Với vị trí trung tâm tuyệt vời, chúng tôi cung cấp không gian lưu trú đẳng cấp và dịch vụ chất lượng hàng đầu.', 'Với kiến trúc đẹp mắt và nội thất sang trọng, khách sạn Vàng Anh mang đến một không gian nghỉ dưỡng thoải mái và thư giãn. Tất cả các phòng nghỉ của chúng tôi được trang bị tiện nghi hiện đại, đảm bảo sự thoải mái tối đa cho du khách. Quý khách có thể tận hưởng cảm giác yên tĩnh và sự riêng tư trong mỗi không gian riêng tư của mình.\n\nNgoài ra, khách sạn Vàng Anh còn có nhà hàng cao cấp phục vụ các món ăn đa dạng từ địa phương đến quốc tế, đảm bảo thỏa mãn vị giác của bạn. Hãy trải nghiệm hương vị tuyệt vời của những món ăn chế biến bởi đầu bếp tài ba, trong một không gian trang nhã và ấm cúng.\n\nChúng tôi cũng tự hào có một trung tâm thể dục hiện đại, cho phép khách hàng tập luyện và giữ gìn sức khỏe trong suốt thời gian lưu trú. Đội ngũ nhân viên chuyên nghiệp và nhiệt tình của chúng tôi sẽ đảm bảo mọi nhu cầu của bạn được đáp ứng một cách tốt nhất, từ đặt tour du lịch, đưa đón sân bay cho đến các dịch vụ phòng và tiện ích khác.\n\nKhách sạn Vàng Anh là sự lựa chọn hàng đầu cho những ai tìm kiếm một kỳ nghỉ tuyệt vời, với sự kết hợp hoàn hảo giữa dịch vụ chất lượng và không gian nghỉ dưỡng đẳng cấp. Hãy đặt phòng ngay hôm nay để trải nghiệm một kỳ nghỉ đáng nhớ cùng chúng tôi!', 'https://img.freepik.com/free-vector/flat-hotel-facade-background_23-2148157379.jpg?w=2000', 'https://facebook.com', 'https://www.instagram.com', 'https://twitter.com', 'Khách sạn hoa phượng đỏ'),
(9, 'LC00001', '955c2655e20261d8f29c843af315e95d', 'Lao Cai Star Hotel', '0123456', 'hotel@gmail.com', 'Lao Cai', '3 Hoàng Liên - Cốc Lếu - Lào Cai', '', 'Khách sạn Vàng Anh là một điểm đến lý tưởng cho những du khách mong muốn tận hưởng một kỳ nghỉ đáng nhớ tại thành phố này. Với vị trí trung tâm tuyệt vời, chúng tôi cung cấp không gian lưu trú đẳng cấp và dịch vụ chất lượng hàng đầu.', 'Với kiến trúc đẹp mắt và nội thất sang trọng, khách sạn Vàng Anh mang đến một không gian nghỉ dưỡng thoải mái và thư giãn. Tất cả các phòng nghỉ của chúng tôi được trang bị tiện nghi hiện đại, đảm bảo sự thoải mái tối đa cho du khách. Quý khách có thể tận hưởng cảm giác yên tĩnh và sự riêng tư trong mỗi không gian riêng tư của mình.  Ngoài ra, khách sạn Vàng Anh còn có nhà hàng cao cấp phục vụ các món ăn đa dạng từ địa phương đến quốc tế, đảm bảo thỏa mãn vị giác của bạn. Hãy trải nghiệm hương vị tuyệt vời của những món ăn chế biến bởi đầu bếp tài ba, trong một không gian trang nhã và ấm cúng.  Chúng tôi cũng tự hào có một trung tâm thể dục hiện đại, cho phép khách hàng tập luyện và giữ gìn sức khỏe trong suốt thời gian lưu trú. Đội ngũ nhân viên chuyên nghiệp và nhiệt tình của chúng tôi sẽ đảm bảo mọi nhu cầu của bạn được đáp ứng một cách tốt nhất, từ đặt tour du lịch, đưa đón sân bay cho đến các dịch vụ phòng và tiện ích khác.  Khách sạn Vàng Anh là sự lựa chọn hàng đầu cho những ai tìm kiếm một kỳ nghỉ tuyệt vời, với sự kết hợp hoàn hảo giữa dịch vụ chất lượng và không gian nghỉ dưỡng đẳng cấp. Hãy đặt phòng ngay hôm nay để trải nghiệm một kỳ nghỉ đáng nhớ cùng chúng tôi!', 'https://img.freepik.com/free-vector/flat-hotel-facade-background_23-2148157379.jpg?w=2000', '', '', '', ''),
(10, 'TTH003', '955c2655e20261d8f29c843af315e95d', 'Khách sạn Êmm Huế', '02343828255', 'hotel@gmail.com', 'Thua Thien Hue', '15 Lý Thường Kiệt, Phú Nhuận, Thành phố Huế, Thừa Thiên Huế', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotel_queries`
--

CREATE TABLE `hotel_queries` (
  `sr_no` int(11) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `hotel_email` varchar(100) NOT NULL,
  `hotel_hotline` varchar(50) NOT NULL,
  `hotel_address` varchar(500) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'process'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hotel_queries`
--

INSERT INTO `hotel_queries` (`sr_no`, `hotel_name`, `hotel_email`, `hotel_hotline`, `hotel_address`, `status`) VALUES
(1, 'Khách sạn Êmm Huế', 'hotel@gmail.com', '02343828255', '15 Lý Thường Kiệt, Phú Nhuận, Thành phố Huế, Thừa Thiên Huế', 'process');

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `hotel_room`
-- (See below for the actual view)
--
CREATE TABLE `hotel_room` (
`sr_no` int(11)
,`id_hotel` varchar(30)
,`hotel_name` varchar(100)
,`hotline` varchar(30)
,`location` varchar(50)
,`details` varchar(200)
,`gmap` varchar(300)
,`hotel_id` varchar(50)
,`room_code` varchar(50)
,`number` int(11)
,`convenient` varchar(300)
,`price` varchar(10)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` varchar(100) NOT NULL COMMENT 'thành viên thanh toán',
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating_bill`
--

CREATE TABLE `rating_bill` (
  `sr_no` int(11) NOT NULL,
  `hotel_id` varchar(50) NOT NULL,
  `bill_code` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `sore` int(10) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rating_bill`
--

INSERT INTO `rating_bill` (`sr_no`, `hotel_id`, `bill_code`, `date`, `sore`, `subject`, `message`) VALUES
(35, 'HP10225', '4W3A6GY8', '2023-06-14', 4, 'Chất lượng dịch vụ', 'Khách sạn đẹp, nhân viên thân thiện, nhiệt tình nhưng mà phòng mình ở bị mất nước. Nhân viên hỗ trợ đổi phòng ngay và luôn'),
(36, 'HP10226', '5DPTV2FI', '2023-06-19', 5, 'Giá cả phải chăng', 'Giá cả hợp lý, dịch vụ ok, nhân viên thân thiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `sr_no` int(11) NOT NULL,
  `hotel_id` varchar(50) NOT NULL,
  `room_code` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `convenient` varchar(300) NOT NULL,
  `price` varchar(10) NOT NULL,
  `img_room` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`sr_no`, `hotel_id`, `room_code`, `number`, `convenient`, `price`, `img_room`) VALUES
(10, 'HN10160', 'standard', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '200000', 'https://www.shutterstock.com/image-photo/interior-single-bed-hotel-bedroom-260nw-713511961.jpg'),
(11, 'HN10160', 'double', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '300000', 'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
(12, 'HN10160', 'vip', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '600000', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/133138792.jpg?k=16c9d18409bf216bba43fc6dd5367ea5b6313ce60362cd1976fa97bd1326d029&o=&hp=1'),
(13, 'HP10225', 'standard', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '150000', 'https://www.shutterstock.com/image-photo/interior-single-bed-hotel-bedroom-260nw-713511961.jpg'),
(14, 'HP10225', 'double', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '200000', 'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
(15, 'HP10225', 'vip', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '500000', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/133138792.jpg?k=16c9d18409bf216bba43fc6dd5367ea5b6313ce60362cd1976fa97bd1326d029&o=&hp=1'),
(16, 'HP10226', 'standard', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '150000', 'https://www.shutterstock.com/image-photo/interior-single-bed-hotel-bedroom-260nw-713511961.jpg'),
(33, 'DN10355', 'vip', 5, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '500000', 'https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?auto=compress&cs=tinysrgb&w=600'),
(39, 'DN10355', 'standard', 5, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '200000', 'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(48, 'DN10355', 'double', 5, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '300000', 'https://images.pexels.com/photos/2029722/pexels-photo-2029722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(50, 'HP10226', 'vip', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '800000', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/133138792.jpg?k=16c9d18409bf216bba43fc6dd5367ea5b6313ce60362cd1976fa97bd1326d029&o=&hp=1'),
(62, 'HP10226', 'double', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '200000', 'https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1174&q=80'),
(63, 'HCM50353', 'standard', 5, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '100000', 'https://images.pexels.com/photos/1743229/pexels-photo-1743229.jpeg'),
(69, 'HCM50353', 'double', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '200000', 'https://images.pexels.com/photos/2029722/pexels-photo-2029722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(71, 'HCM50353', 'vip', 10, 'Điều hòa - Nóng lạnh - Wifi - Ti vi - Tủ lạnh', '500000', 'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, '123123', 'tesst123', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_cred`
--

CREATE TABLE `user_cred` (
  `user_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phonenumber` int(50) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(200) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_cred`
--

INSERT INTO `user_cred` (`user_name`, `email`, `address`, `phonenumber`, `dob`, `password`, `note`) VALUES
('Nguyen Duc Viet', 'test@gmail.com', 'Lào Cai ', 989131187, '1211-12-12', '202cb962ac59075b964b07152d234b70', ''),
('Việt Nguyễn', 'vietlcvn123@gmail.com', 'Lào Cai', 2147483647, '1222-12-12', '202cb962ac59075b964b07152d234b70', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `date`) VALUES
(25, 'Việt Nguyễn', 'test@gmail.com', 'Không đăng ký được tài khoản', 'Tôi ko đăng ký được tài khoản ', '2023-06-12'),
(26, 'Việt Nguyễn', 'test@gmail.com', 'Không đăng ký được tài khoản', 'Tôi ko đăng ký được tài khoản ', '2023-06-12'),
(27, 'Việt Nguyễn', 'test@gmail.com', 'Không đăng ký được tài khoản', 'Tôi ko đăng ký được tài khoản ', '2023-06-12'),
(28, 'Việt Nguyễn', 'test@gmail.com', 'Test trợ giúp', 'test', '2023-06-12');

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `user_rating`
-- (See below for the actual view)
--
CREATE TABLE `user_rating` (
`hotel_id` varchar(50)
,`bill_code` varchar(50)
,`date` date
,`score` int(10)
,`subject` varchar(200)
,`message` varchar(500)
,`user_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `booking`
--
DROP TABLE IF EXISTS `booking`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `booking`  AS SELECT `booking_bill`.`bill_code` AS `bill_code`, `booking_bill`.`hotel_id` AS `hotel_id`, `booking_bill`.`time_booked` AS `time_booked`, `booking_bill`.`room_code` AS `room_code`, `booking_bill`.`number` AS `number`, `booking_bill`.`check_in` AS `check_in`, `booking_bill`.`check_out` AS `check_out`, `booking_bill`.`price` AS `price`, `booking_bill`.`status` AS `status`, `hotel_cred`.`hotel_email` AS `hotel_email`, `hotel_cred`.`sr_no` AS `sr_no`, `hotel_cred`.`hotel_name` AS `hotel_name`, `hotel_cred`.`hotline` AS `hotline`, `hotel_cred`.`location` AS `location`, `hotel_cred`.`details` AS `details`, `hotel_cred`.`gmap` AS `gmap`, `user_cred`.`user_name` AS `user_name`, `user_cred`.`email` AS `email_user`, `user_cred`.`address` AS `address`, `user_cred`.`phonenumber` AS `phonenumber`, `user_cred`.`dob` AS `dob` FROM ((`booking_bill` join `hotel_cred` on(`booking_bill`.`hotel_id` = `hotel_cred`.`id_hotel`)) join `user_cred` on(`booking_bill`.`email_user` = `user_cred`.`email`)) ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `hotel_room`
--
DROP TABLE IF EXISTS `hotel_room`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hotel_room`  AS SELECT DISTINCT `hotel_cred`.`sr_no` AS `sr_no`, `hotel_cred`.`id_hotel` AS `id_hotel`, `hotel_cred`.`hotel_name` AS `hotel_name`, `hotel_cred`.`hotline` AS `hotline`, `hotel_cred`.`location` AS `location`, `hotel_cred`.`details` AS `details`, `hotel_cred`.`gmap` AS `gmap`, `rooms`.`hotel_id` AS `hotel_id`, `rooms`.`room_code` AS `room_code`, `rooms`.`number` AS `number`, `rooms`.`convenient` AS `convenient`, `rooms`.`price` AS `price` FROM (`hotel_cred` join `rooms` on(`hotel_cred`.`id_hotel` = `rooms`.`hotel_id`)) ;

-- --------------------------------------------------------

--
-- Cấu trúc cho view `user_rating`
--
DROP TABLE IF EXISTS `user_rating`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_rating`  AS SELECT `rating_bill`.`hotel_id` AS `hotel_id`, `rating_bill`.`bill_code` AS `bill_code`, `rating_bill`.`date` AS `date`, `rating_bill`.`sore` AS `score`, `rating_bill`.`subject` AS `subject`, `rating_bill`.`message` AS `message`, `booking`.`user_name` AS `user_name` FROM (`rating_bill` join `booking`) WHERE `rating_bill`.`bill_code` = `booking`.`bill_code` ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `booking_bill`
--
ALTER TABLE `booking_bill`
  ADD PRIMARY KEY (`bill_code`),
  ADD KEY `hotel_bill` (`hotel_id`),
  ADD KEY `email_user_bill` (`email_user`);

--
-- Chỉ mục cho bảng `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `hotel_cred`
--
ALTER TABLE `hotel_cred`
  ADD PRIMARY KEY (`id_hotel`),
  ADD UNIQUE KEY `sr_no` (`sr_no`);

--
-- Chỉ mục cho bảng `hotel_queries`
--
ALTER TABLE `hotel_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating_bill`
--
ALTER TABLE `rating_bill`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `bill_rating` (`bill_code`),
  ADD KEY `hotel_rating` (`hotel_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hotel_cred`
--
ALTER TABLE `hotel_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `hotel_queries`
--
ALTER TABLE `hotel_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `rating_bill`
--
ALTER TABLE `rating_bill`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking_bill`
--
ALTER TABLE `booking_bill`
  ADD CONSTRAINT `email_user_bill` FOREIGN KEY (`email_user`) REFERENCES `user_cred` (`email`),
  ADD CONSTRAINT `hotel_bill` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_cred` (`id_hotel`);

--
-- Các ràng buộc cho bảng `rating_bill`
--
ALTER TABLE `rating_bill`
  ADD CONSTRAINT `bill_rating` FOREIGN KEY (`bill_code`) REFERENCES `booking_bill` (`bill_code`),
  ADD CONSTRAINT `hotel_rating` FOREIGN KEY (`hotel_id`) REFERENCES `hotel_cred` (`id_hotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
