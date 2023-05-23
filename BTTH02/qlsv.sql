-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 09:40 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlsv`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID_ThamDu` int(11) NOT NULL,
  `Ngay` date DEFAULT NULL,
  `ID_LopHocPhan` int(11) DEFAULT NULL,
  `ID_SinhVien` int(11) DEFAULT NULL,
  `TrangThaiThamDu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ID_ThamDu`, `Ngay`, `ID_LopHocPhan`, `ID_SinhVien`, `TrangThaiThamDu`) VALUES
(1, '2023-05-11', 5, 2051060047, 'Absent'),
(2, '2023-04-25', 5, 2051060259, 'Present'),
(3, '2023-01-29', 5, 2051060321, 'Absent'),
(4, '2022-06-19', 5, 2051060536, 'Present'),
(5, '2022-07-04', 5, 2051061352, 'Absent'),
(6, '2022-07-27', 5, 2051061520, 'Present'),
(7, '2022-10-20', 5, 2051061841, 'Absent'),
(8, '2022-09-28', 5, 2051061898, 'Present'),
(9, '2022-07-21', 5, 2051062074, 'Absent'),
(10, '2022-05-20', 5, 2051062356, 'Present'),
(11, '2022-06-03', 5, 2051062402, 'Absent'),
(12, '2023-04-06', 5, 2051062507, 'Present'),
(13, '2022-08-28', 5, 2051062947, 'Absent'),
(14, '2022-06-28', 5, 2051063158, 'Present'),
(15, '2023-04-09', 5, 2051063857, 'Absent'),
(16, '2022-12-17', 5, 2051063862, 'Present'),
(17, '2023-04-24', 5, 2051064025, 'Absent'),
(18, '2022-12-05', 5, 2051064191, 'Present'),
(19, '2023-05-14', 5, 2051064431, 'Absent'),
(20, '2022-09-16', 5, 2051064570, 'Present'),
(21, '2023-01-20', 5, 2051064677, 'Absent'),
(22, '2023-04-03', 5, 2051064816, 'Present'),
(23, '2023-03-06', 5, 2051065004, 'Absent'),
(24, '2023-04-17', 5, 2051065120, 'Present'),
(25, '2022-10-06', 5, 2051065397, 'Absent'),
(26, '2023-02-19', 5, 2051065658, 'Present'),
(27, '2023-04-09', 5, 2051066052, 'Absent'),
(28, '2022-05-29', 5, 2051066098, 'Present'),
(29, '2022-08-23', 5, 2051066102, 'Absent'),
(30, '2022-06-01', 5, 2051066180, 'Present'),
(31, '2022-07-09', 5, 2051066195, 'Absent'),
(32, '2022-06-18', 5, 2051066261, 'Present'),
(33, '2023-04-07', 5, 2051066518, 'Absent'),
(34, '2023-02-21', 5, 2051066549, 'Present'),
(35, '2023-05-06', 5, 2051066615, 'Absent'),
(36, '2022-11-09', 5, 2051066699, 'Present'),
(37, '2022-12-07', 5, 2051066713, 'Absent'),
(38, '2022-10-31', 5, 2051067698, 'Present'),
(39, '2023-04-05', 5, 2051067709, 'Absent'),
(40, '2023-01-01', 5, 2051067760, 'Present'),
(41, '2023-02-08', 5, 2051067800, 'Absent'),
(42, '2023-01-04', 5, 2051067860, 'Present'),
(43, '2022-09-17', 5, 2051067952, 'Absent'),
(44, '2022-07-26', 5, 2051068292, 'Present'),
(45, '2022-07-22', 5, 2051068382, 'Absent'),
(46, '2023-04-11', 5, 2051068909, 'Present'),
(47, '2022-08-08', 5, 2051068942, 'Absent'),
(48, '2022-09-21', 5, 2051069283, 'Present'),
(49, '2023-04-29', 5, 2051069850, 'Absent'),
(50, '2022-11-01', 5, 2051069988, 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `classsubjects`
--

CREATE TABLE `classsubjects` (
  `ID_LopHocPhan` int(11) NOT NULL,
  `ID_KhoaHoc` int(11) DEFAULT NULL,
  `ID_GiangVien` int(11) DEFAULT NULL,
  `KhoangThoiGian` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classsubjects`
--

INSERT INTO `classsubjects` (`ID_LopHocPhan`, `ID_KhoaHoc`, `ID_GiangVien`, `KhoangThoiGian`) VALUES
(5, 8, 15, '5');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `ID_KhoaHoc` int(11) NOT NULL,
  `TenKhoaHoc` varchar(10) DEFAULT NULL,
  `TieuDe` varchar(100) DEFAULT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`ID_KhoaHoc`, `TenKhoaHoc`, `TieuDe`, `MoTa`) VALUES
(5, 'KIAB', 'Biostatistician IV', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(6, 'LIPO', 'Internal Auditor', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.'),
(7, 'KMAC', 'Occupational Therapist', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.'),
(8, 'GLBU', 'Safety Technician I', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.'),
(9, 'YMMB', 'Developer III', 'Suspendisse potenti.'),
(10, 'OP17', 'Research Associate', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.'),
(11, 'WAJU', 'Help Desk Operator', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.'),
(12, 'EDAC', 'Food Chemist', 'Aenean sit amet justo. Morbi ut odio.'),
(13, 'MMIO', 'Business Systems Development Analyst', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'),
(14, 'OPMJ', 'Statistician I', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.'),
(15, 'UKCK', 'VP Accounting', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(16, 'AYNO', 'Recruiter', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.'),
(17, 'WAQT', 'Librarian', 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.'),
(18, 'WABQ', 'Cost Accountant', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.'),
(19, 'KPOF', 'Safety Technician II', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
(20, NULL, 'Nuclear Power Engineer', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.'),
(21, 'YLRE', 'Human Resources Manager', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.'),
(22, 'NZGB', 'Database Administrator I', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.'),
(23, 'VHST', 'Staff Scientist', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.'),
(24, 'SKLM', 'Research Associate', 'Duis mattis egestas metus.'),
(25, 'KGLR', 'Staff Accountant I', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.'),
(26, 'DBBB', 'Engineer IV', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.'),
(27, 'HTDA', 'Internal Auditor', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.'),
(28, 'SPZO', 'Structural Engineer', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.'),
(29, 'KSLC', 'Automation Specialist IV', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.'),
(30, 'AYGT', 'Junior Executive', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.'),
(31, NULL, 'Senior Quality Engineer', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(32, 'KSEA', 'Environmental Specialist', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.'),
(33, 'YSCR', 'Software Test Engineer IV', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.'),
(34, 'DNJO', 'Biostatistician III', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.'),
(35, NULL, 'Food Chemist', 'Nulla ac enim.'),
(36, 'FHAW', 'Librarian', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.'),
(37, NULL, 'Community Outreach Specialist', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero.'),
(38, 'KMLI', 'Programmer Analyst III', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.'),
(39, 'EICK', 'Engineer I', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.'),
(40, 'SKCD', 'Marketing Manager', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.'),
(41, 'YSWG', 'Business Systems Development Analyst', 'Phasellus in felis.'),
(42, 'SPRU', 'Financial Analyst', 'Duis aliquam convallis nunc.'),
(43, 'FSSF', 'Developer III', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.'),
(44, 'GQNT', 'Director of Sales', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),
(45, 'KHEZ', 'Cost Accountant', 'Nam dui.'),
(46, NULL, 'Office Assistant II', 'Ut tellus. Nulla ut erat id mauris vulputate elementum.'),
(47, 'SMPA', 'Staff Scientist', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.'),
(48, 'KHTL', 'Pharmacist', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.'),
(49, 'VTBF', 'Chief Design Engineer', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.'),
(50, 'AFEEE', 'Phu ho', 'da chon dung nen van minh');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `ID_GiangVien` int(11) NOT NULL,
  `Ten` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `ThongTinLienHe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`ID_GiangVien`, `Ten`, `Email`, `ThongTinLienHe`) VALUES
(1, 'Cherilyn', 'cnewnham0@columbia.edu', '351-75-8170'),
(2, 'Freedman', 'fbonnette1@typepad.com', '267-06-7299'),
(3, 'Pryce', 'padan2@nifty.com', '524-40-9827'),
(4, 'Gillian', 'gwagg3@yale.edu', '294-86-1205'),
(5, 'Carlita', 'ctorrent4@dropbox.com', '359-08-2936'),
(6, 'Carolan', 'candreoletti5@google.cn', '735-46-4557'),
(7, 'Peg', 'ppepi6@pagesperso-orange.fr', '383-10-6175'),
(8, 'Ryley', 'rfrowing7@vinaora.com', '762-51-5932'),
(9, 'Katya', 'kyanov8@yolasite.com', '885-27-7908'),
(10, 'Jackelyn', 'jroblin9@elpais.com', '601-66-4672'),
(11, 'Hedvige', 'hernshawa@spotify.com', '123-21-3685'),
(12, 'Nadya', 'ncomollib@so-net.ne.jp', '207-35-7489'),
(13, 'Cordula', 'cscamalc@webeden.co.uk', '261-35-1568'),
(14, 'Bab', 'bdiversd@51.la', '168-35-6369'),
(15, 'Lonna', 'lbeechcrafte@moonfruit.com', '891-02-3201'),
(16, 'Issy', 'imacnucatorf@techcrunch.com', '413-24-1647'),
(17, 'Inger', 'igreshamg@auda.org.au', '599-21-5958'),
(18, 'Krista', 'kyakovichh@nationalgeographic.com', '631-69-1144'),
(19, 'Rosamond', 'rbusseni@w3.org', '418-36-1959'),
(20, 'Gloriane', 'gspeerej@cbsnews.com', '702-20-1979'),
(21, 'Nike', 'nfidelek@hatena.ne.jp', '543-04-4103'),
(22, 'Linda', 'laberdeinl@chronoengine.com', '199-45-1432'),
(23, 'Alexander', 'amerredym@timesonline.co.uk', '570-99-9448'),
(24, 'Salim', 'strenouthn@ca.gov', '661-57-0999'),
(25, 'Barnabas', 'bdzenisenkao@time.com', '394-09-0515'),
(26, 'Nestor', 'nangelinip@geocities.com', '414-88-1224'),
(27, 'Van', 'vtollfreeq@vimeo.com', '571-12-1754'),
(28, 'Caitrin', 'cfrainr@indiegogo.com', '101-48-4302'),
(29, 'Brooke', 'bungers@omniture.com', '193-35-1568'),
(30, 'Kassi', 'kbowryt@xrea.com', '684-16-2219'),
(31, 'Tamas', 'tmarrowu@cyberchimps.com', '746-63-3323'),
(32, 'Beale', 'bviversv@about.com', '398-36-6897'),
(33, 'Dasie', 'dattenborroww@forbes.com', '196-70-9361'),
(34, 'Arvin', 'amoinex@miibeian.gov.cn', '514-81-7763'),
(35, 'Gardener', 'gcahany@mysql.com', '764-67-6117'),
(36, 'Budd', 'bsethz@upenn.edu', '611-21-7952'),
(37, 'Isahella', 'isimonyi10@loc.gov', '477-47-9485'),
(38, 'Teodoor', 'tcosser11@freewebs.com', '727-93-1857'),
(39, 'Asa', 'aauston12@nps.gov', '703-41-4477'),
(40, 'Valentin', 'vbentzen13@independent.co.uk', '789-68-1891'),
(41, 'Gui', 'gmaughan14@soundcloud.com', '260-83-4778'),
(42, 'Hedvig', 'hlehrer15@i2i.jp', '409-95-6567'),
(43, 'Alwin', 'astartin16@uiuc.edu', '804-29-7137'),
(44, 'Ana', 'awaison17@google.cn', '733-37-6061'),
(45, 'Cybill', 'ctipens18@acquirethisname.com', '596-27-3932'),
(46, 'Gaelan', 'gdwyr19@mayoclinic.com', '823-40-8475'),
(47, 'Ellie', 'elahiff1a@pcworld.com', '232-94-9101'),
(48, 'Wandis', 'wisacq1b@istockphoto.com', '126-62-1893'),
(49, 'Timmie', 'tmclukie1c@ifeng.com', '381-50-5972'),
(50, 'Tillie', 'tinnes1d@paginegialle.it', '114-19-4288');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `ID_SinhVien` int(11) NOT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `ThongTinLienHe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID_SinhVien`, `HoTen`, `NgaySinh`, `Email`, `ThongTinLienHe`) VALUES
(2051060047, 'Jarred Menco', '0000-00-00', 'jmencoz@smh.com.au', '863-761-8979'),
(2051060259, 'Cull Playdon', '0000-00-00', 'cplaydon6@examiner.com', '267-581-2723'),
(2051060321, 'Bar Pagan', '0000-00-00', 'bpaganx@wsj.com', '207-143-9878'),
(2051060536, 'Min Burnitt', '0000-00-00', 'mburnitti@weebly.com', '889-207-9785'),
(2051061352, 'Bronnie Hullah', '0000-00-00', 'bhullah17@amazon.co.jp', '561-536-7620'),
(2051061520, 'Maridel Foxton', '0000-00-00', 'mfoxtont@ycombinator.com', '323-487-1949'),
(2051061841, 'Bartlet Chmiel', '0000-00-00', 'bchmiel1b@ning.com', '575-636-5025'),
(2051061898, 'Theresita Stivey', '0000-00-00', 'tstiveya@biglobe.ne.jp', '417-890-7309'),
(2051062074, 'Agnesse MacColgan', '0000-00-00', 'amaccolgan1a@360.cn', '204-902-9276'),
(2051062356, 'Jerald Nairn', '0000-00-00', 'jnairnc@virginia.edu', '596-918-6875'),
(2051062402, 'Riordan Lapworth', '0000-00-00', 'rlapworth7@shutterfly.com', '379-843-7112'),
(2051062507, 'Pammie Bosson', '0000-00-00', 'pbossonb@zimbio.com', '370-954-8052'),
(2051062947, 'Andris Kippax', '0000-00-00', 'akippaxs@google.it', '295-850-2263'),
(2051063158, 'Leopold Teasdale-Markie', '0000-00-00', 'lteasdalemarkie8@geocities.jp', '548-319-3110'),
(2051063857, 'Aron Mennithorp', '0000-00-00', 'amennithorpq@mac.com', '902-251-3945'),
(2051063862, 'Rooney Colliar', '0000-00-00', 'rcolliar5@prweb.com', '470-168-5401'),
(2051064025, 'Morten Hamp', '0000-00-00', 'mhamp12@addtoany.com', '673-668-8893'),
(2051064191, 'Farrand Nalder', '0000-00-00', 'fnalder18@mail.ru', '781-491-8670'),
(2051064431, 'Alison Cords', '0000-00-00', 'acordsl@zimbio.com', '811-615-2679'),
(2051064570, 'Meredeth Caseley', '0000-00-00', 'mcaseley2@xinhuanet.com', '512-288-0196'),
(2051064677, 'Benedetto Cardinale', '0000-00-00', 'bcardinaleo@hostgator.com', '402-745-4944'),
(2051064816, 'Knox Larmour', '0000-00-00', 'klarmourd@odnoklassniki.ru', '609-512-0162'),
(2051065004, 'Kittie Schole', '0000-00-00', 'kscholey@jiathis.com', '129-558-9860'),
(2051065120, 'Valerie Hartness', '0000-00-00', 'vhartness9@gnu.org', '673-752-3741'),
(2051065397, 'Rodrigo Gehrts', '0000-00-00', 'rgehrtsm@geocities.com', '454-793-2345'),
(2051065658, 'Davita Petracco', '0000-00-00', 'dpetracco1c@jalbum.net', '444-225-7705'),
(2051066052, 'Tiebold Bridgens', '0000-00-00', 'tbridgens13@usnews.com', '258-843-9284'),
(2051066098, 'Northrop Dungey', '0000-00-00', 'ndungeyk@t-online.de', '827-986-6590'),
(2051066102, 'Frances Berrington', '0000-00-00', 'fberrington1@umich.edu', '137-251-0213'),
(2051066180, 'Taddeo Red', '0000-00-00', 'tredh@google.com.br', '916-454-7750'),
(2051066195, 'Cloe Evamy', '0000-00-00', 'cevamyf@sun.com', '601-130-0494'),
(2051066261, 'Joeann Buzine', '0000-00-00', 'jbuzine15@msu.edu', '616-764-8156'),
(2051066518, 'Dyna Iacobacci', '0000-00-00', 'diacobacci0@eventbrite.com', '883-723-6991'),
(2051066549, 'Milton Jeffrey', '0000-00-00', 'mjeffreyp@tripadvisor.com', '349-829-2404'),
(2051066615, 'Ferdie Wincott', '0000-00-00', 'fwincott4@odnoklassniki.ru', '159-305-6410'),
(2051066699, 'Neill Vearncomb', '0000-00-00', 'nvearncombj@1688.com', '339-528-2302'),
(2051066713, 'Darrin Emsden', '0000-00-00', 'demsdenw@pagesperso-orange.fr', '124-214-0284'),
(2051067698, 'Brannon Dowall', '0000-00-00', 'bdowall11@nifty.com', '329-626-9303'),
(2051067709, 'Jennette Klimschak', '0000-00-00', 'jklimschakv@networkadvertising.org', '317-568-4749'),
(2051067760, 'Feliks Ferreiro', '0000-00-00', 'fferreiroe@google.nl', '514-860-7870'),
(2051067800, 'Karlis Jenkison', '0000-00-00', 'kjenkison10@twitpic.com', '931-448-1038'),
(2051067860, 'Eleen Beachamp', '0000-00-00', 'ebeachampr@lycos.com', '764-739-4125'),
(2051067952, 'Ludvig Goreisr', '0000-00-00', 'lgoreisr14@indiatimes.com', '953-831-5131'),
(2051068292, 'Arlinda Ivanitsa', '0000-00-00', 'aivanitsag@mozilla.org', '592-117-0925'),
(2051068382, 'Ericka Cumberbatch', '0000-00-00', 'ecumberbatch1d@ihg.com', '494-732-1071'),
(2051068909, 'Cynthia Curgenuer', '0000-00-00', 'ccurgenuer19@redcross.org', '928-754-9881'),
(2051068942, 'Ingmar Treble', '0000-00-00', 'itrebleu@icq.com', '337-916-1380'),
(2051069283, 'Evelin O\'Roan', '0000-00-00', 'eoroann@go.com', '499-932-4263'),
(2051069850, 'Hagan Weins', '0000-00-00', 'hweins16@disqus.com', '163-216-4867'),
(2051069988, 'Wally Bolam', '0000-00-00', 'wbolam3@guardian.co.uk', '394-151-9342');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID_ThamDu`),
  ADD KEY `ID_LopHocPhan` (`ID_LopHocPhan`),
  ADD KEY `ID_SinhVien` (`ID_SinhVien`);

--
-- Indexes for table `classsubjects`
--
ALTER TABLE `classsubjects`
  ADD PRIMARY KEY (`ID_LopHocPhan`),
  ADD KEY `ID_KhoaHoc` (`ID_KhoaHoc`),
  ADD KEY `ID_GiangVien` (`ID_GiangVien`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`ID_KhoaHoc`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`ID_GiangVien`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID_SinhVien`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`ID_LopHocPhan`) REFERENCES `classsubjects` (`ID_LopHocPhan`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`ID_SinhVien`) REFERENCES `students` (`ID_SinhVien`);

--
-- Constraints for table `classsubjects`
--
ALTER TABLE `classsubjects`
  ADD CONSTRAINT `classsubjects_ibfk_1` FOREIGN KEY (`ID_KhoaHoc`) REFERENCES `courses` (`ID_KhoaHoc`),
  ADD CONSTRAINT `classsubjects_ibfk_2` FOREIGN KEY (`ID_GiangVien`) REFERENCES `lecturers` (`ID_GiangVien`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
