-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 12, 2024 at 07:58 PM
-- Server version: 8.0.39-cll-lve
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kujannej_cashzard`
--
CREATE DATABASE IF NOT EXISTS `kujannej_cashzard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `kujannej_cashzard`;

-- --------------------------------------------------------

--
-- Table structure for table `decide`
--

CREATE TABLE `decide` (
  `id` int NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `decide`
--

INSERT INTO `decide` (`id`, `email`, `city`, `amount`) VALUES
(24, 'sonalkumarheroaz@gmail.com', 'kolkata', 100);

-- --------------------------------------------------------

--
-- Table structure for table `draw`
--

CREATE TABLE `draw` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `withdraw` int NOT NULL,
  `upi` varchar(50) NOT NULL,
  `phone` int NOT NULL,
  `date` date NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `draw`
--

INSERT INTO `draw` (`id`, `email`, `withdraw`, `upi`, `phone`, `date`, `token`) VALUES
(2, 'sonalkumarheroaz@gmail.com', 200, 'sonal@upi', 2147483647, '0000-00-00', '844799348758180');

-- --------------------------------------------------------

--
-- Table structure for table `guess`
--

CREATE TABLE `guess` (
  `id` int NOT NULL,
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guess`
--

INSERT INTO `guess` (`id`, `city`) VALUES
(1, 'kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deposit` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `email`, `deposit`) VALUES
(21, 'sonalkumarheroaz@gmail.com', 500);

-- --------------------------------------------------------

--
-- Table structure for table `pro`
--

CREATE TABLE `pro` (
  `id` int NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pro`
--

INSERT INTO `pro` (`id`, `email`, `image_path`) VALUES
(20, 'sonalkumarheroaz@gmail.com', 'images2/IMG-20240808-WA0007.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sign`
--

CREATE TABLE `sign` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` int NOT NULL,
  `code` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sign`
--

INSERT INTO `sign` (`id`, `name`, `email`, `password`, `phone`, `code`) VALUES
(23, 'Sonal ', 'sonalkumarheroaz@gmail.com', 'sonal', 2147483647, 2456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `decide`
--
ALTER TABLE `decide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `draw`
--
ALTER TABLE `draw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guess`
--
ALTER TABLE `guess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro`
--
ALTER TABLE `pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `decide`
--
ALTER TABLE `decide`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `draw`
--
ALTER TABLE `draw`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guess`
--
ALTER TABLE `guess`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pro`
--
ALTER TABLE `pro`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sign`
--
ALTER TABLE `sign`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Database: `kujannej_learnfixx`
--
CREATE DATABASE IF NOT EXISTS `kujannej_learnfixx` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `kujannej_learnfixx`;

-- --------------------------------------------------------

--
-- Table structure for table `addres`
--

CREATE TABLE `addres` (
  `id` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `addres` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `state` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `pincode` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addres`
--

INSERT INTO `addres` (`id`, `email`, `addres`, `city`, `state`, `pincode`) VALUES
(1, 'demo@gmail.com', 'om nagar meethapur badarpyur', 'south delhi', '', 110044),
(2, 'demo@gmail.com', 'om nagar meethapur badarpyur', 'south delhi', 'delhi', 110044),
(3, 'gogi@gmail.com', 'om nagar badarpur', 'delhi', 'delhi', 110044),
(4, 'demon@gmail.com', 'h no.256 gali no.9 e block om nagar badaprur', 'south delhi', 'delhi', 110044),
(5, 'skillvigor@gmail.com', 'om nagar meethapur badarpyur', 'Badarpur ', 'Delhi ', 110044),
(6, 'salman@gmail.com', 'Badodra nagar ', 'Tughlakabad ', 'Delhi', 110044),
(7, 'salman5@gmail.com', 'Badodra nagar ', 'Tughlakabad ', 'Delhi', 110044),
(8, 'salman55@gmail.com', 'Badodra nagar ', 'Tughlakabad ', 'Delhi', 110044),
(9, 'aryanjaiswal@gmail.com', '256 apartment rina house', 'Badarpur ', 'Delhi', 110044),
(10, 'doctor@gmail.com', 'h no.654 bunglow 65', 'sarita vigar', 'delhi', 4545454);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `message`) VALUES
(1, 'ISHFAQ AHMAD MIR', 'meerishfaq472@gmail.com', 2147483647, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'sonal kumar', 'sonalkumarheroaz@gmail.com', 'discuss about kashmir travelling', 'hello can i ask a question which route you prefer for ladakh');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(1, 'srinagar-u.jpg'),
(2, 'sonmarg.jfif'),
(3, 'pahalgam.jpg'),
(4, 'sonmarg-u.jpg'),
(5, 'Gulmarg-Soulveda-1536x768.jpg'),
(7, 'about-1.jpg'),
(8, 'dal-lake.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` int NOT NULL,
  `date` date NOT NULL,
  `day` int NOT NULL,
  `guest` int NOT NULL,
  `request` text COLLATE utf8mb4_general_ci NOT NULL,
  `package` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `email`, `phone`, `date`, `day`, `guest`, `request`, `package`) VALUES
(1, 'sonal kumar', 'sonalkumarheroaz@gmail.com', 2147483647, '2024-09-12', 7, 4, 'need thar for traveling', ''),
(2, 'aryan jaiswal', 'jaiswal@gmail.com', 4545445, '2024-09-14', 8, 6, 'yes i need thar', 'college_crew_quest'),
(3, 'amar jha', 'jha@gmail.com', 93106754, '2024-09-19', 17, 6, 'need van', ''),
(4, 'Mohamad ', 'mohamad@gmail.com', 2147483647, '2024-09-06', 3, 5, 'Need of car', 'college_crew_quest'),
(5, 'SAJID AHMAD HAJAM', 'sajidahmadhajam@gmail.com', 2147483647, '2024-09-18', 1, 1, 'bXKJS', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `utr` varchar(50) NOT NULL,
  `screenshot_path` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `email`, `utr`, `screenshot_path`, `created_at`) VALUES
(1, 'sonal kumar', 'sonalkumarheroaz@gmail.com', '676776767', 'uploads/barcode.jpeg', '2024-09-04 15:08:24'),
(2, 'aryan ', 'aryankumar55n@gmail.com', '6764343434', 'uploads/barcode.jpeg', '2024-09-04 15:10:26'),
(3, 'Sajid AHMAD HAJAM', 'sajidahmadhajam@gmail.com', '2322', 'uploads/kpp-logo-final.png', '2024-09-05 09:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'sonal kumar', 'aryankumar555n@gmail.com', 'youtube', 0),
(2, 'ISHFAQ AHMAD MIR', 'meerishfaq472@gmail.com', '06005353856', 600535385),
(3, 'sonal kumar', 'Sonalkumar@gmail.com', 'sonal', 2147483647),
(4, 'demo kumar', 'demo@gmail.com', 'demo', 2147483647),
(5, 'demo kumar', 'demo@gmail.com', 'demo', 2147483647),
(6, 'gogi kumar', 'gogi@gmail.com', 'gogi', 2147483647),
(7, 'demon slayer', 'demon@gmail.com', 'demon', 2147483647),
(8, 'Sonal kumar', 'skillvigor@gmail.com', 'Skill', 2147483647),
(9, 'Salman khan', 'salman@gmail.com', 'Salman ', 2147483647),
(10, 'Salman khan', 'salman5@gmail.com', 'Salman ', 2147483647),
(11, 'Salman khan', 'salman55@gmail.com', 'Salman ', 2147483647),
(12, 'Aryan jaiswal ', 'aryanjaiswal@gmail.com', 'Aryan', 2147483647),
(13, 'doctor', 'doctor@gmail.com', 'doc', 986767756),
(14, 'ben 10', 'ben10@gmail.com', 'ten', 78787878),
(15, 'Shivaji', 'shivaji@gmail.com', 'shiv', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `password`, `token`, `is_verified`) VALUES
(2, 'sonal kumar', 'sonalkumarheroaz@gmail.com', 'sonal', '', 0),
(3, 'Aryan jaiswal ', 'aryan55@gmail.com', 'aryan', '', 0),
(4, 'manoj', 'manoj@gmail.com', 'manoj', '', 0),
(5, 'adatiya kumar', 'adatiya@gmail.com', 'adatiya', '', 0),
(8, 'rohan', 'rohan55@gmail.com', 'rohan', '', 0),
(9, 'shivam', 'shivam@gmail.com', 'shivam#@', '', 0),
(10, 'uniassignment', 'uniassignmenthelpseo@gmail.com', '123#Uniassignmenthelpseo', '', 0),
(11, 'Sarthak', 'letenjoylife13@gmail.com', 'Enjoylife2023', '', 0),
(17, 'sonal', 'aryankumar55n@gmail.com', '$2y$10$hYeEIFCUSv4MK4Lkd1CwyunPC/eNMJGmTqCSKd2McL60tRlpfxY/a', '5ecf2b2f43bb700fb58a45047b87cc6cdb2d3c02c569d110fb81c76134ee9b2f', 0),
(18, 'Ganesha ', 'businessaryan77@gmail.com', '$2y$10$/C2q1J0o/X4KnguVdOCDd.v8UGnWMapcO6OPGlE22K0t9TX38as9a', 'a5b4b5c7ec19e2399d2713352c332cc88ad800328655d19ec2ebabf456df0677', 0),
(19, 'Aryan mishra ', 'mishra@gmail.com', 'mishra', '4a1a890aa6c2bd48e9ebba5b826ce40833cb6add6a7fd9e23389b8d6b007288b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tiger`
--

CREATE TABLE `tiger` (
  `id` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image_path` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiger`
--

INSERT INTO `tiger` (`id`, `email`, `title`, `category`, `image_path`, `content`, `created_at`, `name`) VALUES
(6, 'sonalkumarheroaz@gmail.com', 'health problem', 'blog', 'images/20220910103120.jpeg', '<p><strong>health is basic human need </strong></p><p><strong><u>some points we consider to better health</u></strong></p><p><span style=\"color: rgb(240, 102, 102); background-color: rgb(255, 255, 204);\">avoid junk food </span></p><p><span style=\"color: rgb(240, 102, 102); background-color: rgb(255, 255, 204);\">daily exercise</span></p><p><span style=\"color: rgb(240, 102, 102); background-color: rgb(255, 255, 204);\">drink enough water </span></p>', '2024-08-28 17:13:26', ''),
(8, 'sonalkumarheroaz@gmail.com', 'my lifestyle', 'blog', 'images/images (1).png', '<p>my lifestyle is very hard and complex but i manage becase someone have resposiblity to upgrade yooiur level</p>', '2024-08-28 17:16:56', ''),
(9, 'sonalkumarheroaz@gmail.com', 'The Rise of Artificial Intelligence', 'blog', 'images/Artificial-Intelligence-in-Indonesia-The-current-state-and-its-opportunities.jpeg', '<p><strong>Artificial Intelligence</strong> (AI) has rapidly become one of the most transformative and widely discussed<u> technologies in the 21st century</u>. From automating tasks to enhancing decision-making and even revolutionizing industries like healthcare, finance, and transportation, <span style=\"background-color: rgb(255, 255, 102);\">AI\'s influence is undeniable</span>. As machine learning models grow more advanced, AI continues to evolve, opening doors to new possibilities while also raising important ethical questions about privacy, job displacement, and the future of humanity\'s relationship with technology.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>4o</p>', '2024-08-29 08:32:58', ''),
(10, 'sonalkumarheroaz@gmail.com', 'The Rise of Artificial Intelligence', 'blog', 'images/Artificial-Intelligence-in-Indonesia-The-current-state-and-its-opportunities.jpeg', '<p><strong>Artificial Intelligence</strong> (AI) has rapidly become one of the most transformative and widely discussed<u> technologies in the 21st century</u>. From automating tasks to enhancing decision-making and even revolutionizing industries like healthcare, finance, and transportation, <span style=\"background-color: rgb(255, 255, 102);\">AI\'s influence is undeniable</span>. As machine learning models grow more advanced, AI continues to evolve, opening doors to new possibilities while also raising important ethical questions about privacy, job displacement, and the future of humanity\'s relationship with technology.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>4o</p>', '2024-08-29 08:34:29', ''),
(11, 'sonalkumarheroaz@gmail.com', 'The Rise of Artificial Intelligence', 'blog', 'images/Artificial-Intelligence-in-Indonesia-The-current-state-and-its-opportunities.jpeg', '<p><strong>Artificial Intelligence</strong> (AI) has rapidly become one of the most transformative and widely discussed<u> technologies in the 21st century</u>. From automating tasks to enhancing decision-making and even revolutionizing industries like healthcare, finance, and transportation, <span style=\"background-color: rgb(255, 255, 102);\">AI\'s influence is undeniable</span>. As machine learning models grow more advanced, AI continues to evolve, opening doors to new possibilities while also raising important ethical questions about privacy, job displacement, and the future of humanity\'s relationship with technology.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p>4o</p>', '2024-08-29 08:35:38', ''),
(12, 'aryan55@gmail.com', 'our environment is very important', 'education', 'images/images.jfif', '<p>                                   <strong><em><u>our environment is very impoetant for living being</u></em></strong></p><p><br></p><p><strong><em><u>environment helps animal to survive </u></em></strong></p><p><span style=\"color: rgb(230, 0, 0);\">environment provide my best culture of world </span></p><p><span style=\"color: rgb(71, 71, 71);\">An article is&nbsp;</span><span style=\"color: rgb(4, 12, 40); background-color: rgb(211, 227, 253);\">a word used to modify a noun, which is a person, place, object, or idea</span><span style=\"color: rgb(71, 71, 71);\">. Technically, an article is an adjective, which is any word that modifies a noun. Usually adjectives modify nouns through description, but articles are used instead to point out or refer to nouns.</span></p>', '2024-08-29 11:51:29', ''),
(16, 'sonalkumarheroaz@gmail.com', 'new generation boys', 'gaming', 'images/fb.png', '<p>in this new generation boys is very aggresive and mannerless in his/her behaviour</p>', '2024-08-30 08:29:19', ''),
(17, 'uniassignmenthelpseo@gmail.com', 'Unveiling the Wonders of Science: A Guide to Science Assignment Help', 'education', 'images/2151164386.jpg', '<p><span class=\"ql-size-large\">Although science has always been an area</span></p><p>of limitless inquiry and discovery, students may find it intimidating to</p><p>navigate its intricacies at times. That\'s where <a href=\"https://www.uniassignmenthelp.net/science-assignment-help.html\" target=\"_blank\"><strong>Science assignment help</strong></a></p><p>can help, providing a guiding light in the huge ocean of scientific research.</p><p>Students can benefit from specialist assignment help Bristol services in</p><p>locations like Bristol, which are designed to cater to their individual</p><p>academic requirements. These materials can greatly lessen the load of academic</p><p>obligations and support you in succeeding in your science courses, regardless</p><p>of the complex experiments, difficult theories, or in-depth research</p><p>assignments you\'re facing.</p><p>The sheer amount of content and the</p><p>complexities of the subject matter might be overwhelming for pupils in the</p><p>ever-changing world of science education. Gaining an understanding of the</p><p>subtleties of different scientific fields, such as biology and physics, calls</p><p>for commitment in addition to having access to professional help. At this</p><p>point, Science assignment help assistance becomes essential. Students can</p><p>receive individualized support that is suited to their unique issues with assignment</p><p>help Bristol services, ensuring that the thorough guidance they receive is in</p><p>line with their academic objectives.</p><p><strong>The Power of Science Assignment Help</strong></p><p><br></p><p>Science is a broad field that includes</p><p>anything from astrophysics to molecular biology. Every scientific discipline</p><p>has unique difficulties and necessitates a thorough comprehension of intricate</p><p>ideas. Expert assistance can have a big impact on students who are having</p><p>trouble grasping complex scientific concepts or completing challenging</p><p>projects. With the help of tools and experienced teachers, Science assignment</p><p>help can simplify difficult subjects into digestible chunks. Students are able</p><p>to participate more fully in their studies thanks to this individualized</p><p>approach, which also increases academic confidence and helps with</p><p>comprehension.</p><p><strong>Local Expertise with Assignment Help Bristol</strong></p><p><br></p><p><a href=\"https://www.uniassignmenthelp.net/assignment-help-bristol.html\" target=\"_blank\"><strong>Assignment</strong></a></p><p><a href=\"https://www.uniassignmenthelp.net/assignment-help-bristol.html\" target=\"_blank\"><strong>help Bristol</strong></a> : Bristol gives this international</p><p>program a local flavor, making sure that students get assistance that is both pertinent</p><p>and easily available. Bristol tutors are knowledgeable with the state of</p><p>education in the area and may provide advice that is pertinent to the curricula</p><p>of their students. With this customized support, students get not just</p><p>excellent assistance but also advice that is suited to their particular</p><p>learning environment. Students will be well-prepared for tests and assignments</p><p>thanks to this alignment with local standards, which demonstrates that they</p><p>comprehend the expectations established by their educational institutions.</p><p><strong>Gaining Crucial Skills with Science Assignment Help</strong></p><p><br></p><p>Science</p><p>homework frequently calls for more than simply rote memorizing; it also</p><p>frequently calls for critical thinking, problem-solving, and the capacity to</p><p>apply theoretical information to real-world situations. Science assignment help</p><p>may provide students techniques to approach their assignments properly, which</p><p>can be a vital support in improving these skills. Students can learn how to</p><p>organize their assignments for maximum impact, receive comments on their work,</p><p>and obtain clarification on challenging concepts through one-on-one sessions.</p><p>Students benefit from this practical assistance in two ways: they finish their</p><p>tasks more quickly and gain a deeper understanding of the material.</p><p>&nbsp;</p><p><br></p><p><strong>Key Advantages of Science Assignment Help</strong></p><p><br></p><p>To</p><p>summarize, here are some key advantages of utilizing Science</p><p>assignment help and</p><p>assignment help Bristol<strong>:</strong></p><p><strong>Expert</strong></p><p><strong>Guidance</strong>: Having</p><p>access to competent instructors who offer individualized support and thorough explanations.</p><p><br></p><p><strong>Better</strong></p><p><strong>Understanding</strong>:</p><p>Segmenting difficult scientific ideas into digestible chunks.</p><p><br></p><p><strong>Customized</strong></p><p><strong>Assistance </strong>:&nbsp; Support based on a person\'s need and the</p><p>educational standards in the area.</p><p><br></p><p><strong>Developing</strong></p><p><strong>skills </strong>:&nbsp; Methods to improve problem-solving, critical</p><p>thinking, and efficient assignment organization.</p><p><br></p><p><strong>Local</strong></p><p><strong>insight</strong>: Tutors</p><p>who are aware of and compliant with academic standards and curricula in the</p><p>area.</p><p><strong>Long-Term Benefits of Assignment Help Bristol</strong></p><p><br></p><p>Beyond</p><p>providing instant academic support, assignment help</p><p>Bristol offers other</p><p>advantages. Students can develop a solid scientific foundation that will</p><p>benefit them throughout their academic careers and beyond by collaborating with</p><p>local experts. Higher grades, more passion for learning, and better performance</p><p>in scientific classes can all result from this support. Bristol students are</p><p>well-positioned to succeed academically and confidently follow their scientific</p><p>interests because they have access to resources and advice that are</p><p>specifically suited to meet their needs.</p><p><strong>Conclusion</strong></p><p><br></p><p>&nbsp;Learning science can be an exciting and</p><p>difficult journey, but with the correct assistance, kids can travel through it</p><p>more easily and confidently. For students in need of the knowledge and</p><p>direction necessary to succeed in their scientific studies, Science</p><p>assignment help is an</p><p>invaluable resource. Assignment help Bristol makes sure that its services are</p><p>available to residents of Bristol and that they are both pertinent and</p><p>appropriate, meeting local academic requirements and assisting learners in</p><p>realizing their full potential. Discover the advantages of assignment help and</p><p>raise your academic achievement to new levels as you embrace the wonders of</p><p>science with the support you require to succeed.</p><p>&nbsp;</p><p><br></p><p>&nbsp;</p><p><br></p><p><strong style=\"color: rgb(48, 48, 48);\">Free Resources&nbsp;</strong></p><p><br></p><p><a href=\"https://www.uniassignmenthelp.net/business-accounting-assignment-help.html\" target=\"_blank\">Business Accounting Assignment Help</a></p><p><br></p><p><a href=\"https://www.uniassignmenthelp.net/finance-assignment-help.html\" target=\"_blank\">Finance Assignment Help</a></p>', '2024-08-30 10:18:41', ''),
(18, 'letenjoylife13@gmail.com', 'The Role of Indian Railways in India’s Growth: A Comprehensive Overview', 'news_society', 'images/227.jpg', '<p><strong>Indian Railways,</strong> one of the largest rail networks in the world, is a cornerstone of</p><p>India\'s transportation infrastructure. Spanning over 68,000 kilometers and</p><p>serving millions of passengers daily, it plays a crucial role in the economic,</p><p>social, and industrial growth of the country. From facilitating economic</p><p>development to promoting social integration, Indian Railways has been</p><p>instrumental in shaping India\'s progress over the decades. This article delves</p><p>into the various dimensions of how Indian Railways contributes to India’s</p><p>growth.</p><p>&nbsp;</p><p><br></p><p><em class=\"ql-size-large\"><u>Economic Contributions</u></em></p><p><br></p><p>&nbsp;</p><p><br></p><p><strong>1. Catalyzing Industrial</strong></p><p><strong>Development</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>Indian</p><p>Railways is integral to the industrial growth of India. By providing a reliable</p><p>and efficient mode of transporting raw materials and finished goods, it</p><p>supports industries across various sectors. Coal, iron ore, and cement—key</p><p>inputs for industrial processes—are transported extensively via railways. The</p><p>connectivity provided by the rail network helps in reducing logistics costs for</p><p>industries and enhances the competitiveness of Indian goods in the global</p><p>market.</p><p>&nbsp;</p><p><br></p><p>The</p><p>establishment of dedicated freight corridors, such as the Western and Eastern</p><p>Dedicated Freight Corridors, is a testament to Indian Railways’ role in</p><p>boosting industrial efficiency. These corridors are designed to streamline</p><p>freight movement, reduce transit times, and increase capacity, thus</p><p>facilitating faster and more cost-effective movement of goods.</p><p>&nbsp;</p><p><br></p><p><strong>2. Enhancing Trade and Commerce</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>Indian</p><p>Railways is a vital link in India’s trade and commerce. By connecting remote</p><p>regions with major economic hubs, it enhances the accessibility of markets.</p><p>This connectivity facilitates the movement of agricultural produce,</p><p>manufactured goods, and other commodities, contributing to the overall growth</p><p>of trade within the country and with neighboring nations.</p><p>&nbsp;</p><p><br></p><p>Railways</p><p>also play a key role in integrating rural areas into the national economy.</p><p>Improved rail connectivity helps farmers access larger markets, reducing their</p><p>dependence on local middlemen and enabling them to get better prices for their</p><p>produce. This, in turn, supports rural income generation and economic</p><p>development.</p><p>&nbsp;</p><p><br></p><p><strong>3. Boosting Tourism</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>The Indian</p><p>Railways also plays a significant role in promoting tourism. Specialized</p><p>trains, such as the Palace on Wheels and the Maharajas\' Express, offer</p><p>luxurious travel experiences, attracting tourists from around the world.</p><p>Additionally, the extensive rail network facilitates travel to various tourist</p><p>destinations, boosting local economies and creating employment opportunities in</p><p>the tourism sector.</p><p>&nbsp;</p><p><br></p><p>By</p><p>connecting major historical and cultural sites across the country, Indian</p><p>Railways contributes to the growth of domestic and international tourism,</p><p>fostering cultural exchange and economic development in tourism-dependent</p><p>regions.</p><p>&nbsp;</p><p><br></p><p><strong>Social Contributions</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p><strong>1. Promoting Regional Integration</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>Indian</p><p>Railways serves as a unifying force in a country characterized by vast</p><p>geographical, cultural, and linguistic diversity. The extensive rail network</p><p>connects distant and diverse regions, promoting social integration and national</p><p>unity. By facilitating easy movement between different states and regions, it</p><p>fosters a sense of national identity and encourages social cohesion.</p><p>&nbsp;</p><p><br></p><p>Railways</p><p>also contribute to equitable development by connecting underserved and remote</p><p>areas with urban centers. This connectivity helps in reducing regional</p><p>disparities and ensuring that all parts of the country benefit from economic growth.</p><p>&nbsp;</p><p><br></p><p><strong>2. Providing Employment</strong></p><p><strong>Opportunities</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>Indian</p><p>Railways is one of the largest employers in the world, providing direct and</p><p>indirect employment to millions of people. From railway staff and station</p><p>workers to contractors and suppliers, the railways support a vast network of</p><p>jobs. This employment generation is crucial for improving livelihoods and</p><p>reducing poverty, particularly in rural and semi-urban areas.</p><p>&nbsp;</p><p><br></p><p>The</p><p>ongoing modernization and expansion of the rail network also create new job</p><p>opportunities in various sectors, including construction, technology, and</p><p>service industries. Initiatives like the recruitment drives for various</p><p>positions in Indian Railways contribute to reducing unemployment and enhancing</p><p>economic stability.</p><p>&nbsp;</p><p><br></p><p><strong>3. Enhancing Accessibility and</strong></p><p><strong>Mobility</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>Railways</p><p>play a crucial role in improving accessibility and mobility for people across</p><p>the country. They provide an affordable mode of transportation for millions of</p><p>passengers, including students, workers, and travelers. By offering diverse</p><p>fare options and extensive routes, Indian Railways ensures that people from</p><p>various socio-economic backgrounds can access essential services, education,</p><p>and job opportunities.</p><p>&nbsp;</p><p><br></p><p>Additionally,</p><p>initiatives like the introduction of more women-friendly and senior</p><p>citizen-friendly facilities reflect Indian Railways’ commitment to enhancing</p><p>social inclusion and ensuring equitable access to transportation services.</p><p>&nbsp;</p><p><br></p><p><strong>Challenges and Modernization Efforts</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p><strong>1. Addressing Infrastructure</strong></p><p><strong>Challenges</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>Despite</p><p>its significant contributions, Indian Railways faces several challenges,</p><p>including outdated infrastructure, congestion, and maintenance issues. The need</p><p>for modernization is pressing to keep pace with increasing passenger and</p><p>freight demands. The government has recognized these challenges and is</p><p>investing in infrastructure upgrades, such as the construction of high-speed</p><p>rail corridors, station redevelopment projects, and the adoption of modern</p><p>signaling systems.</p><p>&nbsp;</p><p><br></p><p><strong>2. Promoting Sustainability</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>As part of</p><p>its modernization efforts, Indian Railways is focusing on sustainability. The</p><p>introduction of energy-efficient trains, the use of renewable energy sources</p><p>like solar power, and the implementation of waste management systems are steps</p><p>towards reducing the environmental impact of rail operations. The goal is to</p><p>make the railways a greener and more sustainable mode of transportation.</p><p>&nbsp;</p><p><br></p><p><strong>3. Enhancing Safety and Efficiency</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>Ensuring</p><p>safety and efficiency is a top priority for Indian Railways. The modernization</p><p>agenda includes upgrading safety protocols, enhancing train control systems,</p><p>and investing in new technologies to improve operational efficiency. The</p><p>implementation of advanced train management systems and safety measures aims to</p><p>reduce accidents and enhance the overall reliability of the rail network.</p><p>&nbsp;</p><p><br></p><p><strong>Future Prospects</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>The future</p><p>of Indian Railways looks promising as it continues to evolve and expand.</p><p>Projects like the bullet train initiative, expansion of metro networks in urban</p><p>areas, and the development of new freight corridors are set to transform the</p><p>railways further. These advancements will not only improve efficiency and</p><p>connectivity but also position Indian Railways as a key driver of India’s</p><p>economic and social growth.</p><p>&nbsp;</p><p><br></p><p><strong>&nbsp;Conclusion</strong></p><p><br></p><p>&nbsp;Indian Railways is a vital component of</p><p>India’s growth story. Its contributions to economic development, social</p><p>integration, and employment generation are immense. As it continues to</p><p>modernize and adapt to new challenges, Indian Railways will remain a central</p><p>pillar in India’s progress, driving growth and prosperity across the nation.</p>', '2024-08-30 17:17:17', ''),
(19, 'letenjoylife13@gmail.com', 'Advantages and Disadvantages of Social Media', 'technology', 'images/2453842_327233-P9XOSP-876.jpg', '<p><span class=\"ql-size-large\">In the digital age, social media has become a ubiquitous presence in our lives. Platforms like Facebook, Twitter, Instagram, and TikTok have transformed the way we communicate, share information, and connect with others. While social media offers numerous benefits, it also presents significant challenges. This article delves into both the advantages and disadvantages of social media to provide a balanced perspective.</span></p><p><br></p><p><em class=\"ql-size-huge\" style=\"color: rgb(0, 71, 178);\"><u>Advantages of Social Media</u></em></p><p><br></p><ol><li><strong class=\"ql-size-large\">Enhanced Communication and Connectivity</strong></li></ol><p><br></p><p><span class=\"ql-size-large\">Social media platforms have revolutionized communication by making it easier to connect with people around the world. Whether it’s through instant messaging, video calls, or status updates, these tools have bridged geographical gaps and allowed users to maintain relationships regardless of distance. Families, friends, and colleagues can stay in touch more effectively, fostering a sense of closeness and community.</span></p><p><br></p><ol><li><strong class=\"ql-size-large\">Access to Information and Education</strong></li></ol><p><br></p><p><span class=\"ql-size-large\">Social media serves as a powerful tool for information dissemination and education. News and updates travel rapidly through these platforms, keeping users informed about global events and trends. Additionally, many educational institutions and experts use social media to share knowledge, conduct webinars, and offer online courses, making learning more accessible to a broader audience.</span></p><p><br></p><p><br></p><ol><li><strong class=\"ql-size-large\">Opportunities for Networking and Career Growth</strong></li></ol><p><br></p><p><span class=\"ql-size-large\">For professionals, social media can be a valuable resource for networking and career development. Platforms like LinkedIn offer opportunities to connect with industry peers, seek job opportunities, and showcase expertise. Networking through social media can lead to collaborations, mentorships, and career advancement, often opening doors that might not have been accessible otherwise.</span></p><p><br></p><p><br></p><ol><li><strong class=\"ql-size-large\">Empowerment and Social Movements</strong></li></ol><p><br></p><p><span class=\"ql-size-large\">Social media has played a pivotal role in empowering individuals and driving social change. Activists and advocacy groups utilize these platforms to raise awareness, mobilize supporters, and influence public opinion. Movements such as #MeToo and Black Lives Matter have gained momentum through social media, illustrating its power to amplify voices and effect societal change.</span></p><p><br></p><ol><li><strong class=\"ql-size-large\">Creative Expression and Personal Branding</strong></li></ol><p><br></p><p><span class=\"ql-size-large\">Social media provides a space for creative expression and personal branding. Users can share their artistic endeavors, hobbies, and personal achievements with a global audience. This visibility can lead to new opportunities, such as collaborations, sponsorships, and career prospects in fields like photography, writing, and music.</span></p><p><br></p><p><strong style=\"color: rgb(230, 0, 0);\" class=\"ql-size-huge\">Disadvantages of Social Media</strong></p><p><br></p><ol><li><strong class=\"ql-size-large\">Privacy and Security Concerns</strong></li></ol><p><br></p><p><span class=\"ql-size-large\">One of the major drawbacks of social media is the risk to privacy and security. Personal information shared on these platforms can be vulnerable to breaches, misuse, or unauthorized access. Cybersecurity threats, such as hacking and phishing, can compromise sensitive data, leading to potential financial and personal consequences for users.</span></p><p><br></p><ol><li><strong class=\"ql-size-large\">Mental Health Impact</strong></li></ol><p><br></p><p><span class=\"ql-size-large\">The pervasive nature of social media can have adverse effects on mental health. Users may experience feelings of inadequacy, anxiety, or depression due to constant exposure to curated and idealized portrayals of others’ lives. The pressure to conform to social norms and the fear of missing out (FOMO) can contribute to emotional distress and decreased self-esteem.</span></p><p><br></p><ol><li><strong class=\"ql-size-large\">Spread of Misinformation</strong></li></ol><p><br></p><p><span class=\"ql-size-large\">Social media has become a breeding ground for misinformation and fake news. The rapid dissemination of unverified or false information can lead to confusion and misinformed opinions. This challenge is exacerbated by algorithms that prioritize sensational content, making it difficult for users to discern credible sources from unreliable ones.</span></p><p><br></p><ol><li><strong class=\"ql-size-large\">Addiction and Time Management Issues</strong></li></ol><p><br></p><p><span class=\"ql-size-large\">Social media can be highly addictive, leading users to spend excessive amounts of time on these platforms. This addiction can interfere with productivity, personal relationships, and overall well-being. The constant need to check notifications and updates can detract from real-life experiences and responsibilities.</span></p><p><br></p><ol><li><strong class=\"ql-size-large\">Impact on Social Skills</strong></li></ol><p><br></p><p><span class=\"ql-size-large\">Over-reliance on social media for communication can impair face-to-face social skills. Individuals may struggle with real-life interactions, finding it challenging to engage in meaningful conversations or interpret non-verbal cues. This shift can affect personal and professional relationships, making it harder to build and maintain strong connections.</span></p><p><br></p><p><strong class=\"ql-size-huge\">Balancing the Scales</strong></p><p><br></p><p><span class=\"ql-size-large\">The impact of social media on our lives is multifaceted. While it offers significant advantages in terms of connectivity, information access, and empowerment, it also poses notable risks related to privacy, mental health, and misinformation. The ultimate challenge is to navigate social media thoughtfully, leveraging its benefits while being mindful of its drawbacks.</span></p><p><span class=\"ql-size-large\">Users can take proactive steps to mitigate the negative effects, such as setting boundaries for social media use, verifying information before sharing, and seeking professional help if needed for mental health concerns. By striking a balance, individuals can harness the positive aspects of social media while minimizing its potential harms.</span></p><p><span class=\"ql-size-large\">In conclusion, social media is a powerful tool with both commendable advantages and considerable disadvantages. Understanding these aspects can help users make informed decisions about their social media habits and ensure a healthier, more productive engagement with these platforms.</span></p>', '2024-09-01 09:13:22', ''),
(20, 'letenjoylife13@gmail.com', ' Paralympics', 'gaming', 'images/2151065203.jpg', '<p>The Paralympics is a major international multi-sport event for athletes with disabilities, held in conjunction with the Olympics. Established in 1960, the games feature competitors with physical and visual impairments, including amputees, athletes with cerebral palsy, and those with spinal cord injuries. The Paralympics highlight the incredible skills and determination of these athletes, promoting inclusivity and challenging perceptions of disability. Events are tailored to accommodate various impairments, ensuring fair competition and showcasing a diverse range of abilities. The games aim to inspire and empower both participants and spectators, celebrating the resilience and talent of athletes worldwide.</p>', '2024-09-01 09:17:54', ''),
(21, 'letenjoylife13@gmail.com', 'Pollution', 'health_fitness', 'images/mountain-forest-landscape-autumn-multi-colored-backdrop-generated-by-ai_188544-19704.jpg', '<ol><li><strong>Reduce Emissions</strong>: Implement stricter regulations on industrial emissions and promote clean energy.</li><li><strong>Promote Recycling</strong>: Enhance recycling programs and reduce single-use plastics.</li><li><strong>Conserve Resources</strong>: Use resources more efficiently and invest in sustainable practices.</li><li><strong>Educate and Advocate</strong>: Raise awareness about pollution and advocate for environmental policies.</li><li><strong>Support Innovation</strong>: Invest in green technologies and alternative solutions.</li><li><strong>Improve Waste Management</strong>: Develop better waste disposal and treatment systems.</li><li><strong>Protect Natural Ecosystems</strong>: Preserve forests, wetlands, and other vital natural areas.</li></ol><p><br></p><p><br></p><h5><br></h5><ol><li><strong>Adopt Eco-friendly Transportation</strong>: Encourage public transit, cycling, and electric vehicles.</li><li><strong>Regulate Agriculture</strong>: Implement sustainable farming practices to reduce runoff and pesticide use.</li><li><strong>Promote Green Building</strong>: Design and construct energy-efficient and environmentally friendly buildings.</li><li><strong>Monitor and Enforce</strong>: Strengthen enforcement of environmental regulations and conduct regular monitoring.</li><li><strong>Support Renewable Energy</strong>: Expand the use of wind, solar, and other renewable energy sources.</li><li><strong>Implement Green Policies</strong>: Advocate for and adopt policies that prioritize environmental protection.</li><li><strong>Engage Communities</strong>: Foster community involvement in local environmental initiatives and cleanup efforts.</li></ol><p><br></p><p><br></p><h5><br></h5><ol><li><strong>Reduce Chemical Usage</strong>: Minimize the use of harmful chemicals in household products and agriculture.</li><li><strong>Encourage Sustainable Fishing</strong>: Implement practices to prevent overfishing and protect marine ecosystems.</li><li><strong>Promote Conservation Efforts</strong>: Support wildlife conservation and habitat restoration projects.</li><li><strong>Invest in Research</strong>: Fund research on pollution control technologies and environmental impacts.</li><li><strong>Adopt Circular Economy Principles</strong>: Shift from a linear to a circular economy by reusing and refurbishing products.</li><li><strong>Reduce Industrial Waste</strong>: Implement waste minimization strategies and encourage industries to adopt cleaner production methods.</li><li><strong>Enhance Urban Planning</strong>: Design cities to reduce pollution through green spaces and efficient public transportation systems.</li><li><strong>Improve Water Management</strong>: Implement better practices for water use and wastewater treatment to protect water bodies.</li><li><strong>Support Legislation</strong>: Advocate for laws and regulations that target specific pollution sources and promote sustainability.</li><li><strong>Encourage Personal Responsibility</strong>: Promote individual actions like reducing energy consumption, conserving water, and reducing waste.</li><li><strong>Foster International Cooperation</strong>: Collaborate with other countries on global environmental issues and share best practices for pollution control.</li></ol><p><br></p>', '2024-09-01 09:44:08', ''),
(22, 'letenjoylife13@gmail.com', 'The Use of Metro in Delhi', 'technology', 'images/2148958146.jpg', '<p><strong>The Use of Metro in Delhi: A Comprehensive Overview</strong></p><ul><li><strong>Reduction of Traffic Congestion</strong>: The Delhi Metro, a rapid transit system, has significantly alleviated traffic congestion in the city. Before its inception, Delhi faced severe traffic jams, especially during peak hours. By providing a reliable alternative to road transport, the metro has helped in decongesting major roads, making travel smoother and reducing the time spent in traffic.</li></ul><p><br></p><ul><li><strong>Environmental Benefits</strong>: One of the key advantages of the Delhi Metro is its positive impact on the environment. By reducing the number of vehicles on the road, it has contributed to lower emissions of pollutants and greenhouse gases. The shift from private vehicles to a more <a href=\"https://collectionofblogs.com/\" target=\"_blank\">energy-efficient public transport system</a> supports Delhi’s efforts to combat air pollution and contributes to a cleaner and healthier urban environment.</li></ul><p><br></p><ul><li><strong>Economic Impact</strong>: The metro system has had a substantial economic impact. It has created thousands of jobs, both directly in metro operations and indirectly in associated sectors such as construction, maintenance, and services. Additionally, the increased mobility has enhanced economic activities by improving access to businesses, markets, and employment centers.</li></ul><p><br></p><ul><li><strong>Enhanced Connectivity</strong>: The Delhi Metro has revolutionized urban connectivity by linking various parts of the city, including underserved areas. It connects distant suburbs with the city center and integrates with other modes of transport like buses and auto-rickshaws. This network facilitates seamless and efficient travel across the city, making it easier for residents to reach their destinations.</li></ul><p><br></p><ul><li><strong>Cost-Effective Transportation</strong>: Compared to the cost of owning and maintaining a private vehicle, the metro offers a more economical alternative. The fare structure is designed to be affordable, which helps in providing a cost-effective solution fo<a href=\"https://sunshinearticles.com/\" target=\"_blank\">r daily commuters. This affordability, </a>combined with the convenience of frequent services, makes the metro an attractive choice for many.</li></ul><p><br></p><ul><li><strong>Safety and Reliability</strong>: The Delhi Metro is known for its safety and reliability. It operates with stringent safety standards, and its modern infrastructure minimizes the risk of accidents. Regular and punctual services enhance the dependability of the system, making it a trustworthy option for commuters.</li></ul><p><br></p><ul><li><strong>Social Benefits</strong>: The metro system also promotes social inclusivity by making transportation accessible to people from various socio-economic backgrounds. It has integrated features such as reserved seating for women and elderly passengers, and barrier-free access for the disabled, ensuring that all segments of the population benefit from the service.</li></ul><p><br></p><ul><li><strong>Urban Planning and Development</strong>: The presence of metro stations has spurred urban development around their vicinity. Real estate values have increased, and new businesses have emerged near metro stations. This has led to better-planned urban growth, with mixed-use developments and improved infrastructure.</li></ul><p><br></p><p><strong class=\"ql-size-huge\" style=\"color: rgb(255, 153, 0);\"><em><u>In summary, </u></em></strong>the Delhi Metro plays a crucial role in enhancing urban mobility, reducing environmental impact, and supporting economic and social development. Its extensive network and numerous benefits make it a vital component of Delhi’s transportation infrastructure.</p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', '2024-09-01 09:53:54', ''),
(23, 'letenjoylife13@gmail.com', 'The Use of Indian Railways: A Detailed Analysis', 'blog', 'images/227.jpg', '<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"about:blank\" target=\"_blank\"><strong>Mass Transportation</strong></a>: Indian</p><p>Railways is one of the largest rail networks in the world, providing mass</p><p>transportation to millions of passengers daily. It plays a crucial role in</p><p>connecting different regions of India, facilitating the movement of people from</p><p>rural areas to urban centers and vice versa. This extensive network supports</p><p>economic and social integration by making travel accessible to a large segment</p><p>of the population.</p><p><br></p><p><br></p><p><br></p><p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Economic</strong></p><p><strong>Development</strong>: The railways are a key driver of economic development in</p><p>India. They support the movement of goods and raw materials, essential for</p><p>industries such as manufacturing, mining, and agriculture. By providing an</p><p>efficient and cost-effective mode of transport for bulk goods, Indian Railways</p><p>contributes significantly to the country’s economic growth and the seamless</p><p>operation of supply chains.</p><p><br></p><p><br></p><p><br></p><p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Affordability</strong></p><p><strong>and Accessibility</strong>: Indian Railways offers a range of fare options,</p><p>making it an affordable mode of transport for various income groups. The</p><p>pricing structure includes subsidized tickets for economically weaker sections</p><p>and special concessions for senior citizens, students, and differently-abled</p><p>passengers. This broad accessibility makes it an important means of travel for</p><p>millions of Indians.</p><p><br></p><p><br></p><p><br></p><p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Job</strong></p><p><strong>Creation</strong>: The Indian Railways is one of the largest employers in the</p><p>country, providing jobs to a vast number of individuals across various roles,</p><p>including technical, operational, administrative, and support staff. This large</p><p>workforce supports livelihoods and contributes to local economies.</p><p><br></p><p><br></p><p><br></p><p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Regional</strong></p><p><strong>Connectivity</strong>: By connecting remote and underserved regions with major</p><p>cities, Indian Railways plays a pivotal role in regional development. It helps</p><p>in reducing regional disparities by improving access to markets, educational</p><p>institutions, and healthcare facilities, thus fostering balanced regional</p><p>growth.</p><p><br></p><p><br></p><p><br></p><p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Tourism</strong></p><p><strong>Promotion</strong>: Indian Railways is integral to the tourism sector, offering</p><p>scenic routes and special tourist trains that enhance travel experiences.</p><p>Routes like the Himalayan Queen and the Palace on Wheels attract both domestic</p><p>and international tourists, showcasing India\'s diverse landscapes and cultural</p><p>heritage.</p><p><br></p><p><br></p><p><br></p><p>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Safety</strong></p><p><strong>and Technological Advancements</strong>: Indian Railways has made significant</p><p>strides in improving safety and incorporating advanced technologies.</p><p>Initiatives such as the implementation of automatic signaling systems, upgraded</p><p>track infrastructure, and the introduction of modern train technologies (e.g.,</p><p>Vande Bharat Express) have enhanced operational safety and efficiency.</p><p><br></p><p><br></p><p><br></p><p>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Environmental</strong></p><p><strong>Benefits</strong>: Rail transport is generally more energy-efficient and</p><p>environmentally friendly compared to road and air travel. By reducing the</p><p>reliance on road transport, Indian Railways contributes to lower greenhouse gas</p><p>emissions and less road congestion, aligning with sustainable development</p><p>goals.</p><p>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Emergency</strong></p><p><strong>Services and Disaster Relief</strong>: Indian Railways plays a crucial role in</p><p>disaster relief and emergency response. Its extensive network allows for the</p><p>rapid mobilization of resources and personnel during natural calamities or</p><p>emergencies, providing critical support for relief operations.</p><p><br></p><p><br></p><p><br></p><p>10.&nbsp; <strong>Infrastructure</strong></p><p><strong>Development</strong>: <a href=\"about:blank\" target=\"_blank\">The</a></p><p><a href=\"about:blank\" target=\"_blank\">development of railway</a> infrastructure, including stations, tracks, and</p><p>modern amenities, stimulates local economies and improves overall</p><p>infrastructure. Upgrades to stations and services enhance passenger comfort and</p><p>convenience, contributing to a better travel experience.</p><p>In summary, Indian Railways is a vital institution that supports economic</p><p>growth, regional development, and social integration through its extensive network</p><p>and diverse services. Its role in providing affordable transportation, creating</p><p>jobs, and promoting tourism underscores its significance in India\'s</p><p>socio-economic landscape.</p><p><br></p>', '2024-09-01 10:02:57', ''),
(24, 'letenjoylife13@gmail.com', 'The Use of Waterways in India: A Concise Overview', 'finance', 'images/Cargo-ship-freight-containers.webp', '<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Economic</strong></p><p><strong>Efficiency</strong>: Waterways offer a cost-effective mode of transport for</p><p>bulk goods and heavy cargo. This mode of transport is particularly advantageous</p><p>for moving commodities like coal, iron ore, and grains, reducing transportation</p><p>costs compared to road and rail.</p><p><br></p><p><br></p><p><br></p><p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Reduced</strong></p><p><strong>Congestion</strong>: By alleviating pressure on road and rail networks,</p><p>waterways help in reducing congestion on land transport routes. This helps in</p><p>managing logistics more efficiently and lowers overall transportation costs.</p><p><br></p><p><br></p><p><br></p><p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Environmental</strong></p><p><strong>Benefits</strong>: Transporting goods by waterways is generally more</p><p>energy-efficient and environmentally friendly. It results in lower greenhouse</p><p>gas emissions and reduced fuel consumption compared to road and rail transport.</p><p><br></p><p><br></p><p><br></p><p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Regional</strong></p><p><strong>Connectivity</strong>: Waterways enhance connectivity between inland areas and</p><p>coastal regions. They facilitate access to ports, which is crucial for</p><p>international trade and the movement of goods between different parts of the</p><p>country.</p><p><br></p><p><br></p><p><br></p><p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Economic</strong></p><p><strong>Development</strong>: Developing inland waterways can spur economic growth in</p><p>underdeveloped regions by improving access to markets and resources. This can</p><p>lead to increased trade opportunities and regional development.</p><p><br></p><p><br></p><p><br></p><p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Tourism</strong></p><p><strong>Promotion</strong>: India’s waterways, including rivers and coastal routes,</p><p>offer potential for tourism development. Scenic river cruises and boat tours</p><p>can attract tourists, contributing to local economies and promoting cultural</p><p>heritage.</p><p>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Flood</strong></p><p><strong>Management</strong>: Well-managed waterways can play a role in flood control by</p><p>aiding in the effective distribution and drainage of water. Proper maintenance</p><p>and infrastructure development are essential for optimizing this benefit.</p><p><br></p><p><br></p><p><br></p><p>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Infrastructure</strong></p><p><strong>Development</strong>: Investment in waterway infrastructure, such as ports,</p><p>terminals, and navigation aids, supports the development of an efficient</p><p>transport network. This infrastructure boosts trade and commerce and enhances</p><p>logistical capabilities.</p><p><br></p><p><br></p><p><br></p><p>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Employment</strong></p><p><strong>Opportunities</strong>: The development and operation of waterways create job</p><p>opportunities in sectors such as port management, navigation, and logistics.</p><p>This supports local economies and provides livelihoods in areas dependent on</p><p>water transport.</p><p><br></p><p><br></p><p><br></p><p>10.&nbsp; <strong>Integration</strong></p><p><strong>with Other Modes</strong>: Waterways complement other transportation modes by</p><p>providing a seamless link between ports and inland regions. This integration</p><p>supports efficient multi-modal transport solutions and enhances overall</p><p>logistics.</p><p>In summary, the use of waterways in India offers economic, environmental,</p><p>and regional benefits, contributing to efficient transport, reduced congestion,</p><p>and sustainable development. Their integration with other transport systems and</p><p>potential for tourism further underscores their importance in India\'s transport</p><p>infrastructure.</p>', '2024-09-01 10:08:51', '');
INSERT INTO `tiger` (`id`, `email`, `title`, `category`, `image_path`, `content`, `created_at`, `name`) VALUES
(25, 'uniassignmenthelpseo@gmail.com', 'Thesis Triumph: Essential Tips and Strategies for Thesis Writing Help', 'education', 'images/15871 (1).jpg', '<p>One of the</p><p>most rewarding and difficult academic experiences is writing a thesis. This</p><p>important work demonstrates your research skills, analytical ability, and the</p><p>knowledge you have gained from your studies. But the road to a great thesis can</p><p>be long and difficult, with roadblocks like writer\'s block, excessive research,</p><p>and deadline pressure. Many Australian students find it difficult to manage</p><p>these difficulties together with other academic and personal obligations, which</p><p>is why <a href=\"https://www.uniassignmenthelp.net/thesis-writing-help.html\" target=\"_blank\"><strong>thesis writing help</strong></a> is such a helpful tool.</p><p>Get</p><p>professional Thesis Writing Help if you\'re having trouble coming up with a</p><p>research subject, structuring your arguments, or polishing your final</p><p>manuscript. Additionally, firms like assignment</p><p>help Australia provide crucial support to guarantee academic achievement</p><p>for people pursuing higher education in Australia. We\'ll look at important</p><p>pointers and techniques in this blog that will help you successfully complete</p><p>your thesis and get through the writing process.</p><p><strong>Thesis Writing Help: The</strong></p><p><strong>Benefits of Professional Assistance</strong></p><p><br></p><p>A solid,</p><p>concise, and well-defined thesis statement is the cornerstone of any effective</p><p>thesis. This thesis statement acts as the framework for your study, directing</p><p>your writing and assisting you in staying on course. A strong thesis statement</p><p>establishes the tone for the entire work in addition to making the goal of your</p><p>research clear. The first step in crafting a strong thesis statement is to</p><p>focus your topic and pinpoint the exact issue or question you wish to solve. </p><p><strong>Organizing and Planning</strong></p><p><strong>Your Study</strong></p><p><br></p><p>An</p><p>effective thesis is built on its foundation of research. To gain an</p><p>understanding of the previous research on your subject, start by doing an</p><p>extensive literature review. This will assist you in finding holes in the</p><p>literature and improving the thesis statement. </p><p>Another</p><p>way to keep organized is to write a thorough thesis outline. Divide your thesis</p><p>into chapters or divisions and give each one a particular set of arguments or</p><p>research subjects. This will provide you a path to take and guarantee that your</p><p>thesis stays consistent and focused.</p><p><strong>Using Precision and</strong></p><p><strong>Clarity in Your Writing</strong></p><p><br></p><p>Precision</p><p>and clarity are essential when drafting your thesis. Stay away from using</p><p>jargon or extremely complicated language as they could confuse readers. Rather,</p><p>emphasize the importance of delivering your points in an understandable and</p><p>direct way. Make sure each paragraph adds something to your larger argument by</p><p>using topic phrases to begin each one. Moreover, be certain that your thesis is</p><p>written in a unified style.</p><p>It\'s</p><p>crucial to include evidence to support your claims. Provide facts,</p><p>illustrations, or references from your research to back up any assertions you</p><p>make. This shows that you understand the subject matter well and supports your</p><p>case.</p><p>&nbsp;</p><p><br></p><p><strong>How Assignment Help</strong></p><p><strong>Australia Can Support Your Thesis Journey</strong></p><p><br></p><p>You could</p><p>occasionally find yourself trapped in the thesis writing help, even with the greatest of intentions. This is</p><p>where having expert thesis writing assistance can be quite helpful.</p><p>Professional thesis writers may offer advice on many thesis-related topics,</p><p>from honing your research question to editing your final document.</p><p>Additionally, they may assist you with editing and proofreading to make sure</p><p>your thesis is flawless and up to the greatest academic standards.</p><p>If you\'re</p><p>juggling several duties or working under pressure, professional support can be</p><p>quite beneficial. Furthermore, organizations such as <a href=\"https://www.uniassignmenthelp.net/assignment-help-australia.html\" target=\"_blank\"><strong>assignment</strong></a></p><p><a href=\"https://www.uniassignmenthelp.net/assignment-help-australia.html\" target=\"_blank\"><strong>help Australia</strong></a> may offer all-encompassing assistance for your</p><p>educational requirements, guaranteeing that you stay on track throughout your</p><p>studies</p><p><strong>Advice for Successful</strong></p><p><strong>Thesis Writing</strong></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Start Early</strong>: Allocate enough time for your</p><p>thesis\'s research, writing, and revision. It is less stressful to start early</p><p>and allows for extensive work.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Establish Reasonable Objectives</strong>: Divide your thesis into</p><p>digestible assignments and assign due dates to each. This will help you stay on</p><p>course and avoid last-minute scrambling.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Seek Feedback:</strong> Send your work to your adviser or</p><p>colleagues on a regular basis to get their opinions. You can enhance your</p><p>thesis with the aid of constructive critique.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Remain Organized</strong>: Maintain a systematic approach to</p><p>your notes, research, and drafts. You\'ll save time and maintain writing focus</p><p>by doing this.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Enjoy Yourself</strong>: Composing a thesis is a journey,</p><p>not a race. To prevent burnout and to rejuvenate, take regular breaks.</p><p><br></p><p><br></p><p><br></p><p><strong>Conclusion</strong></p><p><br></p><p>Composing a thesis is a noteworthy</p><p>scholarly accomplishment necessitating meticulous organization, committed</p><p>investigation, and proficient composition. You may overcome the difficulties of</p><p>writing a thesis and succeed by using the advice and techniques provided in</p><p>this blog. And don\'t be afraid to investigate the services provided by assignment help Australia or seek out</p><p>expert thesis Writing Help if</p><p>you ever find yourself in need of more assistance. You may make a significant</p><p>contribution to your field of study and turn your thesis into a victory with</p><p>the correct mentorship and materials.</p><p>&nbsp;</p><p><br></p><p><strong style=\"color: rgb(48, 48, 48);\">Free Resources&nbsp;</strong></p><p><a href=\"https://www.uniassignmenthelp.net/buy-research-paper.html\" target=\"_blank\">Buy Research Paper</a></p><p><br></p><p><a href=\"https://www.uniassignmenthelp.net/accounting-essay-help.html\" target=\"_blank\">Accounting Essay Help</a></p>', '2024-09-06 07:48:38', ''),
(26, 'sonalkumarheroaz@gmail.com', 'new genz', 'news_society', 'images/blog2.jpg', '<p>The new generation, often referred to as Gen Z, is shaping the future with their tech-savvy nature and progressive mindset. They are quick to adapt to the fast-paced digital world, using social media to voice their opinions and spark change. With a strong focus on sustainability, equality, and innovation, this generation is challenging traditional norms and embracing diversity like never before. They are entrepreneurs, creators, and leaders who prioritize mental health and well-being. The new generation is not just the future; they are the present, already making a significant impact on the world.</p>', '2024-09-08 11:31:52', 'sonal kumar'),
(29, 'uniassignmenthelpseo@gmail.com', 'Behind the Scenes: The Craft of Research Paper Writers', 'education', 'images/senior-teacher-explaining-his-students-front-class_1157627-659.jpg', '<p>Although</p><p>research papers are essential for academic achievement, they can be quite</p><p>difficult for students to complete. For many, it is an overwhelming endeavour</p><p>due to the extensive study, meticulous analysis, and formal writing structure</p><p>needed. This is the reason why knowledgeable <a href=\"https://www.uniassignmenthelp.net/research-paper-writers.html\" target=\"_blank\"><strong>research</strong></a></p><p><a href=\"https://www.uniassignmenthelp.net/research-paper-writers.html\" target=\"_blank\"><strong>paper writers</strong></a> are so important in helping students through this</p><p>challenging procedure.</p><p>Hiring a</p><p>professional writer can be very beneficial, regardless of whether you\'re an</p><p>undergrad assigned a thorough essay or a student in need of assistance with a</p><p>thesis. To guarantee excellent, unique work, students frequently turn to</p><p>services like \"Write My Assignment.\"</p><p>In this guide, we\'ll examine the function of research paper writers and the reasons for this.</p><p><strong>Why Do Students Rely on</strong></p><p><strong>Research Paper Writers?</strong></p><p><br></p><p>There are</p><p>several explanations for why students turn to research paper writers for assistance. First, because they are</p><p>well-versed in academic standards, these experts make sure that papers are</p><p>properly formatted, referenced, and organized. Second, time restrictions are a</p><p>common issue for students. There is little time left over for research and</p><p>writing when juggling classes, part-time work, and personal obligations.</p><p>Additionally<strong>,</strong></p><p>research paper writers</p><p>assist in demystifying complicated subjects, which is particularly beneficial</p><p>for students who lack subject-matter experience. For people who might have</p><p>trouble with grammar, citations, or academic terminology, the guarantee of</p><p>receiving a well-researched and well-written paper brings comfort.</p><p><strong>Key Benefits of Hiring</strong></p><p><strong>Research Paper Writers</strong></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Expertise: Writers</strong> who work professionally are experts</p><p>in their domains. These authors are proficient in a variety of fields and can</p><p>communicate ideas succinctly and clearly, whether they are writing about</p><p>engineering, economics, or history.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Time management</strong>: Students may feel overburdened</p><p>when deadlines approach. Selecting the \"Write My Assignment\" option</p><p>allows you to assign your task to experts, freeing you time for other academic</p><p>concerns like revision.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Assurance of Quality</strong>: To ensure original material,</p><p>every expertly written assignment or research paper is checked for plagiarism.</p><p>Furthermore, these services ensure that all of your specifications—including</p><p>word count and citation style—will be followed.</p><p><br></p><p><br></p><p><br></p><p><strong>How to Choose the Right</strong></p><p><strong>Research Paper Writers?</strong></p><p><br></p><p><strong>&nbsp;</strong></p><p><br></p><p>It can be</p><p>difficult to decide which service to trust when there are so many available to</p><p>\"<a href=\"https://www.uniassignmenthelp.net/assignment-writing-help.html\" target=\"_blank\"><strong>Write my</strong></a></p><p><a href=\"https://www.uniassignmenthelp.net/assignment-writing-help.html\" target=\"_blank\"><strong>assignment</strong></a>.\" Here are some important things to think about:</p><p>&nbsp;</p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Experience and Expertise</strong>: Verify if the authors are highly</p><p>qualified academically and possess pertinent experience in the field of your</p><p>writing.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Track</strong></p><p><strong>Record:</strong></p><p>Seek feedback and endorsements from prior pupils. A reputable writing service</p><p>ought to have a portfolio of completed works.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Direct communication: </strong>Communication between students and authors should</p><p>be made easier by a good service. This guarantees that any updates or special</p><p>instructions are handled right away.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Plagiarism Policies</strong>: Always select providers who</p><p>promise original work and Reputable platforms make sure the work is unique by</p><p>using sophisticated plagiarism detection techniques.</p><p>&nbsp;</p><p><br></p><p><strong>A</strong></p><p><strong>checklist of things to look for if you\'re searching for the top research paper</strong></p><p><strong>writers is provided below:</strong></p><p><br></p><p>&nbsp;</p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Examine Expertise</strong>: Be sure the writers have the</p><p>necessary credentials before selecting a service. For instance, the author</p><p>should have at least a bachelor\'s degree in engineering if your paper is in</p><p>that discipline.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Examine the Samples</strong>: Request sample papers or look</p><p>through their portfolio to be sure the writer\'s style is what you\'re looking</p><p>for.</p><p>&nbsp;</p><p><br></p><p><strong>&nbsp;&nbsp;&nbsp;&nbsp; Furthermore, bear the following in mind:</strong></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Turnaround Time</strong>: Even with a tight deadline, make</p><p>sure the service can meet it. Expedited solutions are available from many Write</p><p>My Assignment businesses.</p><p><br></p><p><br></p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Policies for Revision</strong>: Working with companies that</p><p>provide free revisions is crucial if the finished product falls short of your</p><p>expectations.</p><p><br></p><p><br></p><p><br></p><p><strong>In summary</strong></p><p><br></p><p>In</p><p>conclusion, hiring a professional research</p><p>paper writer can have a big impact on the calibre of your schoolwork. As</p><p>These professionals are aware of the significance of thorough investigation,</p><p>appropriate organization, and conformity to scholarly standards. The main</p><p>reason behind is their experience, they can produce excellent papers that</p><p>adhere to academic standards and specifically address the needs of your</p><p>assignment.</p><p><br></p><p><br></p><p><br></p><p>Hiring</p><p>a professional writer can help reduce the stress associated with academic</p><p>writing, whether you\'re stuck on how to tackle a challenging topic or simply</p><p>need assistance finishing your paper And Their capacity to help with \"write my assignment\" requests</p><p>also guarantees that you fulfil deadlines and enhances your comprehension of</p><p>the subject. In the end, paying for professional assistance enables you to</p><p>concentrate on becoming an expert in your field of study while submitting</p><p>polished and thoroughly researched work.</p><p><br></p><p><br></p>', '2024-09-10 06:02:48', 'uniassignment'),
(30, 'uniassignmenthelpseo@gmail.com', 'Financial Excellence: Your Guide to Mastering Finance Assignments', 'education', 'images/cartoon-people-table-with-laptop-sign-that-says-company_1293074-181661.jpg', '<p>For</p><p>students pursuing a degree in finance, business, or economics, completing</p><p>finance assignments is essential in today\'s competitive academic environment.</p><p>These tasks assess both your understanding of financial ideas and your</p><p>practical application of those concepts. Many students find these projects</p><p>difficult because of the intricacy of finance themes, tight deadlines, and high</p><p>academic requirements. </p><p>Services</p><p>like <a href=\"https://www.uniassignmenthelp.net/finance-assignment-help.html\" target=\"_blank\"><strong>Finance assignment help</strong></a> are useful in this situation.</p><p>These expert services provide students with priceless support, enabling them to</p><p>understand complex financial ideas, formulate well-organized answers, and turn</p><p>in assignments that satisfy academic standards. These services can help if</p><p>you\'re having trouble with financial accounting, investment analysis, or</p><p>corporate finance.</p><p><strong>Unlocking Success with Finance Assignment</strong></p><p><strong>Help</strong></p><p><br></p><p>The study</p><p>of finance requires accuracy, critical thinking, and analytical abilities. It</p><p>covers a wide range of subjects, from simple financial concepts to intricate</p><p>budgeting, investing, and financial statement computations. With so much on</p><p>their plate, it makes sense that many students seek the assistance of seasoned finance assignment help services to</p><p>help them succeed in their studies.</p><p>These</p><p>services are intended to offer students individualized solutions that address</p><p>their unique requirements. Students can make sure that their assignments are</p><p>accurate and in line with their teachers\' instructions by seeking professional</p><p>aid. With this degree of assistance, kids are better able to comprehend</p><p>important financial concepts, which helps them turn in high-calibre assignments</p><p>and perform better academically.</p><p><strong>Finance Assignment Help: Why Choose It?</strong></p><p><br></p><p>Access to</p><p>professional expertise is the main benefit of looking for finance assignment help. Academic</p><p>support specialists are well-versed in a variety of financial theories and how</p><p>they are used in real-world scenarios. This gives students a competitive edge</p><p>in their academic endeavours as they can learn from people with substantial</p><p>real-world expertise in finance.</p><p>A</p><p>considerable amount of time is also sometimes needed to do financial tasks</p><p>because they call for careful investigation and precise computations. Expert</p><p>assignment assistance services can provide well-researched and organized</p><p>solutions, saving students a significant amount of time. This preserves the</p><p>calibre of their work while enabling pupils to concentrate on other assignments</p><p>or personal obligations.</p><p><strong>Tailored Support and Advice</strong></p><p><br></p><p>Since each</p><p>finance assignment is different, there is no one-size-fits-all method for</p><p>finishing them successfully. The individualized guidance that students receive</p><p>from<strong> </strong>finance assignment help</p><p>services is one of its main advantages. Experts customize their help according</p><p>to the demands of the task and the pupil\'s comprehension of the subject.</p><p>&nbsp;</p><p><br></p><p>Whether</p><p>you require assistance with investment research, financial modeling, or</p><p>comprehending balance sheets, these firms offer tailored solutions to guarantee</p><p>that your assignment is thorough and simple to comprehend. Additionally, by</p><p>receiving this individualized coaching, students\' problem-solving abilities</p><p>advance, giving them more confidence for next assignments.</p><p><strong>The Advantages of Getting Sydney</strong></p><p><strong>Assignment Help</strong></p><p><br></p><p>Due to the</p><p>competitive nature of colleges and their strict requirements, academic pressure</p><p>might be even greater for students based in Australia, especially in the</p><p>vibrant metropolis of Sydney. Having access to expert <a href=\"https://www.uniassignmenthelp.net/assignment-help-sydney.html\" target=\"_blank\"><strong>assignment help Sydney</strong></a> services can help you handle</p><p>academic stress while maintaining academic excellence.</p><p><strong>Assignment</strong></p><p><strong>Help Sydney</strong></p><p>services provide numerous significant benefits.</p><p><br></p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Local</strong></p><p><strong>knowledge</strong>: Tutors</p><p>versed in the Australian educational system make sure that assignments adhere</p><p>to university regulations in the area.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Timely</strong></p><p><strong>support </strong>is</p><p>essential because of the high cost of living and the fact that many students</p><p>work part-time jobs. Assignment assistance providers can offer prompt</p><p>assistance to guarantee that due dates are fulfilled.</p><p>·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><strong>Stress</strong></p><p><strong>reduction</strong>:</p><p>Students can concentrate on other academic or personal priorities by assigning</p><p>complex finance projects to others.</p><p><strong>The Value of Extensive Investigation and</strong></p><p><strong>Evaluation</strong></p><p><br></p><p>To</p><p>generate well-informed solutions, finance assignments frequently call for a</p><p>substantial quantity of research and analysis. Extensive study is essential to</p><p>succeeding in finance, whether one is analysing an investment\'s risks and returns</p><p>or comprehending a company\'s financial statement.</p><p>Students</p><p>can get well-researched material and data through professional finance assignment help services,</p><p>which guarantees that their assignments are reliable and supported by</p><p>substantial proof. </p><p><strong>Prolonged Achievement in Education and</strong></p><p><strong>Career</strong></p><p><br></p><p>Seeking</p><p>aid with finance assignments or assignments</p><p>help&nbsp; Sydney offers advantages</p><p>that go beyond enhancing academic performance. These services give students the</p><p>tools they need to be successful in both their long-term academic endeavours</p><p>and professional careers. Students can hone their analytical skills, gain a</p><p>thorough comprehension of financial concepts, and strengthen their</p><p>problem-solving ability by working with knowledgeable instructors.</p><p><strong>In summary</strong></p><p><br></p><p>Completing</p><p>finance tasks well is essential to succeed in school and the workplace.</p><p>Students may confidently handle the complexity of finance with the help of finance assignment help providers.</p><p>Professional assignment help Sydney</p><p>can offer the knowledgeable direction, individualized support, and stress</p><p>relief you need to succeed in your academic endeavours, whether you\'re based in</p><p>Sydney or somewhere else.</p><p>&nbsp;</p><p><br></p><p>Free</p><p>Resources</p>', '2024-09-12 09:14:18', 'uniassignment');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addres`
--
ALTER TABLE `addres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiger`
--
ALTER TABLE `tiger`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addres`
--
ALTER TABLE `addres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tiger`
--
ALTER TABLE `tiger`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Database: `kujannej_skillzard`
--
CREATE DATABASE IF NOT EXISTS `kujannej_skillzard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `kujannej_skillzard`;

-- --------------------------------------------------------

--
-- Table structure for table `cert`
--

CREATE TABLE `cert` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `father` varchar(60) NOT NULL,
  `image_path` varchar(300) NOT NULL,
  `enroll` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cert`
--

INSERT INTO `cert` (`id`, `name`, `father`, `image_path`, `enroll`) VALUES
(19, 'ISHFAQ AHMAD MIR', 'Ghulam Hassan mir ', 'images2/Screenshot_2024-04-20-13-57-12-14_1c337646f29875672b5a61192b9010f9.jpg', '65088'),
(20, 'BASIT ', 'AMIN  RATHER ', 'images2/20240402224913911.jpg', '9806'),
(21, 'Basit', 'AMIN  RATHER ', 'images2/1713198583944.jpg', '64095'),
(22, 'Saksham sahare ', 'Yuvraj sahare', 'images2/Screenshot_20240422-200112.png', '441106'),
(23, 'Khan Tariq ', 'Ab razak ', 'images2/Screenshot_2024-04-22-13-54-39-848_com.instagram.android-edit.jpg', '18086'),
(24, 'Aleena firdous ', 'Ikram ullah Khan ', 'images2/Screenshot_20240427_174721.jpg', '97916'),
(25, 'Muzamil bashir ', 'Bashir ahmad kumar ', 'images2/Screenshot_2024-04-24-16-59-40-405_com.miui.gallery.jpg', '1016'),
(26, 'Ummar Imtiyaz Sheikh ', 'Late Gh Nabi Sheikh ', 'images2/Ummar imtiyaz .jpg', '58978'),
(27, 'Ummar Imtiyaz Sheikh', 'Late Gh Nabi Sheikh ', 'images2/Screenshot_2024-05-01-23-50-40-567_com.whatsapp.w4b.jpg', '58978'),
(28, 'Shahid bhat', 'Ab majeed bhat', 'images2/IMG_20240430_124345_597.jpg', '5229'),
(29, 'SAHIL SHAFI', 'MOHAMMAD SHAFI LONE', 'images2/IMG-20240504-WA0019.jpg', '42819'),
(30, 'SAHIL SHAFi', 'MOHAMMAD SHAFI LONE', 'images2/1000000800.jpg', '42819'),
(31, 'ISHFAQ AHMAD MIR', 'Ghulam Hassan mir ', 'images2/Screenshot_2024-05-13-18-49-39-00_c0d35d5c8ea536686f7fb1c9f2f8f274.jpg', '65088'),
(32, 'Momin  shabir ', 'Shabir ahmad war', 'images2/FB_IMG_1714357631049.jpg', 'War65432mo'),
(33, 'Ummar Imtiyaz Sheikh', 'Late Gh Nabi Sheikh ', 'images2/Screenshot_2024-05-23-11-25-20-635_com.google.android.apps.docs.jpg', '58978'),
(34, 'Shahid bhat', 'Ab majeed bhat', 'images2/IMG_20240508_173604_813.jpg', '48222'),
(35, 'Rashid ', 'Habib ', 'images2/IMG_20240602_143320.jpg', '7926'),
(36, 'Munawar ', 'Mushtaq ', 'images2/Screenshot_20240608_115247.jpg', '85772'),
(37, 'Farhan', 'Feroz', 'images2/Screenshot_2024-06-09-11-17-38-849_com.android.chrome.jpg', '48048'),
(38, 'Aumair ul Islam ', 'Manzoor Ahmad koka ', 'images2/1809.jpg', '33949'),
(39, 'Rashid ', 'Habibullah ', 'images2/Snapchat-701502983.jpg', '7926'),
(40, 'Shoaib Mohammad ', 'Ghulam Mohammad Najar', 'images2/IMG-20240618-WA0000.jpg', '55366'),
(41, 'Khan Masroor', 'Fareed Ahmad khan', 'images2/IMG_1014.jpeg', '96045'),
(42, 'Rashid ', 'Habib ', 'images2/1000027388.jpg', '7926'),
(43, 'Mahfooz bilal', 'Bilal ah mir', 'images2/1000082502.jpg', '5961'),
(44, 'junaid shabir', 'Shabir ahmad pala', 'images2/Screenshot_20240824-203304_Chrome.jpg', '3640'),
(45, 'Uday Yaduvanshi ', 'Ishwari Yadav ', 'images2/Picsart_24-08-08_20-36-10-522.jpg', '56674');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `message`) VALUES
(1, 'Aryan jaiswal ', 'aryankumar555n@gmail.com', 2147483647, 'Hh hello'),
(2, 'Josephlib', 'replytobasit001@yahoo.com', 2147483647, 'Urgent Action Needed: Withdraw Now—Balance at $50,000 https://script.google.com/macros/s/AKfycbxqtZk'),
(3, 'Mike Stanley\r\n', 'mikeassepay@gmail.com', 2147483647, 'Hi there, \r\n \r\nMy name is Mike from Monkey Digital, \r\n \r\nAllow me to present to you a lifetime reven'),
(4, 'Raymondlek', 'no.reply.TiaqoFischer@gmail.com', 2147483647, 'Good morning! skillzard.site \r\n \r\nDid you know that it is possible to send business offers totally l'),
(5, 'Josephlib', 'latasha.darden@yahoo.com', 2147483647, 'YOUR BALANCE IS $50,000: IMMEDIATE WITHDRAWAL NEEDED https://script.google.com/macros/s/AKfycbxvUV7R'),
(6, 'Mike Samuels\r\n', 'mikeglurN@gmail.com', 2147483647, 'Hello, \r\n \r\nHey, I\'m Mike from Monkey Digital. We offer a highly popular service that costs only 10$'),
(7, 'Josephlib', 'ashawn686@gmail.com', 2147483647, 'WITHDRAW NOW: BALANCE IS $115,000.79 https://script.google.com/macros/s/AKfycbxkmJjTVYf4QoIRIwtIN16T'),
(8, 'Mike Nyman\r\n', 'mikeglurN@gmail.com', 2147483647, 'Hi there \r\nI just checked skillzard.site ranks and am sorry to bring this up, but it lacks in many a'),
(9, 'Tawheed', 'tawheedb233@gmail.com', 2147483647, ''),
(10, 'Adam', 'fredrikalfredsson76@gmail.com', 2147483647, 'Hello, \r\n \r\nAdam here from Deletify (https://deletify.com/) \r\n \r\nI\'m wondering if your business has '),
(11, 'Raqib Paray', 'raqibrafiq73@gmail.com', 2147483647, 'Share contact details '),
(12, 'Mike Oldman\r\n', 'mikeglurN@gmail.com', 2147483647, 'Hi there, \r\n \r\nWhile checking your skillzard.site for its ranks, I have noticed that there are some '),
(13, 'Davidsaf', 'kayleighbpsteamship@gmail.com', 2147483647, 'Zdravo, htio sam znati vašu cijenu.'),
(14, 'Crime branch', 'support@crimebranch.com', 0, 'You are doing fake things... We are going to trace you soon\r\n'),
(15, 'Davidsaf', 'kayleighbpsteamship@gmail.com', 2147483647, 'Hi, ego volo scire vestri pretium.');

-- --------------------------------------------------------

--
-- Table structure for table `dash`
--

CREATE TABLE `dash` (
  `id` int NOT NULL,
  `td` int NOT NULL,
  `ld` int NOT NULL,
  `ad` int NOT NULL,
  `joining` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `upiId` varchar(100) NOT NULL,
  `image_path` varchar(300) NOT NULL,
  `remain` int NOT NULL,
  `passive` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `photo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dash`
--

INSERT INTO `dash` (`id`, `td`, `ld`, `ad`, `joining`, `email`, `last_update`, `upiId`, `image_path`, `remain`, `passive`, `name`, `photo`) VALUES
(968, 0, 0, 1140, 8, 'sonalkumarheroaz@gmail.com', '2024-06-03 09:19:51.000000', '5756645@upi', 'images2/Screenshot_20240414-230214.jpg', 0, 0, '', ''),
(969, 0, 0, 8180, 3, 'aryankumar55n@gmail.com', '2024-08-03 12:53:26.000000', '0', '0', 0, 20, '', ''),
(970, 0, 0, 1315225, 462, 'meerishfaq472@gmail.com', '2024-09-07 11:41:26.000000', '60005353856', 'images2/IMG-20240221-WA0029.jpg', 350, 30000, '', ''),
(972, 0, 0, 3568, 24, 'mehakbinterasheed@gmail.com', '2024-07-14 16:55:27.000000', '9596183011@mpay', 'images2/IMG_20240503_233243_403.jpg', 0, 20, '', ''),
(973, 0, 0, 1957, 7, 'jigrnelu@gmail.com', '2024-05-15 18:45:54.000000', 'Seeratseru097@okhdfcbank', 'images2/IMG_20240424_183300.jpg', 0, 100, '', ''),
(974, 0, 0, 1220, 4, 'aasifahmad714@gmail.com', '2024-04-23 15:17:24.000000', '6006404387@axl', 'images2/IMG_20240418_141458_605.jpg', 0, 100, '', ''),
(975, 0, 0, 300, 1, 'mmehzu5@gmail.com', '2024-04-21 06:32:52.000000', '0', '0', 0, 100, '', ''),
(976, 0, 0, 0, 0, 'pink12@slclogin.com', '2024-04-18 17:06:40.000000', '0', '0', 0, 0, '', ''),
(977, 0, 0, 0, 0, 'julina.schwerdtner13@slclogin.com', '2024-04-18 17:08:57.000000', '0', '0', 0, 0, '', ''),
(978, 0, 0, 2868, 29, 'shahidpeer494@gmail.com', '2024-08-05 13:04:18.000000', '9682610849@ybl', 'images2/IMG_20240412_161954.jpg', 2420, 280, '', ''),
(979, 0, 0, 0, 0, 'fk4570200@gmail.com', '2024-04-19 01:24:57.000000', '0', '0', 0, 0, '', ''),
(981, 0, 0, 260, 5, 'jasayianissar07@gmail.com', '2024-05-10 18:06:58.000000', 'jasayianissar07@okhdfcbank', '0', 0, 10, '', ''),
(983, 0, 0, 30899, 16, 'Pmate4777@gmail.com', '2024-06-03 16:13:32.000000', '7420824110@ybl', 'images2/InShot_20240513_120723593.jpg', 0, 500, '', ''),
(984, 0, 0, 670, 6, 'aamirnabi711@gmail.com', '2024-04-25 16:02:22.000000', '78899253171@ibl', 'images2/Screenshot_2024-04-22-17-32-45-224_com.whatsapp.w4b.jpg', 0, 0, '', ''),
(986, 0, 0, 0, 0, 'danishahmad68983@gmail.com', '2024-04-19 08:44:34.000000', '0', '0', 0, 0, '', ''),
(987, 0, 0, 300, 3, 'meertassaduq4@gmail.com', '2024-04-21 16:27:38.000000', '6005853557@axl', '0', 0, 30, '', ''),
(988, 0, 0, 0, 0, 'aanj68193@gmail.com', '2024-04-19 09:06:40.000000', '0', 'images2/Screenshot_2023-12-25-00-14-57-203_com.miui.gallery.jpg', 0, 0, '', ''),
(989, 0, 0, 0, 0, 'suhailali7889@gmail.com', '2024-04-19 11:24:08.000000', '0', '0', 0, 0, '', ''),
(990, 0, 0, 0, 0, 'aabidpeer123@gmail.com', '2024-04-19 11:56:41.000000', '0', '0', 0, 0, '', ''),
(992, 0, 0, 0, 0, 'drmaliha578@gmail.com', '2024-04-19 14:48:10.000000', '0', '0', 0, 0, '', ''),
(993, 0, 0, 0, 0, 'nazirbhat370@gmail.com', '2024-04-19 16:05:20.000000', '0', '0', 0, 0, '', ''),
(997, 0, 0, 1550, 1, 'faisaliqbal92414@gmail.com', '2024-04-20 11:01:28.000000', '0', '0', 0, 200, '', ''),
(998, 0, 0, 600, 2, 'muneebbhat9273@gmail.com', '2024-04-20 16:36:43.000000', '0', '0', 0, 50, '', ''),
(999, 0, 0, 0, 0, 'reshioumieas020@gmail.com', '2024-04-20 17:11:34.000000', '0', '0', 0, 0, '', ''),
(1000, 0, 0, 0, 0, 'aakashdar339@gmail.com', '2024-04-20 17:21:50.000000', '6006955788@axl', 'images2/InShot_20240119_200522836.jpg', 0, 0, '', ''),
(1001, 0, 0, 30, 1, 'hayadidad@gmail.com', '2024-05-02 13:43:40.000000', '0', '0', 0, 0, '', ''),
(1002, 0, 0, 0, 0, 'khanirfanirfankhan28@gmail.com', '2024-04-21 11:28:52.000000', '0', '0', 0, 0, '', ''),
(1003, 0, 0, 329, 4, 'Seemujaan29@gamil.com', '2024-05-10 17:55:40.000000', '0', '0', 0, 0, '', ''),
(1005, 0, 0, 0, 0, 'manimlone@gmail.com', '2024-04-21 12:34:18.000000', '0', '0', 0, 0, '', ''),
(1006, 0, 0, 550, 1, 'malikshinu111@gmail.com', '2024-04-21 16:06:55.000000', '0', '0', 0, 100, '', ''),
(1009, 0, 0, 0, 0, 'ehmadjavaid27@gmail.com', '2024-04-22 13:17:02.000000', '9596262710@ybl', '0', 0, 0, '', ''),
(1010, 0, 0, 2960, 5, 'Basitrather0537@gmail.com', '2024-05-15 10:44:58.000000', '9149469648@axl', 'images2/1713198714954.jpg', 0, 100, '', ''),
(1011, 0, 0, 0, 0, 'rajshreesahare5@gmail.com', '2024-04-22 15:50:50.000000', '0', 'images2/IMG_20240401_230317_229.jpg', 0, 0, '', ''),
(1012, 0, 0, 0, 0, 'mjamaal547@gmail.com', '2024-04-22 15:50:54.000000', '0', '0', 0, 0, '', ''),
(1013, 0, 0, 0, 0, 'sahilqadirbhat@gmail.com', '2024-04-22 15:56:37.000000', '0', '0', 0, 0, '', ''),
(1014, 0, 0, 0, 0, 'shahalka936@gmail.com', '2024-04-22 16:03:38.000000', '0', '0', 0, 0, '', ''),
(1016, 0, 0, 0, 0, 'sheikhtawseef998462@gmail.com', '2024-04-23 11:08:43.000000', '0000', '0', 0, 0, '', ''),
(1017, 0, 0, 1470, 5, 'nasuhaanjum87@gmail.com', '2024-05-01 09:16:43.000000', '53606901', 'images2/435138597_307878212323137_2659810757035533657_n.jpg', 0, 100, '', ''),
(1018, 0, 0, 0, 0, 'hayaansheikh786@gmail.com', '2024-04-23 15:06:49.000000', '6006517819@pz', '0', 0, 0, '', ''),
(1019, 0, 0, 0, 0, 'zairahherbals786@gmail.com', '2024-04-23 15:20:14.000000', '0', '0', 0, 0, '', ''),
(1020, 0, 0, 0, 0, 'peerdanish75@gmail.com', '2024-04-23 16:20:00.000000', '6006677052@Paytm', '0', 0, 0, '', ''),
(1021, 0, 0, 150, 1, 'firdousbashir192@gmail.com', '2024-04-26 05:40:03.000000', '9682102980@ibl', '0', 0, 0, '', ''),
(1023, 0, 0, 0, 0, 'naveedlone89@gmail.com', '2024-04-23 17:20:49.000000', '6005808843pz', '0', 0, 0, '', ''),
(1024, 0, 0, 0, 0, 'umarwiit@gmail.com', '2024-04-23 18:05:09.000000', '0', '0', 0, 0, '', ''),
(1025, 0, 0, 0, 0, 'shafqatmajid94@gmail.com', '2024-04-23 19:06:50.000000', '0', '0', 0, 0, '', ''),
(1026, 0, 0, 0, 0, 'rjsuhaib143@gmail.com', '2024-04-24 06:58:48.000000', '0', '0', 0, 0, '', ''),
(1028, 0, 0, 0, 0, 'www.mrzainab@mail.com', '2024-04-24 10:18:11.000000', '0', '0', 0, 0, '', ''),
(1029, 0, 0, 0, 0, 'lokeshbire425@gmail.com', '2024-04-24 13:03:42.000000', '0', 'images2/IMG_20230620_180125_420.jpg', 0, 0, '', ''),
(1031, 0, 0, 340, 8, 'mirirfan0002@gmail.com', '2024-06-17 07:47:47.000000', 'mirirfan0002-1@oksbi', 'images2/QVZla05UZ0VJV0YtVS1lNg.jpeg', 0, 0, '', ''),
(1032, 0, 0, 0, 0, 'Shafqatmajid94@gmail', '2024-04-24 16:15:06.000000', '0', '0', 0, 0, '', ''),
(1033, 0, 0, 600, 1, 'soumyaxwasnik@gmail.com', '2024-04-24 18:08:01.000000', '9975264856@ybl', 'images2/IMG-20240424-WA0045.jpg', 0, 0, '', ''),
(1038, 0, 0, 0, 0, 'bhatshafat83@gmail.com', '2024-04-25 09:18:30.000000', '0', '0', 0, 0, '', ''),
(1039, 0, 0, 150, 1, 'hemusyed9@gmail.com', '2024-04-25 11:34:00.000000', 'yawarbashir319@okicici', '0', 0, 0, '', ''),
(1040, 0, 0, 0, 2, 'irfanmir5827@gmail.com', '2024-04-25 09:50:41.000000', '0', '0', 0, 0, '', ''),
(1041, 0, 0, 0, 0, 'kartiksonwane507@gmail.com', '2024-04-25 10:10:21.000000', '0', '0', 0, 0, '', ''),
(1042, 0, 0, 150, 1, 'ubairlone999@gmail.com', '2024-04-25 11:56:46.000000', 'Ubairlone999@okicici', '0', 0, 0, '', ''),
(1043, 0, 0, 0, 0, 'OWAISMAQBOOL64@GMAIL.COM', '2024-04-25 11:17:40.000000', '0', '0', 0, 0, '', ''),
(1044, 0, 0, 0, 0, 'amitarya1414@gmail.com', '2024-04-25 11:50:24.000000', '0', '0', 0, 0, '', ''),
(1045, 0, 0, 0, 0, 'shaevilop@gmail.com', '2024-04-25 11:53:17.000000', '0', '0', 0, 0, '', ''),
(1046, 0, 0, 0, 0, 'muzafarwani0000@gmail.com', '2024-04-25 12:45:25.000000', '0', '0', 0, 0, '', ''),
(1047, 0, 0, 0, 0, 'meerseerat084@gmail.com.in', '2024-04-25 13:37:32.000000', '0', '0', 0, 0, '', ''),
(1048, 0, 0, 0, 0, 'Zzakirvlogs6@gmail.com', '2024-04-25 15:58:38.000000', '0', '0', 0, 0, '', ''),
(1050, 0, 0, 0, 0, 'yasirhafeez180@gmail.com', '2024-04-25 17:44:28.000000', '0', '0', 0, 0, '', ''),
(1051, 0, 0, 1090, 12, 'ubaidajaz1234@gmail.com', '2024-05-23 18:54:33.000000', 'ubaidajaz2150@okaxis', 'images2/FB_IMG_1710392903858.jpg', 0, 0, '', ''),
(1052, 0, 0, 0, 0, 'magrayjunaid4@gmail.com', '2024-04-26 07:56:05.000000', '7889514276@ybl', 'images2/IMG_20231121_193543_349.jpg', 0, 0, '', ''),
(1055, 0, 0, 0, 0, 'wrajabhat@gmail.com', '2024-04-26 11:50:23.000000', '0', '0', 0, 0, '', ''),
(1056, 0, 0, 0, 0, 'Orhan125@gmail.com', '2024-04-26 12:17:40.000000', '0', '0', 0, 0, '', ''),
(1057, 0, 0, 0, 0, 'lonesameer2011@gmail.com', '2024-04-26 12:24:11.000000', '0', '0', 0, 0, '', ''),
(1058, 0, 0, 0, 0, 'mehrajmursal158@gmail.com', '2024-04-26 13:45:53.000000', '0', '0', 0, 0, '', ''),
(1059, 0, 0, 0, 0, 'khantariqkhantariq26@gmail.com', '2024-04-26 14:11:39.000000', '9906629522', 'images2/IMG_20240303_102852.jpg', 0, 0, '', ''),
(1060, 0, 0, 0, 0, 'rajesh197634@yahoo.com', '2024-04-26 14:45:58.000000', '0', '0', 0, 0, '', ''),
(1061, 0, 0, 0, 0, 'danishbashir612@gmail.com', '2024-04-26 14:47:43.000000', '3518JAKA0KUNZER', 'images2/IMG_20240116_235524.jpg', 0, 0, '', ''),
(1063, 0, 0, 529, 11, 'aabidalone786@gmail.com', '2024-07-22 13:32:51.000000', '8082880967-2@axl', 'images2/IMG-20240427-WA0009.jpg', 0, 0, '', ''),
(1064, 0, 0, 0, 0, 'www.ashiq@gmail.com', '2024-04-26 16:33:31.000000', '0', '0', 0, 0, '', ''),
(1065, 0, 0, 0, 0, 'saki25101@gmail.com', '2024-04-26 16:53:26.000000', '0', '0', 0, 0, '', ''),
(1066, 0, 0, 0, 0, 'gulkaakh11@gmail.com', '2024-04-27 06:56:53.000000', '0', '0', 0, 0, '', ''),
(1067, 0, 0, 0, 0, 'bablujan74@gmail.com', '2024-04-27 07:02:10.000000', '0', '0', 0, 0, '', ''),
(1068, 0, 0, 0, 0, 'wanizakir215@gmail.com', '2024-04-27 08:06:39.000000', '0', 'images2/1000003229.jpg', 0, 0, '', ''),
(1069, 0, 0, 0, 0, 'sheikhmansoor660@gmail.com', '2024-04-27 08:24:17.000000', '0', '0', 0, 0, '', ''),
(1070, 0, 0, 0, 0, 'shiekhadil9090@gmail.com', '2024-04-27 08:33:17.000000', '6005267607@ybl', '0', 0, 0, '', ''),
(1071, 0, 0, 0, 0, 'aaminaqkiaer94@gmail.com', '2024-04-27 09:02:08.000000', '786 143 687', 'images2/IMG_20240426_203919.jpg', 0, 0, '', ''),
(1072, 0, 0, 0, 0, 'biljaan59@gmail.com', '2024-04-27 09:17:41.000000', '7051814323@axl', 'images2/PicsArt_07-29-10.50.35.png', 0, 0, '', ''),
(1073, 0, 0, 0, 0, 'majidazizbhat@gmail.com', '2024-04-27 09:50:11.000000', '8493815875pz', '0', 0, 0, '', ''),
(1074, 0, 0, 0, 0, 'www.mageryimran2701@gmail.com', '2024-04-27 10:25:07.000000', '0', '0', 0, 0, '', ''),
(1075, 0, 0, 0, 0, 'mageryimran36@gmail.com', '2024-04-27 11:06:23.000000', 'www.mageryimran2701@okhdfcbank', 'images2/IMG_20210725_143536_407.jpg', 0, 0, '', ''),
(1076, 0, 0, 0, 0, 'aleenafirdous56@email.com', '2024-04-27 12:18:19.000000', '0', '0', 0, 0, '', ''),
(1077, 0, 0, 0, 0, 'Aleenafirdous56@gmail.com', '2024-04-27 12:19:58.000000', '9010411394', '0', 0, 0, '', ''),
(1078, 0, 0, 0, 0, 'lubnarasheed990@gmail.com', '2024-04-27 12:59:13.000000', '8082880967-2@axl', '0', 0, 0, '', ''),
(1079, 0, 0, 0, 0, 'tantrayj489@gmail.com', '2024-04-27 14:15:14.000000', '6005430972@ybl', 'images2/Snapchat-2040130842.jpg', 0, 0, '', ''),
(1080, 0, 0, 130, 1, 'sabatunnisa11@gmail.com', '2024-04-27 15:16:43.000000', 'Sabatunnisa@icici', '0', 0, 0, '', ''),
(1081, 0, 0, 0, 0, 'tantraydanish05@gmail.com', '2024-04-27 14:40:56.000000', '0', '0', 0, 0, '', ''),
(1082, 0, 0, 0, 0, 'rahiyanazeer453@gmail.com', '2024-04-27 14:45:01.000000', '0', '0', 0, 0, '', ''),
(1083, 0, 0, 0, 0, 'javidqureshi180@gmail.com', '2024-04-27 15:08:49.000000', '0', '0', 0, 0, '', ''),
(1084, 0, 0, 130, 1, 'riyaan786@gmail.com', '2024-04-28 16:04:12.000000', '788932906@pz', 'images2/IMG-20240426-WA0044.jpg', 0, 0, '', ''),
(1085, 0, 0, 179, 2, 'sahilnajarr@gmail.com', '2024-04-30 17:32:14.000000', 'Suhailnajar@icici', 'images2/1000111830.jpg', 0, 0, '', ''),
(1086, 0, 0, 0, 0, 'bhatzahoor786@gmail.com', '2024-04-27 16:24:30.000000', '0', '0', 0, 0, '', ''),
(1087, 0, 0, 40, 1, 'irfankhan01501@gmail.com', '2024-04-28 13:20:11.000000', 'irfankhan01501@oksbi', 'images2/IMG_20201120_211240.jpg', 1, 0, '', ''),
(1088, 0, 0, 0, 0, 'snobershaban@gmail.com', '2024-04-27 17:24:30.000000', '0', '0', 0, 0, '', ''),
(1089, 0, 0, 0, 0, 'wani38330@gmail.com', '2024-04-27 19:25:22.000000', '0', '0', 0, 0, '', ''),
(1090, 0, 0, 0, 0, 'mehakmehak6385@gmail.com', '2024-04-27 19:39:33.000000', '0', '0', 0, 0, '', ''),
(1091, 0, 0, 0, 0, 'sadeeqalam060@gmail.com', '2024-04-27 20:14:28.000000', '0', '0', 0, 0, '', ''),
(1092, 0, 0, 0, 0, 'shabirahmad0408@gmail.com', '2024-04-28 05:43:56.000000', '0', '0', 0, 0, '', ''),
(1093, 0, 0, 0, 0, 'iqlasrasool9103@gmail.com', '2024-04-28 05:55:35.000000', '0', '0', 0, 0, '', ''),
(1094, 0, 0, 0, 0, 'wanisajad126@gmail.com', '2024-04-28 06:08:07.000000', '0', '0', 0, 0, '', ''),
(1095, 0, 0, 0, 0, 'sanayou836@gmail.com', '2024-04-28 07:29:47.000000', '0', '0', 0, 0, '', ''),
(1096, 0, 0, 0, 0, 'burhanwani910@gmail.com', '2024-04-28 10:01:54.000000', '0', '0', 0, 0, '', ''),
(1097, 0, 0, 0, 0, 'zakirpeer624@gmail.com', '2024-04-28 10:07:47.000000', 'zakirpeer624@okicici', '0', 0, 0, '', ''),
(1099, 0, 0, 0, 0, 'iqranikhat45@gmail.com', '2024-04-28 10:51:35.000000', '0', '0', 0, 0, '', ''),
(1101, 0, 0, 0, 0, 'Muzamilbashir1912@gmail.com', '2024-04-28 11:06:17.000000', 'muzamilbashir1912@oksbi', '0', 0, 0, '', ''),
(1102, 0, 0, 0, 0, 'waniirfan002@gmail.com', '2024-04-28 12:29:44.000000', '0', '0', 0, 0, '', ''),
(1103, 0, 0, 0, 0, 'waniirfan01@gmail.com', '2024-04-28 12:38:25.000000', '0', '0', 0, 0, '', ''),
(1104, 0, 0, 0, 0, 'kumarnasir998@gmail.com', '2024-04-28 15:46:09.000000', '0', '0', 0, 0, '', ''),
(1105, 0, 0, 0, 0, 'khannairah2233@gmail.com', '2024-04-28 16:00:35.000000', '0', 'images2/IMG_20240426_203852.jpg', 0, 0, '', ''),
(1106, 0, 0, 0, 0, 'bhatfurqan775@gmail.com', '2024-04-28 17:18:35.000000', '0', '0', 0, 0, '', ''),
(1107, 0, 0, 0, 0, 'iramahmadlone@gmail.com', '2024-04-28 17:30:12.000000', '0', '0', 0, 0, '', ''),
(1108, 0, 0, 0, 0, 'aleeshawani222@gmail.com', '2024-04-28 17:54:26.000000', 'Madihaurfan@pz', '0', 0, 0, '', ''),
(1109, 0, 0, 0, 0, 'basitkhan20121@gmail.com', '2024-04-28 17:54:55.000000', '0', '0', 0, 0, '', ''),
(1110, 0, 0, 142580, 43, 'ubaidajaz2150@gmail.com', '2024-08-31 18:24:49.000000', 'ubaidajaz2150@okaxis', 'images2/FB_IMG_1710392903858.jpg', 0, 28860, '', ''),
(1111, 0, 0, 0, 0, 'yk7524550@gmail.com', '2024-04-28 18:14:21.000000', '0', '0', 0, 0, '', ''),
(1112, 0, 0, 0, 0, 'Sheikhnajamul147@gmail.com', '2024-04-28 19:01:06.000000', '0', '0', 0, 0, '', ''),
(1113, 0, 0, 0, 0, 'nadeemjatt32110@gmail.com', '2024-04-28 19:43:56.000000', '0', '0', 0, 0, '', ''),
(1114, 0, 0, 0, 0, 'iqranikath61@gmail.com', '2024-04-28 20:15:13.000000', '9030019568@ybl', '0', 0, 0, '', ''),
(1115, 0, 0, 0, 0, 'isyed2728@gmail.com', '2024-04-29 00:33:48.000000', '0', '0', 0, 0, '', ''),
(1116, 0, 0, 0, 0, 'irruirfan426@gmail.com', '2024-04-29 05:04:48.000000', '0', '0', 0, 0, '', ''),
(1117, 0, 0, 0, 0, 'darnadeem029@gmail.com', '2024-04-29 06:41:47.000000', '0', '0', 0, 0, '', ''),
(1118, 0, 0, 0, 0, 'sayimanabi5@gmail.com', '2024-04-29 07:01:41.000000', '0', '0', 0, 0, '', ''),
(1119, 0, 0, 0, 0, 'khanaijaz617919@gmail.com', '2024-04-29 07:15:16.000000', 'khanaijaz617919@okicici', 'images2/IMG-20240429-WA0061.jpg', 0, 0, '', ''),
(1120, 0, 0, 0, 3, 'hafsafayaz56@gmail.com', '2024-09-05 14:30:50.000000', '0', '0', 0, 0, '', ''),
(1121, 0, 0, 0, 0, 'safeernajar60@gmil.com', '2024-04-29 08:54:43.000000', '0', '0', 0, 0, '', ''),
(1122, 0, 0, 1050, 6, 'bhatshahidshahidbhat90@gmail', '2024-06-01 17:18:41.000000', 'bhatkhursheed@124', 'images2/Yellow Inspiration Modern Instagram Profile Picture_20240615_171535_0000.png', 0, 20, '', ''),
(1123, 0, 0, 0, 0, 'syedayan2821@gmail.com', '2024-04-29 10:58:01.000000', '0', '0', 0, 0, '', ''),
(1124, 0, 0, 0, 0, 'awckib9@gmail.com', '2024-04-29 11:42:38.000000', '0', '0', 0, 0, '', ''),
(1125, 0, 0, 0, 0, 'ratherishaq98@gmail.com', '2024-04-29 12:24:52.000000', '0', '0', 0, 0, '', ''),
(1126, 0, 0, 0, 0, 'shiekhheeba@gmail.com', '2024-04-29 12:41:35.000000', '0', '0', 0, 0, '', ''),
(1127, 0, 0, 190, 3, 'shahidabashir97@gmail.com', '2024-05-01 16:52:35.000000', 'Shahida@icoci', 'images2/IMG_20240429_214659.jpg', 0, 0, '', ''),
(1128, 0, 0, 0, 0, 'aabida786@gmail.com', '2024-04-29 17:25:48.000000', '8082880967-2@axl', '0', 0, 0, '', ''),
(1129, 0, 0, 0, 0, 'arhanbabu1801@gmail.com', '2024-04-29 18:30:51.000000', '0', '0', 0, 0, '', ''),
(1130, 0, 0, 0, 0, 'arahaan786@gmail.com', '2024-04-29 19:40:19.000000', '0', '0', 0, 0, '', ''),
(1131, 0, 0, 0, 0, 'waraasif10@gmail.com', '2024-04-30 05:01:22.000000', '0', '0', 0, 0, '', ''),
(1132, 0, 0, 0, 0, 'mustafahajimusta@gmail.com', '2024-04-30 08:11:44.000000', '0', '0', 0, 0, '', ''),
(1133, 0, 0, 0, 0, 'sheikhraju365@gmail.com', '2024-04-30 08:47:00.000000', '6006717605@paytm', '0', 0, 0, '', ''),
(1134, 0, 0, 0, 0, 'lonebilal581278@gmail.com', '2024-04-30 14:07:52.000000', '0', '0', 0, 0, '', ''),
(1135, 0, 0, 0, 0, 'rarhertomato705@gmail.com', '2024-04-30 14:34:55.000000', '0', '0', 0, 0, '', ''),
(1136, 0, 0, 0, 0, 'najarakhter06@gmakl.com', '2024-04-30 14:44:18.000000', 'najarakhter4529@axl', '0', 0, 0, '', ''),
(1137, 0, 0, 0, 0, 'emmuwani11@gmail.com', '2024-04-30 16:30:54.000000', 'Ameeriqbal@axl', '0', 0, 0, '', ''),
(1138, 0, 0, 0, 0, 'msuhailnajar786@gmail.com', '2024-04-30 17:20:51.000000', '0', 'images2/1000149566.jpg', 0, 0, '', ''),
(1139, 0, 0, 0, 0, 'lonetawfeeq413@gmail.com', '2024-04-30 18:04:53.000000', '0', '0', 0, 0, '', ''),
(1140, 0, 0, 0, 0, 'mutahir5889@gmail.com', '2024-05-01 07:00:57.000000', '0', '0', 0, 0, '', ''),
(1141, 0, 0, 0, 0, 'alishafatima76@gmail.com', '2024-05-01 08:04:06.000000', '0', '0', 0, 0, '', ''),
(1142, 0, 0, 0, 0, 'alishakhanam@xn--gmailcom-rr3d', '2024-05-01 08:56:45.000000', '0', '0', 0, 0, '', ''),
(1143, 0, 0, 0, 0, 'parulverma1994@gmail.com', '2024-05-01 11:54:42.000000', '8082880967-2@axl', 'images2/download.jpeg', 0, 0, '', ''),
(1144, 0, 0, 320, 3, 'catc18100@gmail.com', '2024-05-17 15:35:49.000000', '6005321106', 'images2/IMG_20240501_001401_338.jpg', 0, 0, '', ''),
(1145, 0, 0, 0, 0, 'bhttajmul196@gmail.com', '2024-05-01 13:21:32.000000', '0', '0', 0, 0, '', ''),
(1146, 0, 0, 0, 0, 'jozyashraf1982@gmail.com', '2024-05-01 13:26:50.000000', '0', '0', 0, 0, '', ''),
(1147, 0, 0, 0, 0, 'bb4031960@gmail.com', '2024-05-01 13:43:00.000000', '0', '0', 0, 0, '', ''),
(1148, 0, 0, 0, 0, 'sahilpeer997@gmail.com', '2024-05-01 16:26:48.000000', '0', '0', 0, 0, '', ''),
(1149, 0, 0, 0, 0, 'Sheikhlateef246@gmail.com', '2024-05-01 21:39:07.000000', '0', '0', 0, 0, '', ''),
(1150, 0, 0, 0, 0, 'tanishnazir407@gmail.com', '2024-05-02 11:56:10.000000', '60062976966@ybl', 'images2/IMG-20240502-WA0029.jpg', 0, 0, '', ''),
(1151, 0, 0, 0, 0, 'bhatamir3050@gmail.com', '2024-05-02 13:13:54.000000', '5543590003518985', '0', 0, 0, '', ''),
(1152, 0, 0, 0, 0, 'musratchooty4@gmail.com', '2024-05-02 13:27:18.000000', '0', '0', 0, 0, '', ''),
(1153, 0, 0, 0, 0, 'malikadnanfayaz02@gmail.com', '2024-05-02 15:00:15.000000', '0', '0', 0, 0, '', ''),
(1154, 0, 0, 0, 0, 'sunneysingh192@gmail.com', '2024-05-03 09:06:47.000000', '0', '0', 0, 0, '', ''),
(1155, 0, 0, 0, 0, 'syedmaifuz600@gmail.com', '2024-05-03 13:02:30.000000', '0', '0', 0, 0, '', ''),
(1156, 0, 0, 0, 0, 'Khaninayat5390@gmail.com', '2024-05-03 18:25:31.000000', '0', '0', 0, 0, '', ''),
(1157, 0, 0, 0, 0, 'khanjunaid60058854@gamil.com', '2024-05-04 07:46:19.000000', '0', '0', 0, 0, '', ''),
(1158, 0, 0, 0, 0, 'mudasirparvaiz7@gmail.com', '2024-05-04 08:30:04.000000', '0', '0', 0, 0, '', ''),
(1159, 0, 0, 0, 0, 'bhataady67@gmail.com', '2024-05-04 09:44:16.000000', '0', '0', 0, 0, '', ''),
(1160, 0, 0, 0, 0, 'buttaaqib80@gmail.com', '2024-05-04 09:50:54.000000', '0', '0', 0, 0, '', ''),
(1161, 0, 0, 0, 0, 'nadeembilal4817@gmail.com', '2024-05-04 11:59:35.000000', '0', '0', 0, 0, '', ''),
(1162, 0, 0, 0, 0, 'eraqib1995@gmail.con', '2024-05-04 17:09:29.000000', '0', '0', 0, 0, '', ''),
(1163, 0, 0, 0, 0, 'eraqib1995@gmail.com', '2024-05-04 17:15:41.000000', '6005831310-2@axl', '0', 0, 0, '', ''),
(1164, 0, 0, 0, 0, 'waseemraja868@gmail.com', '2024-05-05 10:12:52.000000', '7780830388@pz', 'images2/1713246298086.jpg', 0, 0, '', ''),
(1165, 0, 0, 0, 0, 'wtawseef508@gmail.com', '2024-05-05 11:24:55.000000', '0', '0', 0, 0, '', ''),
(1166, 0, 0, 0, 0, 'jaffarjnj@gmail.com', '2024-05-05 12:07:27.000000', '0', '0', 0, 0, '', ''),
(1167, 0, 0, 0, 0, 'wabid294@gmail.com', '2024-05-05 13:14:54.000000', '0', '0', 0, 0, '', ''),
(1168, 0, 0, 0, 0, 'maenterprisesbandipora@gmail.com', '2024-05-05 13:23:28.000000', '0', '0', 0, 0, '', ''),
(1169, 0, 0, 0, 0, 'loneadil432@gmail.com', '2024-05-05 13:40:59.000000', '0', '0', 0, 0, '', ''),
(1170, 0, 0, 0, 0, 'ratheruzma93@gmail.com', '2024-05-05 14:08:24.000000', '0', '0', 0, 0, '', ''),
(1171, 0, 0, 0, 0, 'hasibpdhar889@gmail.com', '2024-05-05 15:08:50.000000', '0', '0', 0, 0, '', ''),
(1172, 0, 0, 0, 0, 'wanim7740@gmail.com', '2024-05-05 15:31:41.000000', '7889386871@ybl', 'images2/1000011061.jpg', 0, 0, '', ''),
(1173, 0, 0, 20, 2, 'syedanasali2607@gmail.com', '2024-05-07 07:52:32.000000', '7828708056@paytm', 'images2/IMG_4402.jpeg', 0, 0, '', ''),
(1174, 0, 0, 0, 0, 'powais93@gmail.com', '2024-05-05 16:43:08.000000', '0', '0', 0, 0, '', ''),
(1175, 0, 0, 0, 0, 'khanenterprises443@gmail.com', '2024-05-05 16:50:08.000000', '9149930124@ibl', '0', 0, 0, '', ''),
(1177, 0, 0, 0, 0, 'bazilapeer64@gmail.com', '2024-05-05 17:08:28.000000', '0', 'images2/FB_IMG_1715009864828.jpg', 0, 0, '', ''),
(1178, 0, 0, 0, 0, 'myselfzaheer457@gmail.com', '2024-05-05 18:01:12.000000', '0', 'images2/IMG_20231227_223300_676.jpg', 0, 0, '', ''),
(1179, 0, 0, 0, 0, 'ds7230546@gmail.com', '2024-05-06 02:27:28.000000', '0', '0', 0, 0, '', ''),
(1180, 0, 0, 0, 0, 'mudasirhussain3009@gmail.com', '2024-05-06 04:44:52.000000', '0', '0', 0, 0, '', ''),
(1181, 0, 0, 0, 0, 'mudasirhussain99777@gmail.com', '2024-05-06 05:31:07.000000', '0', '0', 0, 0, '', ''),
(1182, 0, 0, 0, 0, 'uk76238@gmail.com', '2024-05-06 05:34:54.000000', '0', '0', 0, 0, '', ''),
(1183, 0, 0, 0, 0, 'sheikhaaqib255@gmail.com', '2024-05-06 06:25:16.000000', 'Sheikhaaqib255@ybl', '0', 0, 0, '', ''),
(1184, 0, 0, 0, 0, 'ramprakash.koppera@gmail.com', '2024-05-06 07:40:11.000000', '0', '0', 0, 0, '', ''),
(1185, 0, 0, 0, 0, 'peers5326@gmail.com', '2024-05-06 09:40:03.000000', '0', '0', 0, 0, '', ''),
(1186, 0, 0, 160, 2, 'Parrayalixa@gmail.com', '2024-05-07 11:44:55.000000', '6006107024 @ mpay', '0', 0, 0, '', ''),
(1187, 0, 0, 0, 0, 'mirmubashir822@gmail.com', '2024-05-06 15:30:12.000000', '0', 'images2/IMG_6563.jpeg', 0, 0, '', ''),
(1188, 0, 0, 0, 0, 'kishtiyaq707@gmail.com', '2024-05-06 15:42:08.000000', '0', '0', 0, 0, '', ''),
(1189, 0, 0, 0, 0, 'hidayathadi127@gmail.com', '2024-05-06 16:13:52.000000', '0', '0', 0, 0, '', ''),
(1190, 0, 0, 0, 0, 'mahjabeena30@gmail.com', '2024-05-06 19:10:17.000000', '7889379064@axl', '0', 0, 0, '', ''),
(1191, 0, 0, 0, 0, 'azamhamza895@gmail.com', '2024-05-07 06:55:05.000000', '0', '0', 0, 0, '', ''),
(1192, 0, 0, 0, 0, 'surajv3215@gmail.com', '2024-05-07 07:07:28.000000', '0', '0', 0, 0, '', ''),
(1193, 0, 0, 0, 0, 'mt292792@gmail.com', '2024-05-07 07:37:45.000000', '0', '0', 0, 0, '', ''),
(1194, 0, 0, 0, 0, 'loverdeath927@gmail.com', '2024-05-07 09:57:25.000000', '0', '0', 0, 0, '', ''),
(1195, 0, 0, 0, 0, 'parraynazu143@gmail.com', '2024-05-07 10:51:34.000000', '0', '0', 0, 0, '', ''),
(1196, 0, 0, 0, 0, 'danishkhuroo53@gmail.com', '2024-05-07 11:40:18.000000', '0', '0', 0, 0, '', ''),
(1197, 0, 0, 0, 0, 'Ssafeenakhazir@gmail.com', '2024-05-07 11:43:17.000000', '0', '0', 0, 0, '', ''),
(1198, 0, 0, 0, 0, 'masoodab250@gmail.com', '2024-05-07 13:28:45.000000', '0', '0', 0, 0, '', ''),
(1199, 0, 0, 0, 0, 'Mahirajaan583@gmail.com', '2024-05-07 13:37:30.000000', '6005759793@ybl', '0', 0, 0, '', ''),
(1200, 0, 0, 0, 0, 'Peerhaya@gmail.com', '2024-05-07 13:39:08.000000', '9682194726@ybl', '0', 0, 0, '', ''),
(1201, 0, 0, 0, 0, 'wagayanayat030@gmail.com', '2024-05-07 14:28:58.000000', '0', '0', 0, 0, '', ''),
(1202, 0, 0, 0, 0, 'seemujaanseemu@gmail.com', '2024-05-07 17:21:09.000000', '0', '0', 0, 0, '', ''),
(1203, 0, 0, 0, 0, 'Loneaadil432@gmail.com', '2024-05-07 18:26:17.000000', '0', '0', 0, 0, '', ''),
(1204, 0, 0, 500, 1, 'sahilshafi502@gmail.com', '2024-05-12 19:07:29.000000', 'sahilshafi502@oksbi', 'images2/1000000800.jpg', 0, 0, '', ''),
(1205, 0, 0, 70, 3, 'Innocentmajid343@gmail.com', '2024-07-14 08:41:13.000000', '6006056407@ybl', '0', 0, 0, '', ''),
(1206, 0, 0, 0, 0, 'sm.preneur28@gmail.com', '2024-05-08 09:24:25.000000', '0', '0', 0, 0, '', ''),
(1207, 0, 0, 0, 0, 'mirimtiyaz528@gmail.com', '2024-05-08 19:52:54.000000', '0', '0', 0, 0, '', ''),
(1208, 0, 0, 107000, 8, 'tusharrawat7560@gmail.com', '2024-06-05 14:39:21.000000', '9509303289@ybl', 'images2/Screenshot_20240614-172702_1.png', 0, 20000, '', ''),
(1209, 0, 0, 0, 0, 'cbsbhagat@gmail.com', '2024-05-09 16:18:05.000000', 'santoshbhagat618@ybl', 'images2/Resize Image To WhatsApp Profile Size Without Cropping.jpeg', 0, 0, '', ''),
(1210, 0, 0, 0, 0, 'rupeshsoni8874@gmail.com', '2024-05-09 16:34:31.000000', '0', '0', 0, 0, '', ''),
(1211, 0, 0, 0, 0, 'umarramzan12@gmail.com', '2024-05-09 16:44:10.000000', '0', '0', 0, 0, '', ''),
(1212, 0, 0, 0, 0, 'waniumer2545@gmail.com', '2024-05-09 17:33:30.000000', '0', '0', 0, 0, '', ''),
(1213, 0, 0, 0, 0, 's@gmail.com', '2024-05-09 19:43:35.000000', '0', '0', 0, 0, '', ''),
(1214, 0, 0, 0, 0, 'rupamotdhare@gmail.com', '2024-05-10 15:33:24.000000', '0', '0', 0, 0, '', ''),
(1215, 0, 0, 0, 0, 'sheikhtariq001@gmail.com', '2024-05-10 17:26:53.000000', '0', '0', 0, 0, '', ''),
(1216, 0, 0, 0, 0, 'duanaaz129@gmail.com', '2024-05-10 18:14:42.000000', '0', '0', 0, 0, '', ''),
(1218, 0, 0, 0, 0, 'bhat4984@gmail.com', '2024-05-11 12:32:04.000000', '0', '0', 0, 0, '', ''),
(1219, 0, 0, 0, 0, 'demoaccount@gmail.com', '2024-05-11 14:36:05.000000', '0', '0', 0, 0, '', ''),
(1220, 0, 0, 0, 0, 'hmdogra@gmail.com', '2024-05-11 15:12:36.000000', '0', '0', 0, 0, '', ''),
(1221, 0, 0, 0, 0, 'nadeemmir957@gmail.com', '2024-05-11 20:00:14.000000', '0', '0', 0, 0, '', ''),
(1222, 0, 0, 0, 0, 'mrityunjay.748081@gmail.com', '2024-05-11 20:06:50.000000', '0', '0', 0, 0, '', ''),
(1223, 0, 0, 0, 0, 'zafrullah044@gmail.com', '2024-05-12 07:37:39.000000', '0', '0', 0, 0, '', ''),
(1224, 0, 0, 0, 0, 'muntazirnissar7@gmail.com', '2024-05-12 11:13:38.000000', 'naseeruddinahmad8-1@okicici', 'images2/IMG-20240512-WA0212.jpg', 0, 0, '', ''),
(1225, 0, 0, 49, 1, 'arsalanmushtaq181@gmail.com', '2024-05-12 18:41:05.000000', '0', '0', 0, 0, '', ''),
(1226, 0, 0, 0, 0, 'salifsammir@gmail.com', '2024-05-12 13:29:19.000000', '0', '0', 0, 0, '', ''),
(1227, 0, 0, 180, 2, 'maqboolubaid061@gmail.com', '2024-05-17 17:06:25.000000', '0', 'images2/IMG-20240411-WA0017.jpg', 0, 0, '', ''),
(1228, 0, 0, 0, 0, 'wanishazu53617@gmail.com', '2024-05-12 13:54:03.000000', '0', '0', 0, 0, '', ''),
(1229, 0, 0, 0, 0, 'khursheedhaji55@gmail.com', '2024-05-12 14:07:50.000000', '0', '0', 0, 0, '', ''),
(1230, 0, 0, 0, 0, 'khursheedhaji@gmail.com', '2024-05-12 15:01:52.000000', '0', '0', 0, 0, '', ''),
(1231, 0, 0, 0, 0, 'wanihafeez99@gmail.com', '2024-05-12 15:21:58.000000', '0', '0', 0, 0, '', ''),
(1232, 0, 0, 0, 0, 'loneb3508@gmail.com', '2024-05-12 15:35:21.000000', '9906986776@axl', 'images2/1000287349.jpg', 0, 0, '', ''),
(1233, 0, 0, 0, 0, 'umerkhayam2005@gmail.com', '2024-05-12 18:34:34.000000', '0', '0', 0, 0, '', ''),
(1234, 0, 0, 49, 1, 'mushtaqahmadk222@gmail.com', '2024-05-12 19:05:39.000000', '9541158129@ibl', '0', 0, 0, '', ''),
(1235, 0, 0, 0, 0, 'wanihafizullah89@rediffmail.com', '2024-05-12 18:47:01.000000', '0', '0', 0, 0, '', ''),
(1236, 0, 0, 0, 0, 'murtazaamushtaq8709@gmail.com', '2024-05-12 18:48:20.000000', '0', '0', 0, 0, '', ''),
(1237, 0, 0, 0, 0, 'iphonerealmeoppo@gmail.com', '2024-05-12 19:53:44.000000', '0', '0', 0, 0, '', ''),
(1238, 0, 0, 0, 0, 'faesaliqbal67@gmail.com', '2024-05-12 19:56:35.000000', '0', '0', 0, 0, '', ''),
(1239, 0, 0, 49, 1, 'wajidaashraf2023@gmail.com', '2024-05-14 12:38:17.000000', '6005994569', '0', 0, 0, '', ''),
(1240, 0, 0, 0, 0, 'saleemnajar1505@gmail.com', '2024-05-13 09:48:05.000000', '0', '0', 0, 0, '', ''),
(1241, 0, 0, 0, 0, 'demo9999@gmail.com', '2024-05-13 13:19:51.000000', '0', '0', 0, 0, '', ''),
(1242, 0, 0, 0, 0, 'demo66@gmail.com', '2024-05-13 15:10:08.000000', '0', 'images2/Screenshot_20240512-183659.jpg', 0, 0, '', ''),
(1243, 0, 0, 0, 0, 'imir4543@gmail.com', '2024-05-13 15:30:32.000000', '0', '0', 0, 0, '', ''),
(1244, 0, 0, 30, 2, 'priyaneema810@gmail.com', '2024-05-18 10:20:45.000000', '8959655645', 'images2/IMG_20240325_122815.jpg', 0, 0, '', ''),
(1245, 0, 0, 0, 0, 'musamirallie0789@gmail.com', '2024-05-13 17:02:45.000000', '0', '0', 0, 0, '', ''),
(1246, 0, 0, 0, 0, 'faisalyt88@gmail.com', '2024-05-13 17:20:33.000000', '0', '0', 0, 0, '', ''),
(1247, 0, 0, 0, 0, 'bhatkhalid953@gmail.com', '2024-05-13 20:02:29.000000', '0', '0', 0, 0, '', ''),
(1248, 0, 0, 0, 0, 'qais26785@gmail.com', '2024-05-13 20:15:48.000000', '7889617039w@ybl', '0', 0, 0, '', ''),
(1249, 0, 0, 0, 0, 'Shaheenajanwara@gmail.com', '2024-05-14 09:53:25.000000', '0', '0', 0, 0, '', ''),
(1250, 0, 0, 0, 0, 'murtaza.dbtech@gmail.com', '2024-05-14 11:07:52.000000', '0', '0', 0, 0, '', ''),
(1251, 0, 0, 0, 0, 'mukaanshafi038@gmail.com', '2024-05-14 11:55:03.000000', '0', '0', 0, 0, '', ''),
(1252, 0, 0, 0, 0, 'meerhilal710@gamil.com', '2024-05-15 16:09:44.000000', '0', '0', 0, 0, '', ''),
(1253, 0, 0, 0, 0, 'meerhilal352@gmail.com', '2024-05-15 16:18:58.000000', '0', '0', 0, 0, '', ''),
(1254, 0, 0, 0, 0, 'malikkamrankamran396@gmail.com', '2024-05-15 18:27:08.000000', '0', '0', 0, 0, '', ''),
(1255, 0, 0, 0, 0, 'sahillone770@gmail.com', '2024-05-17 08:17:11.000000', '0', '0', 0, 0, '', ''),
(1256, 0, 0, 0, 0, 'bilkissmajeed112233@gmail.com', '2024-05-17 09:37:28.000000', '0', '0', 0, 0, '', ''),
(1257, 0, 0, 0, 0, 'aadiaadi2355@gmail.com', '2024-05-17 09:42:18.000000', '9541591462', '0', 0, 0, '', ''),
(1258, 0, 0, 0, 0, 'khalidbhbhatkhalid@gmail.com', '2024-05-17 10:05:01.000000', '0', '0', 0, 0, '', ''),
(1259, 0, 0, 57790, 44, 'mahjoorbilal9@gmail.com', '2024-08-05 14:41:29.000000', '9103512850@fam', 'images2/Picsart_23-09-01_18-32-19-968-01-01.jpeg', 0, 7500, '', ''),
(1260, 0, 0, 0, 0, 'sahilwani472@gmail.com', '2024-05-17 11:16:52.000000', '6006856194@jkb', '0', 0, 0, '', ''),
(1261, 0, 0, 0, 0, 'bhaisahil392@gmail.com', '2024-05-17 11:19:27.000000', '0', '0', 0, 0, '', ''),
(1262, 0, 0, 0, 0, 'meerzainmeer898@gmail.com', '2024-05-17 13:31:54.000000', '0', '0', 0, 0, '', ''),
(1263, 0, 0, 0, 0, 'amairaamjid589@gmail.com', '2024-05-17 13:52:29.000000', 'Rubeena@ybl', '0', 0, 0, '', ''),
(1264, 0, 0, 0, 0, 'mohtishimshabir9@gmail.com', '2024-05-17 14:14:59.000000', '0', '0', 0, 0, '', ''),
(1265, 0, 0, 0, 0, 'Drtufailt@gmail.com', '2024-05-17 15:27:54.000000', '0', '0', 0, 0, '', ''),
(1266, 0, 0, 0, 0, 'lonejunaid5452@gmail.com', '2024-05-17 16:24:16.000000', '9797529541@ybl', 'images2/Snapchat-1716898427.jpg', 0, 0, '', ''),
(1267, 0, 0, 0, 0, 'mehruunnissa62@gmail.com', '2024-05-17 16:25:11.000000', '0', '0', 0, 0, '', ''),
(1268, 0, 0, 0, 0, 'junaidulislaam199@gmail.com', '2024-05-17 16:28:13.000000', '0', '0', 0, 0, '', ''),
(1269, 0, 0, 0, 0, 'safeernajar72@gmail.com', '2024-05-17 16:37:17.000000', '8082744803', '0', 0, 0, '', ''),
(1270, 0, 0, 90, 5, 'zeanmalik75@gmail.com', '2024-05-17 19:27:29.000000', '0', '0', 0, 0, '', ''),
(1271, 0, 0, 300, 5, 'iqrasahil0919@gmail.com', '2024-06-17 07:48:05.000000', 'bhaisahil392@okicici', 'images2/IMG_20240328_021302.jpg', 0, 0, '', ''),
(1272, 0, 0, 0, 0, 'zs326835@gmail.com', '2024-05-17 17:22:27.000000', '0', '0', 0, 0, '', ''),
(1273, 0, 0, 0, 0, 'rabilshah94@gmail.com', '2024-05-17 17:23:43.000000', '0', '0', 0, 0, '', ''),
(1275, 0, 0, 0, 0, 'qureshimomin214@gmail.com', '2024-05-17 17:39:22.000000', '0', '0', 0, 0, '', ''),
(1276, 0, 0, 0, 0, 'aaqibpathan28@gmail.com', '2024-05-17 18:43:06.000000', '0', '0', 0, 0, '', ''),
(1277, 0, 0, 0, 0, 'shaikshabir153@gmail.com', '2024-05-17 19:05:19.000000', '9149815267@ybl', '0', 0, 0, '', ''),
(1278, 0, 0, 0, 0, 'wagayaqib487@gmail.com', '2024-05-17 19:26:53.000000', '0', '0', 0, 0, '', ''),
(1279, 0, 0, 0, 0, 'TAJAMULSUFI96@GMAIL.COM', '2024-05-17 20:10:18.000000', '0', '0', 0, 0, '', ''),
(1280, 0, 0, 0, 0, 'bushrashafi473@gmail.com', '2024-05-17 21:01:45.000000', '7051801341', '0', 0, 0, '', ''),
(1281, 0, 0, 0, 0, 'khankulsum8899@gmail.com', '2024-05-18 03:43:31.000000', '0', '0', 0, 0, '', ''),
(1282, 0, 0, 0, 0, 'Amairaamjid@589gmail.com', '2024-05-18 07:19:49.000000', '0', '0', 0, 0, '', ''),
(1283, 0, 0, 3450, 4, 'kh923471@gmail.com', '2024-06-30 05:47:29.000000', '9596296853@jkb', '0', 0, 200, '', ''),
(1284, 0, 0, 0, 0, 'peerirfan751@gmail.com', '2024-05-18 10:10:48.000000', '0', '0', 0, 0, '', ''),
(1285, 0, 0, 0, 0, 'khansadu123@gmail.com', '2024-05-18 11:23:09.000000', '0', '0', 0, 0, '', ''),
(1286, 0, 0, 0, 0, 'naveedbashir705@gmail.com', '2024-05-18 13:38:58.000000', '0', 'images2/6ca7d861-454d-4b68-beed-6b342be12cbc-1_all_8052.jpg', 0, 0, '', ''),
(1287, 0, 0, 0, 0, 'rajaumaaid99@gmail.com', '2024-05-18 16:03:41.000000', '0', '0', 0, 0, '', ''),
(1288, 0, 0, 0, 0, 'aadillone2180@gmail.com', '2024-05-18 16:38:30.000000', 'loneadil432@oksbi', '0', 0, 0, '', ''),
(1289, 0, 0, 0, 0, 'yasirnaik07@gmail.com', '2024-05-18 18:15:25.000000', '0', '0', 0, 0, '', ''),
(1290, 0, 0, 0, 0, 'yaarpanun70@gmail.com', '2024-05-18 19:33:59.000000', '0', '0', 0, 0, '', ''),
(1291, 0, 0, 0, 0, 'khanfirdous1266@gmail.com', '2024-05-19 09:22:18.000000', '0', '0', 0, 0, '', ''),
(1292, 0, 0, 90, 1, 'adiiadil2150@gmail.com', '2024-05-20 17:20:44.000000', '6005267607@ybl', 'images2/1694189903328.jpg', 0, 0, '', ''),
(1293, 0, 0, 0, 0, 'mirtalib663@gmail.com', '2024-05-19 18:30:55.000000', '0', '0', 0, 0, '', ''),
(1294, 0, 0, 0, 0, 'mirtalib7422@gmail.com', '2024-05-19 18:38:38.000000', '0', '0', 0, 0, '', ''),
(1295, 0, 0, 0, 0, 'suhailz0123456789@gmail.com', '2024-05-20 09:28:18.000000', '0', '0', 0, 0, '', ''),
(1296, 0, 0, 0, 0, 'qureshis99@gmail.com', '2024-05-20 13:24:28.000000', '0', '0', 0, 0, '', ''),
(1297, 0, 0, 0, 0, 'Enenterprises443@gmail.com', '2024-05-20 13:41:27.000000', '0', '0', 0, 0, '', ''),
(1298, 0, 0, 0, 0, 'adfarkhan835@gmailcom', '2024-05-20 15:44:39.000000', '0', '0', 0, 0, '', ''),
(1299, 0, 0, 0, 0, 'warmomin842@gmail.com', '2024-05-20 17:09:26.000000', '0', '0', 0, 0, '', ''),
(1300, 0, 0, 0, 0, 'ehmdsahil@gmail.com', '2024-05-21 05:00:03.000000', '0', '0', 0, 0, '', ''),
(1301, 0, 0, 0, 0, 'irshadbhat13@gmail.com', '2024-05-21 08:30:14.000000', '0', '0', 0, 0, '', ''),
(1302, 0, 0, 0, 0, 'riyazahmadpahlipora6@gmail.com', '2024-05-21 08:33:49.000000', '0', '0', 0, 0, '', ''),
(1303, 0, 0, 0, 0, 'smehakhan19@gmail.com', '2024-05-21 12:00:34.000000', '0', '0', 0, 0, '', ''),
(1304, 0, 0, 0, 0, 'sanasheikhh80@gmail.com', '2024-05-21 14:01:23.000000', '0', '0', 0, 0, '', ''),
(1305, 0, 0, 0, 0, 'sanjanasingh021@gmail.com', '2024-05-21 14:23:27.000000', '0', '0', 0, 0, '', ''),
(1306, 0, 0, 0, 0, 'moizanfarooq@gmail.com', '2024-05-21 18:05:25.000000', '0', '0', 0, 0, '', ''),
(1307, 0, 0, 0, 0, 'abcdefgggg@gmail.com', '2024-05-21 18:32:43.000000', '0', '0', 0, 0, '', ''),
(1308, 0, 0, 0, 0, 'kashifkakroo@gmail.com', '2024-05-21 18:37:38.000000', '0', '0', 0, 0, '', ''),
(1309, 0, 0, 0, 0, 'gwdevil97@gmail.com', '2024-05-22 09:26:05.000000', '0', '0', 0, 0, '', ''),
(1310, 0, 0, 0, 0, 'bazilabatool97@gmail.com', '2024-05-22 13:12:16.000000', '0', '0', 0, 0, '', ''),
(1311, 0, 0, 0, 0, 'najarhardware598@gmail.com', '2024-05-22 14:06:12.000000', '0', '0', 0, 0, '', ''),
(1312, 0, 0, 0, 0, 'hellobro6602@gmail.com', '2024-05-22 14:12:34.000000', '0', '0', 0, 0, '', ''),
(1313, 0, 0, 0, 0, 'najarnajar0980@gmail.com', '2024-05-22 14:21:28.000000', '0', '0', 0, 0, '', ''),
(1314, 0, 0, 0, 0, 'ubaidah724@gmail.com', '2024-05-22 14:23:35.000000', '7006850086@naviaxis', 'images2/Screenshot_2024-05-22-19-00-40-43_6012fa4d4ddec268fc5c7112cbb265e7.jpg', 0, 0, '', ''),
(1315, 0, 0, 0, 0, 'nabisaleem35@gmail.com', '2024-05-22 14:33:03.000000', '0', '0', 0, 0, '', ''),
(1316, 0, 0, 0, 0, 'seeratjan95003@gmail.com', '2024-05-22 18:47:57.000000', '0', '0', 0, 0, '', ''),
(1317, 0, 0, 0, 0, 'krishna24082005@gmail.com', '2024-05-23 07:37:09.000000', '0', '0', 0, 0, '', ''),
(1318, 0, 0, 0, 0, 'Zakirshah22102005@gmail.com', '2024-05-23 07:45:10.000000', '0', '0', 0, 0, '', ''),
(1319, 0, 0, 0, 0, 'owaisrehman001@gmail.com', '2024-05-23 08:33:03.000000', '0', '0', 0, 0, '', ''),
(1320, 0, 0, 0, 0, 'skillvigor3@gmail.com', '2024-05-23 09:40:03.000000', '0', '0', 0, 0, '', ''),
(1321, 0, 0, 0, 0, 'tusharsingh2738@gmail.com', '2024-05-23 10:27:15.000000', '0', '0', 0, 0, '', ''),
(1322, 0, 0, 0, 0, 'bhatbilalbhat645@gmail.com', '2024-05-24 07:24:43.000000', '0', '0', 0, 0, '', ''),
(1323, 0, 0, 0, 0, 'bhatxuvabhatxuva@gmailcom', '2024-05-24 07:41:49.000000', '0', '0', 0, 0, '', ''),
(1324, 0, 0, 0, 0, 'tahirfayaz17@gmail.com', '2024-05-24 08:43:22.000000', '0', '0', 0, 0, '', ''),
(1325, 0, 0, 0, 0, 'sameerawan6299@gmail.com', '2024-05-24 09:26:52.000000', '0', '0', 0, 0, '', ''),
(1326, 0, 0, 0, 0, 'sheikhaamir1297@gmail.com', '2024-05-24 10:57:43.000000', '0', '0', 0, 0, '', ''),
(1327, 0, 0, 0, 0, 'sssmir@gmail.com', '2024-05-24 11:02:45.000000', '0', '0', 0, 0, '', ''),
(1328, 0, 0, 0, 0, 'rmir8026@gmail.com', '2024-05-24 11:14:45.000000', '0', '0', 0, 0, '', ''),
(1329, 0, 0, 0, 0, 'Sheikhmafuza1314@gmail.com', '2024-05-24 11:29:01.000000', '0', '0', 0, 0, '', ''),
(1330, 0, 0, 0, 0, 'salmankulley@gmail.com', '2024-05-24 12:31:51.000000', '0', '0', 0, 0, '', ''),
(1331, 0, 0, 0, 0, 'yawerwaseem123@gmail.com', '2024-05-24 14:02:41.000000', '0', '0', 0, 0, '', ''),
(1332, 0, 0, 0, 0, 'yawerwaseem6@gmail.com', '2024-05-24 14:14:19.000000', '0', '0', 0, 0, '', ''),
(1333, 0, 0, 0, 0, 'yawerwaseem160634@gmail.com', '2024-05-24 14:19:20.000000', '0', '0', 0, 0, '', ''),
(1334, 0, 0, 890, 7, 'sheikhwishu125@gmail.com', '2024-06-01 18:52:41.000000', 'sheikhwishu125-1@okaxis', 'images2/1000238814.jpg', 0, 20, '', ''),
(1335, 0, 0, 0, 0, 'sanahfarooq786@gmail.com', '2024-05-24 18:26:25.000000', '0', '0', 0, 0, '', ''),
(1336, 0, 0, 0, 0, 'haroonashraf943@gmail.com', '2024-05-24 18:31:59.000000', '0', '0', 0, 0, '', ''),
(1337, 0, 0, 15100, 16, 'qadeer21789@gmail.com', '2024-07-18 08:32:13.000000', '9596296853@jkb', 'images2/1000039306.jpg', 0, 800, '', ''),
(1339, 0, 0, 0, 0, 'faisalakram989@gmail.com', '2024-05-25 07:12:07.000000', '0', '0', 0, 0, '', ''),
(1340, 0, 0, 0, 0, 'bhatfaisal1901@gmail.com', '2024-05-25 07:14:58.000000', '0', '0', 0, 0, '', ''),
(1342, 0, 0, 0, 0, 'SALEEMK1235@GMAIL.COM', '2024-05-25 09:58:02.000000', '0', '0', 0, 0, '', ''),
(1344, 0, 0, 0, 0, 'wanisalman672@gmail.com', '2024-05-25 17:00:31.000000', '0', '0', 0, 0, '', ''),
(1345, 0, 0, 0, 0, 'sagarmalik7169@gmail.com', '2024-05-25 17:13:57.000000', '0', '0', 0, 0, '', ''),
(1346, 0, 0, 0, 0, 'demo123@gmail.com', '2024-05-25 17:46:51.000000', '0', '0', 0, 0, '', ''),
(1347, 0, 0, 0, 0, 'system@gmail.com', '2024-05-26 08:03:09.000000', '0', '0', 0, 0, '', ''),
(1348, 0, 0, 0, 0, 'bilalbhat786219@gmail.com', '2024-05-26 10:29:20.000000', '0', '0', 0, 0, '', ''),
(1349, 0, 0, 0, 0, 'asimwanix34@gmail.com', '2024-05-26 11:59:34.000000', '0', '0', 0, 0, '', ''),
(1350, 0, 0, 0, 0, 'theshoaib019@gmail.com', '2024-05-26 17:59:01.000000', '6005538106@ibl', '0', 0, 0, '', ''),
(1351, 0, 0, 961130, 917, 'mallashakir135@gmail.com', '2024-07-02 03:50:51.000000', 'mallashakir135@okaxis', 'images2/received_262340733183826.jpeg', 96100, 95800, '', ''),
(1352, 0, 0, 0, 0, 'darmujtaba123@gmail.com', '2024-05-28 17:39:45.000000', '0', '0', 0, 0, '', ''),
(1353, 0, 0, 52890, 58, 'imtiyazsheikh999@gmail.com', '2024-09-04 07:08:21.000000', '0', 'images2/IMG-20240530-WA0082.jpg', 20, 7000, '', ''),
(1354, 0, 0, 0, 0, 'sheebasudeep@gmail.com', '2024-05-28 19:05:29.000000', '0', '0', 0, 0, '', ''),
(1356, 0, 0, 0, 0, 'sonalbrain@gmail.com', '2024-05-29 19:30:19.000000', '0', '0', 0, 0, '', ''),
(1358, 0, 0, 0, 0, 'sonalhero@gmail.com', '2024-05-29 19:45:00.000000', '0', '0', 0, 0, '', ''),
(1359, 0, 0, 0, 0, 'asim76670@gmail.com', '2024-05-29 21:05:04.000000', '0', '0', 0, 0, '', ''),
(1360, 0, 0, 0, 0, 'paulzehran7@gmail.com', '2024-05-30 05:52:07.000000', '0', '0', 0, 0, '', ''),
(1361, 0, 0, 0, 0, 'junaidjunaid@gmail.com', '2024-05-30 06:47:37.000000', 'Junaid', '0', 0, 0, '', ''),
(1364, 0, 0, 0, 0, 'pakeezareyaz94@gmail.com', '2024-05-30 08:05:54.000000', '0', '0', 0, 0, '', ''),
(1365, 0, 0, 0, 0, 'mohammadniyaz8112@gmail.com', '2024-05-30 20:34:28.000000', '0', '0', 0, 0, '', ''),
(1366, 0, 0, 0, 0, 'srinag774624@gmail.com', '2024-05-31 10:31:35.000000', '774624@ybl', '0', 0, 0, '', ''),
(1367, 0, 0, 270, 5, 'wanisameer296@gmail.com', '2024-06-08 16:56:18.000000', 'wanisameer296@okaxis', 'images2/_file_0 (2).jpg', 0, 0, '', ''),
(1368, 0, 0, 1010, 26, 'mirrashid226@gmail.com', '2024-06-20 15:25:31.000000', '9797858285-2@airtel', 'images2/IMG_20240414_181432.jpg', 0, 0, '', ''),
(1369, 0, 0, 0, 0, 'skillzard780@gmail.com', '2024-06-01 12:04:46.000000', '0', '0', 0, 0, '', ''),
(1372, 0, 0, 0, 0, 'bhatbilal6754@gmail.com', '2024-06-01 14:53:11.000000', '007065784', '0', 0, 0, '', ''),
(1373, 0, 0, 0, 0, 'aabimeer666@gmail.com', '2024-06-01 15:24:29.000000', '0', '0', 0, 0, '', ''),
(1374, 0, 0, 0, 0, 'ajaytadam0215@gmail.com', '2024-06-01 16:37:04.000000', '0', '0', 0, 0, '', ''),
(1375, 0, 0, 0, 0, 'pitarsarang1@gmail.com', '2024-06-01 16:45:18.000000', '0', '0', 0, 0, '', ''),
(1377, 0, 0, 0, 0, 'irshadbahat786@gmail.com', '2024-06-01 17:41:29.000000', '0', '0', 0, 0, '', ''),
(1378, 0, 0, 0, 0, 'shabirchoudhaary77@gmail.com', '2024-06-01 17:52:10.000000', '0', '0', 0, 0, '', ''),
(1379, 0, 0, 0, 0, 'sameer.official0119@gmail.com', '2024-06-02 04:56:10.000000', '0', '0', 0, 0, '', ''),
(1380, 0, 0, 0, 0, 'mirmaroof002@gmail.com', '2024-06-02 05:33:42.000000', '0', '0', 0, 0, '', ''),
(1381, 0, 0, 0, 0, 'mirkabeer360@gmail.com', '2024-06-02 06:39:09.000000', '0', '0', 0, 0, '', ''),
(1383, 0, 0, 0, 0, 'hrajput123455@gmail.com', '2024-06-02 16:12:32.000000', '0', '0', 0, 0, '', ''),
(1384, 0, 0, 0, 0, 'demo957@gmail.com', '2024-06-02 16:59:12.000000', '0', '0', 0, 0, '', ''),
(1385, 0, 0, 0, 0, 'miramir01@gmail.com', '2024-06-02 17:26:06.000000', '0', '0', 0, 0, '', ''),
(1386, 0, 0, 0, 0, 'aryankumar5555n@gmail.com', '2024-06-02 20:16:20.000000', '0', '0', 0, 0, '', ''),
(1387, 0, 0, 0, 0, 'aisa@gmail.com', '2024-06-02 20:25:04.000000', '0', '0', 0, 0, '', ''),
(1388, 0, 0, 0, 0, 'krishna@gmail.com', '2024-06-02 20:29:51.000000', '0', '0', 0, 0, '', ''),
(1389, 0, 0, 0, 0, 'rajunajar222@gmail.com', '2024-06-02 21:09:25.000000', '0', '0', 0, 0, '', ''),
(1390, 0, 0, 0, 0, 'you@gmail.com', '2024-06-03 06:14:52.000000', '0', '0', 0, 0, '', ''),
(1391, 0, 0, 30, 1, 'ganesh@gmail.com', '2024-06-03 10:17:15.000000', '9310431816@upi', 'images2/sitebride_full.jpg', 0, 0, '', ''),
(1392, 0, 0, 0, 0, 'zeeshanmir303@gmail.com', '2024-06-03 09:14:32.000000', '0', '0', 0, 0, '', ''),
(1393, 0, 0, 0, 0, 'mahadev@gmail.com', '2024-06-03 09:27:41.000000', '0', '0', 0, 0, '', ''),
(1394, 0, 0, 0, 0, 'shiv@gmail.com', '2024-06-03 09:34:44.000000', '0', '0', 0, 0, '', ''),
(1395, 0, 0, 200, 3, 'vishnu@gmail.com', '2024-08-31 16:54:05.000000', '0', '0', 0, 0, '', ''),
(1396, 0, 0, 0, 0, 'vishnu55@gmail.com', '2024-06-03 09:50:53.000000', '0', '0', 0, 0, '', ''),
(1397, 0, 0, 0, 0, 'itsvijaysaini@gmail.com', '2024-06-03 09:51:03.000000', '0', '0', 0, 0, '', ''),
(1398, 0, 0, 0, 0, 'ishfaq@123gmail.com', '2024-06-03 10:05:13.000000', '0', '0', 0, 0, '', ''),
(1399, 0, 0, 0, 0, 'ishu123@gmail.com', '2024-06-03 10:21:57.000000', '0', '0', 0, 0, '', ''),
(1400, 0, 0, 0, 0, 'meer123@gmail.com', '2024-06-03 10:35:54.000000', '0', '0', 0, 0, '', ''),
(1401, 0, 0, 61825, 1, 'aryanjaiswal@gmail.com', '2024-06-07 15:06:41.000000', '9310431816@upi', 'images2/Screenshot_20240524-120746.jpg', 0, 3200, '', ''),
(1402, 0, 0, 0, 0, 'sunny2@gmail.com', '2024-06-03 11:15:29.000000', '0', '0', 0, 0, '', ''),
(1403, 0, 0, 0, 0, 'ubaidwani158@gmail.com', '2024-06-03 12:48:33.000000', '0', '0', 0, 0, '', ''),
(1404, 0, 0, 0, 0, 'ishfaq0109@gmail.com', '2024-06-03 13:07:35.000000', '0', '0', 0, 0, '', ''),
(1405, 0, 0, 0, 0, 'ubaidajaz2121@gmail.com', '2024-06-03 13:15:07.000000', '0', '0', 0, 0, '', ''),
(1406, 0, 0, 0, 0, 'waniubaid201@gmail.com', '2024-06-03 14:08:39.000000', '0', '0', 0, 0, '', ''),
(1407, 0, 0, 0, 0, 'amitrajput99990@gmail.com', '2024-06-03 14:41:04.000000', '0', '0', 0, 0, '', ''),
(1408, 0, 0, 0, 0, 'skillzard@123gmail.com', '2024-06-03 14:52:28.000000', '0', '0', 0, 0, '', ''),
(1409, 0, 0, 0, 0, 'rohanfelix444@gmail.com', '2024-06-03 16:12:20.000000', '0', 'images2/DSC_0075.JPG', 0, 0, '', ''),
(1410, 0, 0, 0, 0, 'mominriyazwani000111@gmail.com', '2024-06-03 16:48:22.000000', '0', '0', 0, 0, '', ''),
(1411, 0, 0, 50, 1, 'miramir01@gmal.com', '2024-06-18 17:44:49.000000', '0', 'images2/936258.jpg', 0, 0, '', ''),
(1412, 0, 0, 0, 0, 'syedaijaz94@gmail.com', '2024-06-03 18:53:36.000000', '0', '0', 0, 0, '', ''),
(1413, 0, 0, 0, 0, 'nazirjavid31@gmail.com', '2024-06-04 07:00:20.000000', '0', '0', 0, 0, '', ''),
(1414, 0, 0, 0, 0, 'magreynisar1234@gmail.com', '2024-06-04 14:01:33.000000', '0', '0', 0, 0, '', ''),
(1415, 0, 0, 0, 0, 'khanbashrat206@gmail.com', '2024-06-05 06:22:51.000000', 'khanbashrat206-2@oksbi', '0', 0, 0, '', ''),
(1416, 0, 0, 0, 6, 'idrdekho@gmail.com', '2024-06-12 14:02:11.000000', 'munawarvelogs@okicici', 'images2/FB_IMG_1717158298996.jpg', 0, 0, '', ''),
(1418, 0, 0, 0, 0, 'vlogervlogs01@gmail.com', '2024-06-05 17:23:07.000000', '0', '0', 0, 0, '', ''),
(1419, 0, 0, 61925, 1, 'businessaryan77@gmail.com', '2024-06-07 15:17:08.000000', '9310431816@upi', 'images2/Screenshot_20240520-225234.jpg', 0, 3200, '', ''),
(1420, 0, 0, 3830, 10, 'bhatfaru62591@gmail.com', '2024-06-18 16:58:59.000000', '7006214914@jkb', '0', 0, 250, '', ''),
(1421, 0, 0, 0, 0, 'mirrukiyaakram@gmail.com', '2024-06-08 14:46:34.000000', '0', '0', 0, 0, '', ''),
(1422, 0, 0, 0, 0, 'Gsuheel9006@gmail.com', '2024-06-08 16:55:02.000000', '7006494178@ybl', 'images2/IMG_20240528_143234.jpg', 0, 0, '', ''),
(1423, 0, 0, 0, 0, 'tajamultahir120@gmail.com', '2024-06-08 19:16:32.000000', '0', '0', 0, 0, '', ''),
(1424, 0, 0, 0, 0, 'www.darbasit690@gmail.com', '2024-06-09 05:28:06.000000', '0', '0', 0, 0, '', ''),
(1425, 0, 0, 0, 0, 'omairlone055@gmail.com', '2024-06-09 06:36:11.000000', '0', '0', 0, 0, '', ''),
(1426, 0, 0, 0, 0, 'Kf967889@gmail.com', '2024-06-09 07:19:46.000000', '0', '0', 0, 0, '', ''),
(1427, 0, 0, 0, 0, 'wanifaizan079@gmail.com', '2024-06-09 07:31:33.000000', '0', '0', 0, 0, '', ''),
(1428, 0, 0, 0, 0, 'Sloneg53@gmail.com', '2024-06-09 08:40:08.000000', '0', '0', 0, 0, '', ''),
(1429, 0, 0, 0, 0, 'malikkifayathk789@gmail.com', '2024-06-09 15:06:39.000000', '0', '0', 0, 0, '', ''),
(1437, 0, 0, 0, 0, 'javidvloge22@gmail.com', '2024-06-10 17:50:31.000000', '0', '0', 0, 0, '', ''),
(1440, 0, 0, 0, 5, 'khan@gmail.com', '2024-06-11 12:29:48.000000', '0', '0', 0, 0, '', ''),
(1441, 0, 0, 0, 0, 'jaiswal778@gmail.com', '2024-06-11 09:02:29.000000', '0', 'images2/GooglePay_QR (9).png', 0, 0, '', ''),
(1442, 0, 0, 0, 0, 'ishfaq@6005353856gmail.com', '2024-06-11 09:03:10.000000', '0', '0', 0, 0, '', ''),
(1443, 0, 0, 0, 2, 'demo998@gmail.com', '2024-08-06 16:27:13.000000', '0', '0', 0, 0, '', ''),
(1448, 0, 0, 0, 0, 'tahira.mariyam@yahoo.co.in', '2024-06-12 11:17:44.000000', '0', '0', 0, 0, '', ''),
(1449, 0, 0, 0, 0, 'andrabiabid.andrabi7@gmail.com', '2024-06-12 14:24:25.000000', '0', '0', 0, 0, '', ''),
(1450, 0, 0, 0, 0, 'iqraasmat94@gmail.com', '2024-06-12 14:31:57.000000', '0', '0', 0, 0, '', ''),
(1451, 0, 0, 0, 0, 'mallashakir111@gmail.com', '2024-06-12 14:50:56.000000', '0', '0', 0, 0, '', ''),
(1452, 0, 0, 50, 1, 'lonejunaid96@gmail.com', '2024-06-16 18:22:37.000000', '0', '0', 0, 0, '', ''),
(1454, 0, 0, 2400, 5, 'aumairkoka42@gmail.com', '2024-06-19 12:02:05.000000', 'kokaaumair5@okaxis', 'images2/IMG-20231203-WA0003.jpg', 0, 0, '', ''),
(1455, 0, 0, 0, 0, 'bibasit29@gmail.com', '2024-06-14 16:13:06.000000', '0', '0', 0, 0, '', ''),
(1456, 0, 0, 0, 0, 'loneaqib895@gmail.com', '2024-06-15 06:03:58.000000', '0', '0', 0, 0, '', ''),
(1457, 0, 0, 0, 0, 'Wanikhalid259@gmail.com', '2024-06-15 10:36:43.000000', '0', '0', 0, 0, '', ''),
(1458, 0, 0, 0, 0, 'wanimudasir9094@gmail.com', '2024-06-15 12:26:43.000000', '0', '0', 0, 0, '', ''),
(1459, 0, 0, 0, 0, 'sb7446172@gmail.com', '2024-06-16 07:27:17.000000', '0', '0', 0, 0, '', ''),
(1460, 0, 0, 0, 0, 'shakirhura17@gmail.com', '2024-06-16 07:30:46.000000', '7889308007@ptyes', 'images2/Screenshot_2024-06-05-00-08-15-622_com.whatsapp.png', 0, 0, '', ''),
(1461, 0, 0, 0, 0, 'waqarwaqar45541@gmail.com', '2024-06-16 11:57:08.000000', '0', '0', 0, 0, '', ''),
(1462, 0, 0, 0, 0, 'samrahi71@gmail.com', '2024-06-16 12:20:32.000000', '0', '0', 0, 0, '', ''),
(1463, 0, 0, 0, 0, 'wanibasit319@gmail.com', '2024-06-16 13:12:47.000000', '0', '0', 0, 0, '', ''),
(1468, 0, 0, 640, 3, 'Kokabilal711@gmail.com', '2024-07-27 17:50:35.000000', 'kokabilal477@okicici', 'images2/IMG_20240512_164846.jpg', 0, 0, '', ''),
(1469, 0, 0, 0, 0, 'sartajbahaisartaj@gmail.com', '2024-06-16 16:07:12.000000', '0', '0', 0, 0, '', ''),
(1470, 0, 0, 0, 0, 'aadilsultan2018@gmail.com', '2024-06-16 16:10:23.000000', '0', '0', 0, 0, '', ''),
(1471, 0, 0, 0, 0, 'shayistakhan10@gmail.com', '2024-06-16 17:56:16.000000', '0', '0', 0, 0, '', ''),
(1472, 0, 0, 0, 0, 'muzamilahzai@gmail.com', '2024-06-16 19:08:19.000000', '7780988516@paytm', 'images2/1000040624.jpg', 0, 0, '', ''),
(1473, 0, 0, 0, 0, '6006288198ubi@gmail.com', '2024-06-16 19:20:48.000000', '6006288198@types', '0', 0, 0, '', ''),
(1474, 0, 0, 0, 0, 'mrkhan32626@gmail.com', '2024-06-17 06:14:54.000000', '0', '0', 0, 0, '', ''),
(1475, 0, 0, 0, 0, 'karansinghrail717@gmail.com', '2024-06-17 06:44:56.000000', '0', '0', 0, 0, '', ''),
(1476, 0, 0, 0, 0, 'inshagowhar57@gmail.com', '2024-06-17 08:04:33.000000', '0', 'images2/IMG-20240617-WA0010.jpg', 0, 0, '', ''),
(1477, 0, 0, 0, 0, 'saleemashraf77796@gmail.com', '2024-06-17 09:15:26.000000', '0', 'images2/20240510_193832.jpg', 0, 0, '', ''),
(1478, 0, 0, 0, 0, 'mohdshafi42@gmail.com', '2024-06-17 09:53:45.000000', '0', '0', 0, 0, '', ''),
(1479, 0, 0, 0, 0, 'meersahilsahil2233@email.com', '2024-06-17 16:39:09.000000', '0', '0', 0, 0, '', ''),
(1480, 0, 0, 0, 0, 'Faizanahad1234@gmail.com', '2024-06-18 07:50:38.000000', 'faizanfaizan1769@okaxis', 'images2/IMG_20230827_114048_090.webp', 0, 0, '', ''),
(1481, 0, 0, 0, 0, 'meershahid20987@gmail.com', '2024-06-18 09:00:40.000000', 'meershahid20987@icici', '0', 0, 0, '', ''),
(1482, 0, 0, 0, 0, 'farhanahassan725@gmail.com', '2024-06-18 09:36:50.000000', '0', '0', 0, 0, '', ''),
(1483, 0, 0, 0, 0, 'sohailbhat2@gmail.com', '2024-06-18 12:36:57.000000', '0', '0', 0, 0, '', ''),
(1484, 0, 0, 0, 0, 'mehnazmushtaq71@gmail.com', '2024-06-18 14:58:38.000000', '8899553873@ybl', '0', 0, 0, '', ''),
(1485, 0, 0, 0, 0, 'Smnakhter396@gmail.com', '2024-06-18 15:02:27.000000', 'smnakhter396@okhdfcbank', '0', 0, 0, '', '');
INSERT INTO `dash` (`id`, `td`, `ld`, `ad`, `joining`, `email`, `last_update`, `upiId`, `image_path`, `remain`, `passive`, `name`, `photo`) VALUES
(1486, 0, 0, 0, 0, 'azhar2239@gmail.com', '2024-06-18 15:08:21.000000', '0', '0', 0, 0, '', ''),
(1487, 0, 0, 0, 0, 'bilaalmeer899@gamil.com', '2024-06-18 16:10:07.000000', '0', 'images2/1000016771.jpg', 0, 0, '', ''),
(1488, 0, 0, 0, 0, 'shahidmeer822@gmail.com', '2024-06-18 16:25:18.000000', '0', '0', 0, 0, '', ''),
(1489, 0, 0, 50, 1, 'MaroofAhmed02@gmail.com', '2024-06-18 17:52:36.000000', '0', 'images2/1000003572.jpg', 0, 0, '', ''),
(1490, 0, 0, 0, 0, 'qazid1279@gmail.com', '2024-06-18 16:57:47.000000', '7889932474@fam', '0', 0, 0, '', ''),
(1491, 0, 0, 0, 0, 'meersajid01@gmail.com', '2024-06-18 17:51:27.000000', '0', 'images2/Snapchat-1219131779.jpg', 0, 0, '', ''),
(1492, 0, 0, 0, 0, 'azharuddin7889@gmail.com', '2024-06-19 08:53:46.000000', '0', 'images2/1000016935.jpg', 0, 0, '', ''),
(1493, 0, 0, 0, 0, 'khalidashraflone299@gmail.com', '2024-06-19 15:11:34.000000', '0', '0', 0, 0, '', ''),
(1494, 0, 0, 0, 0, 'Khanmasroor639@gmail.com', '2024-06-20 10:10:59.000000', '0', 'images2/IMG_1014.jpeg', 0, 0, '', ''),
(1495, 0, 0, 0, 0, 'mohmmadasifsheikh89182@gmail.com', '2024-06-20 13:10:00.000000', '0', '0', 0, 0, '', ''),
(1496, 0, 0, 0, 0, 'hazimahmading@gmail.com', '2024-06-20 15:20:41.000000', '6005577378@ibl', 'images2/Picsart_24-06-19_14-16-34-130.jpg', 0, 0, '', ''),
(1497, 0, 0, 0, 0, 'hjan3819@gmail.com', '2024-06-20 16:02:25.000000', 'Masooda@icici', '0', 0, 0, '', ''),
(1498, 0, 0, 0, 0, 'naseerbhat412@gmail.com', '2024-06-20 19:04:52.000000', '0', '0', 0, 0, '', ''),
(1499, 0, 0, 7100, 11, 'bhatshahidshahidbhat90@gmail.com', '2024-07-01 05:28:42.000000', '6005108035', 'images2/IMG_20240508_173604_813.jpg', 0, 250, '', ''),
(1500, 0, 0, 0, 0, 'hajam7071@gmail.com', '2024-06-21 10:51:15.000000', '0', '0', 0, 0, '', ''),
(1501, 0, 0, 0, 0, 'sunadhisahu@gmail.com', '2024-06-22 11:51:10.000000', '0', '0', 0, 0, '', ''),
(1502, 0, 0, 0, 0, 'parvinderkour99@gmail.com', '2024-06-23 15:59:27.000000', '0', '0', 0, 0, '', ''),
(1503, 0, 0, 130, 1, 'ishuishfaq776@gmail.com', '2024-06-24 06:47:35.000000', 'ishuishfaq776@oksbi', 'images2/1000043770.jpg', 0, 0, '', ''),
(1504, 0, 0, 0, 0, 'mahfoozb80@gmail.com', '2024-06-24 06:29:57.000000', 'mahfoozbilalmahfooz@okhdfcbank', 'images2/1000082502.jpg', 0, 0, '', ''),
(1505, 0, 0, 0, 0, 'azaib8427@gmail.com', '2024-06-24 07:35:09.000000', '0', '0', 0, 0, '', ''),
(1506, 0, 0, 0, 0, 'tahirrajput11480@gmail.com', '2024-06-24 08:49:57.000000', '0', '0', 0, 0, '', ''),
(1507, 0, 0, 3590, 8, 'raziabhat941@gmail.com', '2024-08-11 10:51:17.000000', '0', 'images2/1000043759.jpg', 0, 0, '', ''),
(1508, 0, 0, 0, 0, 'no@gmail.com', '2024-06-25 08:37:56.000000', '0', '0', 0, 0, '', ''),
(1509, 0, 0, 0, 0, 'shahidnazirwani364@gmail.com', '2024-06-25 18:31:16.000000', '0', '0', 0, 0, '', ''),
(1510, 0, 0, 0, 0, 'Bilalkumar161@gmail.com', '2024-06-26 07:05:46.000000', '0', '0', 0, 0, '', ''),
(1511, 0, 0, 0, 0, 'bhatf5427@gmail.com', '2024-06-26 10:56:18.000000', '0', '0', 0, 0, '', ''),
(1512, 0, 0, 0, 0, 'mahidbashir707@gmail.com', '2024-06-26 11:09:21.000000', '0', '0', 0, 0, '', ''),
(1513, 0, 0, 0, 0, 'manzoormir82555@gmail.com', '2024-06-28 09:03:14.000000', '0', '0', 0, 0, '', ''),
(1514, 0, 0, 0, 0, 'anjumanyekulur@gmail.com', '2024-06-28 12:41:43.000000', '0', '0', 0, 0, '', ''),
(1515, 0, 0, 0, 0, 'ruhianjum010@gmail.com', '2024-06-28 12:44:07.000000', '0', '0', 0, 0, '', ''),
(1516, 0, 0, 0, 0, 'Farhandiwan551@gmail.com', '2024-06-28 15:18:38.000000', '0', '0', 0, 0, '', ''),
(1517, 0, 0, 0, 0, 'taslemansari123@gmail.com', '2024-06-29 06:30:23.000000', '0', '0', 0, 0, '', ''),
(1518, 0, 0, 0, 0, 'tusharthanande@gmail.com', '2024-06-29 13:03:43.000000', '0', '0', 0, 0, '', ''),
(1519, 0, 0, 0, 0, 'anjaliverma94184@gmail.com', '2024-06-29 16:51:11.000000', '0', '0', 0, 0, '', ''),
(1520, 0, 0, 0, 0, 'bhatu5566@gmail.com', '2024-06-30 19:53:27.000000', '0', '0', 0, 0, '', ''),
(1521, 0, 0, 0, 0, '6006688517@ibl', '2024-06-30 19:56:46.000000', '0', '0', 0, 0, '', ''),
(1522, 0, 0, 0, 0, 'shahjaany@gmail.com', '2024-07-01 05:26:37.000000', '0', 'images2/1722022079226.jpg', 0, 0, '', ''),
(1523, 0, 0, 0, 0, 'parvaizlone46@gmail.com', '2024-07-01 15:58:27.000000', '0', '0', 0, 0, '', ''),
(1525, 0, 0, 0, 0, 'asimaan99@gmail.com', '2024-07-06 15:24:04.000000', '0', '0', 0, 0, '', ''),
(1526, 0, 0, 0, 0, 'ashutechnology60@gmail.com', '2024-07-06 17:38:08.000000', '0', '0', 0, 0, '', ''),
(1527, 0, 0, 0, 0, 'toseedchuck64@gmail.com', '2024-07-07 15:51:52.000000', '0', '0', 0, 0, '', ''),
(1528, 0, 0, 0, 0, 'vishantdharmesh@gmail.com', '2024-07-08 09:28:47.000000', '0', '0', 0, 0, '', ''),
(1529, 0, 0, 0, 0, 'truptikanande0@gmail.com', '2024-07-08 18:13:59.000000', '0', '0', 0, 0, '', ''),
(1530, 0, 0, 0, 0, 'fmanzoor343@gmail.com', '2024-07-11 16:02:21.000000', '0', 'images2/IMG_20240423_232437_324.jpg', 0, 0, '', ''),
(1531, 0, 0, 220, 3, 'Danishwani623@gmail.com', '2024-08-15 07:31:34.000000', '9103924146@ibl', 'images2/1000015436.jpg', 0, 0, '', ''),
(1532, 0, 0, 0, 0, 'itzmuzamil13@gmail.com', '2024-07-14 08:06:20.000000', '0', '0', 0, 0, '', ''),
(1533, 0, 0, 0, 0, 'smartduger102@gmail.com', '2024-07-14 10:06:02.000000', '0', '0', 0, 0, '', ''),
(1534, 0, 0, 0, 0, 'bhataaqi288@gmail.com', '2024-07-15 05:00:29.000000', '0', '0', 0, 0, '', ''),
(1537, 0, 0, 0, 0, 'muheebbhat021@gmail.com', '2024-07-15 12:16:27.000000', '0', '0', 0, 0, '', ''),
(1538, 0, 0, 0, 0, 'abiddar649@gmail.com', '2024-07-15 12:58:17.000000', '0', '0', 0, 0, '', ''),
(1539, 0, 0, 0, 0, 'khanshabir18@gmail.com', '2024-07-20 08:53:17.000000', '0', '0', 0, 0, '', ''),
(1540, 0, 0, 0, 0, 'musaibm99@gmail.com', '2024-07-20 17:59:11.000000', '0', '0', 0, 0, '', ''),
(1541, 0, 0, 0, 0, 'rutbaAndari112@gmail.com', '2024-07-21 05:42:29.000000', '0', '0', 0, 0, '', ''),
(1542, 0, 0, 0, 0, 'suraj414263@gamail.com', '2024-07-21 11:52:04.000000', '6006457198@ibl', 'images2/IMG_20240629_085938_031.webp', 0, 0, '', ''),
(1543, 0, 0, 0, 0, 'shahrahil030@gmail.com', '2024-07-21 14:11:14.000000', '0', '0', 0, 0, '', ''),
(1544, 0, 0, 0, 0, 'parvinderK124@gmail.com', '2024-07-22 06:40:38.000000', '0', '0', 0, 0, '', ''),
(1545, 0, 0, 0, 0, 'hummaRashid786@rediffmail.com', '2024-07-22 13:01:05.000000', '0', '0', 0, 0, '', ''),
(1546, 0, 0, 80, 1, 'dbasit920@gmail.com', '2024-08-06 18:59:42.000000', '6006101753@PYTES', 'images2/1000449456.jpg', 0, 0, '', ''),
(1548, 0, 0, 0, 0, 'shaheena.700789@gmail.com', '2024-07-25 09:44:44.000000', '0', '0', 0, 0, '', ''),
(1549, 0, 0, 0, 0, 'tanveerd853@gmail.com', '2024-07-29 09:53:09.000000', '0', '0', 0, 0, '', ''),
(1550, 0, 0, 0, 0, 'nazimajan321@gmail.com', '2024-07-30 16:52:55.000000', '0', '0', 0, 0, '', ''),
(1551, 0, 0, 0, 0, 'seyammubashir55@gmail.com', '2024-07-30 18:05:50.000000', '0', '0', 0, 0, '', ''),
(1555, 0, 0, 0, 0, 'afshanahassan019@gmail.com', '2024-07-31 08:29:04.000000', '6005888051@axl', 'images2/74167cd4a34f824ced6e1d2d422ad3e6.jpg', 0, 0, '', ''),
(1556, 0, 0, 0, 0, 'tofeeqdar6@gmail.com', '2024-08-02 11:07:28.000000', '0', '0', 0, 0, '', ''),
(1557, 0, 0, 0, 7, 'alibaba@gmail.com', '2024-08-04 15:29:03.000000', '0', '0', 0, 0, '', ''),
(1558, 0, 0, 0, 0, 'cat2@gmail.com', '2024-08-03 12:54:59.000000', '0', '0', 0, 0, '', ''),
(1559, 0, 0, 0, 0, 'silver@gmail.com', '2024-08-03 12:56:50.000000', '0', '0', 0, 0, '', ''),
(1560, 0, 0, 0, 0, 'ishfaq12@gmail.com', '2024-08-03 13:11:47.000000', '0', '0', 0, 0, '', ''),
(1561, 0, 0, 30, 6, '', '2024-08-28 11:05:54.000000', '0', 'images2/Snapchat-1576487007.jpg', 0, 0, '', ''),
(1562, 0, 0, 0, 0, 'ratherfaisal122@gmail.com', '2024-08-03 19:32:13.000000', '0', '0', 0, 0, '', ''),
(1563, 0, 0, 0, 0, 'nabinaveed508@gmail.com', '2024-08-04 07:11:14.000000', '0', '0', 0, 0, '', ''),
(1564, 0, 0, 0, 0, 'testing55@gmail.com', '2024-08-04 08:23:28.000000', '0', '0', 0, 0, '', ''),
(1569, 0, 0, 0, 0, 'aamirr4112@gmail.com', '2024-08-04 19:04:46.000000', '0', '0', 0, 0, '', ''),
(1570, 0, 0, 0, 0, 'aamir4112@gmail.com', '2024-08-05 08:03:54.000000', '0', '0', 0, 0, '', ''),
(1571, 0, 0, 210, 1, 'Hayaazainab072@gmail.com', '2024-08-06 16:27:31.000000', 'hayaazainab072@okhdfcbank', '0', 0, 0, '', ''),
(1572, 0, 0, 0, 0, 'aamirr4112@gmail.com', '2024-08-05 11:04:53.000000', '0', '0', 0, 0, '', ''),
(1573, 0, 0, 0, 0, 'shahazaib124@gmail.com', '2024-08-05 11:17:16.000000', '0', '0', 0, 0, '', ''),
(1574, 0, 0, 0, 0, 'amugloo721@gmail.com', '2024-08-05 12:14:27.000000', '0', '0', 0, 0, '', ''),
(1575, 0, 0, 0, 0, 'Gowharshah008@gmail.com', '2024-08-05 12:56:43.000000', 'gowharshah008@okhdfcbank', '0', 0, 0, '', ''),
(1576, 0, 0, 0, 0, 'amaanayi0313@gmail.com', '2024-08-05 13:14:51.000000', '0', '0', 0, 0, '', ''),
(1577, 0, 0, 0, 0, 'Sheikhatiya11@gmail.com', '2024-08-05 14:37:29.000000', '0', '0', 0, 0, '', ''),
(1578, 0, 0, 60, 2, 'umarumar41887@gmail.com', '2024-08-06 18:39:20.000000', '0', 'images2/IMG_8056.HEIC', 0, 0, '', ''),
(1579, 0, 0, 0, 0, 'parvaizaly16@gmail.com', '2024-08-05 17:14:39.000000', '0', '0', 0, 0, '', ''),
(1580, 0, 0, 30, 1, 'Talibkhankhan718@gmail.com', '2024-08-07 07:06:29.000000', '9103959983@ybl', 'images2/IMG_20240125_220948_269.jpg', 0, 0, '', ''),
(1581, 0, 0, 0, 0, 'rahulkumar88@gmail.com', '2024-08-06 07:41:47.000000', '0', '0', 0, 0, '', ''),
(1582, 0, 0, 0, 0, 'irshadmanzoor1212@gmail.com', '2024-08-06 07:56:15.000000', '0', '0', 0, 0, '', ''),
(1583, 0, 0, 30, 6, '', '2024-08-28 11:05:54.000000', '0', '0', 0, 0, '', ''),
(1584, 0, 0, 0, 0, 'khansajad4715@gmail.com', '2024-08-06 09:03:08.000000', '0', '0', 0, 0, '', ''),
(1585, 0, 0, 0, 0, 'khansajad4715@gmali.com', '2024-08-06 09:16:27.000000', '0', '0', 0, 0, '', ''),
(1586, 0, 0, 0, 0, 'khankulsooma191@gmail.com', '2024-08-06 09:35:45.000000', '0', '0', 0, 0, '', ''),
(1588, 0, 0, 0, 0, 'Sheikhmehak761@gmail.com', '2024-08-06 16:25:13.000000', '0', '0', 0, 0, '', ''),
(1590, 0, 0, 1100, 1, 'farhangulzarnajar150@gmail.com', '2024-08-08 17:51:18.000000', 'farhangulzar01@ibl', 'images2/zeeconvert-com.jpg', 0, 0, '', ''),
(1594, 0, 0, 0, 0, 'danishshuaib147@gmail.com', '2024-08-06 18:36:57.000000', '0', '0', 0, 0, '', ''),
(1595, 0, 0, 0, 0, 'Wahidmanzoor295@gmail.comz', '2024-08-06 18:49:37.000000', '0', '0', 0, 0, '', ''),
(1596, 0, 0, 0, 0, 'wahidmanzoor295@gmail.com', '2024-08-06 18:52:28.000000', '0', '0', 0, 0, '', ''),
(1597, 0, 0, 0, 0, 'rahilff366@gmail.com', '2024-08-06 18:53:33.000000', '7006315004@ybl', 'images2/IMG_20240623_171713_348.jpg', 0, 0, '', ''),
(1598, 0, 0, 0, 0, 'ffr803967@gmail.com', '2024-08-06 21:10:00.000000', '0', '0', 0, 0, '', ''),
(1599, 0, 0, 0, 0, 'ks3476201@gmail.com', '2024-08-07 06:44:27.000000', '0', '0', 0, 0, '', ''),
(1601, 0, 0, 0, 0, 'rasibahkhan@gmail.com', '2024-08-11 10:48:46.000000', '0', '0', 0, 0, '', ''),
(1602, 0, 0, 0, 0, 'bilqeesakhter1909@gmail.com', '2024-08-11 17:18:12.000000', '0', '0', 0, 0, '', ''),
(1603, 0, 0, 270, 2, 'fza7889@gmail.com', '2024-08-17 10:39:09.000000', 'fza7889-1@okhdfcbank', '0', 0, 0, '', ''),
(1605, 0, 0, 0, 0, 'khan.mudyy@gmail.com', '2024-08-14 11:07:28.000000', '0', 'images2/1000064510.jpg', 0, 0, '', ''),
(1606, 0, 0, 0, 0, 'wanirameez23@gmail.com', '2024-08-15 07:25:07.000000', '0', '0', 0, 0, '', ''),
(1607, 0, 0, 0, 0, 'sroy62045@gmail.com', '2024-08-15 07:50:36.000000', '0', '0', 0, 0, '', ''),
(1608, 0, 0, 0, 0, 'wanirameez39@gmail.com', '2024-08-15 08:14:09.000000', '0', '0', 0, 0, '', ''),
(1609, 0, 0, 0, 0, 'ahangerulfatahanger@gmail.com', '2024-08-15 12:36:52.000000', '0', '0', 0, 0, '', ''),
(1610, 0, 0, 0, 0, 'qwetyugfgu@gmail.com', '2024-08-15 15:00:57.000000', '0', '0', 0, 0, '', ''),
(1611, 0, 0, 0, 0, 'aulidarazaq01@gmail.com', '2024-08-16 10:34:37.000000', '0', '0', 0, 0, '', ''),
(1612, 0, 0, 0, 0, 'avleedarazaq1@gmail.com', '2024-08-16 10:43:25.000000', '0', '0', 0, 0, '', ''),
(1613, 0, 0, 0, 0, 'aulidarazaq@gmail.com', '2024-08-16 10:52:48.000000', '0', '0', 0, 0, '', ''),
(1614, 0, 0, 0, 0, 'Topgamer62045@gmail.com', '2024-08-16 11:32:51.000000', '0', '0', 0, 0, '', ''),
(1615, 0, 0, 0, 0, 'arbluestar.kh@gmail.com', '2024-08-16 11:43:24.000000', '0', 'images2/3.png', 0, 0, '', ''),
(1617, 0, 0, 40, 1, 'Shahidgulzar132@gmail.com', '2024-09-05 14:31:22.000000', '0', '0', 0, 0, '', ''),
(1618, 0, 0, 0, 0, 'arbackup.kh@gmail.com', '2024-08-16 18:40:18.000000', '0', '0', 0, 0, '', ''),
(1619, 0, 0, 0, 0, 'shakoormir267@gmail.com', '2024-08-17 10:28:08.000000', '0', '0', 0, 0, '', ''),
(1620, 0, 0, 0, 0, 'hilalmalik66@gmail.com', '2024-08-22 10:13:26.000000', '0', '0', 0, 0, '', ''),
(1621, 0, 0, 0, 0, 'khanbarkat6103@gmail.com', '2024-08-23 05:47:13.000000', '0', '0', 0, 0, '', ''),
(1622, 0, 0, 2000, 1, 'Junaidshabir837@gmail.com', '2024-08-24 16:52:43.000000', '9541027428@axl', 'images2/IMG_20240425_095418_261.jpg', 0, 0, '', ''),
(1623, 0, 0, 136800, 66, 'theshahdawar@gmail.com', '2024-09-05 17:51:04.000000', '0', 'images2/IMG_20240801_072910_982.jpg', 0, 25000, '', ''),
(1624, 0, 0, 0, 0, 'bhuzaif454@gmail.com', '2024-08-24 07:44:55.000000', '0', 'images2/20240426_080838.jpg', 0, 0, '', ''),
(1625, 0, 0, 0, 0, 'dar842159@gmail.com', '2024-08-24 08:36:42.000000', '0', '0', 0, 0, '', ''),
(1626, 0, 0, 0, 0, 'mozzaf321@gmail.com', '2024-08-25 05:05:01.000000', '0', '0', 0, 0, '', ''),
(1627, 0, 0, 0, 0, 'rp015667@gmail.com', '2024-08-25 08:29:31.000000', '0', '0', 0, 0, '', ''),
(1628, 0, 0, 0, 0, 'father@gmail.com', '2024-08-25 08:57:31.000000', '0', '0', 0, 0, '', ''),
(1629, 0, 0, 0, 0, 'unknown@gmail.com', '2024-08-25 09:00:05.000000', '0', '0', 0, 0, '', ''),
(1630, 0, 0, 0, 0, 'aalammusadiq58@gmail.com', '2024-08-25 09:48:34.000000', '0', '0', 0, 0, '', ''),
(1631, 0, 0, 0, 0, 'loneimran5477@gmail.com', '2024-08-25 18:04:30.000000', '0', '0', 0, 0, '', ''),
(1632, 0, 0, 0, 0, 'zainabzanu22@gmail.com', '2024-08-27 11:16:47.000000', '0', '0', 0, 0, '', ''),
(1633, 0, 0, 0, 0, 'varun@gmail.com', '2024-08-28 09:28:16.000000', '0', '0', 0, 0, 'Varun', '0'),
(1634, 0, 0, 1203830, 1, 'superman@gmail.com', '2024-08-28 11:06:58.000000', '0', 'images2/Screenshot_20240825-013913.jpg', 0, 83854, 'Superman ', '0'),
(1635, 0, 0, 0, 0, 'burhanbashir906@gamil.com', '2024-08-29 12:03:57.000000', '0', '0', 0, 0, 'Burhan Bashir ', '0'),
(1636, 0, 0, 740, 6, 'mirjameel1192@gmail.com', '2024-09-05 16:05:11.000000', 'Mirjameel1192@okhdfcbank', '0', 0, 0, 'Mir jameel', '0'),
(1637, 0, 0, 2830, 6, 'shahidibrahim0786@gmail.com', '2024-09-05 18:01:12.000000', '7780999489@ptyes', '0', 0, 0, '', ''),
(1638, 0, 0, 0, 0, 'suhaibbkhan1@gmail.com', '2024-08-31 12:01:20.000000', '0', '0', 0, 0, 'Suhaib Nisar', '0'),
(1639, 0, 0, 40, 1, 'sheikhfaizan22049@gmail.com', '2024-09-04 12:47:36.000000', '0', '0', 0, 0, 'Faizan sheikh', '0'),
(1640, 0, 0, 0, 0, 'bhatabrar870@gmail.com', '2024-09-01 05:53:54.000000', '0', '0', 0, 0, 'Abrar Muzafar', '0'),
(1641, 0, 0, 0, 0, 'aanishshakeel@gmail.com', '2024-09-01 06:46:13.000000', '0', '0', 0, 0, '', ''),
(1642, 0, 0, 100, 1, 'riderbhai172@gmail.com', '2024-09-04 08:22:53.000000', '0', '0', 0, 0, 'Zeeshan ', '0'),
(1643, 4200, 0, 1320600, 105, 'shakirfayaz135@gmail.com', '2024-09-12 18:18:20.000000', '0', 'images2/1000000139.jpg', 0, 115000, 'Shakir Fayaz', '0'),
(1644, 0, 0, 0, 0, 'neha674@gmail.com', '2024-09-04 06:59:27.000000', '0', '0', 0, 0, 'NEHA ARORA', '0'),
(1645, 0, 0, 0, 0, 'kaifb2590@gmail.com', '2024-09-04 08:21:35.000000', '0', 'images2/1000003235.jpg', 0, 0, 'Kaif ', '0'),
(1646, 0, 0, 0, 0, 'jataves923@maxturns.com', '2024-09-04 11:15:06.000000', '0', '0', 0, 0, '', ''),
(1647, 0, 0, 0, 0, 'shahidbhat13582@gmail.com', '2024-09-04 11:27:54.000000', '0', '0', 0, 0, 'Shahid Hussain bhat', '0'),
(1648, 0, 0, 40, 1, 'fr5551509@gmail.com', '2024-09-05 03:31:00.000000', '0', '0', 0, 0, 'Faisal Ahmad wagay', '0'),
(1649, 0, 0, 0, 0, 'ruzainnaik@gmail.com', '2024-09-04 12:41:08.000000', '0', '0', 0, 0, 'Ruzain gulzar', '0'),
(1650, 0, 0, 0, 0, 'khushbooibrahim24@gmail.com', '2024-09-04 12:50:29.000000', '0', '0', 0, 0, '', ''),
(1651, 0, 0, 0, 0, 'yasirbaya988@gmail.com', '2024-09-04 12:53:55.000000', '0', '0', 0, 0, '', ''),
(1652, 0, 0, 0, 0, 'swagay806@gmail.com', '2024-09-04 17:11:49.000000', '0', '0', 0, 0, '', ''),
(1653, 0, 0, 0, 0, 'uzairallie121@gmail.com', '2024-09-05 03:20:04.000000', '0', '0', 0, 0, 'Uzair shabir', '0'),
(1654, 0, 0, 0, 0, 'tawheedb233@gmail.com', '2024-09-05 05:17:56.000000', '0', '0', 0, 0, 'Tawheed', '0'),
(1655, 0, 0, 0, 0, 't28272576@gmail.com', '2024-09-05 06:12:11.000000', '0', '0', 0, 0, 'Tawheed', '0'),
(1656, 0, 0, 0, 0, 'tawheedbhat768@gmail.com', '2024-09-05 06:19:22.000000', '0', '0', 0, 0, 'Tawheedbhat', '0'),
(1657, 0, 0, 0, 0, 'towheedyounis31@gmail.com', '2024-09-05 07:08:41.000000', '0', '0', 0, 0, '', ''),
(1658, 0, 0, 0, 0, 'zahidahma675@gmail.com', '2024-09-05 08:19:54.000000', '0', '0', 0, 0, 'Sameena akther', '0'),
(1659, 0, 0, 0, 0, 'nob998877@gmail.com', '2024-09-05 10:42:08.000000', '0', '0', 0, 0, 'Nasir Ahmed ', '0'),
(1660, 0, 0, 0, 0, 'bhatsameer5618@gmail.com', '2024-09-05 12:03:01.000000', '0', '0', 0, 0, 'Sameer ahad ', '0'),
(1661, 0, 0, 0, 0, 'bhatsameer9618@gmail.com', '2024-09-05 12:41:26.000000', '0', '0', 0, 0, 'Bhat sameer', '0'),
(1662, 0, 0, 0, 0, 'bhatyounis794@gmail.com', '2024-09-05 12:57:55.000000', '0', 'images2/IMG_20240821_224206_833.jpg', 0, 0, 'Younis', '0'),
(1663, 0, 0, 0, 0, 'towheed786@gmail.com', '2024-09-05 13:13:53.000000', '0', '0', 0, 0, '', ''),
(1664, 0, 0, 0, 0, 'mohmmadeyad66@gmail.com', '2024-09-05 15:12:17.000000', '0', '0', 0, 0, 'Eyaad', '0'),
(1665, 0, 0, 0, 0, 'umerfarooq9934@gmail.com', '2024-09-05 17:23:39.000000', '0', '0', 0, 0, '', ''),
(1666, 0, 0, 0, 0, 'hemayata50@gmail.com', '2024-09-05 17:31:14.000000', '0', '0', 0, 0, 'Hemayat Ashaq', '0'),
(1667, 0, 0, 0, 0, 'moviesyt2580@gmail.com', '2024-09-05 17:58:15.000000', '0', '0', 0, 0, 'Sujit Acharya', '0'),
(1668, 0, 0, 88000, 36, 'uy76363@gmail.com', '2024-09-06 06:21:56.000000', '0', '0', 0, 10000, 'Name Uday Yaduvanshi', '0'),
(1669, 0, 0, 0, 0, 'rk9606617@gmail.comcom', '2024-09-06 15:02:47.000000', '0', '0', 0, 0, 'Abdul rashid khatana', '0'),
(1670, 0, 0, 0, 0, 'Mirshafiya111@gmail.com', '2024-09-07 14:22:45.000000', '0', '0', 0, 0, 'Shafiya ashraf', '0'),
(1671, 0, 0, 0, 0, 'shafiyaashraf44@gmail.com', '2024-09-07 14:27:29.000000', '0', '0', 0, 0, '', ''),
(1672, 0, 0, 0, 0, 'ovaistak92@gmail.com', '2024-09-07 18:04:57.000000', '7006819250@ptsbi', '0', 0, 0, 'Ovais Ahmad Tak', '0'),
(1673, 0, 0, 0, 0, 'sabzar946@gmail.com', '2024-09-08 04:55:03.000000', '0', '0', 0, 0, '', ''),
(1674, 0, 0, 0, 0, 'khalidnisar765@gmail.com', '2024-09-11 18:56:49.000000', '0', '0', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hen`
--

CREATE TABLE `hen` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `verify_token` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hen`
--

INSERT INTO `hen` (`id`, `name`, `email`, `password`, `verify_token`) VALUES
(1001, 'Sonal kumar', 'sonalkumarheroaz@gmail.com', 'sonal', 'a5ee255da90a2adb5acc5cfa0a258d7a'),
(1002, 'Aryan jaiswal ', 'aryankumar55n@gmail.com', 'aryan', '068e119e709a1bca9b64edf3365317e7'),
(1003, 'ISHFAQ AHMAD MIR', 'meerishfaq472@gmail.com', 'ishfaq123', 'cc947bf350e1073c538772b4fc761f4a'),
(1005, 'Mehvish rasheed', 'mehakbinterasheed@gmail.com', 'aynoor9906165819', 'f160b414c31cb25d520781ab40ed71fd'),
(1006, 'Mehak hamid parray', 'jigrnelu@gmail.com', 'mehak9697', 'b6fa1477c7464883bb380c646c30f2bd'),
(1007, 'Aasif ahmad sheikh ', 'aasifahmad714@gmail.com', 'Aasif@1234', '848806341e03edc178b25352401f76a1'),
(1008, 'Mehzoo ashraf', 'mmehzu5@gmail.com', 'mndk90', '4b572736f3ae28f0776818f3f843c330'),
(1009, 'Roxane', 'pink12@slclogin.com', 'Maris1989!', '45b1ab0399b8d43412eb6e190604dc2c'),
(1011, 'Shahid Hamid peer ', 'shahidpeer494@gmail.com', 'peer@123', '7768d33a6200ab772e158ee44a1e2191'),
(1012, 'Ftg', 'fk4570200@gmail.com', '123456', '30ed4e6afb9de11a80b5a19e6794903a'),
(1014, 'Jasayia nissar', 'jasayianissar07@gmail.com', 'jasiya12', '537e3de2ba151f5bdfdf7d6d5de49b71'),
(1016, 'Swarankit hiralal mendhe', 'Pmate4777@gmail.com', 'raj@123', '6be3e6dc680b95d3d94b7e196b04105f'),
(1017, 'Mohammad Aamir', 'aamirnabi711@gmail.com', '789090', 'b6abe07fb3bd344bdc3552c45673bc07'),
(1019, 'Danish Ahmad', 'danishahmad68983@gmail.com', 'danish123', '32f12c3cad5ff99a31d939696a2d978f'),
(1020, 'Tassaduq Ali Mir ', 'meertassaduq4@gmail.com', '6005853557', '567c920bac53b8ebd3b31bb02183554d'),
(1021, 'Danish Ahmad', 'aanj68193@gmail.com', 'danish@123', '3b23c5eba141039519b8d4968322381e'),
(1022, 'Suhail', 'suhailali7889@gmail.com', '7889435890', 'ca0c25e65cf0c378bf3c5489e6e68981'),
(1025, 'Dr Maliha', 'drmaliha578@gmail.com', 'maliha54321', 'ab0a1346745f9278df2f103c0bd68e0f'),
(1026, 'Nazir Ahmad Bhat', 'nazirbhat370@gmail.com', 'Nazir123', '04a1d485fffbc362b13ade436ecf55e1'),
(1030, 'Faisal Iqbal ', 'faisaliqbal92414@gmail.com', 'faisal1906', 'dd1e2e38b06a061247da340dbab702c4'),
(1031, 'Muneeb Bhat', 'muneebbhat9273@gmail.com', 'MUNEEB6863329273', 'd5440c15397a1d200d25e8934c3a34fe'),
(1032, 'Omais gulzar', 'reshioumieas020@gmail.com', 'Xyzcaq-zovzoh-8haxni', '1c45830cdc3c5893dbf8d361d1c1ddbf'),
(1033, 'Aakash Ahmad Dar', 'aakashdar339@gmail.com', 'aakash339', '55cb1cf688e3e66e2c7751ea0db4d811'),
(1034, 'Kounsar hassan', 'hayadidad@gmail.com', 'kounsar123', '941dd564b257daaf262dd53fd727a561'),
(1035, 'Irfan khan ', 'khanirfanirfankhan28@gmail.com', 'qwerty567890', '0f7d4fa7eed0ca726b46263111032131'),
(1036, 'Sameena Farooq', 'Seemujaan29@gamil.com', 'sameena12', 'e08803a3ac95d272fb8ad8027116befd'),
(1038, 'Mohmad Amin Lone', 'manimlone@gmail.com', 'Kashmir101', '715fe96f44814d5750ccdc6dbb94a419'),
(1039, 'Tahira Hameed ', 'malikshinu111@gmail.com', 'Aazhar121', 'f47315158b2b39196a92bd9b913bd0d2'),
(1042, 'Javaid Ahmad Lone', 'ehmadjavaid27@gmail.com', 'javaid27', '5e196aafb385c5d82db9f0ea69e17769'),
(1043, 'Basit Amin rather', 'Basitrather0537@gmail.com', 'basu9858', 'a80d1fe0655884f1ce63b142fe97307d'),
(1044, 'Saksham sahare', 'rajshreesahare5@gmail.com', 'rajshree@123', 'a8d9b22758dcd76eaf61555e835267ac'),
(1045, 'Mohd.jamaal Ganai', 'mjamaal547@gmail.com', 'jamaal12', 'c7ae38ec4f41db38e9e4eedc046f62de'),
(1046, 'Mr sahil', 'sahilqadirbhat@gmail.com', 'sahil', '3fb3385d1211c6c31992274a0cffcaf4'),
(1047, 'shah ALKa', 'shahalka936@gmail.com', '6006061912', '4078984a5ca1c28fb19d9374fea27933'),
(1049, 'Tawseef ah', 'sheikhtawseef998462@gmail.com', 'Tawseef@123', '6dc4357ea6b08a422c39f8775f3ab7fb'),
(1050, 'Nasuhaanjum', 'nasuhaanjum87@gmail.com', 'qazmlp09', 'c02df08e016a3ada9d3311cc7ef991b9'),
(1051, 'Ab Gani Magary', 'hayaansheikh786@gmail.com', '000@Gani', '007a91d1312b5345ca1a0e3d1c22974c'),
(1052, 'Aabida Akhter', 'zairahherbals786@gmail.com', '000@Aabida', '3ed000c79526cee1b7b960951b3c881f'),
(1053, 'Danish Javid', 'peerdanish75@gmail.com', '6006677052', '9cbbb41796024393d9c8b25f5bf70c42'),
(1054, 'Firdous bashir', 'firdousbashir192@gmail.com', '9682102980', '6f73f977d77a518f0311cfe9d8932c5c'),
(1056, 'Naveed Ahmad lone ', 'naveedlone89@gmail.com', '000@Naveed', 'ed0e7ac65bdff6626940d9c008460dc7'),
(1057, 'UmAr', 'umarwiit@gmail.com', 'wiit@123', '9f1126ab43311c7e2a971f017307f265'),
(1058, 'Shafqat-ul-Majid ', 'shafqatmajid94@gmail.com', 'shaf1472', '140ac12f0d1e7dc2b5d2c205c1f621af'),
(1059, 'Rj suhaib ', 'rjsuhaib143@gmail.com', 'Asif 5030', '8775a47ebf9be5597ac78de9bcb779c5'),
(1061, 'Zainab maqbool', 'www.mrzainab@mail.com', 'zainab21', '2878b2bd4325f5abbe3646ee18d65cae'),
(1062, 'Lokesh ', 'lokeshbire425@gmail.com', 'lokesh@123', '36a924b590823505b71693ca139b386d'),
(1064, 'Irfan Ahmad Mir', 'mirirfan0002@gmail.com', 'IrfanRaja@8825', 'a2886ebadcc764e72c9a19527bd60acb'),
(1065, 'Shafqat ul majid', 'Shafqatmajid94@gmail', '000@Shafqat', 'e10e5bc955f223776b36f4ac37ecfdcd'),
(1066, 'Soumya ratan wasnik ', 'soumyaxwasnik@gmail.com', 'mpl09mpl', '96c7372285ffa1107994e60d5ffbadf9'),
(1071, 'Shafat Rashid bhat ', 'bhatshafat83@gmail.com', '1995', '1e917cc67265b7578e067c18c20914a8'),
(1072, 'Yawar bashir', 'hemusyed9@gmail.com', 'Yawar6380', '5ee0c0765db8066981cbb9247f087d02'),
(1073, 'Irfan Ahmad Mir', 'irfanmir5827@gmail.com', 'IrfanRaja@8825', '9f011ede56c2940bf508387088270a68'),
(1074, 'Kartik ', 'kartiksonwane507@gmail.com', 'kartik007', 'e324a1d5b596f01f88a68a2d97d470f7'),
(1075, 'Ubair rafiq lone ', 'ubairlone999@gmail.com', 'ubairlone101', '27b03f295db5aaa0b168ba9fad029c88'),
(1076, 'owais maqbool', 'OWAISMAQBOOL64@GMAIL.COM', '000@Owais', '7056a9394cc635006f9978bc4fce95b5'),
(1077, 'Amit kumar ', 'amitarya1414@gmail.com', 'amit101', '6dd1b2f7d6cc2842b4bac036b92564cc'),
(1078, 'Shazad Ahmed ', 'shaevilop@gmail.com', 'shaevil08', 'b18bb3fbb28db4536f6bd239795e098f'),
(1079, 'Muzaffar ahmad wani', 'muzafarwani0000@gmail.com', '000@Muzza', '4de713a8d07e75c82bc3bb29b94df74d'),
(1080, 'Meer seerat', 'meerseerat084@gmail.com.in', '654321', 'afeddbbd49b77eb36a3d181f4cd4e135'),
(1081, 'MOHAMMAD RAFIQ JAN', 'Zzakirvlogs6@gmail.com', '000@Zakir', '28c19e653096dce3d1be4e81f4315be9'),
(1083, 'yasir hafeez', 'yasirhafeez180@gmail.com', 'arfath@143', 'af94a6dd7f31ab1d3958e6d32413a7d9'),
(1084, 'Ubaid Ajaz', 'ubaidajaz1234@gmail.com', 'Ubaid2150', '49358cb290ea2f95710fecb6393b186b'),
(1085, 'Junaid mohi ud din magray', 'magrayjunaid4@gmail.com', '000@Junaid', '90ee0e65b76dc80e2a7ef5d5483e6cca'),
(1088, 'Waseem Raja Bhat', 'wrajabhat@gmail.com', 'Santro@123', '1f066bd77af316f843771216ffb8e4e3'),
(1089, 'Orhan', 'Orhan125@gmail.com', 'orhan123', '41ede6e883c97d9e93ea6e1f9f6c0913'),
(1090, 'Sameer', 'lonesameer2011@gmail.com', 'S9055158791@s', '66f5f1aa1dd4b7d97f19167068a2ef90'),
(1091, 'Mursal Mehraj', 'mehrajmursal158@gmail.com', 'Mursal@1999', '04621b256f6d0bae3da0a6547cb6805f'),
(1092, 'Khan Tariq ', 'khantariqkhantariq26@gmail.com', 'tariq1234', '834f9bf20516adb1b9ffb878b3c29c18'),
(1093, 'Rajesh sharma', 'rajesh197634@yahoo.com', 'undertaker123', '0b9add5a53838e8a4b1966c8d5716957'),
(1094, 'Syed Danish', 'danishbashir612@gmail.com', 'Danish12', '49f79d3a9627a5f406b0bd829092a759'),
(1096, 'SAHIBA SHAZU', 'aabidalone786@gmail.com', '000@Aabida', '692e23a95e52812e381428002cd2a616'),
(1097, 'Ishaq ah khan', 'www.ashiq@gmail.com', 'qwertyuiop', 'cf7143da073d55f399878693868f0f2f'),
(1098, 'Irshad Ashraf', 'saki25101@gmail.com', 'Irshad@5', 'cae95e5749f09935cf0b2f79f76d5e92'),
(1099, 'Gul kaakh ', 'gulkaakh11@gmail.com', 'gullbull123', '776f7644b1ff8403de0ae683aec9e11f'),
(1100, 'MUDASIR BASHIR', 'bablujan74@gmail.com', '000@Bablu', 'e547c1aa8e38bc528ace5e6fcade3068'),
(1101, 'Zakir Ahmad', 'wanizakir215@gmail.com', 'Zakir215', '724571494b4ed4638f206e1fdf8ea84a'),
(1102, 'Mansoor ahmad', 'sheikhmansoor660@gmail.com', '123456', '877eef3e94077487e371b4b8194a7f59'),
(1103, 'Adil Hassan Shiekh', 'shiekhadil9090@gmail.com', 'Adil9090', '136478443c30c70b88fa631945fa723e'),
(1104, 'AAMINA KAISER', 'aaminaqkiaer94@gmail.com', '000@Aamina', '277fcfc310e84821735ccd63905f1b36'),
(1105, 'Bil Jaan', 'biljaan59@gmail.com', '6006724407', '321ecaf27ae0aed7401f742e35ebc1a0'),
(1106, 'Majid Aziz Bhat', 'majidazizbhat@gmail.com', '000@Majid', 'adcf8ab272548eb30bb47ea083a4106f'),
(1107, 'Mohammad imran magray', 'www.mageryimran2701@gmail.com', '7889732519@i', '05dc435047fe321c1282f9f45dff09e8'),
(1108, 'Mohd Imran Magrey', 'mageryimran36@gmail.com', 'Imran36', 'd39a3145d054a2a37077080f7a52b611'),
(1109, 'Aleena firdous ', 'aleenafirdous56@email.com', 'anshara', 'b9a0192646248f79cd2074ff5f0164b8'),
(1110, 'Aleena firdous', 'Aleenafirdous56@gmail.com', 'anshara', 'b03f0e1a0f7e9e30447bedafde18eb0d'),
(1111, 'Lubna Rashid', 'lubnarasheed990@gmail.com', '000@Lubna', '49af6ee02bface05f1de09f4a26a8515'),
(1112, 'Javid Ahmed tantray', 'tantrayj489@gmail.com', '6005430972', '3edcf2a851773aea8c51c0a22f961eee'),
(1113, 'Sabatun Nisa', 'sabatunnisa11@gmail.com', '000@Saba', 'd146b71065f64d31284538591828fed6'),
(1114, 'Danish Rashid Tantray ', 'tantraydanish05@gmail.com', 'Danish@123', '84ad1d2e15aac6744c5a117e3f285474'),
(1115, 'Rahiya nazir', 'rahiyanazeer453@gmail.com', '000@rahiya', 'c597a90cbb790470550fe51b3f96adc4'),
(1116, 'Javid ahmad qureshi ', 'javidqureshi180@gmail.com', 'windows57', '9e3cbc64e73ea5c75f329d09e32f67c6'),
(1117, 'Rahiya Nazir ', 'riyaan786@gmail.com', '000@Riyaa', '8f397f3ef2a267dd8d754d46add3a863'),
(1118, 'Mohammad suhail najar', 'sahilnajarr@gmail.com', '000@Suhail', '7a6505cae3c78df3eb1c166e358e7a83'),
(1119, 'Zahoor ah bhat', 'bhatzahoor786@gmail.com', 'zahoor', '4f0bb3cb4b52353d612689beded1d998'),
(1120, 'IRFAN MUMTAZ ', 'irfankhan01501@gmail.com', '000@Irfan', '9669018c418274def1b8dfa646d5c1fd'),
(1121, 'Snober', 'snobershaban@gmail.com', 'Abbas', '204a37fd08f8a64fc08549cb803840d1'),
(1122, 'Irfan  wani', 'wani38330@gmail.com', 'Irfan@508', 'fc0d8f3ca1136c67e9982161c8834bc4'),
(1123, 'Gousia jan', 'mehakmehak6385@gmail.com', 'gousia12', '29d712e111467f9d9fe329c9c03abbf1'),
(1124, 'Sadeeq Alam ', 'sadeeqalam060@gmail.com', 'Sadeeq@123', '99d3602582a252d58dca63cd3d99bdf3'),
(1125, 'Shabir Ahmad', 'shabirahmad0408@gmail.com', '147147', '643d71c0c9471b3e108b2759691c55bc'),
(1126, 'Mudasir Rasool', 'iqlasrasool9103@gmail.com', 'Iqlas@000', '8f001ec3f816b417da3e5032dd5a1f1c'),
(1127, 'Sajad Hussain Wani', 'wanisajad126@gmail.com', 'sarhan123', '1c3336387d02e25dff31ef6f4c0c9faa'),
(1128, 'Umar Ali ', 'sanayou836@gmail.com', 'umar123', '04344b0c543e311dfe037d987803e925'),
(1129, 'IRSHAD Ahmad wani ', 'burhanwani910@gmail.com', 'burhan910', 'a2fac8c7ee84540e60b54e3bea735a4a'),
(1130, 'Zakir Ahmed peer ', 'zakirpeer624@gmail.com', '6005458325', '3ea1ee7299cfecd25faa3a79199d33fc'),
(1132, 'Iqra nikhat', 'iqranikhat45@gmail.com', 'sumaiya', '0c30633ab2f474ed67b4e7b2df1b2fdb'),
(1134, 'Kumar Muzamil', 'Muzamilbashir1912@gmail.com', 'Kumar@121', '3b06533ef55ffc03b0f3d3428d0083cf'),
(1135, 'Irfan', 'waniirfan002@gmail.com', 'Irfan@366', '3add22ac75a55b569701e279dbf3026b'),
(1136, 'Ishfaq', 'waniirfan01@gmail.com', 'Irfan@366', '8eed49e88a23b3093f3c64966d9ea2be'),
(1137, 'Nasir Fayaz', 'kumarnasir998@gmail.com', 'Nasir@33', '71e953c9b51238ac5a157174a3b801f9'),
(1138, 'Nairah Khan', 'khannairah2233@gmail.com', '000@Nairah', '627b4d90d3450dfd0698c599bd807f00'),
(1139, 'Mohammad Furkan ', 'bhatfurqan775@gmail.com', 'furu@775', 'f9cff8d85bfd02143b328167fd32629b'),
(1140, 'Iram Ahmad', 'iramahmadlone@gmail.com', '8899998617', 'b92133541aaf3805243a314add350c5b'),
(1141, 'Madiha Irfan', 'aleeshawani222@gmail.com', '000@Aleesha', 'e69f411195eda8241d316920075c20c3'),
(1142, 'Basit mukhtar khan', 'basitkhan20121@gmail.com', 'basitkhan0', '2f6fb4357d067fb782fc2f235699e74a'),
(1143, 'Ubaid Ajaz', 'ubaidajaz2150@gmail.com', 'Ubaid2150', 'f2ef4bd681a5b4cde524a5f91a2e2284'),
(1144, 'Mohammad yassin Khan ', 'yk7524550@gmail.com', '54321', 'f8b27d4de7b05c221b6a3cc986e65900'),
(1145, 'Najamul Islam sheikh', 'Sheikhnajamul147@gmail.com', 'Naju@1314', 'b9485699adf812693126614beea376cf'),
(1146, 'Nadeem jatt', 'nadeemjatt32110@gmail.com', 'nadeemjatt@321', 'b5a19b49b02ecd33d9eebd07be701987'),
(1147, 'Iqra Nikath ', 'iqranikath61@gmail.com', 'iqra4848', '2d8cdd08ccf3083a592f6baa63bd3e32'),
(1148, 'Syed ibrahim ', 'isyed2728@gmail.com', '8341037861', '7db6e47fc80476a57ea7415886f1a96f'),
(1149, 'Irfan Ahmad', 'irruirfan426@gmail.com', 'irruiyman', '303f4916f1c34a6331951bda7e31f481'),
(1150, 'Dar Nadeem', 'darnadeem029@gmail.com', 'Nadeem123', '7b57b0041dbb167f7b84e75980a11990'),
(1151, 'sayima nabi', 'sayimanabi5@gmail.com', 'Sayima', '130ceb5771721d4223f200bd7845da70'),
(1152, 'Khan Aijaz', 'khanaijaz617919@gmail.com', 'Aijaz123', '512bb3ad7a587cb45d7b1212f3ea38b3'),
(1153, 'Hafsa Fayaz', 'hafsafayaz56@gmail.com', '000@Hafsa', '1df62204f852d0a0b4f91c05ca2e06bf'),
(1154, 'Safeee Ahmad Najar', 'safeernajar60@gmil.com', 'safeer 123', '49e73e0732e7497e250feb2bb74cc1db'),
(1155, 'Shahid bhat', 'bhatshahidshahidbhat90@gmail', 'shahid398', 'd5fb8c9bfd89b79a2753edc154579e2b'),
(1156, 'Ayanali', 'syedayan2821@gmail.com', 'ayanali2307', 'd9288609433cb80b0d2592c899e6a9c1'),
(1157, 'Aaqib', 'awckib9@gmail.com', 'wrongturn1', 'ab982bc31ceb8049eb471c691319a8a0'),
(1158, 'Mohammad ishaq ', 'ratherishaq98@gmail.com', 'ishaq123@', 'd4bbb08332ccd21673728069bc9464f6'),
(1159, 'Heeba', 'shiekhheeba@gmail.com', 'heeba@123', 'd3dde1300d49d0b5da03edfa38f84e5d'),
(1160, 'SHEIKH HIDA', 'shahidabashir97@gmail.com', '000@Shahida', '5612f114499df78ff9acfcc0c4ba52e5'),
(1161, 'Aabida Mehraj', 'aabida786@gmail.com', '000@Basi', '65dbc11d0b036cf420ababb08fcc44f0'),
(1162, 'Arhan', 'arhanbabu1801@gmail.com', '000@Aabida', '4e14ccb47e9ac9daa2074f8ec28ae7c5'),
(1163, 'Iqra', 'arahaan786@gmail.com', '000@Arhaan', '67ba6d6fb35e55662e740e39889cbb45'),
(1164, 'Asif', 'waraasif10@gmail.com', 'faraaz18', 'd950e8ddc5d87ae293731f85137b0c6e'),
(1165, 'Mohammad Mustafa Haji', 'mustafahajimusta@gmail.com', '000@Mustafa', 'e55dd225c5edfb69bf57b4c29d2d786f'),
(1166, 'Sheikh Reyaz', 'sheikhraju365@gmail.com', 'Reyaz123', 'aeffc56af768011767ecaafb967469be'),
(1167, 'Bilal Ahmad Lone', 'lonebilal581278@gmail.com', '000@Bilal', 'a6800510f53d070b887551fef3a2de52'),
(1168, 'Danish', 'rarhertomato705@gmail.com', '12345As@##', 'c6778f44487e4f63dbf52aeb654fe83a'),
(1169, 'Akhter hussain najar', 'najarakhter06@gmakl.com', '000@Akhter', 'fe14024f9a2baa04bc206e589e4efa0f'),
(1170, 'Ameer Iqbal wani', 'emmuwani11@gmail.com', '000@Emmu', '0c693c1918fa2efdaf8e6d25a8c0adeb'),
(1171, 'Abida rashid', 'msuhailnajar786@gmail.com', '000@Aabida', '927a7146ab2bbe1992a049e59c65ba54'),
(1172, 'Tawfeeq Lone', 'lonetawfeeq413@gmail.com', 'in2$H886N-8eYrq', 'bd183ea2af2005cb5b4e88ed5361dbb0'),
(1173, 'Mutahir Farooq Haji', 'mutahir5889@gmail.com', '000@Mutahir', '9940f09eced79859323eac79f077b540'),
(1174, 'Alisha khanam', 'alishafatima76@gmail.com', 'alisha4567', '20849d96592fd648da977c07a36b2d06'),
(1175, 'Alishakhanam ', 'alishakhanam@xn--gmailcom-rr3d', 'alisha7845', 'bf8192b11819aee1f8b2a8268e22e556'),
(1176, 'Parul verma', 'parulverma1994@gmail.com', '000@Parul', 'e3608cc97f223d58d5b467eee7dbf959'),
(1177, 'Muneeba Javeed', 'catc18100@gmail.com', '786Allah', '3210f4da855a0beb1919c48d127b0eae'),
(1178, 'tajamul islam bhat', 'bhttajmul196@gmail.com', '000@Tajamul', '82685704c92f6564c06c9a7c726439d4'),
(1179, 'Bhat shahid ', 'jozyashraf1982@gmail.com', '1234567', '3fb10512a89870db33d191861beaa3a8'),
(1180, 'Burhan Ahmad Malla ', 'bb4031960@gmail.com', '123456', 'c83d6292da75305f891cbd8b9693e878'),
(1181, 'Shail Ahmad peer', 'sahilpeer997@gmail.com', '8491867960', '52fb04041a54e2e79f9c2b377fb67b8b'),
(1182, 'Lateef Ahmad Sheikh ', 'Sheikhlateef246@gmail.com', '123lateef', '18c7c4e7d5b5a39b8ac9fb8a4f769c42'),
(1183, 'Nazir Ahmad Kumar', 'tanishnazir407@gmail.com', '000@Nazir', '7828f47b6f51ad09a831507b03ff5be3'),
(1184, 'amir mushtaq', 'bhatamir3050@gmail.com', 'amirbhat123', '3106e62365f42c3f38614781c6683d65'),
(1185, 'SIBAT YOUSUF', 'musratchooty4@gmail.com', '000@Masrat', 'f4993e9634f431e93deeb52e00c8eb4b'),
(1186, 'Malik Adnan', 'malikadnanfayaz02@gmail.com', 'Adnan@1', '6da3f2dae97052c752a5d75f150d8cd4'),
(1187, 'Sandeep Singh ', 'sunneysingh192@gmail.com', '000@Sing', 'e39dee6e44290e83c328ee47f264f92b'),
(1188, 'SYED maifuz ', 'syedmaifuz600@gmail.com', '123456789', '8c3a7fd79f3952374ff41adf21273ad5'),
(1189, 'Anayat Hussain teli', 'Khaninayat5390@gmail.com', 'Arham123', '63d59ffbb9bb011b37ddcd137c45e508'),
(1190, 'Junaid ahmad khan', 'khanjunaid60058854@gamil.com', 'junaid@123', 'a254fdecccf463b57d91b13c6455f1cf'),
(1191, 'Mudasir Parvaiz', 'mudasirparvaiz7@gmail.com', '@mudasir', '92a392eb359555a70bb5b1b9b63c36f4'),
(1192, 'Aadil musthaq Bhat ', 'bhataady67@gmail.com', '000@Aadil', 'e66fc232340af86b722c942f93ee767d'),
(1193, 'Aaqib zahoor ', 'buttaaqib80@gmail.com', '000@Aaqil', 'bc81e2c7493e5474ecf58e95f18ad293'),
(1194, 'NADEEM AHMAD SHEIKH', 'nadeembilal4817@gmail.com', '6005403541', '5afacf3a60242cfe5fddec87c4f095fc'),
(1195, 'Aqib Javid', 'eraqib1995@gmail.con', '000@Aqib', '3cc346e22d623d5533097fe0daa3c293'),
(1196, 'Aqib Javid', 'eraqib1995@gmail.com', '000@ Aqib', '605de69557ac0e32bc3c92b8f1de799e'),
(1197, 'WASEEM AHMAD CHOPAN', 'waseemraja868@gmail.com', '000@Waseem', 'c9b25d51d14ee7f4a1853d4cd4becf71'),
(1198, 'Tawseef Ahmed wani ', 'wtawseef508@gmail.com', '123tawseef', '7284065ea8ce5bf508ca92ee714b7cb7'),
(1199, 'Jaffar Khaliq', 'jaffarjnj@gmail.com', '000@Jafar', '8e08da6502b1c96b717686b809e218c0'),
(1200, 'Aabid jabbar wani', 'wabid294@gmail.com', 'abidheenu0801', 'b619c76e767d39771b18e57433a1a0d9'),
(1201, 'WASEEM AHMAD CHOPAN', 'maenterprisesbandipora@gmail.com', '9797619655', '452a1522b0ee0b90d3bef9cb522fca19'),
(1202, 'Lone Adil', 'loneadil432@gmail.com', 'Adil123', 'adf3078db7730f8488277c8b0feb41ef'),
(1203, 'Uzma nisar ', 'ratheruzma93@gmail.com', 'uzma93', '7bfaa9276cde0a94e7bb0d951b7fb063'),
(1204, 'haseeb', 'hasibpdhar889@gmail.com', 'Zp54qaJmXxQ@Nhy', '44c2c3b3ac77583ec9cf9cd4a55d59ea'),
(1205, 'Mudasir Ahmad Wani', 'wanim7740@gmail.com', '000@Wani', 'e8816de65739a3343faf53f12cce4e0e'),
(1206, 'Anas ali', 'syedanasali2607@gmail.com', 'Anas@1234', 'ed7d344721762c80896576ea24920563'),
(1207, 'Peeroveas', 'powais93@gmail.com', 'peerowais', 'cf47e88c325e4e0b3c28ad40529119b4'),
(1208, 'Umar Farooq', 'khanenterprises443@gmail.com', '000@Umar', '953f636512052c1bc90a08267c2429e2'),
(1210, 'Peerzada Irfan Raseed ', 'bazilapeer64@gmail.com', '9103215403', '0ccbd4b10e47996ef0cb9923addf8719'),
(1211, 'ZAHEER AHMAD KHAN', 'myselfzaheer457@gmail.com', '12zakish', 'c311e5cb93306fb1cfe7c07c54599b78'),
(1212, 'DANISH HASSAN', 'ds7230546@gmail.com', 'danish@123', '593f44a9917de91fee6dc4f4a2961716'),
(1213, 'Mudasir Magrey', 'mudasirhussain3009@gmail.com', 'Mudasir3009@', 'ec1c5ec0ac3c742d09bbfbaf79091d30'),
(1214, 'Mudasir Magrey', 'mudasirhussain99777@gmail.com', 'Mudasir3009@', 'a151e3ff8672a27da15a1fc0479ca38a'),
(1215, 'Umesh kumar', 'uk76238@gmail.com', '6H2@MWUUG6xegze', '31c7453635ace33622c742bf8664a1c8'),
(1216, 'Aaqib Manzoor Sheikh', 'sheikhaaqib255@gmail.com', '000@Aqib', 'a3edf4d2e32dc9b7883c0994925366b5'),
(1217, 'Koppera ramprakash ', 'ramprakash.koppera@gmail.com', '12345678', '39d71576d7be4824e15b8cc6f81f45d7'),
(1218, 'Sajidpeer', 'peers5326@gmail.com', 'sajid', '8e9a72232e37e179a3e3dc571b2d42b9'),
(1219, 'Bilquees hassan', 'Parrayalixa@gmail.com', 'alixa12', 'fa10228dd9cf27ac85c8dcbf2a39630b'),
(1220, 'mr lol', 'mirmubashir822@gmail.com', 'jasayia123', '0ecf0482fe91875a1ebd899b466d9d12'),
(1221, 'Ishtiyaq Ahmad Khan', 'kishtiyaq707@gmail.com', '000@Ishtiyaq', '5b10f1478483a325edf9dc04fa63cf30'),
(1222, 'Ghulam hussain', 'hidayathadi127@gmail.com', 'hussaini@786', '02082b1b9ad1cad8cb210850692176f3'),
(1223, 'Mahjabeena Akhter', 'mahjabeena30@gmail.com', '7889379064', 'df559428de33c1ba0c7a6c637a582145'),
(1224, 'Hamza Azam ', 'azamhamza895@gmail.com', 'hamza12', 'bee2fc5485d951abeb2bcab7d3b7c8ed'),
(1225, 'Suraj vishwakarma ', 'surajv3215@gmail.com', '3215@work', '61cd704483dd17bae835854946b9e626'),
(1226, 'Tahir yaqoob Shah mugal', 'mt292792@gmail.com', 'Tahir#321', 'd9ba172cf8b404050fca9ee979d0c14f'),
(1227, 'Waqar ahmad peer', 'loverdeath927@gmail.com', 'waqar@123', 'e4cfaeca59db408212a233d38a2f8a88'),
(1228, 'Nazima razaq', 'parraynazu143@gmail.com', 'nazu@123', '9cebefa5489cd82a94c0fa6bb38fed35'),
(1229, 'Danish ', 'danishkhuroo53@gmail.com', 'danish12', '0e04071d88bc6610123ee9d7001c0297'),
(1230, 'Safeena khazar', 'Ssafeenakhazir@gmail.com', 'sufa@123', '5117c6945eb794a178bffc515aa6eaf5'),
(1231, 'Masooda ', 'masoodab250@gmail.com', 'jasu12', '622e3d9347b88629a8af5ec0624c24df'),
(1232, 'Rabiya Yaseen', 'Mahirajaan583@gmail.com', '000@Mahira', '462e975289868f651084ccd5a8bbd6c3'),
(1233, 'Bisma Maqbool', 'Peerhaya@gmail.com', '000@Bisma', '6bb3bf39493bf77061d564ccf985ebbf'),
(1234, 'ANAYATULLAH WAGAY', 'wagayanayat030@gmail.com', 'anayat12', '655b52fd93cf24e6e5c580c97e1622a6'),
(1235, 'Rehana bano', 'seemujaanseemu@gmail.com', 'rehana', 'c164f3774ea73ffdcb48b7888e9aba59'),
(1236, 'Adil manzoor lone', 'Loneaadil432@gmail.com', 'Adil123', 'd5ea2a00f0d75e925c976cc7e87d430a'),
(1237, 'SAHIL SHAFI', 'sahilshafi502@gmail.com', 'sahil12', 'a038c2c8b398dbbbbfa7d068411297db'),
(1238, 'Majid Hassan Khan', 'Innocentmajid343@gmail.com', '000@Majid', '2b00e302125f54c3c3c087e52d5387de'),
(1239, 'Aman ', 'sm.preneur28@gmail.com', '12345', '95ffa8dc4097469e7138cb27e4ca45a1'),
(1240, 'Imtiyaz Ahmad mir ', 'mirimtiyaz528@gmail.com', 'Mahnoor@123', '51d9e8ee3c7a9a917ae99d8f19bb959d'),
(1241, 'Sastaeditor.01', 'tusharrawat7560@gmail.com', 'PAPAJI75', '9dc079fd2919dd26e1d454cd1df90412'),
(1242, 'Chetan bhagat', 'cbsbhagat@gmail.com', 'chetan@123', 'd3535cd911379022d712ce360a85b8ea'),
(1243, 'Rupesh Soni', 'rupeshsoni8874@gmail.com', 'atul@9919', 'e9fbda9239d5ba3757701180cb70a753'),
(1244, 'Umar Ramzan Khan', 'umarramzan12@gmail.com', '000@Umar', '3c24e554b32844459aa46ff0b66a7a40'),
(1245, 'Mohammad umer teli', 'waniumer2545@gmail.com', 'Umer@123', '667b30c13516e74e7af9f9ccd46775f2'),
(1246, 'Sahil', 's@gmail.com', 'sahil12', 'ab4354d7cd4fce89e42bd29f4eb22de4'),
(1247, 'Deepak', 'rupamotdhare@gmail.com', 'deep4k123', '52078490271f6452dcfc61f7dea4943d'),
(1248, 'Tariq ah sheikh', 'sheikhtariq001@gmail.com', 'tariqahmad', '1268a7ae46c34f3a1ca6c0d23bf3638a'),
(1249, 'Dua Naaz', 'duanaaz129@gmail.com', '000@Dua', '269bdf0741ba47878468c0f9209d7265'),
(1251, 'Manzoor Ahmad Bhat', 'bhat4984@gmail.com', 'FpQwt@Vp25', 'f93a26454cbf0f1d5ef221560970f230'),
(1252, 'Demo account ', 'demoaccount@gmail.com', 'demo', '7797062bf01f5b7d7fec2363caab76ab'),
(1253, 'Suman lata', 'hmdogra@gmail.com', '7259640202', '689153f463c4f29af93aa3810cab4e65'),
(1254, 'Mir Nadeem ', 'nadeemmir957@gmail.com', '9Fjhrcx@v9', '8d561b0808e53713f392e046f99241f3'),
(1255, 'Mrityunjay Kumar', 'mrityunjay.748081@gmail.com', '000@Murley', '86507cce536b080531410620f36bdf8f'),
(1256, 'Zafr Ullah', 'zafrullah044@gmail.com', 'Sajid@308', 'e9452b64c02ead41d177cb81f5f3cc71'),
(1257, 'Naseer Ahmad Najar', 'muntazirnissar7@gmail.com', '000@Muntazir', 'dda87711212901552f4e442e1311ac78'),
(1258, 'Arsalan Mushtaq', 'arsalanmushtaq181@gmail.com', 'arsa123lan??', '7479aebba35d6f1db9f0374699bb1617'),
(1259, 'Salif', 'salifsammir@gmail.com', 'salif@456', '1dcb4ed0c7636e175f4e40089ed0729f'),
(1260, 'Ubaid maqbool Waza', 'maqboolubaid061@gmail.com', 'ubaid_19', '8823f507578814af9bd78594afda3795'),
(1261, 'Rubeena majeed ', 'wanishazu53617@gmail.com', '58905', 'd585a4a24e1b9fc7fe8bbf4bb733b700'),
(1262, 'Khursheed Ahmad Haji', 'khursheedhaji55@gmail.com', '000@Haji', '934ffb5a591a25e215df7cb94bc3b9fa'),
(1263, 'Khursheed ahmad haji', 'khursheedhaji@gmail.com', '000@haji', '25238016205015a9f0aa71f75fadbec0'),
(1264, 'Hafizullah wani', 'wanihafeez99@gmail.com', 'Bpr@12345', '54e67af23da25e2c22e5f49520a75547'),
(1265, 'Bilal Ahmad Lone ', 'loneb3508@gmail.com', 'Bilallone@12', 'f385c7d5aa99a5b9a68ef50782782918'),
(1266, 'UMER KHAYAM BHAT ', 'umerkhayam2005@gmail.com', 'Smarty@1234', 'f2bf72c148611c89be5662b8d60cf065'),
(1267, 'Mushtaq Ahmad Khan', 'mushtaqahmadk222@gmail.com', 'mushtaqahmad@123', '1e1dac56dd6a8c2fb0ed2aaf25510055'),
(1268, 'Hafizullah  wani', 'wanihafizullah89@rediffmail.com', 'Bpr@12345', '0e0659d84161d756d3e72aea52dfdbd2'),
(1269, 'Khan murtaza', 'murtazaamushtaq8709@gmail.com', 'murtazaa', '74450322de0c25b96ef3ba4522985aea'),
(1270, 'Faizan Abbas', 'iphonerealmeoppo@gmail.com', 'Faizan.1#', '932c5409a066c7506172b2db97b70e24'),
(1271, 'Faesal', 'faesaliqbal67@gmail.com', 'Faesal.12#', '027f6d76572d2c54a58701222ed435b1'),
(1272, 'wajidaashraf  ', 'wajidaashraf2023@gmail.com', '6005994569', 'd9adbd2e974314d897346ca82d17ac5c'),
(1273, 'Saleem Anwar NAJAR ', 'saleemnajar1505@gmail.com', 'saleem@#123', 'f145c61f4f3007055f34702a62e5694e'),
(1274, 'demo', 'demo9999@gmail.com', '9999', '0697bd39aa4216551da6bfa6baaf2e81'),
(1275, 'Demo account ', 'demo66@gmail.com', '66', 'f6c7641a76068e82f0f4dc6958cafdac'),
(1276, 'Mr ishfaq', 'imir4543@gmail.com', 'ishfaq123', '4c5307d12ba1f48b8558d5cd6287f41f'),
(1277, 'Yashasvi Neema ', 'priyaneema810@gmail.com', 'CHETU7470', '21c5db82e55c7fe73a5ed8e83cd0b58d'),
(1278, 'Musamir ', 'musamirallie0789@gmail.com', 'musamir0000', 'bfd4ba91a140a6e58ab63cd07ca0c238'),
(1279, 'Faisal Farooq', 'faisalyt88@gmail.com', '000@Faisal', '99edcdb389875145680535379c1cbb18'),
(1280, 'Khalid sarwar Bhat ', 'bhatkhalid953@gmail.com', '000@Khalid', 'b33d348752355180a435e6f282c7bbf9'),
(1281, 'Qaiser Pervaiz Bhat', 'qais26785@gmail.com', '000@Qaiser', 'ed94ccea7f132b3e7d45799dc28d317d'),
(1282, 'Shaheena Wali', 'Shaheenajanwara@gmail.com', '000@Shaheena', 'a6947362b80fcc0a15002406684d0992'),
(1283, 'PIRZADA MOHD Murtaza 6', 'murtaza.dbtech@gmail.com', 'Quess@1234', '8d131156c5fc56b9fc32b5960b188587'),
(1284, 'bisma shafi', 'mukaanshafi038@gmail.com', 'qas@aj8VrH', '45a023614faa1f7a159296a205118000'),
(1285, 'Hilal ahmad mir', 'meerhilal710@gamil.com', '@uyK9NtmYj', '39f8374327af405b3fd7866fcc45a5fb'),
(1286, 'Hilal ahmad mir', 'meerhilal352@gmail.com', 'hilal123', '9e83787738321d758cb11ab817bc4ff7'),
(1287, 'Mehwish Jaan ', 'malikkamrankamran396@gmail.com', 'kamran123', '49839b61aaaffd37fbfd227746b3dee1'),
(1288, 'SAHIL BHAT', 'sahillone770@gmail.com', '000@Sahil', '249aadcbe0f3dfbb8e13e5b1b2880cca'),
(1289, 'Bilkiss', 'bilkissmajeed112233@gmail.com', '123', '7cbd2cb75df0129a8709279d0af9def2'),
(1290, 'UMER KHAYAM BHAT ', 'aadiaadi2355@gmail.com', 'Smarty@1234', 'cd0f3bb2cad14680c83b0db48c3f5d55'),
(1291, 'Mohammad khalid bhat', 'khalidbhbhatkhalid@gmail.com', 'vH@YfqU3d2', 'edad4045239230e9ea4763025b878f9e'),
(1292, 'Mahjoor bilal ', 'mahjoorbilal9@gmail.com', 'mahjoor@123', 'b1483e2a5b30c2c9a2e7675bee7a87c9'),
(1293, 'Sahil', 'sahilwani472@gmail.com', 'iqra0919', '6e5f20578a0439db3396f2bbb96cee30'),
(1294, 'Sahil wani ', 'bhaisahil392@gmail.com', 'iqra0919', '91ab8e6ea94504a810f1c0808880ea27'),
(1295, 'Mir Inamul Haq', 'meerzainmeer898@gmail.com', '000@Inam', '78d703b059065a32d70ab761337cdd8a'),
(1296, 'Rubeena', 'amairaamjid589@gmail.com', '000@Rubeena', '04f4c15ad289297ed89c2172055cf986'),
(1297, 'Mohtishim shabir', 'mohtishimshabir9@gmail.com', 'Mohtishim@13', '3938782d5c1b60772cbcc17cca551d58'),
(1298, 'Tufail ahmad ', 'Drtufailt@gmail.com', 'tufail12', 'ed0e6ee601e745820d02fd0d7276c8d4'),
(1299, 'Junaid-ul-islam ', 'lonejunaid5452@gmail.com', 'junaid5452', '3a67ce9d07af74f7ebbbaa1f85ed162b'),
(1300, 'Meh- rul -Nisa', 'mehruunnissa62@gmail.com', '000@Nisa', '2b1c432ee1b96aa6acfed9fa0b783fc7'),
(1301, 'Junaidulislam', 'junaidulislaam199@gmail.com', 'junaid1234', 'cd6da212f101a770a8f6651c47308fb6'),
(1302, 'Safeer Najar', 'safeernajar72@gmail.com', 'Safeer123', 'dbb44a2d3e5a05e482afef4e58fd780b'),
(1303, 'Malik Zeeshan ', 'zeanmalik75@gmail.com', 'zeeshan9090', '45af8ef782a4da104a4903b1159ad282'),
(1304, 'sahilwani', 'iqrasahil0919@gmail.com', 'iqra0919', '82bc1246f807423a111522fd322330f5'),
(1305, 'Zahid mohi ud din', 'zs326835@gmail.com', 'zahid shah', '7df11757e50b0437280664abe5684d2c'),
(1306, 'Fiza Jan', 'rabilshah94@gmail.com', '000@Fiza', 'f82ce41646b4bdf9d0186a79068ff58c'),
(1308, 'Momin javaid', 'qureshimomin214@gmail.com', 'Momin@123', '29c9b45c85049c7ba3d5a123d18c9ba6'),
(1309, 'Aaqib', 'aaqibpathan28@gmail.com', 'Aloosa@1', '9ebb92073700c8198dc6df0901308241'),
(1310, 'Mohitishim Shabir', 'shaikshabir153@gmail.com', '000@Shakir', '5aa87d942ba511fd14eb772cba939a98'),
(1311, 'Affiliate  amina', 'wagayaqib487@gmail.com', 'mahjoor13', '0647d21d7b9ffbd970120999bae1a44e'),
(1312, 'Tajamul rashid sofi ', 'TAJAMULSUFI96@GMAIL.COM', 'Change@123', 'c2d8ccfe5b7803e2c636dbbf434d5b7c'),
(1313, 'Bushra shafi ', 'bushrashafi473@gmail.com', 'bushra12', '9598851fc93ccafb8d05a67386363008'),
(1314, 'Kulsooma', 'khankulsum8899@gmail.com', '8ckJB2@ekL', '5b9e0ef9a8e74ee5039902f742b7d04f'),
(1315, 'Rubeena begum ', 'Amairaamjid@589gmail.com', 'Amaan123', 'acb503f1ec7eecff19a27655489f0d16'),
(1316, 'Hafsa khan', 'kh923471@gmail.com', 'hafsa786', '8c22e61fa304c4295a71d563bc5470e6'),
(1317, 'IRFAN AHMAD ', 'peerirfan751@gmail.com', 'Sumair@12', '18d10506a860187a0a3d376c501822b3'),
(1318, 'Kulsooma', 'khansadu123@gmail.com', 'kulsumji', 'e54b5decf3e1e959a0e735a78a7fa89a'),
(1319, 'Naveed Bashir Najar ', 'naveedbashir705@gmail.com', 'fizzboy141', 'fd2f72a05bcc91d35524b16853426d84'),
(1320, 'Asmat maqbool', 'rajaumaaid99@gmail.com', '152858', '777e29d264713658698dab9d5e58f1d2'),
(1321, 'Aadil Manzoor', 'aadillone2180@gmail.com', 'Aadil2180', 'ac70df492ee4c7719691c99146851d57'),
(1322, 'Yasir Ahmad naikoo ', 'yasirnaik07@gmail.com', 'naik3277', 'db6dfcb47fe11839fd8233e3785985e8'),
(1323, 'Danish lone', 'yaarpanun70@gmail.com', 'yaarpanun70@gmail.com', 'fb6b537d52d3bf7461404b90016f954f'),
(1324, 'Firdous Ahmad Khan ', 'khanfirdous1266@gmail.com', 'khan@1234', 'fa85f496ad2e9ca5b01e4a1142808049'),
(1325, 'Aeroxs Adii', 'adiiadil2150@gmail.com', 'Adil2150', '45cc176df9ded2d7ad6729f48a32f257'),
(1326, 'Fayaz mir', 'mirtalib663@gmail.com', 'fayaz@7422', 'dcc8d6b3abbde74542e3058aab9a48b5'),
(1327, 'Fayazmir7422', 'mirtalib7422@gmail.com', 'fayaz@7422', 'f661a3913ae583c4f829cd413a4a288c'),
(1328, 'SUHAIL AHMAD KAHN', 'suhailz0123456789@gmail.com', '328AC@sk', 'c99abfddadd318aa58f0bb2dc2631998'),
(1329, 'Saba', 'qureshis99@gmail.com', 'qaasidah', '1e82c4edc295a985b28ed8d632923310'),
(1330, 'Umar Farooq Khan', 'Enenterprises443@gmail.com', '000@Umar', '4c21255002ca3c3d06bb93702cb063af'),
(1331, 'Adfar', 'adfarkhan835@gmailcom', 'adfar113', 'de19bd9cfdc406801e88d98ebefd0274'),
(1332, 'War Momin', 'warmomin842@gmail.com', 'Momin123', 'e8fed8f530c0ac3e4351eb91f2d61816'),
(1333, 'Sahil ah.', 'ehmdsahil@gmail.com', '6005884626sahil', '6fa02f5a481221f3c6c7a1a7b0607765'),
(1334, 'Irshad Mohiuddin Bhat', 'irshadbhat13@gmail.com', 'wanigam@123', 'dc8e5dae3116938d9ca87b8edfb85909'),
(1335, 'Riyazahmad', 'riyazahmadpahlipora6@gmail.com', 'vc@cWXC9Tm', '5d4d654efd4cc54ec132057ed9d94741'),
(1336, 'SUHAIL AHMAD KAHN', 'smehakhan19@gmail.com', '328AC@sk', '1dad99fe5500daf278cf2e9c282bc49b'),
(1337, 'Sana Sheikh', 'sanasheikhh80@gmail.com', '000@Sana', 'b31fb9ccf1339d62162d9d4c04cd1ea5'),
(1338, 'Sanjana Singh', 'sanjanasingh021@gmail.com', '000@Sanju', '871f5a02e25caa9ce851cc1f31cd86ca'),
(1339, 'Moizan Farooq ', 'moizanfarooq@gmail.com', '19528000', '2d3e970e5acef5e22f22bf51469987f7'),
(1340, 'Raaju Rastogi', 'abcdefgggg@gmail.com', '12341234', 'd084bc85f5c1b71d906ac3d25ffc3d31'),
(1341, 'Kaahif Kakroo', 'kashifkakroo@gmail.com', 'Kashif@9876', 'd6b374acf621c6f7eadb2cef28e18f2a'),
(1342, 'Sachin Kumar', 'gwdevil97@gmail.com', '5rq8YH@e4Y', 'a1adbf2ea8e2e74d700776646a9101b8'),
(1343, 'Bazila Batool', 'bazilabatool97@gmail.com', '000@Bazila', '72b656bd3ff2fb4c65ed98d1f57205f7'),
(1344, 'Aadil Akbar ', 'najarhardware598@gmail.com', 'Sopore123', 'ba9688b287b21632e5f53a471e786a17'),
(1345, 'Aadil Akbar Najar ', 'hellobro6602@gmail.com', 'Sopore123', 'f16794aa4f248b812507a1dbcac14b36'),
(1346, 'Aadil Akbar ', 'najarnajar0980@gmail.com', 'Sopore123', '15b52cdcc8ddf4bf7daa13463da8dc91'),
(1347, 'Ubaid Ahmad', 'ubaidah724@gmail.com', 'Ubaid123', '9ef65624f7b30d599dc6b64a485ae8a8'),
(1348, 'Saleem', 'nabisaleem35@gmail.com', 'samkhan', '14916796c3472129097e1ef4d214ab09'),
(1349, 'Seerat', 'seeratjan95003@gmail.com', 'seerathaider', 'ca142a1f8f064c2541aca3da3e1cddf4'),
(1350, 'Sachin kumar', 'krishna24082005@gmail.com', '#sachin', '680d34dc9320806da21e7342399a5614'),
(1351, 'ZAKIR ahmad shah', 'Zakirshah22102005@gmail.com', 'zakirshah098', '5410e3e37b037c3d2318077097f636d8'),
(1352, 'Owais Rehman wani', 'owaisrehman001@gmail.com', 'owais123', '5268404cc42eb76e02c00f44605c5df2'),
(1353, 'skillvigor3', 'skillvigor3@gmail.com', 'skill', '5d41288e91fecdcb7b6f6b573ae51d46'),
(1354, 'Tushar Singh ', 'tusharsingh2738@gmail.com', 'SASTA3032', 'eb6ec14d9d394298f3ec4b900b1861a1'),
(1355, 'Bilal Ahmad Bhat', 'bhatbilalbhat645@gmail.com', 'Pi2z7@j@FM', '955e9bbea2d8e007174ca549d7fb33d7'),
(1356, 'RoziajÃ an', 'bhatxuvabhatxuva@gmailcom', 'bhat123', '3b4854cb1a51cbe95e9382d46dd02ad9'),
(1357, 'Tahir fayaz', 'tahirfayaz17@gmail.com', 'tahir321', '8bff8ae8b2cc6fd68bbf18451da5cfd5'),
(1358, 'Sameer Awan', 'sameerawan6299@gmail.com', '910328', 'dcfb1ada0e432b9daaa3508e4dc45eb7'),
(1359, 'Aamir nabi ', 'sheikhaamir1297@gmail.com', 'K@Gkp2dGY@', 'aa1cc4b41b5e737550ca59daff56239c'),
(1360, 'Aamir nabi ', 'sssmir@gmail.com', 'jj@TAN9Agb', '157e65bda13cfae7edb5ee918bc79dd4'),
(1361, 'Rashid mir', 'rmir8026@gmail.com', '9797858285', 'e558d4a1fd51962b35ad4c35ea525dc3'),
(1362, 'Najamul Islam sheikh', 'Sheikhmafuza1314@gmail.com', 'Naju@1314', '513fdff6944af9f21176a34d8026eded'),
(1363, 'Salman bashir', 'salmankulley@gmail.com', 'salman12', 'c57b631e9a21324880357956d7141606'),
(1364, 'YAWER WASEEM NAJAR ', 'yawerwaseem123@gmail.com', 'Yawer@123', '14d83429c74e677e47a79e24d4d99fa7'),
(1365, 'YAWER WASEEM NAJAR ', 'yawerwaseem6@gmail.com', 'Yawer@123', '4229736e682569f6d497db847a11c8eb'),
(1366, 'YAWER WASEEM NAJAR', 'yawerwaseem160634@gmail.com', 'Yawer@123', '2d58794228caabf0b270dc73aa64406c'),
(1367, 'Sheikh Mehwish', 'sheikhwishu125@gmail.com', '8082718154@011', 'a925f1d34426043584d0a6c4db0ca28d'),
(1368, 'Sanah Farooq', 'sanahfarooq786@gmail.com', 'sanah123@#', '8255ec9f1ec66d72891142b043cabce6'),
(1369, 'Haroon Ashraf ', 'haroonashraf943@gmail.com', 'haroon@123', '23f62704378472e3310208202a17290b'),
(1370, 'Qadeer firdoos khan', 'qadeer21789@gmail.com', 'theqadeer', 'a1bd905fe9acdb819cb4914e7a936e7a'),
(1372, 'Faisal Akram Bhat ', 'faisalakram989@gmail.com', 'Fai_han_66', 'c027a83c885336f7fe851b7856de7da7'),
(1373, 'Faisal Akram Bhat ', 'bhatfaisal1901@gmail.com', 'Fatimag66', '00c1af020afcf6d4716be7a47fe840c1'),
(1375, 'Mohd Saleem Kholi', 'SALEEMK1235@GMAIL.COM', '000@Saleem', '7dff36f03bc7bea2209641fabfc2bd2f'),
(1377, 'Salman Rasheed', 'wanisalman672@gmail.com', 'R4dW38@pN38', 'a7a1de2f45b88c1626067d6ec9b9f420'),
(1378, 'SAGAR MALIK ', 'sagarmalik7169@gmail.com', 'sagar1122', '48e6dd525eb541524017cd92f50a2d9d'),
(1379, 'Demo ', 'demo123@gmail.com', 'demo', '88cb6c02541ad8484739c4b8901e0bb7'),
(1380, 'System ', 'system@gmail.com', 'system', 'e747169e8e2f92af0384a5c751993ae9'),
(1381, 'Bilal bhat ', 'bilalbhat786219@gmail.com', 'BILAL**02', '1646781e28fabb10876d744196f6b599'),
(1382, 'Asim Wani', 'asimwanix34@gmail.com', 'U34T52@9cj', '97f523833b0f045ba9753f8e171717f4'),
(1383, 'RAZIA BHAT', 'theshoaib019@gmail.com', 'BILAL**02', '91d7ae4a1cc116ae2d243c4b8811ce3c'),
(1384, 'SHAKIR FAYAZ', 'mallashakir135@gmail.com', 'shakir@123#', '39bccb2e1e67b8420e638178b8dc84d4'),
(1385, 'mujtaba hussain ', 'darmujtaba123@gmail.com', 'mujtabahussain@12', '5965206037c27c60ba60fd262065ca35'),
(1386, 'Ummar Imtiyaz Sheikh', 'imtiyazsheikh999@gmail.com', 'imtiyaz123', 'a83b9fab0dc28a56fab2aaad026182bf'),
(1387, 'Sheeba ', 'sheebasudeep@gmail.com', '000@Sheeba', '8f3195623b2f47dda3ce7e04fda9b99e'),
(1389, 'sonal kumar', 'sonalbrain@gmail.com', 'sonal', '49a8764729cb9d83df5aa2b40fe70934'),
(1391, 'Sonal kumar', 'sonalhero@gmail.com', 'sonal', '035154af8e5a88b335c993f4931056c6'),
(1392, 'Asim khan ', 'asim76670@gmail.com', '700676', '17e96d77f0fc908f419b36512634f60a'),
(1393, 'Paul Zehran ', 'paulzehran7@gmail.com', 'Zehraan', '0ecac1d7ad6e46a8d5bf3a30ab8c30c4'),
(1394, 'JUNAID SOFI', 'junaidjunaid@gmail.com', 'junaid@123#', '9812d631c8caa516e4c296fa8dda1b06'),
(1397, 'Pakeeza reyaz', 'pakeezareyaz94@gmail.com', '000@786', 'e8865c3d1125b244503292deb8e025c3'),
(1398, 'NIYAZ GULL ', 'mohammadniyaz8112@gmail.com', 'niyaz123', '1f9bfb7fdfb8abda797796ba4dbd3ae5'),
(1399, 'Kota nagababu ', 'srinag774624@gmail.com', '774624@Sn', '76be2658ee74c6f0cc0a33f10213d060'),
(1400, 'WANI SAMEER', 'wanisameer296@gmail.com', 'sameer@123#', '1d8b4f88dc22def7d60a42c49ef7856e'),
(1401, 'RASHID HABIB', 'mirrashid226@gmail.com', 'rashid2239', 'ddf9920c16382cdc7c99dc857b1d66b9'),
(1402, 'Ishfaq ahmad Mir', 'skillzard780@gmail.com', 'skillzard123', '891b23db56b7f43d38bd3988046fbbc2'),
(1405, 'BHAT BILAL ', 'bhatbilal6754@gmail.com', 'bhat@123#', '833976b53514e21d33511a8c41a49d7d'),
(1406, 'Meer Aabid', 'aabimeer666@gmail.com', '000@Abid', '273bf92a18b9ae1c1680094c264d3d3e'),
(1407, 'Lucky ', 'ajaytadam0215@gmail.com', '797473', '9c8ef786ae7601fc228c98f8e922c94d'),
(1408, 'Sarang pitar', 'pitarsarang1@gmail.com', '983421', '58955210ecc2d609ed081b0641b276db'),
(1410, 'Irshad Mohi ud din ', 'irshadbahat786@gmail.com', '000@Bhat12', 'ca97269d0886f0df2edbc4ef7109b035'),
(1411, 'ABDULLAH CHACHI CHACHI', 'shabirchoudhaary77@gmail.com', 'Shabir@789', '53f1ff2a62289579b8231989d5764fc8'),
(1412, 'Sameer Ahmad Mir', 'sameer.official0119@gmail.com', 'Sam@skillzard', '2cfd344c51108d7fdc3256b9330bcd75'),
(1413, 'Maroof Ramzan ', 'mirmaroof002@gmail.com', 'maroof123', '03c9352e6e4a248edab18dca9b464da8'),
(1414, 'Kabeer Ahmad Mir', 'mirkabeer360@gmail.com', 'kashmir123', 'bd54b16a7604d37c226bca54909bed98'),
(1416, 'Mr Amit', 'hrajput123455@gmail.com', 'Amit123', '482e3220b00ea26fe24fb2b04231ab8d'),
(1417, 'Demo', 'demo957@gmail.com', 'demo', 'aa9343eb097c8db4021175d708d4923c'),
(1418, 'Aamir akbar', 'miramir01@gmail.com', 'Aamir786', 'a089aed042ce73824f3df343c7ac6f81'),
(1419, 'Aryan ', 'aryankumar5555n@gmail.com', '5555', '9bcc0171650e15cce7927683b60c1eb2'),
(1420, 'aisa', 'aisa@gmail.com', 'aisa', 'fc934f52a132ff0ea1b21f3e35737b25'),
(1421, 'krishna', 'krishna@gmail.com', 'krishna', 'f96bb0d92b1c66e1ece4877587d466d9'),
(1422, 'Waseem ahmad najar ', 'rajunajar222@gmail.com', 'cyber123', '6a4fa544bc4df422366c572805c1087c'),
(1423, 'You', 'you@gmail.com', 'you', '388ca0150d1333b5d69d843683afe675'),
(1424, 'Ganesh', 'ganesh@gmail.com', 'ganesh', '3d1795620a082d11bc65e55d471c8d53'),
(1425, 'Zeeshan aijaz mir', 'zeeshanmir303@gmail.com', 'zeeshan123', 'd3e53247530f9dcdb3a0451ea813b88a'),
(1426, 'Mahadev ', 'mahadev@gmail.com', 'maha', 'f75b1563a9e737f84971cdc14b959fd4'),
(1427, 'shiv', 'shiv@gmail.com', 'shiv', '47b4295d2aa2684d24353f26272487de'),
(1428, 'vishnu', 'vishnu@gmail.com', 'vishnu', 'c9a6671171b8fbe56482f704e8eceda7'),
(1429, 'vishnu', 'vishnu55@gmail.com', 'vishnu', '89d61ee89696d05257ecf1a5bf6c5878'),
(1430, 'Vijay saini', 'itsvijaysaini@gmail.com', 'vijay123', 'd2fd6532a43519f3fe90c7f077a925d5'),
(1431, 'Ishfaq', 'ishfaq@123gmail.com', 'ishfaq123', '1a17aed674cde6cff1ac200e7bb4c776'),
(1432, 'Ishu', 'ishu123@gmail.com', 'ishu123', '0a25a02beb0042a46fabc9aa21076e69'),
(1433, 'Ishfaq ahmad Mir', 'meer123@gmail.com', 'meer123', '7a63f9b2d36642c4ee69ba8f435d3956'),
(1434, 'aryan jaiswal', 'aryanjaiswal@gmail.com', 'aj', '032e8001f54ecb7929a04d81fcb2f171'),
(1435, 'Sunny ', 'sunny2@gmail.com', 'sunny', 'e596816cfd2f3fc5f7fa6c986ce1389d'),
(1436, 'Wani Ubaid', 'ubaidwani158@gmail.com', 'ubaid321', '58f0f43002b86a3a83de1d63c8887f6b'),
(1437, 'Ishfaq bhikhari ', 'ishfaq0109@gmail.com', 'ishfaq0109', 'c1d0ba731da31a073dc79de58ba20608'),
(1438, 'Wani Ubaid', 'ubaidajaz2121@gmail.com', 'ubi123', 'f62a0a9a34f370c1819de05ae5e78e36'),
(1439, 'Ubaid', 'waniubaid201@gmail.com', 'ubaid123', 'a0d4e79b971ea72526ba210549d118c6'),
(1440, 'Mr Amit', 'amitrajput99990@gmail.com', 'Amit123', '2b565cb62501b98de2471b66dd64d8dd'),
(1441, 'Ishfaq ', 'skillzard@123gmail.com', 'ishfaq123', '8a3548ee073cd2e24745ed7b9b2b418f'),
(1442, 'Rohan felix', 'rohanfelix444@gmail.com', 'rohan@123', 'e92a50dd4ec4d8f172e38551b892aab4'),
(1443, 'Momin riyaz wani', 'mominriyazwani000111@gmail.com', 'momin@123#', '8ee0267dfc52108c15cd43bbd2d8d717'),
(1444, 'Aamir akbar ', 'miramir01@gmal.com', 'Aamir786', '373f9df3863abda5f9c0802c0b92f6ae'),
(1445, 'Aijaz Hussain Shah', 'syedaijaz94@gmail.com', 'aijaz@123#', '87a69ff56f1b00c6702903c3e718e984'),
(1446, 'Nazir javid', 'nazirjavid31@gmail.com', '000@Nazir', '9123510cfa62f190f36c5379df48d1f4'),
(1447, 'Nisar ahmad magrey', 'magreynisar1234@gmail.com', 'nisar@123#', '24b50ab96263e612881d5901376eae2a'),
(1448, 'Basharat', 'khanbashrat206@gmail.com', 'khan@2001', 'f47bd148b1e4bbdb1906c2d61edbdba9'),
(1449, 'Munawar mushtaq', 'idrdekho@gmail.com', 'idrdekho@gmail.com', '435f312bb52a8f412eabdd481c28e8e4'),
(1451, 'Irfan ', 'vlogervlogs01@gmail.com', 'khanirfan77', '15cd4bfa41e3da9034c708515d99223b'),
(1452, 'Jaiswal shaab ', 'businessaryan77@gmail.com', 'sonal', '3a5df36bae955a91d419642f1a2a5994'),
(1453, 'Mr Farhan ', 'bhatfaru62591@gmail.com', 'farhan@123', '6aafcab974d0d094cd45720ce2d57327'),
(1454, 'Rukiya', 'mirrukiyaakram@gmail.com', 'rukiya', '9807a691e86fe278f597889fce95b824'),
(1455, 'Suheel Ahmad ganie ', 'Gsuheel9006@gmail.com', 'suheel@123#', '609a8e0de903c349f7eca1f9a90a5aa8'),
(1456, 'TAJAMUL TAHIR WANI ', 'tajamultahir120@gmail.com', '920960031834.Com', '39fe51a0de041a57733ad7e72a787f85'),
(1457, 'Basit', 'www.darbasit690@gmail.com', 'Basit@12', '883a87441a007a174b21e1c638ebb622'),
(1458, 'Omair lone ', 'omairlone055@gmail.com', 'omair123', 'c5ecba3188010c700e3479b843f70dd4'),
(1459, 'Faizan Khan', 'Kf967889@gmail.com', 'faizan@123', '41ef079a281e529abd5673fcd6b1f103'),
(1460, 'Wani faizan', 'wanifaizan079@gmail.com', 'wani@123', '3d750be284e5d7dd7d4c7194c711bf98'),
(1461, 'Shahid Lone', 'Sloneg53@gmail.com', '4PK6wTnt@SNkA', 'bb181b1922f60c22dfe1c103660804bb'),
(1462, 'Kifayat malik', 'malikkifayathk789@gmail.com', 'kifayat123', 'f693626ed3fb76cb9fba84ffb4b770ea'),
(1470, 'Javid lone', 'javidvloge22@gmail.com', 'javid123', '993f24d355db703fc33b7591239c3693'),
(1473, 'sharukh khan', 'khan@gmail.com', 'khan', '04502b7c42fca465b013aa04a27e8c91'),
(1474, 'Sonal kumar don', 'jaiswal778@gmail.com', '778', '8b0f5a0580c0d2922830fe69c9822331'),
(1475, 'Ishu', 'ishfaq@6005353856gmail.com', 'ishfaq123', '563e1e482d1c27d133f959edf2d93bfa'),
(1476, 'demo', 'demo998@gmail.com', '998', '873644b74ef44749a01f26de1edc8c03'),
(1481, 'TAHIRA MARIYAM', 'tahira.mariyam@yahoo.co.in', '000@Tahira', '528d94fd3c25fd41fbc6024e0fa1f537'),
(1482, 'Abid Hussain 7006856869', 'andrabiabid.andrabi7@gmail.com', 'abid@123#', '7982e4ca47746567c0b87679f52d36ce'),
(1483, 'Iqra Asmat', 'iqraasmat94@gmail.com', 'iqra@123#', 'fe326a54cd1d106c9a5fa607b489ce9b'),
(1484, 'SHAKIR FAYAZ', 'mallashakir111@gmail.com', 'shakir@123#', 'a3cfd18b101cd3d47c450ff26b9b967b'),
(1485, 'Javid Ahmad Lone', 'lonejunaid96@gmail.com', 'junaid@123#', 'd20cbea3f029edef0a29e5b8a0c182e4'),
(1487, 'Aumair ul islam', 'aumairkoka42@gmail.com', 'Aumair@123', '7f39900c18d9ca085d1bcdaa2f1dee89'),
(1488, 'Basit Gul', 'bibasit29@gmail.com', 'Oneplusnord2t', '0ccbeebffa348168e901694914f17ba9'),
(1489, 'Adil Majeed', 'loneaqib895@gmail.com', 'adil', 'aac0ce48de30e897b45be809e0897a5d'),
(1490, 'Khalid nisar wani', 'Wanikhalid259@gmail.com', 'wani123', '672f2cf0a9e208e06fe80ecae7394c53'),
(1491, 'Mudasir Rashid ', 'wanimudasir9094@gmail.com', 'Mudasir@9094#', '26451383c8737bc3dba5a12ededac017'),
(1492, 'Shakir bashir', 'sb7446172@gmail.com', 'thermodynamics', 'b217469a7060b285dcd5b5c570b1a5f4'),
(1493, 'Shakir bashir', 'shakirhura17@gmail.com', 'thermodynamics', 'd3b47bde5051e071ca187ffabd3ebec8'),
(1494, 'Waqar ahmad', 'waqarwaqar45541@gmail.com', 'waqar4321', '193966e99f6a9f5bb450b92ccdc3a4e0'),
(1495, 'Masrat subhan', 'samrahi71@gmail.com', '000@Masrat', '04e94adebca6924ce2af866587d8cfe4'),
(1496, 'Basit Ashraf ', 'wanibasit319@gmail.com', 'basit@4443', 'd3137838347b96a83c31cf7752b05f65'),
(1501, 'Bilal ahmad koka', 'Kokabilal711@gmail.com', 'bilal123', '718cf7ec43cd95139d642c7a59a20b4d'),
(1502, 'Sartaj Ahmad Koka', 'sartajbahaisartaj@gmail.com', 'abcd@786', 'ff0df4d1ce8eac4d6ff2afd60cf22e64'),
(1503, 'Aadil Sultan', 'aadilsultan2018@gmail.com', '000@aadil', '79317496d240df790f8e86cb433f2817'),
(1504, 'Shayista Bano', 'shayistakhan10@gmail.com', 'Jiya@10', 'a9df16d493e09ce24081f4eecec6775f'),
(1505, 'MUZAMIL AHMED ', 'muzamilahzai@gmail.com', 'muzamil@123#', 'e5561e75611eba0bcd2cd69acba90b56'),
(1506, 'UBAID AHMAD KHAN ', '6006288198ubi@gmail.com', 'ubaid@123#', '44e9ec8e80f4976ded580a6384d639de'),
(1507, 'Sharafat bashir ', 'mrkhan32626@gmail.com', 'sharafat123', '2ad053a74947cb3cb371b2e44e511f54'),
(1508, 'Raju', 'karansinghrail717@gmail.com', '123123123', '7248db3087788764175d7bd33178e2ed'),
(1509, 'Insha gowher khan ', 'inshagowhar57@gmail.com', 'insha@1234', '334838944eb1817b1474b3767f172930'),
(1510, 'Saleem Ashraf malik', 'saleemashraf77796@gmail.com', '@ecomerce96', '1791b8e56b776446b545cc3e8a1fd38a'),
(1511, 'Mohammad shafi Mir', 'mohdshafi42@gmail.com', '000@Shafi', '04f41dbe589a4034bd7be962ea02e081'),
(1512, 'Sahil manzoor', 'meersahilsahil2233@email.com', 'mnbvcxzmnbvcxz', 'bdb8c77e9cb32ae01b595a7f5d859b1d'),
(1513, 'Faizan ahad ganie', 'Faizanahad1234@gmail.com', 'Bodyguard', '2894e3249c85c7f5c100a0b6db321cdf'),
(1514, 'Mir Shahid', 'meershahid20987@gmail.com', '000@Shahid', '7991af69dc7125087d1e425dd4f60a80'),
(1515, 'Farhana Hassan', 'farhanahassan725@gmail.com', '000@Farhana', '3809410bc43c901ec704eb8fd86b30de'),
(1516, 'Sohail ahmad bhat', 'sohailbhat2@gmail.com', 'sohail@123#', 'b26926e37a4394389162e3a180e2511b'),
(1517, 'Mehnaz mushtaq', 'mehnazmushtaq71@gmail.com', 'mehnaz121', '24c0ecf5404665b8356adb2d6d3bce44'),
(1518, 'Shoaib Mohammad', 'Smnakhter396@gmail.com', 'shoaib@123#', '32d28d859faddb4c0b615c1c47399b0c'),
(1519, 'Azhar Rashid ', 'azhar2239@gmail.com', 'azhar2239', '6b6778a5eb2d61d9d325a66dc76391b4'),
(1520, 'Bilal manzoor ', 'bilaalmeer899@gamil.com', 'bilal888', '13db54a17dcd0d5bd6c833859cc4195e'),
(1521, 'SHAHID MAQBOOL', 'shahidmeer822@gmail.com', 'SHAHID@MAQBOOL', '0dbb2daf0dcdc254c2bce8108c433a86'),
(1522, 'Maroof Ramzan', 'MaroofAhmed02@gmail.com', 'maroof@7890', '7dc6b9b134200c8e629fbe74fc49250a'),
(1523, 'Danish ', 'qazid1279@gmail.com', 'danish@123', '35a478407badc9ea2554d3f294b4d3e6'),
(1524, 'Sajid Ali', 'meersajid01@gmail.com', 'sajidali@7890', '44a5a8dbe67b7c18fdf94c9438d30483'),
(1525, 'Azhar Ud din ', 'azharuddin7889@gmail.com', 'azhar7889', '1156b3f888f8298505d9705333af0aea'),
(1526, 'Khalid ashraf lone ', 'khalidashraflone299@gmail.com', 'samk123', '6da41e7f34587e47b1be561a1873d702'),
(1527, 'Khan masroor', 'Khanmasroor639@gmail.com', 'masroor123', '4fb5a7470e91da8dd8ca722efca67d14'),
(1528, 'Asif Ali sheikh', 'mohmmadasifsheikh89182@gmail.com', '00998877', 'c4d9d00e39f00d8c0623319a2d3d2591'),
(1529, 'Momin mushtaq ', 'hazimahmading@gmail.com', 'hazimkhan@1234', '2825022df06265dba12d814963488857'),
(1530, 'Masooda Jan', 'hjan3819@gmail.com', '000@Masooda', '2c79ea9977f61401fcdcfbb0fbe6a526'),
(1531, 'Naseer Basheer Bhat ', 'naseerbhat412@gmail.com', 'naseer@123', 'f8347105802df47a294ef3457531d24f'),
(1532, 'DIGITAL SHAHID', 'bhatshahidshahidbhat90@gmail.com', 'shahid398', 'dc961f16bb215ffa5d64e0960229875f'),
(1533, 'SHAHID LATEEF', 'hajam7071@gmail.com', 'HAJAM SHAHID', 'aa825b2bed0e0ee1f2ec3a61de5ecda0'),
(1534, 'Sunadhi sing sahu', 'sunadhisahu@gmail.com', '000@Suna', '7574d15008bb842034773227b2be9fe1'),
(1535, 'Parvinder kour', 'parvinderkour99@gmail.com', '000@Paru', '1303385fbb223964ae8c2b19e1a3cfe5'),
(1536, 'Mohd ishfaq shiekh ', 'ishuishfaq776@gmail.com', 'ishu@123qq', 'c202d4e7c9d8b28c0869cf18086c1f85'),
(1537, '', 'mahfoozb80@gmail.com', 'mehfu332211', '29e8fb4720eba465cc2467b635d3c5f7'),
(1538, 'aurangzeb ', 'azaib8427@gmail.com', 'aurangzaib123abc', '1d6b1c742e18689426d4c4c4f3ad6f0f'),
(1539, 'Tahir iqbal ', 'tahirrajput11480@gmail.com', '@rajput!!!', '0578637570f8a2dfc51f2cc92710052d'),
(1540, 'Raaziabhat', 'raziabhat941@gmail.com', 'raziabhat123', '79ef9392576105dcc101ec1891f78274'),
(1541, 'Kali', 'no@gmail.com', '123123123', '884326d3efa9c74560181c736c5d3b82'),
(1542, 'Shahid Nazir ', 'shahidnazirwani364@gmail.com', 'loveyouhemu', '975bbc319583e7c4b841a2249c20b5c3'),
(1543, 'Bilal ahmad', 'Bilalkumar161@gmail.com', 'bilal313', 'ddb27f50e85e325587d1834931f92e5b'),
(1544, 'BHAT FAISAL', 'bhatf5427@gmail.com', 'bhat12345', 'b76d7c430813d155a6f459a0bad9fe45'),
(1545, 'Mahid Bashir', 'mahidbashir707@gmail.com', 'mahid@123', '5b14d2cea11ddedeca814a711a065bdd'),
(1546, 'MANZOOR AHMAD ', 'manzoormir82555@gmail.com', 'June@2024', 'dd65ec7020c7f138697b597d98875067'),
(1547, 'Ruhi anjuman', 'anjumanyekulur@gmail.com', 'iqranju101', '6355ea9ff417d363df80771859fa7d09'),
(1548, 'Anjum ruhi', 'ruhianjum010@gmail.com', 'iqranju101', 'd770522e21aa9340b2677a8209864dba'),
(1549, 'TASLIMA ', 'Farhandiwan551@gmail.com', 'farhanfaizahumera', '301d610c72ccefdf63619c4ceaf1d5e2'),
(1550, 'Tasleem Ahmad', 'taslemansari123@gmail.com', '000@Tasleem', '434afde80f2d326af88009abec46036b'),
(1551, 'Sonali subhash kanande ', 'tusharthanande@gmail.com', 'tusharsk', '6e30b330f30c3c4154dc59851cffcf87'),
(1552, 'Anjali Verma ', 'anjaliverma94184@gmail.com', 'Daydreamer629', '6f6f017c42ab06aff504b0a89aa2a58b'),
(1553, 'Bhatumer ', 'bhatu5566@gmail.com', 'bhatumer12', '6f34a8a590df13b1422e6dc068af5e90'),
(1554, 'Bhatumer ', '6006688517@ibl', '808284', '5170e8e6a4f2269e4cb7945e449b0cb0'),
(1555, 'DIGITAL HASHMAT', 'shahjaany@gmail.com', 'Hashu034', '901a7768b8090cedd84fd4028ceeaeac'),
(1556, 'Parvaiz Ahmad Lone ', 'parvaizlone46@gmail.com', 'kashmir1234', '51fa81a7ca4be956c52b26cc640d037d'),
(1558, 'Asima Ansari', 'asimaan99@gmail.com', '000@Asima', '6e6a5a2528ddf147c480afada1a0cb61'),
(1559, 'ASHU THAKUR', 'ashutechnology60@gmail.com', 'ashu123', '32c31f5c83a14d58bdfcc6e0af54f499'),
(1560, 'Towseed ahmad chuck', 'toseedchuck64@gmail.com', '125487', 'ffc395883e3c3af8a048c60ab34312b7'),
(1561, 'Vishant Dharmesh Dharmesh', 'vishantdharmesh@gmail.com', 'V@123456', 'baee0bc35c6cadc17b82993264be5e98'),
(1562, 'Trupti subhash Kanande ', 'truptikanande0@gmail.com', 'tusharsk', '4ae72c93f18dc6f7899ab175f69ceb77'),
(1563, 'Faizan manzoor ', 'fmanzoor343@gmail.com', 'UCPYuLFq@f7Vz', '1eaccef5e3a65ea612d8edef7b4d6b9a'),
(1564, 'Danish Wani ', 'Danishwani623@gmail.com', 'Danishwani623@gmail.com', '2f2bf56c5aa4d361ef45dc0285c19ccd'),
(1565, 'Muzamil manzoor bhat', 'itzmuzamil13@gmail.com', 'MUZAMIL13', '3d78ba16300663e3f717551f21c9b6de'),
(1566, 'Gulzar ahmad', 'smartduger102@gmail.com', 'Cvbcvb12345', '74d2146a69e0f7ddc3c48850fdcd3a50');
INSERT INTO `hen` (`id`, `name`, `email`, `password`, `verify_token`) VALUES
(1567, 'Aaqib Bashir ', 'bhataaqi288@gmail.com', '@KUnC54GfFaNR', '9a766416ca27764bae8bf383848d81e7'),
(1570, 'Rukeeb rajab', 'muheebbhat021@gmail.com', '000@bhat', '0f011ee05546fc314feed462a2ad754a'),
(1571, 'Abid Hussain ', 'abiddar649@gmail.com', 'abidhussain', 'b4237cb70f852cc0922260c6ce96eece'),
(1572, 'Shabir Ahmad khan', 'khanshabir18@gmail.com', '@1976#', 'fef5efdce4df5dd51267b2641714b324'),
(1573, 'Mohammad Musaib', 'musaibm99@gmail.com', '000@Musaib', '8b34c341dcf41eff060b9e6fcec5a916'),
(1574, 'Rutba Ansari ', 'rutbaAndari112@gmail.com', '000@Rutba', '67553160e13e94bc8e531c19d7874544'),
(1575, 'Suraj', 'suraj414263@gamail.com', '@suraj123#', '0e209e34ec0d62f4090debf2699a07af'),
(1576, 'Rahil ahmad shah ', 'shahrahil030@gmail.com', 'rahil123', '337e5b0574186f6f4be4ac3a05204427'),
(1577, 'Parvinder kour ', 'parvinderK124@gmail.com', '000@143', 'a631e467d69e23922bdf076bca0c350b'),
(1578, 'Humma Rasheed ', 'hummaRashid786@rediffmail.com', '000@Huma', 'e1ee84aa796398ece2fa6de5c8b100c4'),
(1579, 'Adil bashir', 'dbasit920@gmail.com', 'aadil11', '6a4818d42a55947b4627e1c3ccd20bc3'),
(1581, 'Shaheena Bano', 'shaheena.700789@gmail.com', '000@123', '1d142bda4aef69fe84d7c1cff8cf8184'),
(1582, 'Tanveer hussain', 'tanveerd853@gmail.com', '12345', 'e1c5e01bc93e541295616d0e107e4bb4'),
(1583, 'Nazima Jan', 'nazimajan321@gmail.com', '000@Hani', '8bb8f68c1f82a9e86111f8fcadc52546'),
(1584, 'Mubashir Ahmad seyam', 'seyammubashir55@gmail.com', 'mubashir@123', 'cf63d5bff3a39e7a1ae266470abfd11d'),
(1588, 'Afshana Hassan', 'afshanahassan019@gmail.com', 'afshana@123', '27b20711f320ac7a1d5f49b7810fb5ac'),
(1589, 'TOFEEQ DAR', 'tofeeqdar6@gmail.com', '12345', '680430ce381155749e9ae82202e64cb9'),
(1590, 'ali baba ', 'alibaba@gmail.com', 'ali', 'b8ccdb6ccd9ee59290006018879f2ef4'),
(1591, 'Cat ', 'cat2@gmail.com', 'cat', '8a97041bda4312286deeac5709468ed4'),
(1592, 'Silver', 'silver@gmail.com', 'sil', 'd46316afd7d62c8aac1a5d9be6d9c450'),
(1593, 'Ishu ', 'ishfaq12@gmail.com', 'ishfaq123', 'debed5be2bbb40705c0cb74361005647'),
(1595, 'faisal javaid', 'ratherfaisal122@gmail.com', 'WbtW9635vN86mbm', '359cd870dbf178c507ee5274ad2877dc'),
(1596, 'Mariya', 'nabinaveed508@gmail.com', 'mariyaa', 'ac393c39df75a90405cc3845f4189560'),
(1597, 'testing', 'testing55@gmail.com', 'test', '1c64926fef84d1832a624c8d5ea71739'),
(1603, 'Amir', 'aamir4112@gmail.com', 'amir@123', '09b3bd707589a5c55f76c8afc64605a9'),
(1604, 'Zaineb zahera ', 'Hayaazainab072@gmail.com', 'Hayaazainab072@gmail.com', '97b828e882ebbb4e227ce94c6bbc9d41'),
(1605, 'Amir amin', 'aamirr4112@gmail.com', 'amir@123', '351a1bf116ea8448d7bcacf65f3e75d9'),
(1606, 'Shahzaib Sheikh ', 'shahazaib124@gmail.com', '000@Hani', 'd8c4b9fe672e31ba469f55113af96275'),
(1607, 'Jannat', 'amugloo721@gmail.com', 'asrarmugloo.1', '9a279820a27548f73c3e36e4d2f68ea3'),
(1608, 'Gowhar ahmad shah', 'Gowharshah008@gmail.com', '7889386649', 'b48c333de7a2f9b0c77b6462e00a3be0'),
(1609, 'Amaan ', 'amaanayi0313@gmail.com', 'amaan', '345965ac03daf1a033c8f233a53a05ec'),
(1610, 'Ateeb nisar', 'Sheikhatiya11@gmail.com', 'Sheikhatiya11@gmail.com', 'c9fa815da0d4bdb3b014ff0f3729d083'),
(1611, 'Umar Sheikh ', 'umarumar41887@gmail.com', 'umar1234!@123', '56943db9b2408be6fcfaeb8805580908'),
(1612, 'Parvaiz ahmad', 'parvaizaly16@gmail.com', 'Parvaizali7865', 'f4f5350640063f7e65133bcae9de1ef5'),
(1613, 'TALIB AHMAD KHAN', 'Talibkhankhan718@gmail.com', 'talib1234', '3a95150b5591026b11958918ba288cb8'),
(1614, 'Rahul kumar yadav', 'rahulkumar88@gmail.com', '000@Rahul', 'bde31d8af9af8b99d31bd06a57d98c71'),
(1615, 'Irshad manzoor ', 'irshadmanzoor1212@gmail.com', 'MRn@i3T7mGz2E', '5a74b40b79b7e9799c967974f952314d'),
(1616, '', '', '', '6c026f2e9c04082a23d4a5e6db8f88a9'),
(1617, 'SAJAD AHMAD KHAN', 'khansajad4715@gmail.com', 'sajad1234', '953eb9676b25a3dca528b3fbab43d882'),
(1618, 'Sajad khan', 'khansajad4715@gmali.com', 'sajad1234', 'cb2bb1061e05cd9d29d7ea0ab436fd72'),
(1619, 'Kulsooma bano', 'khankulsooma191@gmail.com', 'kulsoma192', '24bec9bd36653e9834ef40f4e9d871e5'),
(1621, 'Mehak nisar', 'Sheikhmehak761@gmail.com', 'mehak123', 'ac0e5e67293f26c0158d18a58761b507'),
(1623, 'Farhan gulzar', 'farhangulzarnajar150@gmail.com', 'farhan@123', 'cb25b83bf9f50d38f40e246ce62d2cf4'),
(1627, 'Danish shuaib ', 'danishshuaib147@gmail.com', 'danish1234', 'f5f380ace5e886ba8e0e29cf5cb3509c'),
(1628, 'Wahid manzoor ', 'Wahidmanzoor295@gmail.comz', '8Ee6DtpmQ89JxD9', '913747b4ac37b0a18052d11865dcfdca'),
(1629, 'Wahid', 'wahidmanzoor295@gmail.com', 'wahii1235', 'ed70b165d93eeca565a13ec95a02b49c'),
(1630, 'THE RAHIL', 'rahilff366@gmail.com', '12345', 'f46779fd6c5ca98771a169e0f7b3885d'),
(1631, 'The Rizwan', 'ffr803967@gmail.com', '12345', '5d6fab87ff781f0db92f98a151800dbf'),
(1632, 'Shahid Ahmad khan', 'ks3476201@gmail.com', 'shahid6234', '307161ae1c07959e77980c2bf7a3c33f'),
(1634, 'Shazia Gafoor', 'rasibahkhan@gmail.com', 'shazia123', '8aaf9fe0f66c802693bfc734aef7b5b4'),
(1635, 'Bilqees akhtar', 'bilqeesakhter1909@gmail.com', 'j@KqSBNZTPK39', 'f806a2808f0c9def9f9fbbbbec16630a'),
(1636, 'Mr farzaan', 'fza7889@gmail.com', 'farzaan123', 'a0e7b51c2edfa2b1357d88fa0c4c27a1'),
(1638, 'Mudasir ', 'khan.mudyy@gmail.com', 'mudasir123', '9199ecca61885347ac91cef661ffcef0'),
(1639, 'Rameez Ahmad wani', 'wanirameez23@gmail.com', 'rameez@2007', '66d53c4ec0bb3f91eb2033fdbfdbe3d0'),
(1640, 'Sumit singh ', 'sroy62045@gmail.com', 'chipkali9006608421', '3cc36c2130469b4f069bb5cccc9a2032'),
(1641, 'Rameez', 'wanirameez39@gmail.com', 'wani@123', 'cff5a9cbf1163393ca6b4a80eb108388'),
(1642, 'Ulfat ', 'ahangerulfatahanger@gmail.com', 'ulfat123', '0c8c713fa75fec3f47958b497f897a51'),
(1643, 'Mr shakeel ', 'qwetyugfgu@gmail.com', 'shakeel123', '49cce0b0a984c093b426450f55103314'),
(1644, 'Avleeda razaq ', 'aulidarazaq01@gmail.com', 'aulida01#', '47d140105118dc74155faa796fae0be7'),
(1645, 'Avleeda razaq ', 'avleedarazaq1@gmail.com', 'aulida01#', 'baef2fe337828a8d87f788bc052d59dd'),
(1646, 'Avleeda razaq ', 'aulidarazaq@gmail.com', 'adiluarazaq1#', '0d68321e69a0ea887be914209b591a15'),
(1647, 'Sumit', 'Topgamer62045@gmail.com', 'chipkali', '945b2767e4fc26bb919db1bca1979431'),
(1648, 'G R Aziz', 'arbluestar.kh@gmail.com', 'Gr@1234', '30144889db62f6c2d5befd6d4c05cade'),
(1650, 'Shahid gulzar', 'Shahidgulzar132@gmail.com', 'shahid123', 'd373e93ad960ba46d8c977c591668917'),
(1651, 'G R Aziz', 'arbackup.kh@gmail.com', 'Akhter@12345', '72c1e4c757bc1b57fb58b755a74e039b'),
(1652, 'Shakoor mir', 'shakoormir267@gmail.com', 'shakoor123', '99781b8ae3b04b4fe010404e4977d86e'),
(1653, 'HILAL AHMAD MALIK', 'hilalmalik66@gmail.com', 'Usmaan3633#', '4f8fa3a466434b4f15842c42e574fd46'),
(1654, 'Barkat ali khan ', 'khanbarkat6103@gmail.com', 'khanbarkat19219', '62a0f55f8eecd983e1591a9c88c2ac1a'),
(1655, 'Junaid shabir', 'Junaidshabir837@gmail.com', 'junaid123', '92e866cc95f68ecccbf92e7c4a18cdc9'),
(1656, 'AAFAR YOUSUF SHAH', 'theshahdawar@gmail.com', 'Aafar123', '89dc5fbace722ac4aa07caf2757a6f48'),
(1657, 'HUZAIF Gowher BHAT', 'bhuzaif454@gmail.com', 'huzaif123', '6c40d608dd6188e835a5074c873cd272'),
(1658, 'MOHD Z Hanzala ', 'dar842159@gmail.com', '@5YMrQfEfwt94', '2ec3a4e21ee9f8667765b652e937ba9a'),
(1659, 'MALIK MEHRAN', 'mozzaf321@gmail.com', '890p890p', 'f3d2480da237d1112038b3be5434fa56'),
(1660, 'Raj Prajapati', 'rp015667@gmail.com', '9004647759', '7ba52a24c56e997c7bc22037e31b9f5f'),
(1661, 'Godfather ', 'father@gmail.com', 'god', '985cab6d89ee7dc75da54de85777ea69'),
(1662, 'unknown', 'unknown@gmail.com', 'un', '23102f38bdea407b981654bbcc479f6a'),
(1663, 'Musadiq Aalam', 'aalammusadiq58@gmail.com', 'musazainu3900', '8d6b9a3db8e1506471e15be46796d8dc'),
(1664, 'Imran lone ', 'loneimran5477@gmail.com', 'loneimran5477@gmail.com', '69c63dadf698bdcf5e6cd732c4d195aa'),
(1665, 'Zainab Bhat ', 'zainabzanu22@gmail.com', '000111', '5e3b13945acc09f517309b0bfbe88955'),
(1666, 'Varun', 'varun@gmail.com', 'varun', '0be35dd0ab427169579cd2e2974b65e2'),
(1667, 'Superman ', 'superman@gmail.com', 'super', 'cb31a6e6c0b6a5a79900f4ea252b39c0'),
(1668, 'Burhan Bashir ', 'burhanbashir906@gamil.com', 'burhaan@123', '9422b57d2a70939160b386541ed5aafd'),
(1669, 'Mir jameel', 'mirjameel1192@gmail.com', '119211', '34ef36c1c4e9ac3da52f2c6aab36c8aa'),
(1670, 'Shahid ibrahim', 'shahidibrahim0786@gmail.com', 'shahid@123', '92aed5c7944fa1fbc208f39464e26c85'),
(1671, 'Suhaib Nisar', 'suhaibbkhan1@gmail.com', '002732..', 'b12d1602fae357c80cd722441909ffae'),
(1672, 'Faizan sheikh', 'sheikhfaizan22049@gmail.com', 'faizan0619', 'd7b2e22329af3a0b61b47ac26c47cec0'),
(1673, 'Abrar Muzafar', 'bhatabrar870@gmail.com', '123@Abrar', '66df6748c7c9ca430a633f4194cd3e6c'),
(1674, 'Aanishshakeel ', 'aanishshakeel@gmail.com', 'CsVbz@a6TGrz4', '88e6d0c53577f99ddb8c977318dbb66d'),
(1675, 'Zeeshan ', 'riderbhai172@gmail.com', 'zeeshan123', 'c1faa292e1c48bab11820cf90c27a634'),
(1676, 'Shakir Fayaz', 'shakirfayaz135@gmail.com', 'shakirfayaz@123#', '499098ef3136bb0c13e53b695809d2f1'),
(1677, 'NEHA ARORA', 'neha674@gmail.com', '121212', '774ef476cc08c192ffa2212cf8e05b74'),
(1678, '', 'kaifb2590@gmail.com', 'kaif123', '7941a3b844e03fd66a38925c851eae1a'),
(1679, 'ZZZ', 'jataves923@maxturns.com', '3cN@3UbQgekLC', '45b1db52bee03e4aae0bcad9d4ba2246'),
(1680, 'Shahid Hussain bhat', 'shahidbhat13582@gmail.com', '1192qw', '5ef78648303f0e361e8a9887fe1036c7'),
(1681, 'Faisal Ahmad wagay', 'fr5551509@gmail.com', 'faisal999', '324980ac2f351594a9d6d863918c06b8'),
(1682, 'Ruzain gulzar', 'ruzainnaik@gmail.com', '119211', '92b294f1b95ddd777800d46f8f219da4'),
(1683, 'Shahid ibrahim', 'khushbooibrahim24@gmail.com', '09876543', 'ae4075213e06eaf36554cb13c777572a'),
(1684, 'Hshim', 'yasirbaya988@gmail.com', '098123', 'a0196480410499948ebce9892df77d00'),
(1685, 'Aamir', 'swagay806@gmail.com', 'Aamir321', 'a6e349a7d21c6b42ef59b38cbf1adf70'),
(1686, 'Uzair shabir', 'uzairallie121@gmail.com', '1234qwert', 'c4a9433199dcc487fe349562e5b0b774'),
(1687, 'Tawheed', 'tawheedb233@gmail.com', '413241yy', '94f4803846af0f173b67c7c56870d880'),
(1688, 'Tawheed', 't28272576@gmail.com', '413241yy', 'bdaac4db91be4642a48895cade1d1041'),
(1689, 'Tawheedbhat', 'tawheedbhat768@gmail.com', 'bhattawheed02', '768784fd8e90a05741aeb49f7fd59a79'),
(1690, 'Towheed', 'towheedyounis31@gmail.com', '9682656162t', '662775b4b77dcf446766648687201924'),
(1691, 'Sameena akther', 'zahidahma675@gmail.com', 'sameena@1234', 'ae2135e16a0cd09dc3737f9e216ba70c'),
(1692, 'NS_NASIR_XX', 'nob998877@gmail.com', 'Nasir123', '1bba1971b4bf02a52b45f195ccb68b22'),
(1693, 'Sameer ahad ', 'bhatsameer5618@gmail.com', 'sameer111', '61ad56fc5d1aab7fb4e8803aff1e4382'),
(1694, 'Bhat sameer', 'bhatsameer9618@gmail.com', '748wyhG@it@jG', '01b645604dda61d10fd8cb0fd358081e'),
(1695, 'Tawheed', 'bhatyounis794@gmail.com', 'freefire', '8ff6c54b3503e4b6049fe9a4a1ead4e4'),
(1696, 'Towheed younis', 'towheed786@gmail.com', 'towheed123', '72c3982a8440e5e15c7c9f3e85c7ebfc'),
(1697, 'Eyaad', 'mohmmadeyad66@gmail.com', 'Test@9906', 'fba4075f996da977062cb887a494d09b'),
(1698, 'Umer farooq', 'umerfarooq9934@gmail.com', '9u@xizrhZbqMa', 'ca4b32535f6225077d3efdb23593ab27'),
(1699, 'Hemayat Ashaq', 'hemayata50@gmail.com', 'msqk9421', 'd8e9af3dd6bff76cbe59c951467e2b9b'),
(1700, 'Sujit Acharya', 'moviesyt2580@gmail.com', 'sujit123', '2056bf3315cc1cf1cdd1a13033a4725c'),
(1701, 'Name Uday Yaduvanshi', 'uy76363@gmail.com', 'uday123', 'b3eac7e359ed0672483d51e804a7aa58'),
(1702, 'Abdul rashid khatana', 'rk9606617@gmail.comcom', 'rashid123', '2fd6a4df0efd965eb5e4c44d59b51d37'),
(1703, 'Shafiya ashraf', 'Mirshafiya111@gmail.com', 'shafiya596306', 'cab50b21610843fe3e3d44450279a428'),
(1704, 'Shafiya ashraf', 'shafiyaashraf44@gmail.com', 'shafiya2233', 'e1db82708b43a73df609f316d4356003'),
(1705, 'Ovais Ahmad Tak', 'ovaistak92@gmail.com', 'ovais@123#', 'ac6552b43810bb6854366b218676600e'),
(1706, 'Sabzar ahmad', 'sabzar946@gmail.com', 'Skill@123', 'a0f4b3898b56e81e74867e7fb4070089'),
(1707, 'Er khalid nisar ', 'khalidnisar765@gmail.com', 'hunk890', 'fe970e0f235ef0c8d4beed2539cb6c29');

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int NOT NULL,
  `email` varchar(60) NOT NULL,
  `accountHolderName` varchar(60) NOT NULL,
  `bankName` varchar(60) NOT NULL,
  `accountNo` int NOT NULL,
  `ifscCode` varchar(50) NOT NULL,
  `referalCode` varchar(8) NOT NULL,
  `upiId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kyc_user`
--

CREATE TABLE `kyc_user` (
  `id` int NOT NULL,
  `email` varchar(60) NOT NULL,
  `accountHolderName` varchar(60) NOT NULL,
  `bankName` varchar(60) NOT NULL,
  `accountNo` varchar(20) NOT NULL,
  `ifscCode` varchar(20) NOT NULL,
  `referalCode` varchar(10) NOT NULL,
  `upiId` varchar(20) NOT NULL,
  `image_path` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kyc_user`
--

INSERT INTO `kyc_user` (`id`, `email`, `accountHolderName`, `bankName`, `accountNo`, `ifscCode`, `referalCode`, `upiId`, `image_path`) VALUES
(95, 'shahidpeer494@gmail.com', 'Shahid Hamid peer ', 'Jammu and Kashmir bank ', '0594040150003477', 'JAKA0QLMCHK ', '92634', '9682610849@ybl', 0),
(96, 'meertassaduq4@gmail.com', 'TASSADUQ ALI MIR ', 'J&K BANK', '0127040210000146', 'JAKA0ALOOSA', '4367', '6005853557@axl', 0),
(97, 'aasifahmad714@gmail.com', 'Aasif ahmad mochi ', 'Jammu and Kashmir bank LTD ', '0136040800804548', 'JAKA0BLOOMY ', '91530', '6006404387@axl', 0),
(98, 'aamirnabi711@gmail.com', 'Aamir Ahmad wagay', 'Jammu and Kashmir Bank', '0566040150600666', 'JAKA0WARPOR', '59017', '78899253171@ibl', 0),
(99, 'aamirnabi711@gmail.com', 'Aamir Ahmad wagay', 'Jammu and Kashmir Bank', '0566040150600666', 'JAKA0WARPOR', '59017', '78899253171@ibl', 0),
(100, 'meerishfaq472@gmail.com', 'ishfaq ahmad mir', 'jammu and kashmir', '0172040100016918', 'JAKAOSRIGUP', '65088', '60005353856', 0),
(101, 'mehakbinterasheed@gmail.com', 'Mehwish rasheed ', 'Jammu and kashmir ', '0309040100009681', 'JAKAOHITECH', '14374', '9596183011@mpay', 0),
(102, 'jigrnelu@gmail.com', 'Mehak Hamid ', 'Agro Hi Tech', '0309040100009588', 'JAKA0HITECH', '51985', 'Seeratseru097@okhdfc', 0),
(103, 'Pmate4777@gmail.com', 'Swarankit hiralal mendhe', 'Uco bank', '19320110105757', 'UCBA0001932', '13841', '7420824110@ybl', 0),
(104, 'jasayianissar07@gmail.com', 'Jasiya nisar ', 'Jammu and Kashmir ', '3502040100047946', 'JAkA0GRAMEN', '1238', 'jasayianissar07@okhd', 0),
(105, 'jasayianissar07@gmail.com', 'Jasiya nisar ', 'Jammu and Kashmir ', '3502040100047946', 'JAkA0GRAMEN', '1238', 'jasayianissar07@okhd', 0),
(106, 'Ratherbasu099@gmail.com', 'BASIT AMIN RATHER ', 'Jammu and Kashmir ', '01720408000009472', 'JAKA0SRIGUP ', '9806', '9149469648@axl', 0),
(107, 'imtiyazsheikh999@gmail.com', 'Imtiyaz Ahmad Sheikh ', 'Imtiyaz Ahmad Sheikh', '0061040100018162', 'JAKA0WULLAR ', '92634', 'imtiyazsheikh999-3@o', 0),
(108, 'nasuhaanjum87@gmail.com', 'Nasuha anjum ', 'State Bank of India ', '38671522295', 'SBIN0020123', '66446', '53606901', 0),
(109, 'nasuhaanjum87@gmail.com', 'Nasuha anjum ', 'State Bank of India ', '38671522295', 'SBIN0020123', '66446', '53606901', 0),
(110, 'hayaansheikh786@gmail.com', 'AB GANI MAGARY ', 'AB GANI MAGARY ', '502000943171125', 'HDFC0003449', '58978', '6006517819@pz', 0),
(111, 'hayaansheikh786@gmail.com', 'AB GANI MAGARY ', 'AB GANI MAGARY ', '502000943171125', 'HDFC0003449', '58978', '6006517819@pz', 0),
(112, 'aakashdar339@gmail.com', 'AAKASH AHMAD DAR ', 'Jammu and Kashmir ', '1035041000001090', 'JAKA0WARPOR', '98024', '6006955788@axl', 0),
(113, 'ehmadjavaid27sep@gmail.com', 'Javaid Ahmad Lone ', 'J & k bank choora', '0630041000000486', 'JAKA0CHOORA', '74299', '9596262710@ybl', 0),
(114, 'Basitrather0537@gmail.com', 'BASIT AMIN RATHER ', 'Jammu and Kashmir ', '0172040800009472', 'JAKA0SRIGUP ', '64095', '9149469648@axl', 0),
(115, 'ehmadjavaid27sep@gmail.com', 'Javaid Ahmad Lone ', 'J & k bank choora', '0630041000000486', 'JAKA0CHOORA', '74299', '9596262710@ybl', 0),
(116, 'ehmadjavaid27sep@gmail.com', 'Javaid Ahmad Lone ', 'J & k bank choora', '0630041000000486', 'JAKA0CHOORA', '74299', '9596262710@ybl', 0),
(117, 'ehmadjavaid27@gmail.com', 'Javaid Ahmad Lone ', 'Jammu and Kashmir Bank Choora', '0630041000000486', 'JAKA0CHOORA ', '74299', '9596262710@ybl', 0),
(118, 'naveedlone89@gmail.com', 'Naveed Ahmad lone ', 'Naveed Traders', '0061010100002372', 'JAKA0WULLAR ', '58978', '6005808843pz', 0),
(119, 'naveedlone89@gmail.com', 'Naveed Ahmad lone ', 'Naveed Traders', '0061010100002372', 'JAKA0WULLAR ', '58978', '6005808843pz', 0),
(120, 'sheikhtawseef998462@gmail.com', 'Tawseef ahmad moochi', 'J & K bank ', '0172041000000511', 'JAKA0SRIGUP', '7489', '0000', 0),
(121, 'sheikhtawseef998462@gmail.com', 'Tawseef ahmad moochi', 'J & K bank ', '0172041000000511', 'JAKA0SRIGUP', '7489', '0000', 0),
(122, 'sheikhtawseef998462@gmail.com', 'Tawseef ahmad moochi', 'J & K bank ', '0172041000000511', 'JAKA0SRIGUP', '7489', '0000', 0),
(123, 'sheikhtawseef998462@gmail.com', 'Tawseef ahmad moochi', 'J & K bank ', '0172041000000511', 'JAKA0SRIGUP', '7489', '0000', 0),
(124, 'firdousbashir192@gmail.com', 'firdous Bashir malla', ' Jammu and Kashmir bank', '0594041000002462', 'JAKA0QLMCHK', '7989', '9682102980@ibl', 0),
(125, 'biljaan59@gmail.com', 'Zubair Farooq', 'Jammu and Kashmir Bank', '0594041000002451', 'JAKA0QLMCHK', '96278', '7051814323@axl', 0),
(126, 'peerdanish75@gmail.com', 'Danish Javid ', 'Danish Javid ', '0594041000002454', 'JAKA0QLMCHK ', '5869', '6006677052@Paytm', 0),
(127, 'sheikhtawseef998462@gmail.com', 'Tawseef ahmad moochi', 'J & K bank ', '0172041000000511', 'JAKA0SRIGUP', '7489', '0000', 0),
(128, 'soumyaxwasnik@gmail.com', 'Soumya ratan wasnik ', 'Union Bank of India ', '713502120005480', 'UBIN0571351', '65088', '9975264856@ybl', 0),
(129, 'sheikhtawseef998462@gmail.com', 'Tawseef ahmad moochi', 'J & K bank ', '0172041000000511', 'JAKA0SRIGUP', '7489', '0000', 0),
(130, 'sheikhtawseef998462@gmail.com', 'Tawseef ahmad moochi', 'J & K bank ', '0172041000000511', 'JAKA0SRIGUP', '7489', '0000', 0),
(131, 'sheikhtawseef998462@gmail.com', 'Tawseef ahmad moochi', 'J & K bank ', '0172041000000511', 'JAKA0SRIGUP', '7489', '0000', 0),
(132, 'mirirfan0002@gmail.com', 'Irfan Ahmad Mir ', 'Jammu and Kashmir ', '0061040100050720', 'JAKA0WULLAR', '58978', 'mirirfan0002-1@oksbi', 0),
(133, 'hemusyed9@gmail.com', 'Yawar Bashir ', 'Jammu and Kashmir bank', '1204041000002441', 'JAKA0TPBAND', '62263', 'yawarbashir319@okici', 0),
(134, 'hemusyed9@gmail.com', 'Yawar Bashir ', 'Jammu and Kashmir bank', '1204041000002441', 'JAKA0TPBAND', '62263', 'yawarbashir319@okici', 0),
(135, 'ubairlone999@gmail.com', 'Ubair Rafiq Lone ', 'J and k', '0638040800000221', 'JAKA0USHKAR ', '2774', 'Ubairlone999@okicici', 0),
(136, 'ubaidajaz1234@gmail.com', 'Ubaid Ajaz', 'JAMMU AND KASHMIR BANK LTD', '0594041000001001', 'JAKA0QLMCHK', '7647', 'ubaidajaz2150@okaxis', 0),
(137, 'magrayjunaid4@gmail.com', 'Junaid mohi ud din magray ', 'Jammu and Kashmir bank', '1027042000000026', 'JAKA0KALOSA ', '58978', '7889514276@ybl', 0),
(138, 'khantariqkhantariq26@gmail.com', 'Tariq Ahmad Khan ', 'J and k', '0836041000001043', 'JAKA0RAWKHA ', '18096', '9906629522', 0),
(139, 'aabidalone786@gmail.com', 'Imtiyaz Ahmad Sheikh ', 'FEDERAL Bank', '55550100355732', 'FDRL0005555', '58978', '8082880967-2@axl', 0),
(140, 'aaminaqkiaer94@gmail.com', 'Imtiyaz Ahmad Sheikh ', 'SBI BANK', '20111327513', 'SBIN0001362', '8802', '786 143 687', 0),
(141, 'biljaan59@gmail.com', 'Zubair Farooq', 'Jammu and Kashmir Bank', '0594041000002451', 'JAKA0QLMCHK', '96278', '7051814323@axl', 0),
(142, 'biljaan59@gmail.com', 'Zubair Farooq', 'Jammu and Kashmir Bank', '0594041000002451', 'JAKA0QLMCHK', '96278', '7051814323@axl', 0),
(143, 'majidazizbhat@gmail.com', 'Majid aziz Bhat ', 'Jammu and Kashmir bank', '1204040120000234', 'JAKA0TPBAND', '58978', '8493815875pz', 0),
(144, 'shiekhadil9090@gmail.com', 'ADIL HASSAN SHIEKH ', 'Jammu and kashmir bank LTD ', '0594040100003921', 'JAKA0QLMCHK ', '2118', '6005267607@ybl', 0),
(145, 'mageryimran36@gmail.com', 'Mohammad imran magray ', 'HDFC Bank ', '50100499223692', 'HDFC0002527', '89594', 'www.mageryimran2701@', 0),
(146, 'Aleenafirdous56@gmail.com', 'Shahana begum', 'State Bank of India ', '34336877251', 'SBIN0011084', '97916', '9010411394', 0),
(147, 'lubnarasheed990@gmail.com', 'Lubna Rashid', 'Jammu and Kashmir', '0824041000000121', 'JAKA0AHMSHA', '58978', '8082880967-2@axl', 0),
(148, 'lubnarasheed990@gmail.com', 'Lubna Rashid', 'Jammu and Kashmir', '0824041000000121', 'JAKA0AHMSHA', '58978', '8082880967-2@axl', 0),
(149, 'lubnarasheed990@gmail.com', 'Lubna Rashid', 'Jammu and Kashmir', '0824041000000121', 'JAKA0AHMSHA', '58978', '8082880967-2@axl', 0),
(150, 'tantrayj489@gmail.com', 'JAVID AHMAD TANTRAY ', 'Jammu and Kashmir Bank ', '0594041000005003', 'JAKA0QLMCHK ', '62976', '6005430972@ybl', 0),
(151, 'sabatunnisa11@gmail.com', 'Sabatun nisa', 'Jammu and Kashmir bank', '0904041000000193', 'JAKA0SECBAN', '58978', 'Sabatunnisa@icici', 0),
(152, 'sahilnajarr@gmail.com', 'Mohammad Suhail najar ', 'Jammu and Kashmir bank', '1204040105006754', 'JAKA0TPBAND', '58978', 'Suhailnajar@icici', 0),
(153, 'riyaan786@gmail.com', 'Rahiya nazir', 'Jammu and Kashmir bank', '0904041000000198', 'JAKA0SECBAN', '6632', '788932906@pz', 0),
(154, 'irfankhan01501@gmail.com', 'Irfan Mumtaz ', 'Jammu and Kashmir bank', '0929041000000057', 'JAKA0NADHAL', '58978', 'irfankhan01501@oksbi', 0),
(155, 'irfankhan01501@gmail.com', 'Irfan Mumtaz ', 'Jammu and Kashmir bank', '0929041000000057', 'JAKA0NADHAL', '58978', 'irfankhan01501@oksbi', 0),
(156, 'zakirpeer624@gmail.com', 'Zakir Hussain peer ', 'Jandk bank', '0594040800005734', 'JAKA0QLMCHK', '97317', 'zakirpeer624@okicici', 0),
(157, 'Muzamilbashir1912@gmail.com', 'Muzamil bashir', 'State bank of india ', '41837487190', 'SBIN0001362', '1016', 'muzamilbashir1912@ok', 0),
(158, 'ubaidajaz2150@gmail.com', 'Ubaid Ajaz', 'JAMMU AND KASHMIR BANK LTD', '0594041000001001', 'JAKA0QLMCHK', '27545', 'ubaidajaz2150@okaxis', 0),
(159, 'aleeshawani222@gmail.com', 'MADIHA IRFAN ', 'Jammu and Kashmir bank', '0727041000001756', 'JAKAONIPARK', '58978', 'Madihaurfan@pz', 0),
(160, 'iqranikath61@gmail.com', 'Iqra Nikath ', 'Bank of Baroda ', '32928100010569', 'BARB0NIZAMA', '66243', '9030019568@ybl', 0),
(161, 'danishbashir612@gmail.com', 'Danish Ahmad Shah', 'J&K Bank Kunzer', '0546041000003518', 'JAKA0KUNZER', '91046', '3518JAKA0KUNZER', 0),
(162, 'shahidabashir97@gmail.com', 'Shahida Bashir ', 'Jammu and Kashmir Grameen Bank', '3127040800000082', 'JAKA0GRAMEN', '58978', 'Shahida@icoci', 0),
(163, 'aabida786@gmail.com', 'Aabida Mehraj ', 'Jammu and Kashmir bank', '0061040150002645', 'JAKA0WULLAR ', '9582', '8082880967-2@axl', 0),
(164, 'khanaijaz617919@gmail.com', 'Aijaz Khan', 'JAMMU AND KASHMIR BANK LTD', '0594041000004835', 'JAKA0QLMCHK', '2049', 'khanaijaz617919@okic', 0),
(165, 'najarakhter06@gmakl.com', 'Akhter Hussain Najar', 'Jammu and Kashmir bank', '1204041000001448', 'JAKA0TPBAND', '58978', 'najarakhter4529@axl', 0),
(166, 'emmuwani11@gmail.com', 'Ameer Iqbal wani', 'Jammu and Kashmir bank', '1204041000001714', 'JAKA0TPBAND', '58978', 'Ameeriqbal@axl', 0),
(167, 'parulverma1994@gmail.com', 'Imtiyaz Ahmad Sheikh ', 'HDFC BANK', '50100449035472', 'HDFC0003449', '58978', '8082880967-2@axl', 0),
(168, 'sheikhraju365@gmail.com', 'Reyaz ahmad sheikh  ', 'Jammu and Kashmir Bank', '0594041000006676', 'JAKA0QLMCHK', '1818', '6006717605@paytm', 0),
(169, 'tanishnazir407@gmail.com', 'Nazir Ahmad Kumar ', 'Punjab National Bank', '7604000100022958', 'PNB0760400', '58978', '60062976966@ybl', 0),
(170, 'catc18100@gmail.com', 'TAHIRA BEGUM', 'Agro Hi-Tech Sopore', '0309040150000911', 'JAKAOHITECH', '73116', '6005321106', 0),
(171, 'bhatshahidshahidbhat90@gmail', 'Shahid ul islam', 'Jandk tpsopore', '0347042000000116', 'JAKA0TRUSTE', '5992', 'bhatkhursheed@124', 0),
(172, 'eraqib1995@gmail.com', 'Aqib javid', 'Jammu and Kashmir bank', '0437040100061932', 'JAKA0YARPUR', '58978', '6005831310-2@axl', 0),
(173, 'BhatAmir3050@gmail.com', 'Aamir Mushtaq ', 'Jammu and kashmir ', '0129042000000185', 'JAKA0HAJJIN ', '3702', '5543590003518985', 0),
(174, 'waseemraja868@gmail.com', 'Waseem Ahmad Chopan', 'Jammu and Kashmir bank', '0665040100004075', 'JAKA0PAZAAL', '58978', '7780830388@pz', 0),
(175, 'waseemraja868@gmail.com', 'Waseem Ahmad Chopan', 'Jammu and Kashmir bank', '0665040100004075', 'JAKA0PAZAAL', '58978', '7780830388@pz', 0),
(176, 'wanim7740@gmail.com', 'Mudasir Ahmad wani', 'Jammu and Kashmir Grameen bank', '35210121130000057', 'JAKA0GRAMEN ', '58978', '7889386871@ybl', 0),
(177, 'syedanasali2607@gmail.com', 'Rukhsana bee', 'Bank of maharashtra', '60240217512', 'MAHB0001852', '3227', '7828708056@paytm', 0),
(178, 'syedanasali2607@gmail.com', 'Rukhsana bee', 'Bank of maharashtra', '60240217512', 'MAHB0001852', '3227', '7828708056@paytm', 0),
(179, 'khanenterprises443@gmail.com', 'Umar Farooq ', 'Jammu and Kashmir bank', '1204040100600783', 'JAKA0TPBAND', '8802', '9149930124@ibl', 0),
(180, 'seemujaan29@gmail.com', 'Tajamul Farooq baba', 'UCO bank', '03540110023761', 'Ucba0000354', '7620', 'Tajamulbaba02-1@okic', 0),
(181, 'sheikhaaqib255@gmail.com', 'Aaqib Manzoor Sheikh ', 'Jammu and Kashmir bank', '1204041000003085', 'JAKA0TPBAND', '58978', 'Sheikhaaqib255@ybl', 0),
(182, 'seemujaan29@gmail.com', 'Tajamul Farooq baba', 'UCO bank', '0566041000000350', 'Ucba0000354', '7620', 'Tajamulbaba02-1@okic', 0),
(183, 'tajamulbaba02@gmail.com', 'Tajamul Farooq baba', 'UCO bank', '0566041000000683', 'Ucba0000354', '7620', 'Tajamulbaba02-1@okic', 0),
(184, 'Mahirajaan583@gmail.com', 'Rabiya Yaseen ', 'Jammu and Kashmir bank', '1204041000000176', 'JAKA0TPBAND ', '58978', '6005759793@ybl', 0),
(185, 'Peerhaya@gmail.com', 'Bisma Maqbool ', 'Jammu and Kashmir bank', '0727041000001683', 'JAKA0NIPARK', '58978', '9682194726@ybl', 0),
(186, 'mahjabeena30@gmail.com', 'Mahjabeena Akhter ', 'Jammu and Kashmir bank khudwani ', '0580040800006687', 'JAKA0KHUDWN', '22699', '7889379064@axl', 0),
(187, 'mahjabeena30@gmail.com', 'Mahjabeena Akhter ', 'Jammu and Kashmir bank khudwani ', '0580040800006687', 'JAKA0KHUDWN', '22699', '7889379064@axl', 0),
(188, 'parrayalixa@gmail.com', 'Bilquees', 'J&k bank', '0221041000001646', 'Jaka0nwklan', '29540', '6006107024 @ mpay', 0),
(189, 'sahilshafi502@gmail.com', 'SAHIL SHAFI', 'Jammu AND Kashmir', '0309041000003132', 'JAKA0HITECH', '42819', 'sahilshafi502@oksbi', 0),
(190, 'Innocentmajid343@gmail.com', 'Majid Hassan Khan', 'Jammu and Kashmir bank', '0665040150002233', 'JAKA0PAZAAL', '58978', '6006056407@ybl', 0),
(191, 'cbsbhagat@gmail.com', 'Santosh bhika bhagat ', 'HDFC ', '50100540610471', 'HDFC0009155', 'https://sk', 'santoshbhagat618@ybl', 0),
(192, 'cbsbhagat@gmail.com', 'Santosh bhika bhagat ', 'HDFC ', '50100540610471', 'HDFC0009155', 'https://sk', 'santoshbhagat618@ybl', 0),
(193, 'muntazirnissar7@gmail.com', 'Naseer Ahmad Najar ', 'Jammu and Kashmir bank', '0929040100000681', 'JAKA0NADHAL', '58978', 'naseeruddinahmad8-1@', 0),
(194, 'tusharrawat7560@gmail.com', 'TUSHAR SINGH RAWAT ', 'Bank of Baroda ', '48010100011135', 'BARB0GANAHE', '53724', '9509303289@ybl', 0),
(195, 'loneb3508@gmail.com', 'Bilal Ahmad Lone ', 'Jammu and Kashmir Bank Ltd ', '0486041000000995', 'JAKA0WAGORA ', '19273', '9906986776@axl', 0),
(196, 'mushtaqahmadk222@gmail.com', 'Mushtaq Ahmad Khan', 'Jammu and Kashmir Bank', '0219040100000097', 'JAKA0WANPOH', '6802', '9541158129@ibl', 0),
(197, 'mushtaqahmadk222@gmail.com', 'Mushtaq Ahmad Khan', 'Jammu and Kashmir Bank', '0219040100000097', 'JAKA0WANPOH', '6802', '9541158129@ibl', 0),
(198, 'sahilshafi502@gmail.com', 'SAHIL SHAFI', 'Jammu and Kashmir', '0309041000003132', 'JAKA0HITECH', '42819', 'sahilshafi502@oksbi', 0),
(199, 'shahidpeer494@gmail.com', 'Shahid Hamid peer ', 'Jammu and Kashmir bank ', '0594040150003477', 'JAKA0QLMCHK ', '92634', '9682610849@ybl', 0),
(200, 'ubaidajaz1234@gmail.com', 'Ubaid Ajaz', 'JAMMU AND KASHMIR BANK LTD', '0594041000001001', 'JAKA0QLMCHK', '7647', 'ubaidajaz2150@okaxis', 0),
(201, 'wajidaashraf2023@gmail.com', 'Wajidaashraf ', 'J and k ', '0060041000001945', 'JAKAONIDYAR ', '4598', '6005994569', 0),
(202, 'loneb3508@gmail.com', 'Bilal Ahmad Lone ', 'Jammu and Kashmir Bank Ltd ', '0486041000000995', 'JAKA0WAGORA ', '19273', '9906986776@axl', 0),
(203, 'qais26785@gmail.com', 'QAISAR PARVAIZ', 'IDFC FIRST BANK', '10105670008', 'IDFB0021502', '58978', '7889617039w@ybl', 0),
(204, 'wajidaashraf2023@gmail.com', 'Wajidaashraf ', 'J and k ', '0060041000001945', 'JAKAONIDYAR ', '4598', '6005994569', 0),
(205, 'wajidaashraf2023@gmail.com', 'Wajidaashraf ', 'J and k ', '0060041000001945', 'JAKAONIDYAR ', '4598', '6005994569', 0),
(206, 'amairaamjid589@gmail.com', 'Rubeena Begum', 'Jammu and Kashmir bank', '1204041000001434', 'JAKA0AlOOSA', '58978', 'Rubeena@ybl', 0),
(207, 'amairaamjid589@gmail.com', 'Rubeena Begum', 'Jammu and Kashmir bank', '1204041000001434', 'JAKA0ALOOSA', '58978', 'Rubeena@ybl', 0),
(208, 'Amairaamjid589@gmail.com', 'Rubeena begum', 'J&k bank aloosa', '1204041000001434', 'JAKA0ALOOSA', '58978', 'Rubeena@ybl', 0),
(209, 'amairaamjid589@gmail.com', 'Rubeena Begum', 'Jammu and Kashmir bank', '1204041000001434', 'JAKA0ALOOSA', '58978', 'Rubeena@ybl', 0),
(210, 'lonejunaid5452@gmail.com', 'Junaid ul Islam ', 'J&k Bank ', '0823041000000990', 'JAKA0SONIUM', '79034', '9797529541@ybl', 0),
(211, 'lonejunaid5452@gmail.com', 'Junaid ul Islam ', 'J&K Bank ', '0823041000000990', 'JAKA0SONIUM', '79034', '9797529541@ybl', 0),
(212, 'ubaidajaz2150@gmail.com', 'Ubaid Ajaz', 'JAMMU AND KASHMIR BANK LTD', '0594041000001001', 'JAKA0QLMCHK', '27545', 'ubaidajaz2150@okaxis', 0),
(213, 'shaikshabir153@gmail.com', 'Mohtishim shabir', 'Jammu and Kashmir bank', '0309042000000001', 'JAKA0HITECH', '58978', '9149815267@ybl', 0),
(214, 'shaikshabir153@gmail.com', 'Mohtishim shabir ', 'Jammu and kashmir bank ', '0309042000000001', 'JAKA0HITECH', '58978', '9149815267@ybl', 0),
(215, 'bushrashafi473@gmail.com', 'Bushra shafi', 'J&K', '0082040150003229', 'JAKA0LANGAT ', '3651', '7051801341', 0),
(216, 'bushrashafi473@gmail.com', 'Bushra shafi', 'J&K', '0082040150003229', 'JAKA0LANGAT ', '3651', '7051801341', 0),
(217, 'Innocentmajid343@gmail.com', 'Majid Hassan Khan', 'Jammu and Kashmir bank', '0665040150002233', 'JAKA0PAZAAL', '58978', 'Innocentmajid343@oki', 0),
(218, 'mahjoorbilal9@gmail.com', 'Bilal ahmad chopan', 'Jummu and Kashmir bank ', '0172021130000043', 'JAKA0AMPHLA', '39348', '9103512850@fam', 0),
(219, 'iqrasahil0919@gmail.com', 'Sahil wani', 'Yes Bank ', '060278100004747', 'YESB0000602', '2385', 'bhaisahil392@okicici', 0),
(220, 'iqrasahil0919@gmail.com', 'Sahil wani ', 'Yes Bank ', '060278100004747', 'YESB0000602', '2385', 'bhaisahil392@okicici', 0),
(221, 'seeratseru097@gmail.com', 'Seerat hamid parray', 'Agro Hi Tech', '0309041000000544', 'JAKA0HITECH', '51985', 'Seeratseru097@okhdfc', 0),
(222, 'safeernajar72@gmail.com', 'SAFEER AHMAD NAJAR', 'JAMMU AND KASHMIR', '0594041000004433', 'JAKA0QLMCHK', '90803', '8082744803', 0),
(223, 'safeernajar72@gmail.com', 'SAFEER AHMAD NAJAR', 'JAMMU AND KASHMIR', '0594041000004433', 'JAKA0QLMCHK', '90803', '8082744803', 0),
(224, 'safeernajar72@gmail.com', 'SAFEER AHMAD NAJAR', 'JAMMU AND KASHMIR', '0594041000004433', 'JAKA0QLMCHK', '90803', '8082744803', 0),
(225, 'safeernajar72@gmail.com', 'SAFEER AHMAD NAJAR', 'JAMMU AND KASHMIR', '0594041000004433', 'JAKA0QLMCHK', '90803', '8082744803', 0),
(226, 'safeernajar72@gmail.com', 'SAFEER AHMAD NAJAR', 'JAMMU AND KASHMIR', '0594041000004433', 'JAKA0QLMCHK', '90803', '8082744803', 0),
(227, 'aadillone2180@gmail.com', 'Adil Manzoor Lone', 'JAMMU AND KASHMIR BANK LTD', '0594041000001315', 'JAKA0QLMCHK', '44253', 'loneadil432@oksbi', 0),
(228, 'mahjoorbilal9@gmail.com', 'Bilal ahmad chopan', 'Jummu and Kashmir bank ', '0172021130000043', 'JAKA0AMPHLA', '39348', '9103512850@fam', 0),
(229, 'khanaijaz617919@gmail.com', 'Aijaz ayoob Khan ', 'Jammu and Kashmir Bank ', '0594041000004835', '0594041000004835', '2049', 'khanaijaz617919@okic', 0),
(230, 'priyaneema810@gmail.com', 'Yashasvi Neema ', 'Bank of Baroda ', '05030100026271', 'BARB0JHABUA ', '46688', '8959655645', 0),
(231, 'kh923471@gmail.com', 'Hafsa farida khan turk', 'Jammu and Kashmir bank', '0733041000004229', 'JAKA0BAGDAD', '74510', '9596296853@jkb', 0),
(232, 'kh923471@gmail.com', 'Hafsa farida khan turk', 'Jammu and Kashmir bank', '0733041000004229', 'JAKA0BAGDAD', '74510', '9596296853@jkb', 0),
(233, 'aadiaadi2355@gmail.com', 'UMER KHAYAM BHAT ', 'The Jammu and Kashmir Bank ', '0594041000004014', 'JAKA0QLMCHK', '46146', '9541591462', 0),
(234, 'adiiadil2150@gmail.com', 'ADIL HASSAN SHIEKH ', 'Jammu and kashmir bank LTD ', '0594040100003921', 'JAKA0QLMCHK ', '55266', '6005267607@ybl', 0),
(235, 'adiiadil2150@gmail.com', 'ADIL HASSAN SHIEKH ', 'Jammu and kashmir bank LTD ', '0594040100003921', 'JAKA0QLMCHK ', '55266', '6005267607@ybl', 0),
(236, 'adiiadil2150@gmail.com', 'ADIL HASSAN SHIEKH ', 'Jammu and kashmir bank LTD ', '0594040100003921', 'JAKA0QLMCHK ', '55266', '6005267607@ybl', 0),
(237, 'adiiadil2150@gmail.com', 'ADIL HASSAN SHIEKH ', 'Jammu and kashmir bank LTD ', '0594040100003921', 'JAKA0QLMCHK ', '55266', '6005267607@ybl', 0),
(238, 'kh923471@gmail.com', 'Hafsa farida khan turk', 'Jammu and Kashmir bank', '0733041000004229', 'JAKA0BAGDAD', '74510', '9596296853@jkb', 0),
(239, 'ubaidah724@gmail.com', 'UBAID AHMAD ALLAIE', 'Jammu and Kashmir', '0550041000003913', 'JAKA0HNDWAR', '5262', '7006850086@naviaxis', 0),
(240, 'theshoaib019@gmail.com', 'Bilal bhat', 'Jammu and Kashmir bank', '0566040150001942', 'JAKA0ECSOPR', '70446', '6005538106@ibl', 0),
(241, 'aabidalone786@gmail.com', 'Imtiyaz Ahmad Sheikh ', 'Jammu and Kashmir bank', '0061040100018162', 'JAKA0WULLAR ', '58978', '8082880967-2@axl', 0),
(242, 'aabidalone786@gmail.com', 'Imtiyaz Ahmad Sheikh ', 'Jammu and Kashmir bank', '0061040100018162', 'JAKA0WULLAR ', '58978', '8082880967-2@axl', 0),
(243, 'junaidjunaid@gmail.com', 'Junaid ul islam', 'Fruit Mandi bank ', '0448041000000040', 'Jaka0APPLET', '5677', 'Junaid', 0),
(244, 'srinag774624@gmail.com', 'Kota nagababu', 'India post', '001410227490', 'IPOS0000001', '48222', '774624@ybl', 0),
(245, 'srinag774624@gmail.com', 'Kota nagababu', 'India post', '001410227490', 'IPOS0000001', '48222', '774624@ybl', 0),
(246, 'theshoaib019@gmail.com', 'Bilal bhat', 'Jammu and Kashmir bank', '0566040150001942', 'JAKA0ECSOPR', '70446', '6005538106@ibl', 0),
(247, 'wanisameer296@gmail.com', 'Sameer Ahmad wani ', 'Jammu and Kashmir bank', '0807040150001067', 'JAKA0SILIGM', '4190', 'wanisameer296@okaxis', 0),
(248, 'ubaidajaz029@gmail.com', 'Ubaid Ajaz', 'JAMMU AND KASHMIR BANK LTD', '0594041000001001', 'JAKA0QLMCHK', '27545', 'ubaidajaz2150@okaxis', 0),
(249, 'mahjoorbilal9@gmail.com', 'Bilal ahmad chopan', 'Jummu and Kashmir bank ', '0172021130000043', 'JAKA0AMPHLA', '39348', '9103512850@fam', 0),
(250, 'ubaidajaz2150@gmail.com', 'Ubaid Ajaz', 'JAMMU AND KASHMIR BANK LTD', '0594041000001001', 'JAKA0QLMCHK', '27545', 'ubaidajaz2150@okaxis', 0),
(251, 'Pmate4777@gmail.com', 'Swarankit hiralal mendhe', 'Uco bank', '19320110105757', 'UCBA0001932', '13841', '7420824110@ybl', 0),
(252, 'mirrashid226@gmail.com', 'ZOUTONA BANO ', 'Airtel payment Bank ', '9797858285', 'AIRP0000001', '7926', '9797858285-2@airtel', 0),
(253, 'bhatbilal6754@gmail.com', 'Bilal Ahmad Bhat ', 'Jammu and Kashmir Bank ', '0601040100001256', 'JAKA0NAGGAM', '19540', '007065784', 0),
(254, 'mirrashid226@gmail.com', 'ZOUTONA BANO ', 'Airtel payment Bank ', '9797858285', 'AIRP0000001', '7926', '9797858285-2@airtel', 0),
(255, 'mirrashid226@gmail.com', 'ZOUTONA BANO ', 'Airtel payment Bank ', '9797858285', 'AIRP0000001', '7926', '9797858285-2@airtel', 0),
(256, 'sonalkumarheroaz@gmail.com', 'Sonal kumar', 'Test bank', '326523652', '54245', '3886', '5756645@upi', 0),
(257, 'aryanjaiswal@gmail.com', 'aryan jaiswal', 'Test bank', '93285865', '4458463', '3886', '9310431816@upi', 0),
(258, 'aryanjaiswal@gmail.com', 'aryan jaiswal', 'Test bank', '5338686', '4458463', '3886', '9310431816@upi', 0),
(259, 'ganesh@gmail.com', 'Ganesh ji', 'Test bank', '9310431816', '44584636865', '3886', '9310431816@upi', 0),
(260, 'businessaryan77@gmail.com', 'Sonal kumar', 'union bank of india', '9310431816', '99999', '3886', '9310431816@upi', 0),
(261, 'bhatfaru62591@gmail.com', 'Farhan', 'Jammu and Kashmir', '0072041000000293', 'JAKA0SACRED', '48048', '7006214914@jkb', 0),
(262, 'Gsuheel9006@gmail.com', 'Suheel Ahmad Ganie', 'Jammu and Kashmir', '0403040100012390', 'JAKA0SAKHIE', '4190', '7006494178@ybl', 0),
(263, 'qadeer21789@gmail.com', 'Hafsa faridiya khan ', 'J&k bank ', '0733041000004229', 'JAKA0BAGDAD', '89542', '9596296853@jkb', 0),
(264, 'wanisameer296@gmail.com', 'Sameer Ahmad wani ', 'Jammu and Kashmir bank ', '0807040150001067', 'JAKA0SILIGM ', '4190', 'wanisameer296@okaxis', 0),
(265, 'aumairkoka42@gmail.com', 'Aumair ul islam', 'Jammu and Kashmir bank', '0455040150002213', 'JAKA0EMUNDA', '33949', 'kokaaumair5@okaxis', 0),
(266, 'aumairkoka42@gmail.com', 'Aumair ul islam', 'Jammu and Kashmir bank', '0455040150002213', 'JAKA0EMUNDA', '33949', 'kokaaumair5@okaxis', 0),
(267, '6006288198ubi@gmail.com', 'Ubaid Ahmed Khan', 'Jammu and Kashmir Bank', '0127041000003252', 'JAKA0ALOOSA', '193502', '6006288198@ptyes', 0),
(268, 'muzamilahzai@gmail.com', 'MUZAMIL AHMAD ZAI', 'Jammu and Kashmir bank', '0645040150003927', 'JAKA0TAHAAB', '3296', '7780988516@paytm', 0),
(269, 'sahilwani472@gmail.com', 'Sahil wani', 'Jammu and kashmir bank ', '0173041300000004', 'JAKA0ANCHAR', '2385', '6006856194@jkb', 0),
(270, 'Mehnazmushtaq71@gmail.com', 'Mehnaza mushtaq ', 'Jammu and kashmir ', '0068040100012497', 'JAKA0MARKET', '2064', '8899553873@ybl', 0),
(271, 'Mehnazmushtaq71@gmail.com', 'Mehnaza mushtaq ', 'Jammu and kashmir ', '0068040100012497', 'JAKA0MARKET', '2064', '8899553873@ybl', 0),
(272, 'qazid1279@gmail.com', 'Mohd Danish Qazi', 'Jammu and Kashmir', '0007040100050883', 'JAKA0NASEEM', '2413', '7889932474@fam', 0),
(273, 'mominkhan10258@gmail.com', 'Momin mushtaq ', 'Jammu and Kashmir ', '0397040100007057', 'JAKA0AZGUNJ', '4425', '6005577378@ibl', 0),
(274, 'hazimahmading@gmail.com', 'Momin mushtaq ', 'Jammu and Kashmir ', '0397040100007057', 'JAKA0AZGUNJ', '4425', '6005577378@ibl', 0),
(275, 'hjan3819@gmail.com', 'Masooda', 'Jammu and Kashmir bank', '0061040100037705', 'JAKA0WULLAR ', '58978', 'Masooda@icici', 0),
(276, 'shakirhura17@gmail.com', 'Shakir', 'Jandkbank dalina', '0140041000000441', 'JakaOdalina', '6659', '7889308007@ptyes', 0),
(277, 'ishuishfaq776@gmail.com', 'Ishfaq ah shiekh ', 'Jammu and Kashmir ', '0565040100003852', 'JAKA0ROHMOO ', '51742', 'ishuishfaq776@oksbi', 0),
(278, 'ishuishfaq776@gmail.com', 'Ishfaq ah shiekh ', 'Jammu and Kashmir ', '0565040100003852', 'JAKA0ROHMOO ', '51742', 'ishuishfaq776@oksbi', 0),
(279, 'ishuishfaq776@gmail.com', 'Ishfaq ah ', 'Jammu and Kashmir ', '0565040100003852', 'JAKA0ROHMOO ', '51742', 'ishuishfaq776@oksbi', 0),
(280, 'innocentmajid343@gmail.com', 'Majid hassan khan', 'Jammu and Kashmir', '0665040150002233', 'JAKA0PAZAAL', '58978', '6006056407@ybl', 0),
(281, 'bhatshahidshahidbhat90@gmail.com', 'shahid ul islam', 'J&K BANK ', '0347042000000116', 'JAKA0TRUSTE', '72274', '6005108035', 0),
(282, 'kokabilal711@gmail.com', 'Bilal Ahmad Koka ', 'Jammu and Kashmir Bank', '0455040800004188', 'JAKA0EMUNDA', '46451', 'kokabilal477@okicici', 0),
(283, 'suraj414263@gamail.com', 'Rohaan javaid', 'Jammu and Kashmir', '0733041000000667', 'JAKA0BAGDAD', '5386', '6006457198@ibl', 0),
(284, 'kokabilal711@gmail.com', 'Bilal Ahmad Koka ', 'Jammu and Kashmir Bank', '0455040800004188', 'JAKA0EMUNDA', '46451', 'kokabilal477@okicici', 0),
(285, 'kokabilal711@gmail.com', 'Bilal Ahmad Koka ', 'Jammu and Kashmir Bank', '0455040800004188', 'JAKA0EMUNDA', '46451', 'kokabilal477@okicici', 0),
(286, 'afshanahassan019@gmail.com', 'Afsahan hassan', 'Jammu and kashmir ', '1204041000001329', 'JAKA0TPBAND ', '58978', '6005888051@axl', 0),
(287, 'Danishwani623@gmail.com', 'POSHA BEGUM WO GULZAR AHMAD W', 'Jammu and kashmir ', '0175040800012207', 'JAKA0AWOORA', '3844', '9103924146@ibl', 0),
(288, 'talibkhankhan718@gmail.com', 'TALIB AHMAD KHAN', 'Jammu and Kashmir bank', '017504200000035', 'JAKA0AWOORA ', '5609', '9103959983@ybl', 0),
(289, 'farhangulzarnajar150@gmail.com', 'FARHAN GULZAR NAJAR', 'JAMMU AND KASHMIR BANK', '0136042000000069', 'JAKA0BLOOMY', '9168', 'farhangulzar01@ibl', 0),
(290, 'farhangulzarnajar150@gmail.com', 'FARHAN GULZAR NAJAR', 'JAMMU AND KASHMIR BANK', '0136042000000069', 'JAKA0BLOOMY', '9168', 'farhangulzar01@ibl', 0),
(291, 'dbasit920@gmail.com', 'AADIL BASHIR ', 'JAMMU AND KASHMIR ', '0175040800012461', 'JAKA0AWOORA', '8498', '6006101753@PYTES', 0),
(292, 'rahilff366@gmail.com', 'Rayaz Ahmad payer', 'Jammu and kashmir ', '0175040100009711', 'JAKA0AWOORA ', '569156', '7006315004@ybl', 0),
(293, 'rahilff366@gmail.com', 'Rayaz Ahmad payer', 'Jammu and kashmir ', '0175040100009711', 'JAKA0AWOORA ', '569156', '7006315004@ybl', 0),
(294, 'rahilff366@gmail.com', 'Rayaz Ahmad payer', 'Jammu and kashmir ', '0175040100009711', 'JAKA0AWOORA ', '569156', '7006315004@ybl', 0),
(295, 'rahilff366@gmail.com', 'Rayaz Ahmad payer', 'Jammu and kashmir ', '0175040100009711', 'JAKA0AWOORA ', '569156', '7006315004@ybl', 0),
(296, 'rahilff366@gmail.com', 'Rayaz Ahmad payer', 'Jammu and kashmir ', '0175040100009711', 'JAKA0AWOORA ', '569156', '7006315004@ybl', 0),
(297, 'rahilff366@gmail.com', 'Rayaz Ahmad payer', 'Jammu and kashmir ', '0175040100009711', 'JAKA0AWOORA ', '569156', '7006315004@ybl', 0),
(298, 'farhangulzarnajar150@gmail.com', 'FARHAN GULZAR NAJAR', 'JAMMU AND KASHMIR BANK', '0136042000000069', 'JAKA0BLOOMY', '94668', 'farhangulzar01@ibl', 0),
(299, 'fza7889@gmail.com', 'Farzaan tariq', 'Hdfc', '50100619184336', 'HDFC0003854', '5455', 'fza7889-1@okhdfcbank', 0),
(300, 'fza7889@gmail.com', 'Farzaan tariq', 'Hdfc', '50100619184336', 'HDFC0003854', '5455', 'fza7889-1@okhdfcbank', 0),
(301, 'Junaidshabir837@gmail.com', 'MEHNAN KHURSHEED', 'Achenn', '0847041000000276', 'JAKA0ACHENN', '3640', '9541027428@axl', 0),
(302, 'mirjameel1192@gmail.com', 'Mir jameel ', 'J&k bank', '071704100000842', 'JAKA0PANZAT', '7240', 'mirjameel1192@okhdfc', 0),
(303, 'shahidibrahim0786@gmail.com', 'Shahid Ibrahim Bhat ', 'Jummu And Kashmir Bank ', '0172040800005456', 'JAKA0SRUIGUP ', '48597', '7780999489@ptyes', 0),
(304, 'mirjameel1192@gmail.com', 'Mirjameel', 'J&k', '0717041000000842', 'JAKA0PANZAT', '7240', 'Mirjameel1192@okhdfc', 0),
(305, 'mirjameel1192@gmail.com', 'Mirjameel', 'J&k', '0717041000000842', 'JAKA0PANZAT', '7240', 'Mirjameel1192@okhdfc', 0),
(306, 'ovaistak92@gmail.com', 'Ovais tak', 'Jammu and kashmir bank', '0128040150600002', 'JAKA0DAMHAL', '9977', '7006819250@ptsbi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `package_code`
--

CREATE TABLE `package_code` (
  `id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `elite` int NOT NULL,
  `silver` int NOT NULL,
  `gold` int NOT NULL,
  `diamond` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `package_code`
--

INSERT INTO `package_code` (`id`, `email`, `elite`, `silver`, `gold`, `diamond`) VALUES
(969, 'sonalkumarheroaz@gmail.com', 2029, 5182, 44561, 59822),
(970, 'aryankumar55n@gmail.com', 8420, 3111, 86701, 10347),
(971, 'meerishfaq472@gmail.com', 9195, 5501, 93334, 65088),
(973, 'mehakbinterasheed@gmail.com', 7812, 8599, 43427, 14374),
(974, 'jigrnelu@gmail.com', 6941, 1151, 16353, 51985),
(975, 'aasifahmad714@gmail.com', 6688, 4394, 42853, 91530),
(976, 'mmehzu5@gmail.com', 1660, 5771, 12117, 61666),
(977, 'pink12@slclogin.com', 8595, 1168, 85558, 43913),
(978, 'julina.schwerdtner13@slclogin.com', 2819, 9372, 83231, 64746),
(979, 'shahidpeer494@gmail.com', 5531, 2095, 96820, 92634),
(980, 'fk4570200@gmail.com', 8973, 2621, 48689, 19279),
(982, 'jasayianissar07@gmail.com', 1238, 9529, 22132, 11426),
(984, 'Pmate4777@gmail.com', 6354, 6893, 82772, 13841),
(985, 'aamirnabi711@gmail.com', 1847, 2414, 15601, 59017),
(987, 'danishahmad68983@gmail.com', 4719, 6574, 21734, 49978),
(988, 'meertassaduq4@gmail.com', 7995, 4367, 91679, 78790),
(989, 'aanj68193@gmail.com', 3646, 7345, 29644, 83581),
(990, 'suhailali7889@gmail.com', 7859, 8063, 58477, 17639),
(991, 'aabidpeer123@gmail.com', 7725, 8036, 14514, 47654),
(993, 'drmaliha578@gmail.com', 3299, 2064, 53369, 35655),
(994, 'nazirbhat370@gmail.com', 9009, 4621, 94901, 19614),
(998, 'faisaliqbal92414@gmail.com', 3815, 1064, 91322, 39950),
(999, 'muneebbhat9273@gmail.com', 4974, 8527, 43912, 78026),
(1000, 'reshioumieas020@gmail.com', 3773, 7057, 45886, 56091),
(1001, 'aakashdar339@gmail.com', 6367, 9645, 10207, 98024),
(1002, 'hayadidad@gmail.com', 8742, 1984, 49914, 39095),
(1003, 'khanirfanirfankhan28@gmail.com', 4586, 3984, 94866, 61694),
(1004, 'Seemujaan29@gamil.com', 7620, 6602, 42646, 47680),
(1006, 'manimlone@gmail.com', 6877, 3088, 80236, 12401),
(1007, 'malikshinu111@gmail.com', 5444, 8119, 89691, 20144),
(1010, 'ehmadjavaid27@gmail.com', 8620, 6032, 80811, 74299),
(1011, 'Basitrather0537@gmail.com', 7624, 1422, 93264, 64095),
(1012, 'rajshreesahare5@gmail.com', 9842, 7486, 69738, 63402),
(1013, 'mjamaal547@gmail.com', 5852, 9045, 72520, 71042),
(1014, 'sahilqadirbhat@gmail.com', 1068, 1190, 90387, 34672),
(1015, 'shahalka936@gmail.com', 6271, 3366, 67649, 60933),
(1017, 'sheikhtawseef998462@gmail.com', 7489, 2269, 54414, 77233),
(1018, 'nasuhaanjum87@gmail.com', 6740, 1175, 18226, 66446),
(1019, 'hayaansheikh786@gmail.com', 4294, 3523, 90541, 15622),
(1020, 'zairahherbals786@gmail.com', 5254, 9869, 62386, 79923),
(1021, 'peerdanish75@gmail.com', 7508, 5869, 17557, 69811),
(1022, 'firdousbashir192@gmail.com', 7989, 9625, 40907, 78577),
(1024, 'naveedlone89@gmail.com', 5055, 4949, 72192, 56777),
(1025, 'umarwiit@gmail.com', 8212, 3912, 19832, 26723),
(1026, 'shafqatmajid94@gmail.com', 1278, 2845, 27076, 83071),
(1027, 'rjsuhaib143@gmail.com', 4437, 4947, 20741, 32938),
(1029, 'www.mrzainab@mail.com', 5369, 7403, 42904, 60010),
(1030, 'lokeshbire425@gmail.com', 7228, 6121, 76011, 85304),
(1032, 'mirirfan0002@gmail.com', 6668, 2385, 45007, 62263),
(1033, 'Shafqatmajid94@gmail', 3550, 8285, 52500, 69293),
(1034, 'soumyaxwasnik@gmail.com', 3274, 8626, 48907, 70834),
(1039, 'bhatshafat83@gmail.com', 5204, 3504, 66921, 17865),
(1040, 'hemusyed9@gmail.com', 2774, 7661, 69367, 27185),
(1041, 'irfanmir5827@gmail.com', 8994, 9115, 51572, 85187),
(1042, 'kartiksonwane507@gmail.com', 5273, 8969, 42365, 57031),
(1043, 'ubairlone999@gmail.com', 2005, 1491, 12566, 28260),
(1044, 'OWAISMAQBOOL64@GMAIL.COM', 1416, 6543, 28915, 94072),
(1045, 'amitarya1414@gmail.com', 9307, 1171, 67215, 79026),
(1046, 'shaevilop@gmail.com', 7460, 6578, 43901, 40605),
(1047, 'muzafarwani0000@gmail.com', 3216, 1808, 90311, 29483),
(1048, 'meerseerat084@gmail.com.in', 3861, 9427, 73981, 65415),
(1049, 'Zzakirvlogs6@gmail.com', 9917, 8571, 70040, 29678),
(1051, 'yasirhafeez180@gmail.com', 8661, 8653, 57293, 81667),
(1052, 'ubaidajaz1234@gmail.com', 7647, 3622, 47062, 81270),
(1053, 'magrayjunaid4@gmail.com', 2487, 9362, 89402, 80030),
(1056, 'wrajabhat@gmail.com', 5150, 1499, 57896, 98594),
(1057, 'Orhan125@gmail.com', 9842, 6434, 64331, 83483),
(1058, 'lonesameer2011@gmail.com', 4439, 7976, 21083, 73022),
(1059, 'mehrajmursal158@gmail.com', 2223, 4932, 39527, 31633),
(1060, 'khantariqkhantariq26@gmail.com', 5457, 5933, 68388, 18096),
(1061, 'rajesh197634@yahoo.com', 9252, 2003, 61104, 83621),
(1062, 'danishbashir612@gmail.com', 3453, 6801, 90712, 91046),
(1064, 'aabidalone786@gmail.com', 8802, 7196, 85888, 77571),
(1065, 'www.ashiq@gmail.com', 4599, 2301, 43831, 28186),
(1066, 'saki25101@gmail.com', 5019, 7289, 89726, 62988),
(1067, 'gulkaakh11@gmail.com', 3404, 2311, 35032, 48311),
(1068, 'bablujan74@gmail.com', 4607, 8551, 49143, 13164),
(1069, 'wanizakir215@gmail.com', 7331, 9551, 49118, 77383),
(1070, 'sheikhmansoor660@gmail.com', 1275, 1415, 34965, 98599),
(1071, 'shiekhadil9090@gmail.com', 2118, 2223, 46476, 73885),
(1072, 'aaminaqkiaer94@gmail.com', 4617, 6080, 23747, 69153),
(1073, 'biljaan59@gmail.com', 3752, 3848, 10797, 30244),
(1074, 'majidazizbhat@gmail.com', 3246, 3969, 83016, 11671),
(1075, 'www.mageryimran2701@gmail.com', 3220, 2641, 17489, 95586),
(1076, 'mageryimran36@gmail.com', 1344, 3169, 44607, 89594),
(1077, 'aleenafirdous56@email.com', 1275, 8493, 73452, 68163),
(1078, 'Aleenafirdous56@gmail.com', 5744, 4680, 62711, 97916),
(1079, 'lubnarasheed990@gmail.com', 8705, 7164, 77189, 78953),
(1080, 'tantrayj489@gmail.com', 1620, 2916, 96623, 62976),
(1081, 'sabatunnisa11@gmail.com', 8420, 2912, 78455, 65550),
(1082, 'tantraydanish05@gmail.com', 5982, 8613, 64388, 45612),
(1083, 'rahiyanazeer453@gmail.com', 2295, 2760, 84629, 59817),
(1084, 'javidqureshi180@gmail.com', 9614, 1901, 75212, 16872),
(1085, 'riyaan786@gmail.com', 3693, 6632, 97370, 62494),
(1086, 'sahilnajarr@gmail.com', 2117, 3670, 93488, 13407),
(1087, 'bhatzahoor786@gmail.com', 5524, 8197, 98828, 57667),
(1088, 'irfankhan01501@gmail.com', 5637, 4609, 59962, 74904),
(1089, 'snobershaban@gmail.com', 7659, 1426, 25521, 68341),
(1090, 'wani38330@gmail.com', 4222, 8072, 80863, 38114),
(1091, 'mehakmehak6385@gmail.com', 4466, 9267, 84399, 71045),
(1092, 'sadeeqalam060@gmail.com', 9026, 9634, 48086, 79366),
(1093, 'shabirahmad0408@gmail.com', 1169, 9569, 95970, 95337),
(1094, 'iqlasrasool9103@gmail.com', 2201, 7968, 67060, 30013),
(1095, 'wanisajad126@gmail.com', 6739, 7146, 26265, 97503),
(1096, 'sanayou836@gmail.com', 8466, 7334, 43052, 42241),
(1097, 'burhanwani910@gmail.com', 1823, 1740, 89325, 49443),
(1098, 'zakirpeer624@gmail.com', 3772, 6007, 90633, 97317),
(1100, 'iqranikhat45@gmail.com', 1258, 4160, 52393, 15712),
(1102, 'Muzamilbashir1912@gmail.com', 1016, 7842, 30588, 62672),
(1103, 'waniirfan002@gmail.com', 8975, 3086, 46852, 85415),
(1104, 'waniirfan01@gmail.com', 3087, 5502, 18193, 42963),
(1105, 'kumarnasir998@gmail.com', 6061, 1265, 11636, 99674),
(1106, 'khannairah2233@gmail.com', 2709, 7098, 70943, 86344),
(1107, 'bhatfurqan775@gmail.com', 4648, 1036, 87660, 23901),
(1108, 'iramahmadlone@gmail.com', 9656, 6431, 64079, 29386),
(1109, 'aleeshawani222@gmail.com', 6240, 3310, 14112, 76291),
(1110, 'basitkhan20121@gmail.com', 1733, 2460, 50769, 57742),
(1111, 'ubaidajaz2150@gmail.com', 6603, 4949, 73442, 27545),
(1112, 'yk7524550@gmail.com', 9695, 1278, 86861, 52222),
(1113, 'Sheikhnajamul147@gmail.com', 7118, 4495, 77096, 22210),
(1114, 'nadeemjatt32110@gmail.com', 6107, 6811, 53637, 26446),
(1115, 'iqranikath61@gmail.com', 8547, 4932, 25415, 66243),
(1116, 'isyed2728@gmail.com', 2606, 7119, 74747, 53689),
(1117, 'irruirfan426@gmail.com', 6597, 8600, 32839, 56093),
(1118, 'darnadeem029@gmail.com', 4335, 9179, 76182, 25806),
(1119, 'sayimanabi5@gmail.com', 1811, 9215, 48805, 62239),
(1120, 'khanaijaz617919@gmail.com', 1172, 2049, 94268, 76708),
(1121, 'hafsafayaz56@gmail.com', 5293, 7962, 41399, 72313),
(1122, 'safeernajar60@gmil.com', 8033, 5412, 27438, 47895),
(1123, 'bhatshahidshahidbhat90@gmail', 5606, 5992, 14518, 48222),
(1124, 'syedayan2821@gmail.com', 2502, 7549, 56410, 11262),
(1125, 'awckib9@gmail.com', 6434, 2090, 83093, 38322),
(1126, 'ratherishaq98@gmail.com', 3633, 7099, 38684, 55286),
(1127, 'shiekhheeba@gmail.com', 8369, 7681, 15393, 97945),
(1128, 'shahidabashir97@gmail.com', 9582, 5478, 76830, 54702),
(1129, 'aabida786@gmail.com', 4231, 8259, 42812, 17062),
(1130, 'arhanbabu1801@gmail.com', 1741, 5888, 67877, 84511),
(1131, 'arahaan786@gmail.com', 1646, 2362, 22406, 25060),
(1132, 'waraasif10@gmail.com', 8575, 8974, 29269, 68537),
(1133, 'mustafahajimusta@gmail.com', 8544, 8471, 53244, 86435),
(1134, 'sheikhraju365@gmail.com', 1818, 6049, 85343, 94544),
(1135, 'lonebilal581278@gmail.com', 1952, 3781, 31342, 20413),
(1136, 'rarhertomato705@gmail.com', 9343, 6215, 31002, 91463),
(1137, 'najarakhter06@gmakl.com', 6365, 6001, 64139, 39935),
(1138, 'emmuwani11@gmail.com', 1003, 8295, 46063, 77661),
(1139, 'msuhailnajar786@gmail.com', 3708, 1415, 83648, 75054),
(1140, 'lonetawfeeq413@gmail.com', 4592, 4547, 78282, 53376),
(1141, 'mutahir5889@gmail.com', 9461, 6343, 73742, 28633),
(1142, 'alishafatima76@gmail.com', 4229, 9101, 45612, 28747),
(1143, 'alishakhanam@xn--gmailcom-rr3d', 8981, 1508, 62039, 34241),
(1144, 'parulverma1994@gmail.com', 6011, 5619, 22838, 13437),
(1145, 'catc18100@gmail.com', 7533, 3603, 73116, 89967),
(1146, 'bhttajmul196@gmail.com', 3997, 9944, 22663, 73102),
(1147, 'jozyashraf1982@gmail.com', 8003, 2456, 90348, 90379),
(1148, 'bb4031960@gmail.com', 4891, 7085, 67339, 88416),
(1149, 'sahilpeer997@gmail.com', 8727, 5495, 17534, 22938),
(1150, 'Sheikhlateef246@gmail.com', 8372, 7114, 62022, 54735),
(1151, 'tanishnazir407@gmail.com', 2403, 6884, 27273, 69249),
(1152, 'bhatamir3050@gmail.com', 3702, 7377, 53151, 89335),
(1153, 'musratchooty4@gmail.com', 6760, 5217, 41735, 69735),
(1154, 'malikadnanfayaz02@gmail.com', 1076, 9225, 41502, 30933),
(1155, 'sunneysingh192@gmail.com', 9071, 9513, 76783, 23234),
(1156, 'syedmaifuz600@gmail.com', 7600, 7887, 38775, 53544),
(1157, 'Khaninayat5390@gmail.com', 2476, 5863, 61469, 71368),
(1158, 'khanjunaid60058854@gamil.com', 5385, 8384, 25392, 54250),
(1159, 'mudasirparvaiz7@gmail.com', 3334, 7535, 17469, 50862),
(1160, 'bhataady67@gmail.com', 4515, 9192, 71860, 71072),
(1161, 'buttaaqib80@gmail.com', 1751, 8387, 30477, 24632),
(1162, 'nadeembilal4817@gmail.com', 9295, 5206, 19371, 25308),
(1163, 'eraqib1995@gmail.con', 6419, 1350, 98039, 26783),
(1164, 'eraqib1995@gmail.com', 8882, 4648, 54181, 10568),
(1165, 'waseemraja868@gmail.com', 3001, 5222, 96393, 28463),
(1166, 'wtawseef508@gmail.com', 2086, 4534, 55870, 43638),
(1167, 'jaffarjnj@gmail.com', 5398, 5887, 38297, 97956),
(1168, 'wabid294@gmail.com', 9409, 6816, 67510, 99747),
(1169, 'maenterprisesbandipora@gmail.com', 7103, 9207, 22502, 78196),
(1170, 'loneadil432@gmail.com', 8859, 9846, 50859, 11566),
(1171, 'ratheruzma93@gmail.com', 1022, 2089, 67810, 81123),
(1172, 'hasibpdhar889@gmail.com', 9591, 5094, 74194, 29332),
(1173, 'wanim7740@gmail.com', 7768, 2631, 84536, 29427),
(1174, 'syedanasali2607@gmail.com', 3227, 1792, 16005, 86244),
(1175, 'powais93@gmail.com', 5421, 6186, 86169, 21009),
(1176, 'khanenterprises443@gmail.com', 3450, 5616, 67187, 41814),
(1178, 'bazilapeer64@gmail.com', 8762, 8482, 65585, 49107),
(1179, 'myselfzaheer457@gmail.com', 9496, 6757, 27189, 90378),
(1180, 'ds7230546@gmail.com', 6383, 5802, 59005, 94794),
(1181, 'mudasirhussain3009@gmail.com', 6951, 5141, 66191, 61906),
(1182, 'mudasirhussain99777@gmail.com', 7864, 6365, 26681, 55472),
(1183, 'uk76238@gmail.com', 6052, 5884, 39574, 30738),
(1184, 'sheikhaaqib255@gmail.com', 3664, 7434, 69592, 20871),
(1185, 'ramprakash.koppera@gmail.com', 4536, 1338, 94380, 92589),
(1186, 'peers5326@gmail.com', 7418, 1684, 22565, 61281),
(1187, 'Parrayalixa@gmail.com', 6234, 9866, 93364, 29540),
(1188, 'mirmubashir822@gmail.com', 1937, 7046, 66369, 38506),
(1189, 'kishtiyaq707@gmail.com', 8871, 8007, 55126, 81496),
(1190, 'hidayathadi127@gmail.com', 2553, 7902, 92066, 14636),
(1191, 'mahjabeena30@gmail.com', 2869, 1698, 62831, 22699),
(1192, 'azamhamza895@gmail.com', 6510, 9045, 94111, 13718),
(1193, 'surajv3215@gmail.com', 8833, 8214, 35901, 69100),
(1194, 'mt292792@gmail.com', 6462, 5495, 14141, 65354),
(1195, 'loverdeath927@gmail.com', 3766, 6333, 57776, 80797),
(1196, 'parraynazu143@gmail.com', 4416, 6603, 76437, 21490),
(1197, 'danishkhuroo53@gmail.com', 1493, 2782, 31127, 56430),
(1198, 'Ssafeenakhazir@gmail.com', 7194, 7370, 30648, 51938),
(1199, 'masoodab250@gmail.com', 9283, 1555, 29436, 34595),
(1200, 'Mahirajaan583@gmail.com', 7739, 1420, 80097, 53067),
(1201, 'Peerhaya@gmail.com', 9445, 4012, 33421, 29803),
(1202, 'wagayanayat030@gmail.com', 8523, 8673, 16864, 25824),
(1203, 'seemujaanseemu@gmail.com', 5252, 4968, 20126, 51107),
(1204, 'Loneaadil432@gmail.com', 8234, 8718, 83817, 35219),
(1205, 'sahilshafi502@gmail.com', 7803, 4727, 39697, 42819),
(1206, 'Innocentmajid343@gmail.com', 3372, 3958, 26044, 76747),
(1207, 'sm.preneur28@gmail.com', 9981, 6298, 57270, 93448),
(1208, 'mirimtiyaz528@gmail.com', 7465, 4000, 95463, 98631),
(1209, 'tusharrawat7560@gmail.com', 5334, 3618, 95573, 53724),
(1210, 'cbsbhagat@gmail.com', 6351, 3957, 67402, 65591),
(1211, 'rupeshsoni8874@gmail.com', 4777, 9193, 96398, 21673),
(1212, 'umarramzan12@gmail.com', 3402, 5984, 74856, 70404),
(1213, 'waniumer2545@gmail.com', 7011, 7262, 35371, 46943),
(1214, 's@gmail.com', 3906, 6996, 47380, 41640),
(1215, 'rupamotdhare@gmail.com', 8522, 7481, 15872, 65211),
(1216, 'sheikhtariq001@gmail.com', 5819, 1597, 18271, 80164),
(1217, 'duanaaz129@gmail.com', 5272, 8556, 81635, 42330),
(1219, 'bhat4984@gmail.com', 2999, 8106, 86057, 85903),
(1220, 'demoaccount@gmail.com', 4168, 3859, 65774, 60808),
(1221, 'hmdogra@gmail.com', 4754, 2388, 95219, 79333),
(1222, 'nadeemmir957@gmail.com', 9060, 7241, 82016, 79912),
(1223, 'mrityunjay.748081@gmail.com', 6838, 9053, 84551, 16247),
(1224, 'zafrullah044@gmail.com', 2638, 9982, 12298, 23213),
(1225, 'muntazirnissar7@gmail.com', 2034, 7484, 86729, 16812),
(1226, 'arsalanmushtaq181@gmail.com', 7285, 6315, 20764, 65882),
(1227, 'salifsammir@gmail.com', 2738, 4808, 71522, 13603),
(1228, 'maqboolubaid061@gmail.com', 1259, 1003, 44771, 75228),
(1229, 'wanishazu53617@gmail.com', 1404, 5148, 95794, 52819),
(1230, 'khursheedhaji55@gmail.com', 3467, 5298, 37625, 47598),
(1231, 'khursheedhaji@gmail.com', 6612, 3728, 33782, 38008),
(1232, 'wanihafeez99@gmail.com', 8701, 4991, 33639, 80325),
(1233, 'loneb3508@gmail.com', 9561, 9765, 93149, 19273),
(1234, 'umerkhayam2005@gmail.com', 6232, 6709, 96023, 35230),
(1235, 'mushtaqahmadk222@gmail.com', 6802, 5875, 17398, 67576),
(1236, 'wanihafizullah89@rediffmail.com', 5849, 2014, 43607, 26030),
(1237, 'murtazaamushtaq8709@gmail.com', 1916, 8279, 11433, 84949),
(1238, 'iphonerealmeoppo@gmail.com', 5067, 3541, 66253, 77552),
(1239, 'faesaliqbal67@gmail.com', 1779, 1132, 67381, 27478),
(1240, 'wajidaashraf2023@gmail.com', 4598, 1405, 37675, 25452),
(1241, 'saleemnajar1505@gmail.com', 2886, 8973, 56919, 84082),
(1242, 'demo9999@gmail.com', 2803, 9580, 56589, 70576),
(1243, 'demo66@gmail.com', 3157, 2293, 45461, 75962),
(1244, 'imir4543@gmail.com', 3756, 3225, 60076, 76136),
(1245, 'priyaneema810@gmail.com', 7857, 4703, 40718, 46688),
(1246, 'musamirallie0789@gmail.com', 7350, 8469, 82397, 85301),
(1247, 'faisalyt88@gmail.com', 7706, 6116, 22307, 11077),
(1248, 'bhatkhalid953@gmail.com', 8880, 5211, 70733, 88821),
(1249, 'qais26785@gmail.com', 2604, 1126, 24816, 32293),
(1250, 'Shaheenajanwara@gmail.com', 2447, 1553, 29949, 15337),
(1251, 'murtaza.dbtech@gmail.com', 3867, 4551, 32188, 16126),
(1252, 'mukaanshafi038@gmail.com', 9269, 4544, 64796, 68656),
(1253, 'meerhilal710@gamil.com', 3948, 2853, 71662, 76862),
(1254, 'meerhilal352@gmail.com', 3949, 3505, 29041, 68300),
(1255, 'malikkamrankamran396@gmail.com', 9909, 2186, 21052, 34885),
(1256, 'sahillone770@gmail.com', 1479, 9709, 17172, 43372),
(1257, 'bilkissmajeed112233@gmail.com', 2877, 5343, 29794, 39463),
(1258, 'aadiaadi2355@gmail.com', 7120, 5871, 28992, 46146),
(1259, 'khalidbhbhatkhalid@gmail.com', 6543, 9392, 65885, 77648),
(1260, 'mahjoorbilal9@gmail.com', 6639, 6030, 48044, 39348),
(1261, 'sahilwani472@gmail.com', 6977, 9401, 83955, 49882),
(1262, 'bhaisahil392@gmail.com', 1793, 5502, 11871, 76307),
(1263, 'meerzainmeer898@gmail.com', 8501, 2925, 67964, 55143),
(1264, 'amairaamjid589@gmail.com', 3264, 1043, 73612, 69762),
(1265, 'mohtishimshabir9@gmail.com', 2225, 1134, 59123, 59440),
(1266, 'Drtufailt@gmail.com', 4888, 1443, 91082, 61809),
(1267, 'lonejunaid5452@gmail.com', 5476, 3883, 47563, 79034),
(1268, 'mehruunnissa62@gmail.com', 3542, 1760, 37260, 11050),
(1269, 'junaidulislaam199@gmail.com', 1717, 5173, 88309, 95981),
(1270, 'safeernajar72@gmail.com', 5837, 2149, 98829, 90803),
(1271, 'zeanmalik75@gmail.com', 9538, 2014, 70903, 52355),
(1272, 'iqrasahil0919@gmail.com', 2385, 1994, 56201, 31831),
(1273, 'zs326835@gmail.com', 2327, 3548, 64506, 56603),
(1274, 'rabilshah94@gmail.com', 6283, 4287, 47634, 40165),
(1276, 'qureshimomin214@gmail.com', 8203, 5577, 59224, 73560),
(1277, 'aaqibpathan28@gmail.com', 4741, 2800, 72557, 96813),
(1278, 'shaikshabir153@gmail.com', 4147, 8458, 73891, 16303),
(1279, 'wagayaqib487@gmail.com', 5080, 6909, 99782, 47618),
(1280, 'TAJAMULSUFI96@GMAIL.COM', 8511, 2063, 75639, 55831),
(1281, 'bushrashafi473@gmail.com', 3651, 8212, 84186, 16871),
(1282, 'khankulsum8899@gmail.com', 4732, 7111, 30241, 89468),
(1283, 'Amairaamjid@589gmail.com', 3066, 5058, 94005, 81388),
(1284, 'kh923471@gmail.com', 4417, 7639, 67387, 74510),
(1285, 'peerirfan751@gmail.com', 1495, 7510, 68227, 42301),
(1286, 'khansadu123@gmail.com', 6786, 5604, 47824, 27614),
(1287, 'naveedbashir705@gmail.com', 4058, 7641, 59486, 42751),
(1288, 'rajaumaaid99@gmail.com', 3218, 1281, 44466, 97155),
(1289, 'aadillone2180@gmail.com', 8847, 8439, 53682, 44253),
(1290, 'yasirnaik07@gmail.com', 2395, 5596, 16111, 72709),
(1291, 'yaarpanun70@gmail.com', 6156, 8633, 55907, 29444),
(1292, 'khanfirdous1266@gmail.com', 4613, 9977, 49153, 34268),
(1293, 'adiiadil2150@gmail.com', 2133, 3982, 23873, 55266),
(1294, 'mirtalib663@gmail.com', 6260, 2793, 52573, 55459),
(1295, 'mirtalib7422@gmail.com', 1954, 6524, 30128, 47505),
(1296, 'suhailz0123456789@gmail.com', 1046, 5981, 86173, 13231),
(1297, 'qureshis99@gmail.com', 5385, 2009, 79525, 31458),
(1298, 'Enenterprises443@gmail.com', 6036, 7133, 62269, 72716),
(1299, 'adfarkhan835@gmailcom', 5027, 7861, 44198, 67911),
(1300, 'warmomin842@gmail.com', 1597, 1760, 41779, 47544),
(1301, 'ehmdsahil@gmail.com', 2834, 5192, 79437, 63471),
(1302, 'irshadbhat13@gmail.com', 7503, 9369, 26277, 64112),
(1303, 'riyazahmadpahlipora6@gmail.com', 2146, 8014, 31432, 99803),
(1304, 'smehakhan19@gmail.com', 6549, 7711, 21052, 54745),
(1305, 'sanasheikhh80@gmail.com', 4357, 8009, 82516, 82100),
(1306, 'sanjanasingh021@gmail.com', 8172, 9482, 71421, 72984),
(1307, 'moizanfarooq@gmail.com', 6165, 8223, 33598, 45213),
(1308, 'abcdefgggg@gmail.com', 7576, 6550, 33588, 36420),
(1309, 'kashifkakroo@gmail.com', 9586, 5592, 48851, 37394),
(1310, 'gwdevil97@gmail.com', 3353, 6843, 95644, 53598),
(1311, 'bazilabatool97@gmail.com', 8057, 3060, 50585, 51840),
(1312, 'najarhardware598@gmail.com', 5855, 7810, 17014, 10871),
(1313, 'hellobro6602@gmail.com', 2181, 7885, 14012, 16078),
(1314, 'najarnajar0980@gmail.com', 7341, 6741, 84209, 67464),
(1315, 'ubaidah724@gmail.com', 5262, 7261, 72791, 52539),
(1316, 'nabisaleem35@gmail.com', 2297, 5465, 66971, 86385),
(1317, 'seeratjan95003@gmail.com', 6168, 3907, 61770, 34905),
(1318, 'krishna24082005@gmail.com', 7051, 9363, 65699, 66409),
(1319, 'Zakirshah22102005@gmail.com', 2695, 3765, 79590, 54993),
(1320, 'owaisrehman001@gmail.com', 4656, 9904, 53515, 55079),
(1321, 'skillvigor3@gmail.com', 1780, 2752, 81456, 16369),
(1322, 'tusharsingh2738@gmail.com', 4035, 3058, 76782, 35110),
(1323, 'bhatbilalbhat645@gmail.com', 9787, 9909, 94757, 84165),
(1324, 'bhatxuvabhatxuva@gmailcom', 7236, 6260, 28308, 27405),
(1325, 'tahirfayaz17@gmail.com', 6851, 8476, 66160, 36440),
(1326, 'sameerawan6299@gmail.com', 1295, 8561, 78061, 77888),
(1327, 'sheikhaamir1297@gmail.com', 3563, 6373, 80494, 71191),
(1328, 'sssmir@gmail.com', 8633, 7587, 57499, 14776),
(1329, 'rmir8026@gmail.com', 8875, 5621, 49641, 78333),
(1330, 'Sheikhmafuza1314@gmail.com', 8790, 5048, 14567, 14051),
(1331, 'salmankulley@gmail.com', 8569, 3658, 25059, 85204),
(1332, 'yawerwaseem123@gmail.com', 7626, 7654, 68478, 54415),
(1333, 'yawerwaseem6@gmail.com', 1935, 1719, 51897, 50970),
(1334, 'yawerwaseem160634@gmail.com', 9713, 4233, 71831, 45866),
(1335, 'sheikhwishu125@gmail.com', 9260, 5294, 90045, 53290),
(1336, 'sanahfarooq786@gmail.com', 2257, 4982, 50255, 18924),
(1337, 'haroonashraf943@gmail.com', 1366, 9674, 26438, 12783),
(1338, 'qadeer21789@gmail.com', 6537, 9096, 76412, 89542),
(1340, 'faisalakram989@gmail.com', 2384, 1975, 87655, 38164),
(1341, 'bhatfaisal1901@gmail.com', 2150, 8674, 69572, 24284),
(1343, 'SALEEMK1235@GMAIL.COM', 5021, 1991, 17837, 41815),
(1345, 'wanisalman672@gmail.com', 6041, 3961, 35133, 49058),
(1346, 'sagarmalik7169@gmail.com', 6824, 3439, 29824, 35893),
(1347, 'demo123@gmail.com', 6391, 2028, 77172, 80918),
(1348, 'system@gmail.com', 4713, 6223, 85239, 92284),
(1349, 'bilalbhat786219@gmail.com', 3134, 7828, 92027, 92192),
(1350, 'asimwanix34@gmail.com', 6324, 1072, 18649, 94936),
(1351, 'theshoaib019@gmail.com', 6937, 2918, 70446, 32280),
(1352, 'mallashakir135@gmail.com', 3001, 9391, 45478, 16100),
(1353, 'darmujtaba123@gmail.com', 5209, 2730, 75251, 33990),
(1354, 'imtiyazsheikh999@gmail.com', 58875, 58976, 58977, 58978),
(1355, 'sheebasudeep@gmail.com', 8033, 7265, 92253, 76005),
(1357, 'sonalbrain@gmail.com', 3552, 8693, 96045, 12674),
(1359, 'sonalhero@gmail.com', 5383, 9997, 44443, 96569),
(1360, 'asim76670@gmail.com', 7633, 2261, 17985, 59862),
(1361, 'paulzehran7@gmail.com', 9842, 3232, 91837, 58136),
(1362, 'junaidjunaid@gmail.com', 5677, 4848, 11670, 56449),
(1365, 'pakeezareyaz94@gmail.com', 9465, 8166, 92939, 45828),
(1366, 'mohammadniyaz8112@gmail.com', 7755, 4866, 73662, 57039),
(1367, 'srinag774624@gmail.com', 7808, 7390, 23183, 12891),
(1368, 'wanisameer296@gmail.com', 4190, 9414, 70931, 29108),
(1369, 'mirrashid226@gmail.com', 8620, 7926, 81707, 62311),
(1370, 'skillzard780@gmail.com', 5585, 6519, 19929, 92435),
(1373, 'bhatbilal6754@gmail.com', 2556, 6126, 74314, 19540),
(1374, 'aabimeer666@gmail.com', 8473, 7317, 16633, 46840),
(1375, 'ajaytadam0215@gmail.com', 3318, 3132, 85598, 81265),
(1376, 'pitarsarang1@gmail.com', 6693, 6606, 74590, 84220),
(1378, 'irshadbahat786@gmail.com', 1060, 8016, 17778, 94681),
(1379, 'shabirchoudhaary77@gmail.com', 7034, 8702, 86795, 25287),
(1380, 'sameer.official0119@gmail.com', 1447, 5108, 20788, 57636),
(1381, 'mirmaroof002@gmail.com', 9296, 4194, 64087, 75458),
(1382, 'mirkabeer360@gmail.com', 4938, 7014, 15314, 72814),
(1384, 'hrajput123455@gmail.com', 8914, 6761, 27679, 90532),
(1385, 'demo957@gmail.com', 9728, 7850, 49275, 75909),
(1386, 'miramir01@gmail.com', 7861, 7296, 54010, 90898),
(1387, 'aryankumar5555n@gmail.com', 3830, 6885, 68049, 90936),
(1388, 'aisa@gmail.com', 7287, 9985, 35703, 71727),
(1389, 'krishna@gmail.com', 7822, 3740, 52283, 96996),
(1390, 'rajunajar222@gmail.com', 5492, 9521, 26191, 29283),
(1391, 'you@gmail.com', 9023, 9149, 45086, 83989),
(1392, 'ganesh@gmail.com', 2079, 7205, 17524, 90991),
(1393, 'zeeshanmir303@gmail.com', 2906, 1697, 60785, 75640),
(1394, 'mahadev@gmail.com', 6674, 7520, 37844, 44917),
(1395, 'shiv@gmail.com', 2541, 3994, 87029, 71059),
(1396, 'vishnu@gmail.com', 4164, 7240, 80058, 99744),
(1397, 'vishnu55@gmail.com', 2041, 1898, 49671, 32301),
(1398, 'itsvijaysaini@gmail.com', 7445, 3657, 31358, 93541),
(1399, 'ishfaq@123gmail.com', 9516, 5446, 31851, 41605),
(1400, 'ishu123@gmail.com', 1086, 4800, 99474, 26435),
(1401, 'meer123@gmail.com', 3583, 2909, 30766, 53866),
(1402, 'aryanjaiswal@gmail.com', 3309, 3858, 73187, 72403),
(1403, 'sunny2@gmail.com', 8577, 7168, 79528, 91186),
(1404, 'ubaidwani158@gmail.com', 5242, 6775, 75110, 32807),
(1405, 'ishfaq0109@gmail.com', 4280, 4963, 45244, 22731),
(1406, 'ubaidajaz2121@gmail.com', 6941, 9707, 77422, 51551),
(1407, 'waniubaid201@gmail.com', 8221, 5417, 32228, 78731),
(1408, 'amitrajput99990@gmail.com', 3850, 2364, 30465, 19870),
(1409, 'skillzard@123gmail.com', 7764, 6544, 13403, 63943),
(1410, 'rohanfelix444@gmail.com', 4096, 1699, 23858, 99534),
(1411, 'mominriyazwani000111@gmail.com', 3660, 3361, 59683, 29002),
(1412, 'miramir01@gmal.com', 6724, 9756, 25685, 39071),
(1413, 'syedaijaz94@gmail.com', 6304, 5035, 45178, 71360),
(1414, 'nazirjavid31@gmail.com', 9534, 7241, 17879, 48990),
(1415, 'magreynisar1234@gmail.com', 1309, 7504, 88018, 31320),
(1416, 'khanbashrat206@gmail.com', 9808, 7505, 62559, 15276),
(1417, 'idrdekho@gmail.com', 2659, 1193, 85772, 65098),
(1419, 'vlogervlogs01@gmail.com', 2849, 4235, 72617, 95593),
(1420, 'businessaryan77@gmail.com', 8905, 8994, 55952, 87837),
(1421, 'bhatfaru62591@gmail.com', 3998, 2101, 31218, 48048),
(1422, 'mirrukiyaakram@gmail.com', 6467, 3590, 66514, 36081),
(1423, 'Gsuheel9006@gmail.com', 2375, 7140, 95496, 44949),
(1424, 'tajamultahir120@gmail.com', 7422, 2082, 81591, 96238),
(1425, 'www.darbasit690@gmail.com', 6866, 7283, 64090, 17282),
(1426, 'omairlone055@gmail.com', 6013, 3583, 62348, 49454),
(1427, 'Kf967889@gmail.com', 6500, 3984, 66069, 93794),
(1428, 'wanifaizan079@gmail.com', 8490, 6635, 38611, 67678),
(1429, 'Sloneg53@gmail.com', 6326, 1390, 76466, 72917),
(1430, 'malikkifayathk789@gmail.com', 3746, 3045, 19798, 44515),
(1438, 'javidvloge22@gmail.com', 4533, 3494, 84505, 60997),
(1441, 'khan@gmail.com', 4780, 6017, 91646, 70963),
(1442, 'jaiswal778@gmail.com', 2917, 2428, 46819, 95654),
(1443, 'ishfaq@6005353856gmail.com', 8901, 7256, 34893, 45949),
(1444, 'demo998@gmail.com', 9659, 7740, 27781, 50338),
(1449, 'tahira.mariyam@yahoo.co.in', 4915, 2859, 34869, 71633),
(1450, 'andrabiabid.andrabi7@gmail.com', 6385, 1941, 45254, 28719),
(1451, 'iqraasmat94@gmail.com', 8222, 5522, 54452, 58887),
(1452, 'mallashakir111@gmail.com', 1552, 3623, 73942, 19356),
(1453, 'lonejunaid96@gmail.com', 8008, 7639, 89026, 46235),
(1455, 'aumairkoka42@gmail.com', 3838, 2098, 98804, 33949),
(1456, 'bibasit29@gmail.com', 1713, 7080, 60960, 93924),
(1457, 'loneaqib895@gmail.com', 4466, 6235, 29406, 68021),
(1458, 'Wanikhalid259@gmail.com', 5313, 5578, 97681, 90701),
(1459, 'wanimudasir9094@gmail.com', 3184, 3834, 50177, 75211),
(1460, 'sb7446172@gmail.com', 7574, 1078, 96508, 38985),
(1461, 'shakirhura17@gmail.com', 6659, 4576, 63379, 78190),
(1462, 'waqarwaqar45541@gmail.com', 4287, 2000, 51035, 10042),
(1463, 'samrahi71@gmail.com', 1126, 9874, 25962, 57590),
(1464, 'wanibasit319@gmail.com', 2473, 4125, 69245, 30527),
(1469, 'Kokabilal711@gmail.com', 3030, 4130, 83234, 46451),
(1470, 'sartajbahaisartaj@gmail.com', 5358, 6278, 11811, 78871),
(1471, 'aadilsultan2018@gmail.com', 7920, 4951, 89882, 50850),
(1472, 'shayistakhan10@gmail.com', 8507, 2110, 96482, 59259),
(1473, 'muzamilahzai@gmail.com', 3296, 4953, 35867, 60170),
(1474, '6006288198ubi@gmail.com', 8008, 3313, 10247, 81838),
(1475, 'mrkhan32626@gmail.com', 1007, 5936, 80687, 81751),
(1476, 'karansinghrail717@gmail.com', 6640, 4921, 46906, 73120),
(1477, 'inshagowhar57@gmail.com', 4437, 8261, 83678, 69368),
(1478, 'saleemashraf77796@gmail.com', 2418, 6327, 49193, 76254),
(1479, 'mohdshafi42@gmail.com', 6338, 4311, 97731, 25874),
(1480, 'meersahilsahil2233@email.com', 2587, 7164, 77973, 38916),
(1481, 'Faizanahad1234@gmail.com', 9737, 8012, 77065, 95510),
(1482, 'meershahid20987@gmail.com', 3377, 5824, 37360, 97926),
(1483, 'farhanahassan725@gmail.com', 1068, 6638, 53263, 76618),
(1484, 'sohailbhat2@gmail.com', 6232, 8941, 12166, 70637),
(1485, 'mehnazmushtaq71@gmail.com', 2064, 9101, 98609, 17311),
(1486, 'Smnakhter396@gmail.com', 5230, 9978, 50495, 55366),
(1487, 'azhar2239@gmail.com', 4547, 6001, 56387, 71799),
(1488, 'bilaalmeer899@gamil.com', 8979, 8710, 65463, 57291),
(1489, 'shahidmeer822@gmail.com', 9050, 6204, 15014, 13522),
(1490, 'MaroofAhmed02@gmail.com', 4818, 4129, 90070, 59006),
(1491, 'qazid1279@gmail.com', 2413, 3632, 17902, 23767),
(1492, 'meersajid01@gmail.com', 7250, 7074, 42539, 76265),
(1493, 'azharuddin7889@gmail.com', 1839, 5422, 72939, 27877),
(1494, 'khalidashraflone299@gmail.com', 3111, 5980, 11729, 34228),
(1495, 'Khanmasroor639@gmail.com', 8537, 6446, 24038, 96045),
(1496, 'mohmmadasifsheikh89182@gmail.com', 5991, 5200, 19110, 62706),
(1497, 'hazimahmading@gmail.com', 4425, 6042, 71631, 49927),
(1498, 'hjan3819@gmail.com', 9121, 9957, 31986, 54845),
(1499, 'naseerbhat412@gmail.com', 7057, 7626, 17030, 98618),
(1500, 'bhatshahidshahidbhat90@gmail.com', 9906, 8049, 81964, 72274),
(1501, 'hajam7071@gmail.com', 2989, 2370, 39928, 25474),
(1502, 'sunadhisahu@gmail.com', 8948, 8563, 38011, 60957),
(1503, 'parvinderkour99@gmail.com', 2922, 1709, 27152, 17649),
(1504, 'ishuishfaq776@gmail.com', 3842, 4832, 51742, 50398),
(1505, 'mahfoozb80@gmail.com', 5961, 3578, 94303, 61097),
(1506, 'azaib8427@gmail.com', 7883, 1172, 79848, 94768),
(1507, 'tahirrajput11480@gmail.com', 9709, 3019, 87209, 76538),
(1508, 'raziabhat941@gmail.com', 9122, 4713, 19043, 74514),
(1509, 'no@gmail.com', 3351, 3233, 48696, 62095),
(1510, 'shahidnazirwani364@gmail.com', 1373, 3517, 16991, 19480),
(1511, 'Bilalkumar161@gmail.com', 4101, 3936, 74635, 16204),
(1512, 'bhatf5427@gmail.com', 3131, 6033, 29836, 56979),
(1513, 'mahidbashir707@gmail.com', 2603, 8785, 46533, 12591),
(1514, 'manzoormir82555@gmail.com', 3556, 4243, 96089, 33963),
(1515, 'anjumanyekulur@gmail.com', 3938, 7529, 90540, 78340),
(1516, 'ruhianjum010@gmail.com', 1857, 4804, 23342, 27805),
(1517, 'Farhandiwan551@gmail.com', 9709, 2811, 93011, 80628),
(1518, 'taslemansari123@gmail.com', 8054, 1946, 16880, 59388),
(1519, 'tusharthanande@gmail.com', 2675, 4544, 31508, 55240),
(1520, 'anjaliverma94184@gmail.com', 4930, 9914, 84028, 56512),
(1521, 'bhatu5566@gmail.com', 2058, 9821, 29192, 34212),
(1522, '6006688517@ibl', 7458, 2439, 90835, 11344),
(1523, 'shahjaany@gmail.com', 9489, 7088, 62938, 96809),
(1524, 'parvaizlone46@gmail.com', 9935, 4755, 31702, 82014),
(1526, 'asimaan99@gmail.com', 8234, 5001, 30599, 26627),
(1527, 'ashutechnology60@gmail.com', 4138, 3199, 57707, 88464),
(1528, 'toseedchuck64@gmail.com', 6089, 9482, 82967, 27271),
(1529, 'vishantdharmesh@gmail.com', 5981, 6934, 96114, 57655),
(1530, 'truptikanande0@gmail.com', 7173, 2749, 94112, 26430),
(1531, 'fmanzoor343@gmail.com', 2267, 1364, 95754, 77007),
(1532, 'Danishwani623@gmail.com', 3844, 9115, 76514, 80760),
(1533, 'itzmuzamil13@gmail.com', 1756, 1381, 11284, 47744),
(1534, 'smartduger102@gmail.com', 6351, 9372, 26221, 14777),
(1535, 'bhataaqi288@gmail.com', 3081, 2784, 58492, 71077),
(1538, 'muheebbhat021@gmail.com', 3417, 6032, 44152, 96136),
(1539, 'abiddar649@gmail.com', 2210, 3018, 70001, 81469),
(1540, 'khanshabir18@gmail.com', 4465, 2347, 19251, 76916),
(1541, 'musaibm99@gmail.com', 7010, 4597, 53719, 48209),
(1542, 'rutbaAndari112@gmail.com', 5892, 7785, 66270, 40929),
(1543, 'suraj414263@gamail.com', 5386, 9275, 43576, 51401),
(1544, 'shahrahil030@gmail.com', 9428, 5570, 56974, 61023),
(1545, 'parvinderK124@gmail.com', 3470, 2012, 73901, 63119),
(1546, 'hummaRashid786@rediffmail.com', 1094, 3421, 41415, 37172),
(1547, 'dbasit920@gmail.com', 2407, 8498, 83844, 63322),
(1549, 'shaheena.700789@gmail.com', 3507, 8773, 97752, 92915),
(1550, 'tanveerd853@gmail.com', 8162, 6531, 55609, 94721),
(1551, 'nazimajan321@gmail.com', 5535, 4102, 32704, 76749),
(1552, 'seyammubashir55@gmail.com', 5405, 7593, 71796, 96586),
(1556, 'afshanahassan019@gmail.com', 2548, 7111, 24653, 28431),
(1557, 'tofeeqdar6@gmail.com', 4675, 4898, 32539, 81754),
(1558, 'alibaba@gmail.com', 6789, 4848, 40295, 61733),
(1559, 'cat2@gmail.com', 3040, 4804, 51929, 84535),
(1560, 'silver@gmail.com', 4533, 4259, 34502, 77260),
(1561, 'ishfaq12@gmail.com', 3186, 7502, 99553, 83679),
(1562, '', 8041, 2345, 36860, 39782),
(1563, 'ratherfaisal122@gmail.com', 8289, 9747, 63859, 87029),
(1564, 'nabinaveed508@gmail.com', 3278, 4747, 44177, 91767),
(1565, 'testing55@gmail.com', 8476, 5837, 94480, 64152),
(1570, 'aamirr4112@gmail.com', 3182, 2377, 86239, 21748),
(1571, 'aamir4112@gmail.com', 2613, 8755, 44199, 29157),
(1572, 'Hayaazainab072@gmail.com', 9003, 9158, 50338, 35545),
(1573, 'aamirr4112@gmail.com', 4263, 3159, 35351, 49042),
(1574, 'shahazaib124@gmail.com', 1335, 2531, 14414, 60568),
(1575, 'amugloo721@gmail.com', 4898, 8864, 68733, 81496),
(1576, 'Gowharshah008@gmail.com', 1742, 3510, 69567, 59043),
(1577, 'amaanayi0313@gmail.com', 4895, 3698, 58645, 23921),
(1578, 'Sheikhatiya11@gmail.com', 4819, 9176, 17236, 28318),
(1579, 'umarumar41887@gmail.com', 3785, 6901, 62381, 64517),
(1580, 'parvaizaly16@gmail.com', 9050, 2361, 28779, 81787),
(1581, 'Talibkhankhan718@gmail.com', 5609, 6381, 35505, 80958),
(1582, 'rahulkumar88@gmail.com', 2176, 6536, 84387, 66088),
(1583, 'irshadmanzoor1212@gmail.com', 1158, 3674, 42344, 38752),
(1584, '', 4557, 9677, 11273, 18944),
(1585, 'khansajad4715@gmail.com', 1290, 1243, 56358, 54917),
(1586, 'khansajad4715@gmali.com', 4579, 3298, 39500, 83744),
(1587, 'khankulsooma191@gmail.com', 1983, 9717, 51229, 83647),
(1589, 'Sheikhmehak761@gmail.com', 6597, 6533, 21217, 71366),
(1591, 'farhangulzarnajar150@gmail.com', 7096, 9454, 85574, 94668),
(1595, 'danishshuaib147@gmail.com', 6414, 2802, 87619, 80059),
(1596, 'Wahidmanzoor295@gmail.comz', 3930, 2950, 99284, 30288),
(1597, 'wahidmanzoor295@gmail.com', 7356, 1082, 21756, 89494),
(1598, 'rahilff366@gmail.com', 4510, 8845, 79286, 93790),
(1599, 'ffr803967@gmail.com', 2501, 3619, 63382, 38674),
(1600, 'ks3476201@gmail.com', 7031, 9146, 53794, 94181),
(1602, 'rasibahkhan@gmail.com', 1634, 3328, 16103, 41597),
(1603, 'bilqeesakhter1909@gmail.com', 1711, 7212, 31336, 55251),
(1604, 'fza7889@gmail.com', 5455, 2904, 77086, 18367),
(1606, 'khan.mudyy@gmail.com', 3955, 5552, 86490, 11457),
(1607, 'wanirameez23@gmail.com', 2080, 1402, 75474, 50184),
(1608, 'sroy62045@gmail.com', 2444, 7628, 22585, 51307),
(1609, 'wanirameez39@gmail.com', 9051, 8449, 53127, 84235),
(1610, 'ahangerulfatahanger@gmail.com', 2120, 1450, 12313, 42667),
(1611, 'qwetyugfgu@gmail.com', 4893, 2084, 20784, 16716),
(1612, 'aulidarazaq01@gmail.com', 8068, 7521, 67994, 68106),
(1613, 'avleedarazaq1@gmail.com', 3263, 3192, 43690, 39825),
(1614, 'aulidarazaq@gmail.com', 3645, 8060, 44278, 11256),
(1615, 'Topgamer62045@gmail.com', 5070, 2897, 43823, 87549),
(1616, 'arbluestar.kh@gmail.com', 9862, 4407, 33487, 76123),
(1618, 'Shahidgulzar132@gmail.com', 5293, 3741, 75485, 59886),
(1619, 'arbackup.kh@gmail.com', 7765, 2510, 88880, 66342),
(1620, 'shakoormir267@gmail.com', 1051, 4523, 89549, 89457),
(1621, 'hilalmalik66@gmail.com', 7027, 9554, 58520, 94376),
(1622, 'khanbarkat6103@gmail.com', 7696, 6759, 57590, 70295),
(1623, 'Junaidshabir837@gmail.com', 3640, 6169, 93381, 96111),
(1624, 'theshahdawar@gmail.com', 5672, 4332, 82452, 80522),
(1625, 'bhuzaif454@gmail.com', 8385, 6475, 35303, 60525),
(1626, 'dar842159@gmail.com', 3553, 9496, 31124, 23396),
(1627, 'mozzaf321@gmail.com', 8641, 8581, 62859, 82562),
(1628, 'rp015667@gmail.com', 8314, 9277, 77730, 31230),
(1629, 'father@gmail.com', 6421, 8351, 78939, 75134),
(1630, 'unknown@gmail.com', 1150, 3204, 16877, 58763),
(1631, 'aalammusadiq58@gmail.com', 4556, 1090, 64855, 50821),
(1632, 'loneimran5477@gmail.com', 2471, 6615, 86481, 53532),
(1633, 'zainabzanu22@gmail.com', 1497, 3092, 35410, 71558),
(1634, 'varun@gmail.com', 5664, 9311, 67188, 14709),
(1635, 'superman@gmail.com', 9994, 5563, 99761, 87293),
(1636, 'burhanbashir906@gamil.com', 5409, 5213, 35663, 53232),
(1637, 'mirjameel1192@gmail.com', 7240, 3570, 38263, 63201),
(1638, 'shahidibrahim0786@gmail.com', 5913, 2876, 53405, 48597),
(1639, 'suhaibbkhan1@gmail.com', 9497, 5954, 98461, 89393),
(1640, 'sheikhfaizan22049@gmail.com', 8917, 9851, 84308, 89325),
(1641, 'bhatabrar870@gmail.com', 5558, 3554, 83182, 41440),
(1642, 'aanishshakeel@gmail.com', 2700, 1029, 22591, 31777),
(1643, 'riderbhai172@gmail.com', 3904, 7233, 27082, 53281),
(1644, 'shakirfayaz135@gmail.com', 4854, 2462, 55025, 40668),
(1645, 'neha674@gmail.com', 3079, 3845, 36969, 97898),
(1646, 'kaifb2590@gmail.com', 6506, 5952, 36481, 50173),
(1647, 'jataves923@maxturns.com', 3655, 3521, 63676, 91740),
(1648, 'shahidbhat13582@gmail.com', 7829, 1687, 36692, 45494),
(1649, 'fr5551509@gmail.com', 5848, 5024, 43384, 70420),
(1650, 'ruzainnaik@gmail.com', 2253, 2581, 19691, 93234),
(1651, 'khushbooibrahim24@gmail.com', 1319, 2919, 88813, 38049),
(1652, 'yasirbaya988@gmail.com', 7511, 7196, 76434, 44752),
(1653, 'swagay806@gmail.com', 2541, 5386, 75535, 90260),
(1654, 'uzairallie121@gmail.com', 3719, 5841, 52698, 21757),
(1655, 'tawheedb233@gmail.com', 9094, 3523, 15341, 85055),
(1656, 't28272576@gmail.com', 2168, 1714, 29253, 44502),
(1657, 'tawheedbhat768@gmail.com', 4454, 5484, 70373, 43409),
(1658, 'towheedyounis31@gmail.com', 4432, 2228, 77925, 52098),
(1659, 'zahidahma675@gmail.com', 4382, 8354, 53111, 84546),
(1660, 'nob998877@gmail.com', 3702, 9676, 94390, 42267),
(1661, 'bhatsameer5618@gmail.com', 6402, 2893, 18355, 24351),
(1662, 'bhatsameer9618@gmail.com', 4578, 9014, 38983, 72157),
(1663, 'bhatyounis794@gmail.com', 1558, 9366, 93078, 57146),
(1664, 'towheed786@gmail.com', 4241, 1054, 70430, 31390),
(1665, 'mohmmadeyad66@gmail.com', 5384, 3292, 61126, 86972),
(1666, 'umerfarooq9934@gmail.com', 3285, 3534, 40465, 50457),
(1667, 'hemayata50@gmail.com', 3931, 4692, 55078, 16999),
(1668, 'moviesyt2580@gmail.com', 7077, 1967, 16440, 58758),
(1669, 'uy76363@gmail.com', 1697, 8242, 56674, 54310),
(1670, 'rk9606617@gmail.comcom', 5228, 2219, 36240, 30330),
(1671, 'Mirshafiya111@gmail.com', 4062, 9708, 69523, 56165),
(1672, 'shafiyaashraf44@gmail.com', 8318, 7065, 40568, 78856),
(1673, 'ovaistak92@gmail.com', 9977, 4789, 25959, 40848),
(1674, 'sabzar946@gmail.com', 4847, 7836, 97159, 97718),
(1675, 'khalidnisar765@gmail.com', 4499, 4904, 91149, 14562);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int NOT NULL,
  `phone` varchar(11) NOT NULL,
  `referral` varchar(10) NOT NULL,
  `image_path` varchar(300) NOT NULL,
  `package` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `phone`, `referral`, `image_path`, `package`, `email`, `status`) VALUES
(997, '9310431816', '9999', 'images2/GooglePay_QR.png', 'gold', 'sonalkumarheroaz@gmail.com', 'gold'),
(999, '6005353856', '1436', '0', 'Diamond', 'meerishfaq472@gmail.com', 'diamond'),
(1001, '7006374879', '65088', 'images2/IMG_20240417_143742_680.jpg', 'Diamond', 'mehakbinterasheed@gmail.com', 'diamond'),
(1002, '9697365496', '65088', '0', 'Diamond', 'jigrnelu@gmail.com', 'diamond'),
(1003, '6006404387', '65088', 'images2/IMG_20240418_141458_605.jpg', 'diamond ', 'aasifahmad714@gmail.com', 'diamond'),
(1004, '9622654511', '65088', '0', 'Elite', 'mmehzu5@gmail.com', 'diamond'),
(1007, '+9196826108', '65088', '0', 'Diamond', 'shahidpeer494@gmail.com', 'diamond'),
(1010, '95963 97662', '14374', '0', 'Elite', 'jasayianissar07@gmail.com', 'elite'),
(1012, '7420824110', '65088', 'images2/20240416_120834.jpg', 'Diamond', 'Pmate4777@gmail.com', 'diamond'),
(1013, '7889925317', '65088', 'images2/Screenshot_2024-04-19-11-22-40-126_com.whatsapp.w4b.jpg', 'Diamond', 'aamirnabi711@gmail.com', 'diamond'),
(1016, '6005853557', '92634', 'images2/Screenshot_2024-04-19-12-46-50-95_49b96b5fbae0d12a18edc4a3afe0dfd9.jpg', 'Silver', 'meertassaduq4@gmail.com', 'silver'),
(1017, '6006490245', '91530', 'images2/Screenshot_20240419-142244_PhonePe.jpg', 'Elite', 'aanj68193@gmail.com', 'elite'),
(1018, '9103201626', '4367', '0', 'Elite', 'suhailali7889@gmail.com', 'off'),
(1021, '9149618130', '65088', '0', 'Diamond', 'drmaliha578@gmail.com', 'diamond'),
(1022, '9682537056', '65088', 'images2/Screenshot_20240419_193927_WhatsApp.jpg', 'Elite', 'nazirbhat370@gmail.com', 'elite'),
(1026, '91071 74054', '65088', '0', 'Diamond', 'faisaliqbal92414@gmail.com', 'diamond'),
(1028, '9622588102', '78026', '0', 'Diamond', 'reshioumieas020@gmail.com', 'off'),
(1029, '60069 55788', '59017', 'images2/Screenshot_2024-04-20-21-06-38-701_com.phonepe.app.jpg', 'Diamond', 'aakashdar339@gmail.com', 'diamond'),
(1030, '91 70062 61', '51985', 'images2/Screenshot_2024-04-20-20-17-12-00_c0d35d5c8ea536686f7fb1c9f2f8f274.jpg', 'Diamond', 'hayadidad@gmail.com', 'diamond'),
(1031, '8825096185', '65088', 'images2/IMG_20240222_214443_342.jpg', 'Elite', 'khanirfanirfankhan28@gmail.com', 'diamond'),
(1032, '8494028163', '1238', 'images2/IMG-20240421-WA0046.jpg', 'Elite', 'Seemujaan29@gamil.com', 'elite'),
(1034, '91979715122', '65088', '0', 'Diamond', 'manimlone@gmail.com', 'elite'),
(1035, '+9196821505', '65088', '0', 'Diamond', 'malikshinu111@gmail.com', 'diamond'),
(1038, '9596262710', '59017', 'images2/Screenshot_2024-04-22-17-02-42-761_com.phonepe.app.jpg', 'Diamond', 'ehmadjavaid27@gmail.com', 'diamond'),
(1039, '9149469648', '65088', 'images2/1713198714954.jpg', 'Diamond', 'Basitrather0537@gmail.com', 'diamond'),
(1040, '8552058062', '13841', 'images2/Screenshot_20240422-192225_PhonePe.jpg', 'Elite', 'rajshreesahare5@gmail.com', 'elite'),
(1041, '6006321486', '14374', 'images2/IMG-20240422-WA0013.jpg', 'Elite', 'mjamaal547@gmail.com', 'elite'),
(1042, '9797904036', '65088', '0', 'Diamond', 'sahilqadirbhat@gmail.com', 'diamond'),
(1043, ' 6006061912', '92634', '0', 'Elite', 'shahalka936@gmail.com', 'elite'),
(1045, '6005022665', '91530', 'images2/Screenshot_20240423-144016_PhonePe.jpg', 'Elite', 'sheikhtawseef998462@gmail.com', 'elite'),
(1046, '8019825745', '65088', '0', 'Diamond', 'nasuhaanjum87@gmail.com', 'diamond'),
(1047, '6006517819', '58978', 'images2/Screenshot_20240422-180412_One UI Home.jpg', 'Elite', 'hayaansheikh786@gmail.com', 'elite'),
(1048, '8082009751', '58978', 'images2/IMG-20240423-WA0002.jpg', 'Elite', 'zairahherbals786@gmail.com', 'elite'),
(1049, '6006677052', '92634', '0', 'Silver', 'peerdanish75@gmail.com', 'silver'),
(1050, '9682102980', '92634', '0', 'Elite', 'firdousbashir192@gmail.com', 'elite'),
(1052, '6005808843', '58978', 'images2/IMG-20240423-WA0012.jpg', 'Silver', 'naveedlone89@gmail.com', 'silver'),
(1053, '7006634382', '58978', '0', 'Elite', 'umarwiit@gmail.com', 'elite'),
(1054, '7006262948', '58978', 'images2/Screenshot_20240424_200705.jpg', 'Elite', 'shafqatmajid94@gmail.com', 'off'),
(1055, '9797704920', '74299', '0', 'Diamond', 'rjsuhaib143@gmail.com', 'off'),
(1057, '9682199729', '14374', '0', 'Diamond', 'www.mrzainab@mail.com', 'off'),
(1058, '9209091659', '13841', 'images2/Screenshot_20240424-163456_PhonePe.jpg', 'Elite', 'lokeshbire425@gmail.com', 'elite'),
(1060, '8825084153', '58978', 'images2/IMG-20240425-WA0012.jpg', 'Diamond', 'mirirfan0002@gmail.com', 'diamond'),
(1061, '7006262948', '58978', 'images2/IMG-20240424-WA0074.jpg', 'Elite', 'Shafqatmajid94@gmail', 'elite'),
(1062, '9975264856', '65088', '0', 'Diamond', 'soumyaxwasnik@gmail.com', 'diamond'),
(1067, '9906505532', '62263', '0', 'Diamond', 'bhatshafat83@gmail.com', 'off'),
(1068, '6005103272', '62263', 'images2/a42bdbb3-e378-4114-ac26-e014a69f6968_payment_confirmation_202404116-010732.png', 'Elite', 'hemusyed9@gmail.com', 'elite'),
(1069, '9622523326', '62263', '0', 'Silver', 'irfanmir5827@gmail.com', 'off'),
(1070, '9209091659', '7228', '0', 'Elite', 'kartiksonwane507@gmail.com', 'off'),
(1071, '6006056338', '2774', 'images2/1000042691.jpg', 'Elite', 'ubairlone999@gmail.com', 'elite'),
(1072, '07889934520', '58978', 'images2/WhatsApp Image 2024-04-25 at 14.51.00_c3ed12dd.jpg', 'Elite', 'OWAISMAQBOOL64@GMAIL.COM', 'elite'),
(1073, '6201903224', '2005', 'images2/1000085147.jpg', 'Elite', 'amitarya1414@gmail.com', 'elite'),
(1074, '6006714118', '2005', '0', 'Elite', 'shaevilop@gmail.com', 'off'),
(1075, '7006263065', '58978', 'images2/WhatsApp Image 2024-04-25 at 17.53.37_22bd3880.jpg', 'Elite', 'muzafarwani0000@gmail.com', 'elite'),
(1076, '08493804797', '62263', 'images2/Screenshot_2024-04-25-17-09-57-767_com.android.chrome.jpg', 'Elite', 'meerseerat084@gmail.com.in', 'off'),
(1077, '8082407175', '58978', 'images2/WhatsApp Image 2024-04-26 at 12.30.42_5faf32c5.jpg', 'Elite', 'Zzakirvlogs6@gmail.com', 'elite'),
(1079, '6006821129', '62263', '0', 'Elite', 'yasirhafeez180@gmail.com', 'off'),
(1080, '6006211427', '7989', 'images2/Screenshot_2024-04-26-09-06-31-164_com.phonepe.app.jpg', 'Elite', 'ubaidajaz1234@gmail.com', 'elite'),
(1081, '7889514276', '58978', 'images2/Screenshot_2024-04-26-11-27-28-53_944a2809ea1b4cda6ef12d1db9048ed3.jpg', 'Silver', 'magrayjunaid4@gmail.com', 'silver'),
(1084, '9906621563', '58978', '0', 'Elite', 'wrajabhat@gmail.com', 'off'),
(1085, '9541148943', '39095', '0', 'Diamond', 'Orhan125@gmail.com', 'off'),
(1086, '9055158791', '58978', '0', 'Elite', 'lonesameer2011@gmail.com', 'off'),
(1087, '9103612753', '58978', '0', 'Elite', 'mehrajmursal158@gmail.com', 'off'),
(1088, '9906629522', '88160', 'images2/IMG_20240421_095503.jpg', 'Diamond', 'khantariqkhantariq26@gmail.com', 'diamond'),
(1089, '+9170066830', '58978', '0', 'Elite', 'rajesh197634@yahoo.com', 'off'),
(1090, '6005577498', '14374', '0', 'Diamond', 'danishbashir612@gmail.com', 'diamond'),
(1092, '7051686413', '58978', 'images2/IMG-20240426-WA0053.jpg', 'Elite', 'aabidalone786@gmail.com', 'elite'),
(1093, '6006511880', '18096', 'images2/1000002214.jpg', 'Elite', 'www.ashiq@gmail.com', 'off'),
(1094, '7889650455', '58978', 'images2/Screenshot_2024-04-18-15-46-48-883_com.android.mms.jpg', 'Elite', 'saki25101@gmail.com', 'off'),
(1095, '9906099060', 'A23Z', 'images2/1000202109.jpg', 'Diamond', 'gulkaakh11@gmail.com', 'off'),
(1097, '9906211424', '7647', 'images2/IMG-20240427-WA0007.jpg', 'Elite', 'wanizakir215@gmail.com', 'elite'),
(1098, '8082606457', '1234', 'images2/inbound5157540037518826729.jpg', 'Elite', 'sheikhmansoor660@gmail.com', 'off'),
(1099, '6005267607', '7647', 'images2/IMG-20240427-WA0012.jpg', 'Elite', 'shiekhadil9090@gmail.com', 'elite'),
(1100, '8803466781', '8802', 'images2/IMG-20240427-WA0034.jpg', 'Elite', 'aaminaqkiaer94@gmail.com', 'elite'),
(1101, '6006724407', '92634', '0', 'Diamond', 'biljaan59@gmail.com', 'diamond'),
(1102, '8493815875', '58978', 'images2/IMG-20240427-WA0051.jpg', 'Gold', 'majidazizbhat@gmail.com', 'gold'),
(1103, '7889732519', '7647', '0', 'Silver', 'www.mageryimran2701@gmail.com', 'off'),
(1104, '7889732519', '7647', 'images2/IMG-20240427-WA0032.jpg', 'Diamond', 'mageryimran36@gmail.com', 'diamond'),
(1105, '9010411394', '66446', '0', 'Diamond', 'aleenafirdous56@email.com', 'off'),
(1106, '9010411394', '66446', '0', 'Diamond', 'Aleenafirdous56@gmail.com', 'diamond'),
(1107, '9682327608', '58978', 'images2/Screenshot_2024-04-27-16-31-24-600_com.phonepe.app.jpg', 'Elite', 'lubnarasheed990@gmail.com', 'elite'),
(1108, '6005430972', '92634', 'images2/Screenshot_2024-04-27-17-46-15-003_com.phonepe.app.jpg', 'Diamond', 'tantrayj489@gmail.com', 'diamond'),
(1109, '6005251045', '58978', 'images2/IMG-20240427-WA0092.jpg', 'Silver', 'sabatunnisa11@gmail.com', 'silver'),
(1110, '6005436788', '62976', 'images2/Screenshot_2024-04-27-12-15-13-62_40deb401b9ffe8e1df2f1cc5ba480b12.jpg', 'Diamond', 'tantraydanish05@gmail.com', 'off'),
(1111, '7889329060', '2912', '0', 'Silver', 'rahiyanazeer453@gmail.com', 'off'),
(1112, '+9197977429', '30244', '0', 'Gold', 'javidqureshi180@gmail.com', 'off'),
(1113, '7889329060', '2912', 'images2/IMG-20240427-WA0098.jpg', 'Silver', 'riyaan786@gmail.com', 'silver'),
(1114, '9149846058', '58978', 'images2/IMG-20240427-WA0100.jpg', 'Diamond', 'sahilnajarr@gmail.com', 'diamond'),
(1115, '8899475675', '30244', 'images2/IMG_20240402_164220_259.webp', 'Elite', 'bhatzahoor786@gmail.com', 'off'),
(1116, '7006196974', '58978', 'images2/IMG-20240427-WA0128.jpg', 'Silver', 'irfankhan01501@gmail.com', 'elite'),
(1117, '8899629949', '62263', '0', 'Elite', 'snobershaban@gmail.com', 'off'),
(1118, '9906641516', '6632', 'images2/Screenshot_20240321_123228_mPAY-Delight.jpg', 'Silver', 'wani38330@gmail.com', 'off'),
(1119, '70062 47436', '14374', 'images2/IMG-20240427-WA0058.jpg', 'Diamond', 'mehakmehak6385@gmail.com', 'diamond'),
(1120, '7889770567', '30244', '0', 'Elite', 'sadeeqalam060@gmail.com', 'off'),
(1121, '6006320600', 'No', '0', 'Elite', 'shabirahmad0408@gmail.com', 'off'),
(1122, '9103706604', 'Mudu@1318', '0', 'Elite', 'iqlasrasool9103@gmail.com', 'off'),
(1123, '7006024811', '6632', '0', 'Gold', 'wanisajad126@gmail.com', 'off'),
(1124, '70067 13696', '14374', 'images2/Screenshot_2024-04-28-10-16-45-75_40deb401b9ffe8e1df2f1cc5ba480b12.jpg', 'Elite', 'sanayou836@gmail.com', 'elite'),
(1125, '6005902871', '65088', 'images2/Screenshot_2024-04-28-13-38-04-99_4336b74596784d9a2aa81f87c2016f50.jpg', 'Gold', 'burhanwani910@gmail.com', 'off'),
(1126, '6005458325', '92634', 'images2/Screenshot_2024-04-28-13-39-19-597_com.phonepe.app.jpg', 'Diamond', 'zakirpeer624@gmail.com', 'diamond'),
(1128, '+9190300195', '66446', '0', 'diamond ', 'iqranikhat45@gmail.com', 'diamond '),
(1130, '08803242106', '5637', 'images2/Screenshot_2024-04-28-11-08-16-898_net.one97.paytm.jpg', 'Elite', 'Muzamilbashir1912@gmail.com', 'elite'),
(1131, '7780854127', '6632', 'images2/Screenshot_20240428_161402_GPay.jpg', 'Gold', 'waniirfan002@gmail.com', 'off'),
(1132, '9906619815', '2912', '0', 'Gold', 'waniirfan01@gmail.com', 'off'),
(1133, '06006456793', '1016', '0', 'Gold', 'kumarnasir998@gmail.com', 'off'),
(1134, '6005925311', '6632', 'images2/IMG-20240428-WA0031.jpg', 'Silver', 'khannairah2233@gmail.com', 'silver'),
(1135, '6006455985', '5637', '0', 'Elite', 'bhatfurqan775@gmail.com', 'off'),
(1136, '8899998617', '5637', 'images2/inbound7525186425766155292.jpg', 'Elite', 'iramahmadlone@gmail.com', 'off'),
(1137, 'aleeshawani', '58978', 'images2/Screenshot_2024-04-28-21-40-49-299_com.phonepe.app.jpg', 'Gold', 'aleeshawani222@gmail.com', 'gold'),
(1138, '9682673566', '5637', '0', 'Elite', 'basitkhan20121@gmail.com', 'off'),
(1139, '6006211427', '7647', 'images2/IMG-20240428-WA0013.jpg', 'Diamond', 'ubaidajaz2150@gmail.com', 'diamond'),
(1140, '+9160059114', '18096', 'images2/BeautyPlus_20240218135612173_save.jpg', 'Elite', 'yk7524550@gmail.com', 'off'),
(1141, '8492000742', '193503', '0', 'Diamond', 'Sheikhnajamul147@gmail.com', 'off'),
(1142, '7889539134', '7647', '0', 'Gold', 'nadeemjatt32110@gmail.com', 'off'),
(1143, '9030019568', '66446', '0', 'Diamond', 'iqranikath61@gmail.com', 'diamond'),
(1144, '6281691642', 'No', 'images2/Screenshot_2024-04-29-04-06-29-143_com.google.android.apps.nbu.paisa.user.jpg', 'Elite', 'isyed2728@gmail.com', 'elite'),
(1145, '7006335835', '5637', '0', 'Gold', 'irruirfan426@gmail.com', 'off'),
(1146, '7889539134', '27545', '0', 'Elite', 'darnadeem029@gmail.com', 'elite'),
(1147, '8493093538', '14112', 'images2/1000010316.jpg', 'Elite', 'sayimanabi5@gmail.com', 'off'),
(1148, '6006617919', '27545', 'images2/IMG-20240429-WA0030.jpg', 'Silver', 'khanaijaz617919@gmail.com', 'silver'),
(1149, ' 88996 2457', '8802', 'images2/Screenshot_2024-04-29-11-41-24-352_com.android.chrome.jpg', 'Elite', 'hafsafayaz56@gmail.com', 'elite'),
(1150, '8082744803', '27545', 'images2/IMG_20231225_132633.jpg', 'Elite', 'safeernajar60@gmil.com', 'off'),
(1151, '8899914566', '65088', '0', 'diamond ', 'bhatshahidshahidbhat90@gmail', 'diamond'),
(1152, '7893672821', '66446', '0', 'Elite', 'syedayan2821@gmail.com', 'off'),
(1153, '9622681504', '14112', '0', 'Diamond', 'awckib9@gmail.com', 'off'),
(1154, '6006312908', '5637', '0', 'Gold', 'ratherishaq98@gmail.com', 'off'),
(1155, '9682519319', '14112', '0', 'Elite', 'shiekhheeba@gmail.com', 'off'),
(1156, '+91 91498 9', '58978', '0', 'Elite', 'shahidabashir97@gmail.com', 'elite'),
(1157, '8082009751', '9582', 'images2/IMG-20240429-WA0063.jpg', 'Silver', 'aabida786@gmail.com', 'silver'),
(1158, '9103225008', '13407', '0', 'Elite', 'arhanbabu1801@gmail.com', 'off'),
(1159, '9103225008', '13407', 'images2/Screenshot_2024-04-29-23-11-31-987_com.phonepe.app.jpg', 'Elite', 'arahaan786@gmail.com', 'elite'),
(1160, '9541005727', 'Y5hduyv', '0', 'Elite', 'waraasif10@gmail.com', 'off'),
(1161, '7006211889', '58978', 'images2/WhatsApp Image 2024-04-30 at 11.43.14_9847c2ec.jpg', 'Elite', 'mustafahajimusta@gmail.com', 'elite'),
(1162, '6006717605', '7647', 'images2/IMG-20240430-WA0003.jpg', 'Elite', 'sheikhraju365@gmail.com', 'elite'),
(1163, '7889581278', '58978', 'images2/Screenshot_2024-04-30-22-49-44-298_com.phonepe.app.jpg', 'Elite', 'lonebilal581278@gmail.com', 'elite'),
(1164, '7051991311', '92634', 'images2/1000011497.jpg', 'Elite', 'rarhertomato705@gmail.com', 'elite'),
(1165, '7780839746', '58978', 'images2/IMG-20240430-WA0040.jpg', 'Elite', 'najarakhter06@gmakl.com', 'elite'),
(1166, '7780905068', '58978', 'images2/Screenshot_2024-04-30-20-47-03-804_com.phonepe.app.jpg', 'Elite', 'emmuwani11@gmail.com', 'elite'),
(1167, '7298614026', '13407', 'images2/1000152717.jpg', 'Elite', 'msuhailnajar786@gmail.com', 'elite'),
(1168, '+9191036428', '100', 'images2/Screenshot_20240312-193342.jpg', 'Diamond', 'lonetawfeeq413@gmail.com', 'off'),
(1169, '9149703484', '8200', 'images2/IMG-20240501-WA0013.jpg', 'Elite', 'mutahir5889@gmail.com', 'elite'),
(1170, '8978321107', '66446', '0', 'Elite', 'alishafatima76@gmail.com', 'elite'),
(1171, '8978321107', '66446', 'images2/IMG_20240418_130837_317.jpg', 'Elite', 'alishakhanam@xn--gmailcom-rr3d', 'elite'),
(1172, '9584994297', '58978', 'images2/IMG-20240501-WA0024.jpg', 'Elite', 'parulverma1994@gmail.com', 'elite'),
(1173, '6005321106', '51985', '0', 'Gold', 'catc18100@gmail.com', 'gold'),
(1174, '78789943014', '9582', 'images2/WhatsApp Image 2024-05-01 at 16.54.29_aaec8e8b.jpg', 'Elite', 'bhttajmul196@gmail.com', 'elite'),
(1175, '8899914566', '5992', '0', 'Elite', 'jozyashraf1982@gmail.com', 'off'),
(1176, '7889318689', '5992', '0', 'Elite', 'bb4031960@gmail.com', 'off'),
(1177, '8491867960', '92634', 'images2/Screenshot_2024-05-01-19-57-48-710_com.phonepe.app.jpg', 'Silver', 'sahilpeer997@gmail.com', 'silver'),
(1178, '8493919757', '5637', '0', 'Gold', 'Sheikhlateef246@gmail.com', 'off'),
(1179, '6006297696', '58978', 'images2/Screenshot_2024-05-02-15-27-07-964_com.phonepe.app.jpg', 'Silver', 'tanishnazir407@gmail.com', 'silver'),
(1180, '7006020774', '39095', 'images2/IMG-20240502-WA0005.jpg', 'Elite', 'bhatamir3050@gmail.com', 'elite'),
(1181, '6005241041', '58978', 'images2/IMG-20240502-WA0046.jpg', 'Elite', 'musratchooty4@gmail.com', 'elite'),
(1182, '9541877753', '73116', 'images2/Screenshot_2024-05-02-18-33-07-240_com.whatsapp.jpg', 'Diamond', 'malikadnanfayaz02@gmail.com', 'diamond'),
(1183, '9103225008', '58978', 'images2/Screenshot_2024-05-03-12-38-49-809_com.phonepe.app.jpg', 'Elite', 'sunneysingh192@gmail.com', 'elite'),
(1184, '9154782941', '503002', '0', 'Gold', 'syedmaifuz600@gmail.com', 'off'),
(1185, '9103113013', '65088', 'images2/IMG_20240425_083234.jpg', 'Diamond', 'Khaninayat5390@gmail.com', 'diamond'),
(1186, '6005885472', '2049', '0', 'Silver', 'khanjunaid60058854@gamil.com', 'off'),
(1187, '08082845802', '65088', '0', 'Elite', 'mudasirparvaiz7@gmail.com', 'off'),
(1188, '8899892437', '8802', '0', 'Elite', 'bhataady67@gmail.com', 'off'),
(1189, '6006183632', '58978', 'images2/Screenshot_2024-05-04-13-21-33-818_com.phonepe.app.jpg', 'Elite', 'buttaaqib80@gmail.com', 'elite'),
(1190, '6005736901', '1234', 'images2/1000125466.jpg', 'Diamond', 'nadeembilal4817@gmail.com', 'off'),
(1191, '6005831310', '8802', '0', 'Elite', 'eraqib1995@gmail.con', 'off'),
(1192, '6005831310', '58978', 'images2/Screenshot_2024-05-04-20-48-59-460_com.phonepe.app.jpg', 'Elite', 'eraqib1995@gmail.com', 'elite'),
(1193, '7780830388', '58978', 'images2/Screenshot_2024-05-05-13-43-48-334_com.phonepe.app.jpg', 'Elite', 'waseemraja868@gmail.com', 'elite'),
(1194, '8082517218', '193221', '0', 'Elite', 'wtawseef508@gmail.com', 'off'),
(1195, '7006018824', '8802', 'images2/Screenshot_2024-05-05-15-39-07-453_com.phonepe.app.jpg', 'Elite', 'jaffarjnj@gmail.com', 'elite'),
(1196, '8082402918', '65088', '0', 'Elite', 'wabid294@gmail.com', 'elite'),
(1197, '9797619655', '3001', '0', 'Elite', 'maenterprisesbandipora@gmail.com', 'off'),
(1198, '9149843805', '7647', 'images2/IMG-20240505-WA0018.jpg', 'Elite', 'loneadil432@gmail.com', 'elite'),
(1199, '9149762093', '64095', 'images2/IMG_20240415_150326_914.webp', 'Gold', 'ratheruzma93@gmail.com', 'gold'),
(1200, '8493072848', '66446', '0', 'Diamond', 'hasibpdhar889@gmail.com', 'off'),
(1201, '7889386871', '58978', 'images2/Screenshot_2024-05-05-19-03-04-312_com.phonepe.app.jpg', 'Silver', 'wanim7740@gmail.com', 'elite'),
(1202, '7489093120', '92634', 'images2/92cfec21-d3a9-419d-a0c6-f0663f06e54b.jpeg', 'Elite', 'syedanasali2607@gmail.com', 'elite'),
(1203, '7051419618', '7620', '0', 'Gold', 'powais93@gmail.com', 'gold'),
(1204, '9149930124', '8802', 'images2/IMG-20240505-WA0053.jpg', 'Elite', 'khanenterprises443@gmail.com', 'elite'),
(1206, '  910321540', '92634', '0', 'Diamond', 'bazilapeer64@gmail.com', 'diamond'),
(1207, '8825095753', '27545', 'images2/IMG-20240505-WA0004.jpg', 'Elite', 'myselfzaheer457@gmail.com', 'elite'),
(1208, '9149854754', 'A', '0', 'Diamond', 'ds7230546@gmail.com', 'off'),
(1209, '07051607481', '89594', '0', 'Elite', 'mudasirhussain3009@gmail.com', 'off'),
(1210, '07051607481', '89594', '0', 'Diamond', 'mudasirhussain99777@gmail.com', 'off'),
(1211, '8057130177', '3227', 'images2/Screenshot_2024-05-06-09-05-44-90_49b96b5fbae0d12a18edc4a3afe0dfd9.jpg', 'Elite', 'uk76238@gmail.com', 'elite'),
(1212, '7006907611', '58978', 'images2/IMG-20240506-WA0007.jpg', 'Elite', 'sheikhaaqib255@gmail.com', 'elite'),
(1213, '7729023091', '6052', '0', 'Elite', 'ramprakash.koppera@gmail.com', 'off'),
(1214, '9018769666', '7620', 'images2/IMG-20240506-WA0000.jpg', 'Gold', 'peers5326@gmail.com', 'gold'),
(1215, '8492923941', '14374', 'images2/IMG-20240506-WA0000.jpg', 'Diamond', 'Parrayalixa@gmail.com', 'diamond'),
(1216, '6006435820', '1238', '0', 'Diamond', 'mirmubashir822@gmail.com', 'diamond'),
(1217, '6006155562', '58978', 'images2/IMG-20240506-WA0052.jpg', 'Silver', 'kishtiyaq707@gmail.com', 'silver'),
(1218, '6005825335', '121472', '0', 'Elite', 'hidayathadi127@gmail.com', 'elite'),
(1219, '7889379064', '92634', 'images2/Screenshot_2024-05-06-22-41-40-045_com.phonepe.app.jpg', 'Diamond', 'mahjabeena30@gmail.com', 'diamond'),
(1220, '6207051155', '49107', 'images2/Screenshot_2023-12-15-17-24-34-18_1c337646f29875672b5a61192b9010f9.jpg', 'Diamond', 'azamhamza895@gmail.com', 'off'),
(1221, '9651183543', '3227', '0', 'Elite', 'surajv3215@gmail.com', 'elite'),
(1222, '+9160061049', '9496', '0', 'Diamond', 'mt292792@gmail.com', 'off'),
(1223, '7889754125', '92634', 'images2/Screenshot_2024-05-07-13-28-00-195_com.android.chrome.jpg', 'Diamond', 'loverdeath927@gmail.com', 'off'),
(1224, '+91 60061 6', '29540', '0', 'Diamond', 'parraynazu143@gmail.com', 'diamond'),
(1225, '7006739004', '1238', 'images2/IMG-20240507-WA0031.jpg', 'Elite', 'danishkhuroo53@gmail.com', 'elite'),
(1226, '6006705764', '29540', '0', 'Diamond', 'Ssafeenakhazir@gmail.com', 'diamond'),
(1227, '9149414704', '1238', 'images2/1000159004.jpg', 'Elite', 'masoodab250@gmail.com', 'elite'),
(1228, '6005759793', '58978', '0', 'Elite', 'Mahirajaan583@gmail.com', 'elite'),
(1229, '9682194726', '58978', 'images2/Screenshot_2024-05-07-17-09-27-717_com.android.chrome.jpg', 'Elite', 'Peerhaya@gmail.com', 'elite'),
(1230, '84939 12512', '14374', 'images2/IMG-20240507-WA0020.jpg', 'Diamond', 'wagayanayat030@gmail.com', 'diamond'),
(1231, '+91 60068 1', '7620', 'images2/IMG-20240507-WA0032.jpg', 'Gold', 'seemujaanseemu@gmail.com', 'gold'),
(1232, '9149843805', '27545', '0', 'Elite', 'Loneaadil432@gmail.com', 'off'),
(1233, '7006936785', '14374', '0', 'Diamond', 'sahilshafi502@gmail.com', 'diamond'),
(1234, '6006056407', '58978', 'images2/Screenshot_2024-05-08-18-33-12-950_com.phonepe.app.jpg', 'Elite', 'Innocentmajid343@gmail.com', 'elite'),
(1235, '9596397588', 'Mmbhbh', '0', 'Elite', 'sm.preneur28@gmail.com', 'off'),
(1236, '8082661309', '65088', 'images2/Screenshot_2024-05-08-23-24-14-991_com.android.chrome.jpg', 'Elite', 'mirimtiyaz528@gmail.com', 'off'),
(1237, '9509303289', '65088', 'images2/-894153.jpg', 'Diamond', 'tusharrawat7560@gmail.com', 'diamond'),
(1238, '8793546887', '13841', 'images2/Screenshot_20240509-194902_PhonePe.jpg', 'Diamond', 'cbsbhagat@gmail.com', 'diamond'),
(1239, '8874320103', '9919', '0', 'Elite', 'rupeshsoni8874@gmail.com', 'off'),
(1240, '7006634482', '8802', 'images2/Screenshot_2024-05-09-20-17-03-221_net.one97.paytm.jpg', 'Elite', 'umarramzan12@gmail.com', 'elite'),
(1241, '6005676648', '123456789', '0', 'Elite', 'waniumer2545@gmail.com', 'off'),
(1242, '9797824032', '14374', '0', 'Elite', 's@gmail.com', 'off'),
(1243, '8421593552', 'Sponsor co', '0', 'Elite', 'rupamotdhare@gmail.com', 'off'),
(1244, '9906819766', '7620', 'images2/1000206198.jpg', 'Elite', 'sheikhtariq001@gmail.com', 'elite'),
(1245, '9160478551', '58978', 'images2/Screenshot_2024-05-10-21-46-04-065_com.phonepe.app.jpg', 'Elite', 'duanaaz129@gmail.com', 'elite'),
(1247, '7006564977', '1985', '0', 'Elite', 'bhat4984@gmail.com', 'off'),
(1248, '99999999', '9999', 'images2/Screenshot_20240507-185324.jpg', 'Diamond', 'demoaccount@gmail.com', 'off'),
(1249, '7259640202', '92634', '0', 'Elite', 'hmdogra@gmail.com', 'elite'),
(1250, '6006453504', '14374', '0', 'Elite', 'nadeemmir957@gmail.com', 'elite'),
(1251, '7480814623', '14374', 'images2/IMG-20240511-WA0065.jpg', 'Elite', 'mrityunjay.748081@gmail.com', 'elite'),
(1252, '7006015589', '58978', '0', 'Gold', 'zafrullah044@gmail.com', 'off'),
(1253, '8491022211', '58978', 'images2/Screenshot_2024-05-12-14-45-35-250_com.phonepe.app.jpg', 'Diamond', 'muntazirnissar7@gmail.com', 'diamond'),
(1254, '9797220349', '65088', 'images2/IMG_2241.png', 'Elite', 'arsalanmushtaq181@gmail.com', 'elite'),
(1255, '9797220349', '7285', 'images2/IMG_1092.png', 'Elite', 'salifsammir@gmail.com', 'off'),
(1256, '09541195687', '14374', 'images2/IMG-20240512-WA0005.jpg', 'Diamond', 'maqboolubaid061@gmail.com', 'diamond'),
(1257, '9103358905', '14374', '0', 'Silver', 'wanishazu53617@gmail.com', 'off'),
(1258, '9906086815', '58978', 'images2/IMG-20240512-WA0186.jpg', 'Elite', 'khursheedhaji55@gmail.com', 'elite'),
(1259, '9906086815', '3467', 'images2/Screenshot_2024-05-13-22-02-38-712_com.android.chrome.jpg', 'Elite', 'khursheedhaji@gmail.com', 'off'),
(1260, '7006466326', '58978', '0', 'Elite', 'wanihafeez99@gmail.com', 'off'),
(1261, '9906986776', '42819', 'images2/1000728825.jpg', 'Diamond', 'loneb3508@gmail.com', 'diamond'),
(1262, '+91 9541591', '27545', '0', 'Elite', 'umerkhayam2005@gmail.com', 'off'),
(1263, '9541158129', '7285', 'images2/1000038683.jpg', 'Elite', 'mushtaqahmadk222@gmail.com', 'elite'),
(1264, '9622406675', '58978', '0', 'Elite', 'wanihafizullah89@rediffmail.com', 'off'),
(1265, '6006782584', '6802', 'images2/IMG_2256.png', 'Elite', 'murtazaamushtaq8709@gmail.com', 'elite'),
(1266, '9541190256', 'Murtaza', '0', 'Silver', 'iphonerealmeoppo@gmail.com', 'off'),
(1267, '8493901972', 'Faizan', 'images2/1000001633.jpg', 'Elite', 'faesaliqbal67@gmail.com', 'elite'),
(1268, '6005994569', '92634', 'images2/Screenshot_2024-05-13-00-26-25-089_com.phonepe.app.jpg', 'Elite', 'wajidaashraf2023@gmail.com', 'elite'),
(1269, '+9170818670', '58798', '0', 'Elite', 'saleemnajar1505@gmail.com', 'off'),
(1270, '999999999', '9999', 'images2/telegram.png', 'Diamond', 'demo9999@gmail.com', 'off'),
(1271, '999999', '3886', 'images2/Screenshot_20240513-084510.jpg', 'Diamond', 'demo66@gmail.com', 'diamond'),
(1272, '6005353856', '65088', '0', 'Elite', 'imir4543@gmail.com', 'off'),
(1273, '8959655645', '65088', '0', 'Diamond', 'priyaneema810@gmail.com', 'diamond'),
(1274, '9596575201', '7285', '0', 'Elite', 'musamirallie0789@gmail.com', 'off'),
(1275, '7889873317', '58978', 'images2/Screenshot_2024-05-13-20-52-15-506_com.phonepe.app.jpg', 'Elite', 'faisalyt88@gmail.com', 'elite'),
(1276, '7006973293', '58978', 'images2/Screenshot_2024-05-13-23-34-55-465_com.phonepe.app.jpg', 'Elite', 'bhatkhalid953@gmail.com', 'elite'),
(1277, '8493982034', '58978', 'images2/Screenshot_2024-05-13-23-47-01-022_com.phonepe.app.jpg', 'Elite', 'qais26785@gmail.com', 'elite'),
(1278, '7051314312', '58978', 'images2/Screenshot_2024-05-14-13-26-58-621_com.phonepe.app.jpg', 'Elite', 'Shaheenajanwara@gmail.com', 'elite'),
(1279, '9103242503', '1234', '0', 'Elite', 'murtaza.dbtech@gmail.com', 'off'),
(1280, '9149460797', '4598', 'images2/Snapchat-1121687930.jpg', 'Elite', 'mukaanshafi038@gmail.com', 'elite'),
(1281, '9103215877', '51985', '0', 'Elite', 'meerhilal710@gamil.com', 'off'),
(1282, '910315877', '51985', '0', 'Elite', 'meerhilal352@gmail.com', 'elite'),
(1283, '+9170510519', '65088', '0', 'Diamond', 'malikkamrankamran396@gmail.com', 'diamond'),
(1284, '9622960998', '858978', 'images2/Screenshot_2024-05-17-11-48-25-298_com.phonepe.app.jpg', 'Elite', 'sahillone770@gmail.com', 'elite'),
(1285, '6005108035', '52288', '0', 'Diamond', 'bilkissmajeed112233@gmail.com', 'off'),
(1286, '+91 9541591', '27545', 'images2/Screenshot_2024-05-17-13-17-19-36_944a2809ea1b4cda6ef12d1db9048ed3.jpg', 'Diamond', 'aadiaadi2355@gmail.com', 'diamond'),
(1287, '6005452746', '48222', '0', 'Elite', 'khalidbhbhatkhalid@gmail.com', 'off'),
(1288, '9103512850', '65088', '0', 'Diamond', 'mahjoorbilal9@gmail.com', 'diamond'),
(1289, '6006856194', '27545', '0', 'Silver', 'sahilwani472@gmail.com', 'off'),
(1290, '6006856194', '27545', '0', 'Silver', 'bhaisahil392@gmail.com', 'off'),
(1291, '8899537254', '58978', 'images2/Screenshot_2024-05-17-17-02-41-831_com.android.chrome.jpg', 'Elite', 'meerzainmeer898@gmail.com', 'elite'),
(1292, 'no:60056089', '58978', 'images2/IMG-20240517-WA0109.jpg', 'Diamond', 'amairaamjid589@gmail.com', 'diamond'),
(1293, '9149815267', '73116', '0', 'Elite', 'mohtishimshabir9@gmail.com', 'elite'),
(1294, ' 91032 3560', '14374', '0', 'Elite', 'Drtufailt@gmail.com', 'off'),
(1295, '9797529541', '75228', 'images2/Screenshot_2024-05-17-20-01-55-171_com.android.chrome.jpg', 'Diamond', 'lonejunaid5452@gmail.com', 'diamond'),
(1296, '6006585574', '8802', 'images2/Screenshot_2024-05-17-19-55-26-345_com.android.chrome.jpg', 'Elite', 'mehruunnissa62@gmail.com', 'elite'),
(1297, '9797529541', '75228', '0', 'Diamond', 'junaidulislaam199@gmail.com', 'off'),
(1298, '8082744803', '27545', 'images2/Screenshot_2024-05-17-20-10-14-868_com.phonepe.app.jpg', 'Diamond', 'safeernajar72@gmail.com', 'diamond'),
(1299, '9596104989', '75228', 'images2/Screenshot_20240517_203440_FamApp.jpg', 'Diamond', 'zeanmalik75@gmail.com', 'diamond'),
(1300, '6006856194', '27545', 'images2/IMG-20240517-WA0017.jpg', 'Elite', 'iqrasahil0919@gmail.com', 'elite'),
(1301, '6006713314', '52355', 'images2/1000302539.jpg', 'Diamond', 'zs326835@gmail.com', 'elite'),
(1302, '+91 60051 4', '58978', 'images2/Screenshot_2024-05-17-20-55-34-885_net.one97.paytm.jpg', 'Elite', 'rabilshah94@gmail.com', 'elite'),
(1304, '9622820235', '52355', '0', 'Diamond', 'qureshimomin214@gmail.com', 'off'),
(1305, '8825073956', '69762', '0', 'Elite', 'aaqibpathan28@gmail.com', 'off'),
(1306, '9149815267', '58978', 'images2/Screenshot_2024-05-17-22-36-38-467_net.one97.paytm.jpg', 'Elite', 'shaikshabir153@gmail.com', 'elite'),
(1307, '+91 60052 5', '39348', 'images2/IMG-20240517-WA0055.jpg', 'Elite', 'wagayaqib487@gmail.com', 'elite'),
(1308, '09906666806', '2385', 'images2/Screenshot_20240517-234219.png', 'Diamond', 'TAJAMULSUFI96@GMAIL.COM', 'diamond'),
(1309, '7051801341', '14374', 'images2/IMG-20240518-WA0000.jpg', 'Elite', 'bushrashafi473@gmail.com', 'elite'),
(1310, '9797196683', '69762', 'images2/1000028411.jpg', 'Elite', 'khankulsum8899@gmail.com', 'off'),
(1311, '6005608988', '69762', '0', 'Elite', 'Amairaamjid@589gmail.com', 'off'),
(1312, '9596296853', '65088', '0', 'Diamond', 'kh923471@gmail.com', 'diamond'),
(1313, '6006187562', '2385', '0', 'Silver', 'peerirfan751@gmail.com', 'off'),
(1314, '9797196683', '69762', '0', 'Elite', 'khansadu123@gmail.com', 'off'),
(1315, '9596630849', '65088', 'images2/6ca7d861-454d-4b68-beed-6b342be12cbc-1_all_8052.jpg', 'Diamond', 'naveedbashir705@gmail.com', 'diamond'),
(1316, '9596401175', '74510', '0', 'Gold', 'rajaumaaid99@gmail.com', 'off'),
(1317, '9149843805', '27545', 'images2/IMG-20240518-WA0045.jpg', 'Diamond', 'aadillone2180@gmail.com', 'diamond'),
(1318, '7780900834', '58978', '0', 'Diamond', 'yasirnaik07@gmail.com', 'off'),
(1319, '8899750249', '39348', '0', 'Elite', 'yaarpanun70@gmail.com', 'elite'),
(1320, '6005381405', '2049', '0', 'Elite', 'khanfirdous1266@gmail.com', 'off'),
(1321, '6005267607', '27545', 'images2/IMG-20240519-WA0014.jpg', 'Diamond', 'adiiadil2150@gmail.com', 'diamond'),
(1322, '9596409082', '90803', '0', 'Elite', 'mirtalib663@gmail.com', 'off'),
(1323, '9596409082', '90803', '0', 'Elite', 'mirtalib7422@gmail.com', 'off'),
(1324, '9797235932', '74510', '0', 'Diamond', 'suhailz0123456789@gmail.com', 'off'),
(1325, '9149644293', '4598', '0', 'Elite', 'qureshis99@gmail.com', 'off'),
(1326, '9149930124', '58978', 'images2/Screenshot_2024-05-20-17-12-38-842_com.phonepe.app.jpg', 'Elite', 'Enenterprises443@gmail.com', 'elite'),
(1327, '8825004589', '74510', '0', 'Elite', 'adfarkhan835@gmailcom', 'off'),
(1328, '6005931338', '55266', 'images2/Screenshot_2024-05-20-20-40-28-59_944a2809ea1b4cda6ef12d1db9048ed3.jpg', 'Elite', 'warmomin842@gmail.com', 'elite'),
(1329, '6005884626', '5637', '0', 'Elite', 'ehmdsahil@gmail.com', 'off'),
(1330, '9541010686', '58978', '0', 'Elite', 'irshadbhat13@gmail.com', 'off'),
(1331, '6006823733', '90803', 'images2/IMG_20240507_182008.jpg', 'Elite', 'riyazahmadpahlipora6@gmail.com', 'off'),
(1332, '9018860892', '74510', 'images2/Screenshot_2024-05-21-15-31-06-454_com.whatsapp.jpg', 'Elite', 'smehakhan19@gmail.com', 'elite'),
(1333, '6006056407', '58978', '0', 'Silver', 'sanasheikhh80@gmail.com', 'off'),
(1334, '7050213362', '58978', 'images2/Screenshot_2024-05-21-18-11-47-208_net.one97.paytm.jpg', 'Elite', 'sanjanasingh021@gmail.com', 'elite'),
(1335, '8493907660', '58978', '0', 'Elite', 'moizanfarooq@gmail.com', 'off'),
(1336, '7080904050', '58978', '0', 'Silver', 'abcdefgggg@gmail.com', 'off'),
(1337, '9906692464', '58978', 'images2/Screenshot_2024-05-21-18-04-12-075_com.android.chrome.jpg', 'Elite', 'kashifkakroo@gmail.com', 'off'),
(1338, '09991563729', '123', 'images2/Screenshot_20240522-125628_Chrome.jpg', 'Elite', 'gwdevil97@gmail.com', 'off'),
(1339, '9906692464', '58978', 'images2/Screenshot_2024-05-22-16-48-51-549_com.hdfcbank.payzapp.jpg', 'Elite', 'bazilabatool97@gmail.com', 'elite'),
(1340, '6006690438', '65088', '0', 'Elite', 'hellobro6602@gmail.com', 'off'),
(1341, '6006690438', '65088', '0', 'Silver', 'najarnajar0980@gmail.com', 'off'),
(1342, '7006850086', '7647', 'images2/Screenshot_2024-05-22-17-59-10-765_com.phonepe.app.jpg', 'Elite', 'ubaidah724@gmail.com', 'elite'),
(1343, '6005861632', '2385', '0', 'Diamond', 'nabisaleem35@gmail.com', 'off'),
(1344, '9103937792', '2385', '0', 'Elite', 'seeratjan95003@gmail.com', 'elite'),
(1345, '8307393558', '123', '0', 'Elite', 'krishna24082005@gmail.com', 'off'),
(1346, '6006291589', '112233', 'images2/Screenshot_2024-05-20-17-24-17-281_com.branch_international.branch.branch_demo_android.jpg', 'Elite', 'Zakirshah22102005@gmail.com', 'off'),
(1347, '7889394051', '58978', '0', 'Elite', 'owaisrehman001@gmail.com', 'off'),
(1348, '9310431816', '99999', '0', 'Diamond', 'skillvigor3@gmail.com', 'off'),
(1349, '9509303289', '53724', '0', 'Diamond', 'tusharsingh2738@gmail.com', 'off'),
(1350, '8082431201', '48222', '0', 'Gold', 'bhatbilalbhat645@gmail.com', 'off'),
(1351, '7780975623', '48222', '0', 'Diamond', 'bhatxuvabhatxuva@gmailcom', 'off'),
(1352, '7006873248', '48222', '0', 'Elite', 'tahirfayaz17@gmail.com', 'off'),
(1353, '9103286271', '48222', '0', 'Elite', 'sameerawan6299@gmail.com', 'off'),
(1354, '6006246730', '48222', '0', 'Elite', 'sheikhaamir1297@gmail.com', 'off'),
(1355, '6006246730', '48222', '0', 'Elite', 'sssmir@gmail.com', 'off'),
(1356, '9797858285', '48222', '0', 'Elite', 'rmir8026@gmail.com', 'off'),
(1357, '06006912590', '193503', '0', 'Elite', 'Sheikhmafuza1314@gmail.com', 'off'),
(1358, '8899900135', '48222', '0', 'Silver', 'salmankulley@gmail.com', 'off'),
(1359, '7006720923', '58978', '0', 'Elite', 'yawerwaseem123@gmail.com', 'off'),
(1360, '7006720923', '58978', '0', 'Elite', 'yawerwaseem6@gmail.com', 'off'),
(1361, '7006720923', '58978', '0', 'Elite', 'yawerwaseem160634@gmail.com', 'off'),
(1362, '8082718154', '48222', '0', 'gold', 'sheikhwishu125@gmail.com', 'gold'),
(1363, '9906965501', '74510', '0', 'Elite', 'sanahfarooq786@gmail.com', 'elite'),
(1364, '9858466133', '48222', '0', 'Diamond', 'haroonashraf943@gmail.com', 'diamond'),
(1365, '6006529432', '74510', '0', 'Diamond', 'qadeer21789@gmail.com', 'diamond'),
(1366, '6005609826', '89542', '0', 'Elite', 'faisalakram989@gmail.com', 'off'),
(1368, '9682303040', '58978', '0', 'Elite', 'SALEEMK1235@GMAIL.COM', 'elite'),
(1370, '9906610901', '48222', '0', 'Elite', 'sagarmalik7169@gmail.com', 'off'),
(1371, '963217858', '999', 'images2/Screenshot_20240525-103620.jpg', 'Gold', 'demo123@gmail.com', 'off'),
(1372, '9895356586', '3886', 'images2/Screenshot_20240525-103620.jpg', 'Diamond', 'system@gmail.com', 'off'),
(1373, '6005538106', 'None', '0', 'Diamond', 'bilalbhat786219@gmail.com', 'off'),
(1374, '9541968122', '124', '0', 'Elite', 'asimwanix34@gmail.com', 'off'),
(1375, '6005538106', '48222', '0', 'Gold', 'theshoaib019@gmail.com', 'gold'),
(1376, '9103351148', '65088', 'images2/Screenshot_2024-05-27-17-28-25-387_com.fss.JK6.jpg', 'Diamond', 'mallashakir135@gmail.com', 'diamond'),
(1377, '9320635212', '48222', '0', 'Gold', 'darmujtaba123@gmail.com', 'off'),
(1378, '91 80828 80', '92634', '0', 'Diamond', 'imtiyazsheikh999@gmail.com', 'diamond'),
(1379, '9070582396', '58978', 'images2/Screenshot_2024-05-28-22-48-22-015_com.phonepe.app.jpg', 'Elite', 'sheebasudeep@gmail.com', 'elite'),
(1381, '9310431816', '3333', '0', '', 'sonalbrain@gmail.com', 'off'),
(1383, '9310431816', '3886', '0', '', 'sonalhero@gmail.com', 'off'),
(1384, '7006984242', '58978', '0', 'Elite', 'asim76670@gmail.com', 'off'),
(1385, '9797146394', '48222', '0', 'Elite', 'paulzehran7@gmail.com', 'off'),
(1386, '6005917734', '16100', 'images2/Screenshot_2024-03-24-17-40-46-455_com.fss.JK6.jpg', 'Elite', 'junaidjunaid@gmail.com', 'elite'),
(1387, '91038 84306', '8802', 'images2/IMG-20240530-WA0004.jpg', 'Elite', 'pakeezareyaz94@gmail.com', 'elite'),
(1388, '8082757595', '192221', 'images2/images (1).jpeg', 'Diamond', 'mohammadniyaz8112@gmail.com', 'off'),
(1389, '9951064473', '90045', 'images2/1000016431.jpg', 'Elite', 'srinag774624@gmail.com', 'elite'),
(1390, '6005640227', '16100', 'images2/Screenshot_2024-05-30-10-32-36-241_com.fss.JK6.jpg', 'Elite', 'wanisameer296@gmail.com', 'elite'),
(1391, '9797858285', '48222', '0', 'Silver', 'mirrashid226@gmail.com', 'silver'),
(1392, '6005353856', '65088', '0', '', 'skillzard780@gmail.com', 'elite'),
(1394, '9797743930', '16100', 'images2/Screenshot_2024-05-30-10-32-36-241_com.fss.JK6.jpg', 'Diamond', 'bhatbilal6754@gmail.com', 'diamond'),
(1395, '6005686102', '58978', 'images2/Screenshot_2024-06-01-18-55-50-750_com.phonepe.app.jpg', 'Elite', 'aabimeer666@gmail.com', 'elite'),
(1396, '9174771495', '86871', 'images2/Screenshot_2024-06-01-13-05-05-20_ba41e9a642e6e0e2b03656bfbbffd6e4.jpg', 'Diamond', 'ajaytadam0215@gmail.com', 'off'),
(1397, '9834219388', '7228', '0', 'Elite', 'pitarsarang1@gmail.com', 'off'),
(1398, '95410 10686', '58978', 'images2/IMG-20240601-WA0146.jpg', 'Silver', 'irshadbahat786@gmail.com', 'silver'),
(1399, '09622924534', '90045', '0', 'Elite', 'shabirchoudhaary77@gmail.com', 'elite'),
(1400, '7889922518', '90045', '0', 'Elite', 'sameer.official0119@gmail.com', 'off'),
(1401, '9596280754', '7926', '0', 'Silver', 'mirmaroof002@gmail.com', 'off'),
(1402, '8493949254', '90045', '0', 'Silver', 'mirkabeer360@gmail.com', 'off'),
(1403, '9310431816', '5182', '0', '', 'aryankumar5555n@gmail.com', 'off'),
(1404, '45454545', '454', '0', '', 'aisa@gmail.com', 'off'),
(1405, '7878787878', '454545', '0', 'silver', 'krishna@gmail.com', 'off'),
(1406, '9906451927', '123456', '0', 'Diamond', 'rajunajar222@gmail.com', 'off'),
(1407, '325648875', '3886', '0', 'silver', 'you@gmail.com', 'diamond'),
(1408, '6243483563', '3886', '0', 'silver', 'ganesh@gmail.com', 'silver'),
(1409, '9103229731', '48222', '0', 'Gold', 'zeeshanmir303@gmail.com', 'off'),
(1410, '9310431816', '3886', '0', 'elite', 'mahadev@gmail.com', 'elite'),
(1411, '9310431816', '9999', '0', 'gold', 'shiv@gmail.com', 'gold'),
(1412, '4545454545', '2079', '0', 'elite', 'vishnu@gmail.com', 'off'),
(1413, '4545454545', '2079', '0', 'elite', 'vishnu55@gmail.com', 'elite'),
(1414, '7267905659', '2385', '0', 'Elite', 'itsvijaysaini@gmail.com', 'off'),
(1415, '6005353856', '65088', '0', 'elite', 'ishfaq@123gmail.com', 'off'),
(1416, '6005353856', '65088', '0', 'elite', 'ishu123@gmail.com', 'off'),
(1417, '6005353856', '65088', '0', 'elite', 'meer123@gmail.com', 'off'),
(1418, '9310431816', '9999', '0', 'elite', 'aryanjaiswal@gmail.com', 'elite'),
(1419, '56565325', '3886', '0', 'elite', 'sunny2@gmail.com', 'elite'),
(1420, '6006211427', '27545', '0', 'Elite', 'ubaidwani158@gmail.com', 'off'),
(1421, '6005353856', '65088', '0', 'elite', 'ishfaq0109@gmail.com', 'elite'),
(1422, '6006211427', '27545', '0', 'Elite', 'ubaidajaz2121@gmail.com', 'off'),
(1423, '6006211427', '27545', '0', 'elite', 'waniubaid201@gmail.com', 'off'),
(1424, '8713085424', '27545', '0', 'elite', 'amitrajput99990@gmail.com', 'elite'),
(1425, '6005353856', '65088', '0', 'elite', 'skillzard@123gmail.com', 'off'),
(1426, '8094878999', '13841', '0', 'elite', 'rohanfelix444@gmail.com', 'elite'),
(1427, '8899071317', '4190', '0', 'elite', 'mominriyazwani000111@gmail.com', 'elite'),
(1428, '7006585732', '7926', '0', 'silver', 'miramir01@gmal.com', 'silver'),
(1429, '7006926690', '16100', '0', 'elite', 'syedaijaz94@gmail.com', 'elite'),
(1430, '7889978383', '58978', '0', 'Elite', 'nazirjavid31@gmail.com', 'elite'),
(1431, '6005421685', '4190', '0', 'elite', 'magreynisar1234@gmail.com', 'elite'),
(1432, '9149960519', '16100', '0', 'elite', 'khanbashrat206@gmail.com', 'elite'),
(1433, '6005379972', '39348', '0', 'gold', 'idrdekho@gmail.com', 'gold'),
(1435, '8082604533', '193411', '0', 'elite', 'vlogervlogs01@gmail.com', 'off'),
(1436, '9310431816', '3886', '0', 'elite', 'businessaryan77@gmail.com', 'elite'),
(1437, '7006214914', '65088', '0', 'diamond', 'bhatfaru62591@gmail.com', 'diamond'),
(1438, '7006494178', '4190', '0', 'elite', 'Gsuheel9006@gmail.com', 'elite'),
(1439, '7889703120', '7889703120', '0', 'Elite', 'tajamultahir120@gmail.com', 'off'),
(1440, '7051606565', '39348', '0', 'Elite', 'www.darbasit690@gmail.com', 'off'),
(1441, '9682507717', '48048', '0', 'elite', 'Kf967889@gmail.com', 'elite'),
(1442, '6006474322', 'Faizan', '0', 'Silver', 'wanifaizan079@gmail.com', 'off'),
(1443, '07006567183', '192126', '0', 'Diamond', 'Sloneg53@gmail.com', 'off'),
(1444, '8713959736', 'Mt2366977', '0', 'Elite', 'malikkifayathk789@gmail.com', 'off'),
(1445, '7006395961', 'I2i2j2', '0', 'elite', 'javidvloge22@gmail.com', 'off'),
(1446, '9310431816', '3886', '0', 'elite', 'khan@gmail.com', 'elite'),
(1447, '9310431816', '4780', '0', 'diamond', 'jaiswal778@gmail.com', 'diamond'),
(1448, '6005353856', '65088', '0', 'gold', 'ishfaq@6005353856gmail.com', 'off'),
(1449, '8989898988', '2525', '0', 'silver', 'demo998@gmail.com', 'off'),
(1451, '9999786754', '58978', '0', 'Elite', 'tahira.mariyam@yahoo.co.in', 'elite'),
(1452, '7006856869', '16100', '0', 'Elite', 'andrabiabid.andrabi7@gmail.com', 'elite'),
(1453, '6005335498', '16100', '0', 'elite', 'iqraasmat94@gmail.com', 'elite'),
(1454, '9103351148', '16100', '0', 'elite', 'mallashakir111@gmail.com', 'off'),
(1455, '9682138202', '16100', '0', 'elite', 'lonejunaid96@gmail.com', 'elite'),
(1457, '8491028357', '89542', '0', 'Diamond', 'aumairkoka42@gmail.com', 'diamond'),
(1458, '9596353433', '58978', '0', 'Elite', 'bibasit29@gmail.com', 'off'),
(1459, '9596396763', '48222', '0', 'Silver', 'loneaqib895@gmail.com', 'off'),
(1460, '7006577053', '48048', '0', 'elite', 'Wanikhalid259@gmail.com', 'elite'),
(1461, '7889436361', '', '0', 'gold', 'wanimudasir9094@gmail.com', 'off'),
(1462, '7889308007', '', '0', 'elite', 'sb7446172@gmail.com', 'off'),
(1463, '7889308007', '65088', '0', 'Elite', 'shakirhura17@gmail.com', 'elite'),
(1464, '9906469057', '27545', '0', 'Elite', 'waqarwaqar45541@gmail.com', 'off'),
(1465, '8899708929', '58978', '0', 'Elite', 'samrahi71@gmail.com', 'elite'),
(1466, '7006394443', '33949', '0', 'Diamond', 'wanibasit319@gmail.com', 'off'),
(1468, '9682383795', '33949', '0', 'diamond', 'Kokabilal711@gmail.com', 'diamond'),
(1469, '6005537485', '46451', '0', 'Diamond', 'sartajbahaisartaj@gmail.com', 'diamond'),
(1470, '6006582836', '58978', '0', 'Elite', 'aadilsultan2018@gmail.com', 'elite'),
(1471, '9149562558', '8008', '0', 'elite', 'shayistakhan10@gmail.com', 'elite'),
(1472, '6006721163', '16100', '0', 'elite', 'muzamilahzai@gmail.com', 'elite'),
(1473, '6006288198', '16100', '0', 'elite', '6006288198ubi@gmail.com', 'elite'),
(1474, '9149981454', '2385', '0', 'elite', 'mrkhan32626@gmail.com', 'elite'),
(1475, '8216394645', '', '0', 'elite', 'karansinghrail717@gmail.com', 'off'),
(1476, '7298035316', '89542', '0', 'Diamond', 'inshagowhar57@gmail.com', 'diamond'),
(1477, '9149577796', '7926', '0', 'diamond', 'saleemashraf77796@gmail.com', 'diamond'),
(1478, '6005803693', '58978', '0', 'Elite', 'mohdshafi42@gmail.com', 'off'),
(1479, '7006418099', '7926', '0', 'Elite', 'meersahilsahil2233@email.com', 'off'),
(1480, '6005011693', '7926', '0', 'elite', 'Faizanahad1234@gmail.com', 'elite'),
(1481, '7780836704', '58978', '0', 'Gold', 'meershahid20987@gmail.com', 'gold'),
(1482, '6005634944', '58978', '0', 'Elite', 'farhanahassan725@gmail.com', 'elite'),
(1483, '7006134577', '16100', '0', 'diamond', 'sohailbhat2@gmail.com', 'diamond'),
(1484, '8899553873', '14374', '0', 'Elite', 'mehnazmushtaq71@gmail.com', 'elite'),
(1485, '6006705958', '16100', '0', 'diamond', 'Smnakhter396@gmail.com', 'diamond'),
(1486, '7889642622', '7926', '0', 'elite', 'azhar2239@gmail.com', 'off'),
(1487, '9596126439', '7926', '0', 'elite', 'bilaalmeer899@gamil.com', 'elite'),
(1488, '9596280754', '9756', '0', 'elite', 'MaroofAhmed02@gmail.com', 'elite'),
(1489, '7889932474', '48048', '0', 'elite', 'qazid1279@gmail.com', 'elite'),
(1490, '9149784096', '4818', '0', 'elite', 'meersajid01@gmail.com', 'elite'),
(1491, '7889642622', '7926', '0', 'elite', 'azharuddin7889@gmail.com', 'elite'),
(1492, '8491950225', '192401', '0', 'diamond', 'khalidashraflone299@gmail.com', 'off'),
(1493, '7051422688', '89542', '0', 'diamond', 'Khanmasroor639@gmail.com', 'diamond'),
(1494, '07051610107', '58978', '0', 'Elite', 'mohmmadasifsheikh89182@gmail.com', 'off'),
(1495, '6005577378', '7926', '0', 'elite', 'hazimahmading@gmail.com', 'elite'),
(1496, '70061 05776', '58978', '0', 'Elite', 'hjan3819@gmail.com', 'elite'),
(1497, '9149498848', '121212', '0', 'Silver', 'naseerbhat412@gmail.com', 'off'),
(1498, '8899914566', '65088', '0', 'Diamond', 'bhatshahidshahidbhat90@gmail.com', 'diamond'),
(1499, '9103669687', '7926', '0', 'elite', 'hajam7071@gmail.com', 'off'),
(1500, '8099904098', '58978', '0', 'Elite', 'sunadhisahu@gmail.com', 'elite'),
(1501, '7050125632', '58978', '0', 'Elite', 'parvinderkour99@gmail.com', 'elite'),
(1502, '7006349051', '65088', '0', 'gold', 'ishuishfaq776@gmail.com', 'gold'),
(1503, '7006295351', '51742', '0', 'elite', 'mahfoozb80@gmail.com', 'elite'),
(1504, '8491850790', 'tobgk', '0', 'Elite', 'azaib8427@gmail.com', 'off'),
(1505, '7006024362', '@tahir', '0', 'Elite', 'tahirrajput11480@gmail.com', 'off'),
(1506, '7006928483', '65088', '0', 'diamond', 'raziabhat941@gmail.com', 'diamond'),
(1507, '82185652585', '', '0', 'diamond', 'no@gmail.com', 'off'),
(1508, '6006191519', '11', '0', 'Elite', 'shahidnazirwani364@gmail.com', 'off'),
(1509, '6005207621', '19113', '0', 'elite', 'Bilalkumar161@gmail.com', 'off'),
(1510, '9622647746', '', '0', 'elite', 'bhatf5427@gmail.com', 'off'),
(1511, '09149731324', '7926', '0', 'elite', 'mahidbashir707@gmail.com', 'off'),
(1512, '9541335154', '58978', '0', 'Elite', 'manzoormir82555@gmail.com', 'off'),
(1513, '07032574529', '74514', '0', 'diamond', 'anjumanyekulur@gmail.com', 'off'),
(1514, '07032574529', '74514', '0', 'diamond', 'ruhianjum010@gmail.com', 'diamond'),
(1515, '9284751350', '74514', '0', 'gold', 'Farhandiwan551@gmail.com', 'gold'),
(1516, '7889408354', '58978', '0', 'Elite', 'taslemansari123@gmail.com', 'elite'),
(1517, '7058264334', '13841', '0', 'Elite', 'tusharthanande@gmail.com', 'off'),
(1518, '8219881368', '74510', '0', 'silver', 'anjaliverma94184@gmail.com', 'silver'),
(1519, '6005588517', '5961', '0', 'silver', 'bhatu5566@gmail.com', 'off'),
(1520, '6005588517', '5961', '0', 'gold', '6006688517@ibl', 'off'),
(1521, '9149630567', '72274', '0', 'Gold', 'shahjaany@gmail.com', 'gold'),
(1522, '7006106578', '16100', '0', 'Elite', 'parvaizlone46@gmail.com', 'elite'),
(1523, '7889653208', '8802', '0', 'Elite', 'asimaan99@gmail.com', 'elite'),
(1524, '9984828600', '65088', '0', 'elite', 'ashutechnology60@gmail.com', 'elite'),
(1525, '9596856152', '65088', '0', 'Elite', 'toseedchuck64@gmail.com', 'off'),
(1526, '09376125926', '', '0', 'elite', 'vishantdharmesh@gmail.com', 'off'),
(1527, '9665443361', '13841', '0', 'elite', 'truptikanande0@gmail.com', 'off'),
(1528, '8899602297', '14374', '0', 'Elite', 'fmanzoor343@gmail.com', 'elite'),
(1529, '9103924146', '39348', '0', 'elite', 'Danishwani623@gmail.com', 'elite'),
(1530, '6006744237', '3372', '0', 'elite', 'itzmuzamil13@gmail.com', 'elite'),
(1531, '7051937807', '193502', '0', 'Elite', 'smartduger102@gmail.com', 'off'),
(1532, '9858328932', '65088', '0', 'Elite', 'bhataaqi288@gmail.com', 'off'),
(1533, '7780923221', '58978', '0', 'elite', 'muheebbhat021@gmail.com', 'elite'),
(1534, '6006576331', '74514', '0', 'silver', 'abiddar649@gmail.com', 'silver'),
(1535, '07006975969', '2385', '0', 'Elite', 'khanshabir18@gmail.com', 'off'),
(1536, '7006586932', '58978', '0', 'elite', 'musaibm99@gmail.com', 'elite'),
(1537, '9080258978', '58978', '0', 'elite', 'rutbaAndari112@gmail.com', 'elite'),
(1538, '6006457198', '46451', '0', 'Elite', 'suraj414263@gamail.com', 'elite'),
(1539, '7006755569', '65088', '0', 'diamond', 'shahrahil030@gmail.com', 'diamond'),
(1540, '6006582536', '58978', '0', 'elite', 'parvinderK124@gmail.com', 'diamond'),
(1541, '6006585980', '58978', '0', 'diamond', 'hummaRashid786@rediffmail.com', 'diamond'),
(1542, '6006101753', '', '0', 'silver', 'dbasit920@gmail.com', 'silver'),
(1543, '6005487167', '58978', '0', 'elite', 'shaheena.700789@gmail.com', 'elite'),
(1544, '9906885057', '12345', '0', 'elite', 'tanveerd853@gmail.com', 'off'),
(1545, '8803896908', '58978', '0', 'elite', 'nazimajan321@gmail.com', 'off'),
(1546, '9622248236', '33949', '0', 'Diamond', 'seyammubashir55@gmail.com', 'off'),
(1548, '1234567891', '58978', '0', 'elite', 'afshanahassan019@gmail.com', 'elite'),
(1549, '8082511354', '8498', '0', 'elite', 'tofeeqdar6@gmail.com', 'off'),
(1550, '898989889', '8420', '0', 'elite', 'alibaba@gmail.com', 'elite'),
(1551, '2356553', '6789', '0', 'elite', 'cat2@gmail.com', 'elite'),
(1552, '53565555', '6789', '0', 'silver', 'silver@gmail.com', 'off'),
(1553, '6005353856', '65088', '0', 'silver', 'ishfaq12@gmail.com', 'off'),
(1555, '7006692503', '9', '0', 'Diamond', 'nabinaveed508@gmail.com', 'off'),
(1556, '4545454545', '7821', '0', 'gold', 'testing55@gmail.com', 'gold'),
(1558, '9906328905', '65088', '0', 'gold', 'aamir4112@gmail.com', 'gold'),
(1559, '8825043213', '39348', '0', 'gold', 'Hayaazainab072@gmail.com', 'gold'),
(1560, '9906328905', '65088', '0', 'elite', 'aamirr4112@gmail.com', 'off'),
(1561, '8082009451', '58978', '0', 'elite', 'shahazaib124@gmail.com', 'elite'),
(1562, '6006046486', '', '0', 'silver', 'amugloo721@gmail.com', 'off'),
(1563, '7889386649', '92634', '0', 'Elite', 'Gowharshah008@gmail.com', 'elite'),
(1564, '6005568769', '', '0', 'elite', 'amaanayi0313@gmail.com', 'off'),
(1565, '8825025718', '39348', '0', 'silver', 'Sheikhatiya11@gmail.com', 'silver'),
(1566, '6006468521', '3844', '0', 'elite', 'umarumar41887@gmail.com', 'elite'),
(1567, '6005626570', '50338', '0', 'Diamond', 'parvaizaly16@gmail.com', 'off'),
(1568, '9103959983', '3785', '0', 'elite', 'Talibkhankhan718@gmail.com', 'elite'),
(1569, '6009528693', '58978', '0', 'elite', 'rahulkumar88@gmail.com', 'elite'),
(1570, '06006052621', '193501', '0', 'Elite', 'irshadmanzoor1212@gmail.com', 'off'),
(1571, '', '', '0', 'elite', '', 'off'),
(1572, '9682147209', '5609', '0', 'elite', 'khansajad4715@gmail.com', 'off'),
(1573, '9682147209', '3785', '0', 'elite', 'khansajad4715@gmali.com', 'off'),
(1574, '6005693428', '5609', '0', 'elite', 'khankulsooma191@gmail.com', 'off'),
(1575, '7780933401', '50338', '0', 'gold', 'Sheikhmehak761@gmail.com', 'gold'),
(1576, '6005101565', '65088', '0', 'diamond', 'farhangulzarnajar150@gmail.com', 'diamond'),
(1577, '9103501920', '3785', '0', 'elite', 'danishshuaib147@gmail.com', 'elite');
INSERT INTO `payment` (`id`, `phone`, `referral`, `image_path`, `package`, `email`, `status`) VALUES
(1578, '9149671077', '0136060', '0', 'elite', 'Wahidmanzoor295@gmail.comz', 'off'),
(1579, '9149671077', '192401', '0', 'Diamond', 'wahidmanzoor295@gmail.com', 'off'),
(1580, '9541115004', '8498', '0', 'silver', 'rahilff366@gmail.com', 'silver'),
(1581, '9596305317', '', '0', 'silver', 'ffr803967@gmail.com', 'off'),
(1582, '9320632009', '5609', '0', 'elite', 'ks3476201@gmail.com', 'elite'),
(1584, '8493076001', '74514', '0', 'elite', 'rasibahkhan@gmail.com', 'elite'),
(1585, '7889923356', '65088', '0', 'Gold', 'bilqeesakhter1909@gmail.com', 'off'),
(1586, '7006109924', '65088', '0', 'elite', 'fza7889@gmail.com', 'elite'),
(1587, '7006977438', '65088', '0', 'silver', 'khan.mudyy@gmail.com', 'silver'),
(1588, '6006604595', '3844', '0', 'elite', 'wanirameez23@gmail.com', 'elite'),
(1589, '9006608421', '', '0', 'elite', 'sroy62045@gmail.com', 'off'),
(1590, '9103785718', '2080', '0', 'elite', 'wanirameez39@gmail.com', 'off'),
(1591, '6006496585', '65088', '0', 'diamond', 'ahangerulfatahanger@gmail.com', 'diamond'),
(1592, '9149464434', '42667', '0', 'elite', 'qwetyugfgu@gmail.com', 'off'),
(1593, '8899961352', '193301', '0', 'Diamond', 'aulidarazaq01@gmail.com', 'off'),
(1594, '8899961352', '65088', '0', 'Elite', 'avleedarazaq1@gmail.com', 'off'),
(1595, '8899961352', '65088', '0', 'elite', 'aulidarazaq@gmail.com', 'elite'),
(1596, '9006608421', '12345678', '0', 'elite', 'Topgamer62045@gmail.com', 'off'),
(1597, '7780873945', '65088', '0', 'Silver', 'arbluestar.kh@gmail.com', 'elite'),
(1598, '7006248102', '65088', '0', 'elite', 'Shahidgulzar132@gmail.com', 'elite'),
(1599, '7780873945', '65088', '0', 'elite', 'arbackup.kh@gmail.com', 'off'),
(1600, '6006551106', '5455', '0', 'Elite', 'shakoormir267@gmail.com', 'elite'),
(1601, '09906634120', '65088', '0', 'Elite', 'hilalmalik66@gmail.com', 'off'),
(1602, '6005833790', '32606', '0', 'elite', 'khanbarkat6103@gmail.com', 'off'),
(1603, '7006328538', '5293', '0', 'elite', 'Junaidshabir837@gmail.com', 'elite'),
(1604, '8899174576', '65088', '0', 'diamond', 'theshahdawar@gmail.com', 'diamond'),
(1605, '9103255837', '80522', '0', 'elite', 'bhuzaif454@gmail.com', 'elite'),
(1606, '9541702557', '80522', '0', 'Elite', 'dar842159@gmail.com', 'off'),
(1607, '9622463008', 'Mehran', '0', 'Silver', 'mozzaf321@gmail.com', 'off'),
(1608, '09004647759', 'Rtygyyu', '0', 'Elite', 'rp015667@gmail.com', 'off'),
(1609, '5656565656', '999', '0', 'silver', 'father@gmail.com', 'off'),
(1610, '6777677676', '3111', '0', 'silver', 'unknown@gmail.com', 'off'),
(1611, '9596548512', '3640', '0', 'Elite', 'aalammusadiq58@gmail.com', 'off'),
(1612, '6006463176', '39348', '0', 'silver', 'loneimran5477@gmail.com', 'off'),
(1613, '7889969630', '58978', '0', 'elite', 'zainabzanu22@gmail.com', 'elite'),
(1614, '53562855', '11352', '0', 'silver', 'varun@gmail.com', 'off'),
(1615, '5356888', '11352', '0', 'elite', 'superman@gmail.com', 'elite'),
(1616, '9797063756', '80522', '0', 'elite', 'burhanbashir906@gamil.com', 'off'),
(1617, '9103525917', '80522', '0', 'elite', 'mirjameel1192@gmail.com', 'elite'),
(1618, '07780999489', '65088', '0', 'Diamond', 'shahidibrahim0786@gmail.com', 'diamond'),
(1619, '6006575059', '7240', '0', 'elite', 'suhaibbkhan1@gmail.com', 'elite'),
(1620, '6006721351', '7240', '0', 'elite', 'sheikhfaizan22049@gmail.com', 'elite'),
(1621, '6005297363', '', '0', 'elite', 'bhatabrar870@gmail.com', 'elite'),
(1622, '6006156343', '5558', '0', 'Elite', 'aanishshakeel@gmail.com', 'off'),
(1623, '8329828419', '65088', '0', 'diamond', 'riderbhai172@gmail.com', 'diamond'),
(1624, '954133419', '65088', '0', 'diamond', 'shakirfayaz135@gmail.com', 'diamond'),
(1625, '+9187078975', '58978', '0', 'elite', 'neha674@gmail.com', 'elite'),
(1626, '8446785032', '53281', '0', 'silver', 'kaifb2590@gmail.com', 'silver'),
(1627, '0628232383', '565465', '0', 'Elite', 'jataves923@maxturns.com', 'off'),
(1628, '7780822369', '7240', '0', 'elite', 'shahidbhat13582@gmail.com', 'elite'),
(1629, '7006569561', '7240', '0', 'elite', 'fr5551509@gmail.com', 'elite'),
(1630, '8491968672', '8917', '0', 'elite', 'ruzainnaik@gmail.com', 'elite'),
(1631, '07780999489', '65088', '0', 'Elite', 'khushbooibrahim24@gmail.com', 'off'),
(1632, '9541499489', '48597', '0', 'Elite', 'yasirbaya988@gmail.com', 'off'),
(1633, '6005207158', '48597', '0', 'Diamond', 'swagay806@gmail.com', 'off'),
(1634, '7889594205', '5848', '0', 'elite', 'uzairallie121@gmail.com', 'elite'),
(1635, '9682656162', '5293', '0', 'elite', 'tawheedb233@gmail.com', 'off'),
(1636, '9682656162', '5293', '0', 'elite', 't28272576@gmail.com', 'off'),
(1637, '9682656162', '5293', '0', 'elite', 'tawheedbhat768@gmail.com', 'off'),
(1638, '9622886798', '5293', '0', 'Elite', 'towheedyounis31@gmail.com', 'off'),
(1639, '8493040651', '5848', '0', 'elite', 'zahidahma675@gmail.com', 'off'),
(1640, '+9199321859', '48597', '0', 'elite', 'nob998877@gmail.com', 'elite'),
(1641, '8825020657', '7240', '0', 'elite', 'bhatsameer5618@gmail.com', 'elite'),
(1642, '8825020657', '6402', '0', 'elite', 'bhatsameer9618@gmail.com', 'off'),
(1643, '9682656162', '5293', '0', 'elite', 'bhatyounis794@gmail.com', 'elite'),
(1644, '9682656162', '5293', '0', 'Elite', 'towheed786@gmail.com', 'off'),
(1645, '8493946298', '7240', '0', 'elite', 'mohmmadeyad66@gmail.com', 'elite'),
(1646, '6005371427', 'Shahid Ibr', '0', 'Diamond', 'umerfarooq9934@gmail.com', 'off'),
(1647, '8082189980', '80522', '0', 'silver', 'hemayata50@gmail.com', 'silver'),
(1648, '+91 93482 0', '48597', '0', 'elite', 'moviesyt2580@gmail.com', 'elite'),
(1649, '9942292844', '65088', '0', 'gold', 'uy76363@gmail.com', 'gold'),
(1650, '8899652022', '80522', '0', 'elite', 'rk9606617@gmail.comcom', 'elite'),
(1651, '06006700714', '161', '0', 'elite', 'Mirshafiya111@gmail.com', 'off'),
(1652, '06006700714', '161/', '0', 'Elite', 'shafiyaashraf44@gmail.com', 'off'),
(1653, '7006819250', '40668', '0', 'elite', 'ovaistak92@gmail.com', 'elite'),
(1654, '6006413134', '7240', '0', 'Elite', 'sabzar946@gmail.com', 'off'),
(1655, '7051076603', '40668', '0', 'Elite', 'khalidnisar765@gmail.com', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int NOT NULL,
  `elite` int NOT NULL,
  `silver` int NOT NULL,
  `gold` int NOT NULL,
  `diamond` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `elite`, `silver`, `gold`, `diamond`) VALUES
(1, 260, 599, 1499, 2499),
(2, 200, 480, 1150, 2100),
(3, 10, 30, 80, 150);

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `referral` varchar(10) NOT NULL,
  `package` varchar(10) NOT NULL,
  `rf` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verify`
--

INSERT INTO `verify` (`id`, `email`, `referral`, `package`, `rf`) VALUES
(173, 'meerishfaq472@gmail.com', '1436', 'Diamond', '0109'),
(174, 'tusharrawat7560@gmail.com', '65088', 'Diamond', '5869'),
(175, 'mehakbinterasheed@gmail.com', '65088', 'Diamond', '8096'),
(176, 'jigrnelu@gmail.com', '65088', 'Diamond', '4569'),
(177, 'jigrnelu@gmail.com', '65088', 'Diamond', '4569'),
(178, 'aasifahmad714@gmail.com', '65088', 'Elite', '7568'),
(179, 'mmehzu5@gmail.com', '65088', 'Elite', '2580'),
(180, 'shahidpeer494@gmail.com', '65088', 'Diamond', '2459'),
(181, 'aamirnabi711@gmail.com', '65088', 'Diamond', '2345'),
(182, 'aamirnabi711@gmail.com', '65088', 'Diamond', '2596'),
(183, 'jasayianissar07@gmail.com', '14374', 'Elite', '1235'),
(184, 'jasayianissar07@gmail.com', '14374', 'Elite', '2369'),
(185, 'meertassaduq4@gmail.com', '92634', 'Silver', '2756'),
(186, 'aanj68193@gmail.com', '91530', 'Elite', '8423'),
(187, 'sarajyatto@gmail.com', '14374', 'Elite', '8059'),
(188, 'drmaliha578@gmail.com', '65088', 'Diamond', '65089'),
(189, 'nazirbhat370@gmail.com', '65088', 'Elite', '0000'),
(190, '100webx@gmail.com', '6088', 'Elite', '4567'),
(191, 'faisaliqbal92414@gmail.com', '4367', 'Diamond', '4286'),
(192, 'faisaliqbal92414@gmail.com', '65088', 'Diamond', '52554'),
(193, 'muneebbhat9273@gmail.com', '65088', 'Diamond', '9273'),
(194, 'muneebbhat9273@gmail.com', '65088', 'Diamond', '9273'),
(195, 'aakashdar339@gmail.com', '59017', 'Diamond', '87091'),
(196, 'hayadidad@gmail.com', '51985', 'Diamond', '51984'),
(197, 'aasifahmad714@gmail.com', '65088', 'Elite', '4285391530'),
(198, 'aasifahmad714@gmail.com', '65088', 'Elite', '91530'),
(199, 'khanirfanirfankhan28@gmail.com', '65088', 'Elite', '5248'),
(200, 'meersaqib776@gmail.com', '65088', 'Diamond', '48761'),
(201, 'manimlone@gmail.com', '65088', 'Diamond', '07894'),
(202, 'Seemujaan29@gamil.com', '1238', 'Elite', '5867'),
(203, 'Pmate4777@gmail.com', '65088', 'Diamond', '74608'),
(204, 'malikshinu111@gmail.com', '65088', 'Diamond', '65880'),
(205, 'Ratherbasu099@gmail.com', '60588', 'Elite', '54891'),
(206, 'ehmadjavaid27@gmail.com', '59017', 'Diamond', '40700'),
(207, 'Basitrather0537@gmail.com', '65088', 'Diamond', '40789'),
(208, 'sahilqadirbhat@gmail.com', '65088', 'Diamond', '57671'),
(209, 'rajshreesahare5@gmail.com', '13841', 'Elite', '1234'),
(210, 'mjamaal547@gmail.com', '14374', 'Elite', '8469'),
(211, 'shahalka936@gmail.com', '92634', 'Elite', '45000'),
(212, 'imtiyazsheikh999@gmail.com', '92634', 'Diamond', '58742'),
(213, 'sheikhtawseef998462@gmail.com', '91530', 'Elite', '57650'),
(214, 'nasuhaanjum87@gmail.com', '65088', 'Diamond', '54648'),
(215, 'hayaansheikh786@gmail.com', '58978', 'Elite', '45648'),
(216, 'zairahherbals786@gmail.com', '58978', 'Elite', '54079'),
(217, 'Seemujaan29@gamil.com', '1238', 'Elite', '4679'),
(218, 'peerdanish75@gmail.com', '92634', 'Silver', '8754'),
(219, 'firdousbashir192@gmail.com', '92634', 'Elite', '00852'),
(220, 'naveedlone89@gmail.com', '58978', 'Silver', '48576'),
(221, 'umarwiit@gmail.com', '58978', 'Elite', '8787'),
(222, 'biljaan59@gmail.com', '92634', 'Diamond', '87961'),
(223, 'lokeshbire425@gmail.com', '13841', 'Elite', '87549'),
(224, 'Shafqatmajid94@gmail', '58978', 'Elite', '4931'),
(225, 'soumyaxwasnik@gmail.com', '65088', 'Diamond', '54800'),
(226, 'mirirfan0002@gmail.com', '58978', 'Diamond', '87976'),
(227, 'hemusyed9@gmail.com', '62263', 'Elite', '54670'),
(228, 'OWAISMAQBOOL64@GMAIL.COM', '58978', 'Elite', '4807'),
(229, 'ubairlone999@gmail.com', '2774', 'Elite', '47509'),
(230, 'ubairlone999@gmail.com', '2774', 'Elite', '7408'),
(231, 'amitarya1414@gmail.com', '2005', 'Elite', '25870'),
(232, 'muzafarwani0000@gmail.com', '58978', 'Elite', '0088'),
(233, 'ubaidajaz1234@gmail.com', '7989', 'Elite', '45700'),
(234, 'magrayjunaid4@gmail.com', '58978', 'Silver', '87970'),
(235, 'Zzakirvlogs6@gmail.com', '58978', 'Elite', '4508'),
(236, 'khantariqkhantariq26@gmail.com', '88160', 'Diamond', '8709'),
(237, 'danishbashir612@gmail.com', '14374', 'Diamond', '80500'),
(238, 'aabidalone786@gmail.com', '58978', 'Elite', '88580'),
(239, 'wanizakir215@gmail.com', '7647', 'Elite', '74089'),
(240, 'shiekhadil9090@gmail.com', '7647', 'Elite', '70809'),
(241, 'aaminaqkiaer94@gmail.com', '8802', 'Elite', '78070'),
(242, 'biljaan59@gmail.com', '92634', 'Diamond', '78001'),
(243, 'majidazizbhat@gmail.com', '58978', 'Gold', '78956'),
(244, 'mageryimran36@gmail.com', '7647', 'Diamond', '88009'),
(245, 'Aleenafirdous56@gmail.com', '66446', 'Diamond', '48096'),
(246, 'lubnarasheed990@gmail.com', '58978', 'Elite', '8709'),
(247, 'tantrayj489@gmail.com', '92634', 'Diamond', '85209'),
(248, 'sabatunnisa11@gmail.com', '58978', 'Silver', '45090'),
(249, 'riyaan786@gmail.com', '2912', 'Silver', '50809'),
(250, 'sahilnajarr@gmail.com', '58978', 'Diamond', '50896'),
(251, 'irfankhan01501@gmail.com', '58978', 'Silver', '85096'),
(252, 'mehakmehak6385@gmail.com', '14374', 'Diamond', '70892'),
(253, 'sanayou836@gmail.com', '14374', 'Elite', '70861'),
(254, 'zakirpeer624@gmail.com', '92634', 'Diamond', '58096'),
(255, 'iqranikath61@gmail.com', '66446', 'diamond ', '47092'),
(256, 'Muzamilbashir1912@gmail.com', '5637', 'Elite', '47500'),
(257, 'khannairah2233@gmail.com', '6632', 'Silver', '8526'),
(258, 'ubaidajaz2150@gmail.com', '7647', 'Diamond', '52143'),
(259, 'aleeshawani222@gmail.com', '58978', 'Gold', '8570'),
(260, 'iqranikath61@gmail.com', '66446', 'Diamond ', '8502'),
(261, 'iqranikath61@gmail.com', '66446', 'Diamond', '25096'),
(262, 'isyed2728@gmail.com', '65088', 'Elite', '85240'),
(263, 'darnadeem029@gmail.com', '27545', 'Elite', '74809'),
(264, 'khanaijaz617919@gmail.com', '27545', 'Silver', '8509'),
(265, 'hafsafayaz56@gmail.com', '8802', 'Elite', '87509'),
(266, 'shahidabashir97@gmail.com', '58978', 'Elite', '08961'),
(267, 'bhatshahidshahidbhat90@gmail', '65088', 'Elite', '0869'),
(268, 'aabida786@gmail.com', '9582', 'Silver', '74083'),
(269, 'arahaan786@gmail.com', '13407', 'Elite', '47089'),
(270, 'mustafahajimusta@gmail.com', '58978', 'Elite', '47801'),
(271, 'sheikhraju365@gmail.com', '7647', 'Elite', '8570'),
(272, 'najarakhter06@gmakl.com', '58978', 'Elite', '74801'),
(273, 'emmuwani11@gmail.com', '58978', 'Elite', '7806'),
(274, 'msuhailnajar786@gmail.com', '13407', 'Elite', '8096'),
(275, 'lonebilal581278@gmail.com', '58978', 'Elite', '42014'),
(276, 'mutahir5889@gmail.com', '8200', 'Elite', '5860'),
(277, 'alishafatima76@gmail.com', '66446', 'Elite', '5209'),
(278, 'alishakhanam@xn--gmailcom-rr3d', '66446', 'Elite', '47089'),
(279, 'parulverma1994@gmail.com', '58978', 'Elite', '12358'),
(280, 'catc18100@gmail.com', '51985', 'Gold', '85093'),
(281, 'bhttajmul196@gmail.com', '9582', 'Elite', '52170'),
(282, 'sahilpeer997@gmail.com', '92634', 'Silver', '85412'),
(283, 'tanishnazir407@gmail.com', '58978', 'Silver', '25809'),
(284, 'bhatamir3050@gmail.com', '39095', 'Elite', '45809'),
(285, 'musratchooty4@gmail.com', '58978', 'Elite', '56870'),
(286, 'malikadnanfayaz02@gmail.com', '73116', 'Diamond', '52894'),
(287, 'sunneysingh192@gmail.com', '58978', 'Elite', '25801'),
(288, 'buttaaqib80@gmail.com', '58978', 'Elite', '45801'),
(289, 'eraqib1995@gmail.com', '58978', 'Elite', '80961'),
(290, 'waseemraja868@gmail.com', '58978', 'Elite', '8523'),
(291, 'waseemraja868@gmail.com', '58978', 'Elite', '8523'),
(292, 'jaffarjnj@gmail.com', '8802', 'Elite', '12350'),
(293, 'loneadil432@gmail.com', '7647', 'Elite', '12345'),
(294, 'ratheruzma93@gmail.com', '64095', 'Gold', '85213'),
(295, 'bazilapeer64@gmail.com', '193302', 'Elite', '25413'),
(296, 'wanim7740@gmail.com', '58978', 'Silver', '12345'),
(297, 'syedanasali2607@gmail.com', '92634', 'Elite', '1247'),
(298, 'powais93@gmail.com', '7620', 'Gold', '5214'),
(299, 'khanenterprises443@gmail.com', '8802', 'Elite', '45612'),
(300, 'rarhertomato705@gmail.com', '92634', 'Elite', '12345'),
(301, 'bazilapeer64@gmail.com', '92634', 'Diamond', '12345'),
(302, 'myselfzaheer457@gmail.com', '27545', 'Elite', '5240'),
(303, 'sheikhaaqib255@gmail.com', '58978', 'Elite', '00951'),
(304, 'uk76238@gmail.com', '3227', 'Elite', '1580'),
(305, 'peers5326@gmail.com', '7620', 'Gold', '1245'),
(306, 'Parrayalixa@gmail.com', '14374', 'Diamond', '85210'),
(307, 'mirmubashir822@gmail.com', '1238', 'Diamond', '85407'),
(308, 'kishtiyaq707@gmail.com', '58978', 'Silver', '54091'),
(309, 'hidayathadi127@gmail.com', '65088', 'Elite', '45801'),
(310, 'bhatshahidshahidbhat90@gmail', '65088', 'diamond ', '85509'),
(311, 'mahjabeena30@gmail.com', '92634', 'Diamond', '58701'),
(312, 'surajv3215@gmail.com', '3227', 'Elite', '85471'),
(313, 'parraynazu143@gmail.com', '29540', 'Diamond', '85211'),
(314, 'danishkhuroo53@gmail.com', '1238', 'Elite', '870100'),
(315, 'Ssafeenakhazir@gmail.com', '29540', 'Diamond', '85412'),
(316, 'masoodab250@gmail.com', '1238', 'Elite', '5888'),
(317, 'Peerhaya@gmail.com', '58978', 'Elite', '55558'),
(318, 'Mahirajaan583@gmail.com', '58978', 'Elite', '87881'),
(319, 'wagayanayat030@gmail.com', '14374', 'Diamond', '2541'),
(320, 'seemujaanseemu@gmail.com', '7620', 'Gold', '88081'),
(321, 'sahilshafi502@gmail.com', '14374', 'Diamond', '55580'),
(322, 'Innocentmajid343@gmail.com', '58978', 'Elite', '85611'),
(323, 'Khaninayat5390@gmail.com', '65088', 'Diamond', '5247'),
(324, 'tusharrawat7560@gmail.com', '65088', 'Diamond', '55580'),
(325, 'cbsbhagat@gmail.com', '13841', 'Diamond', '80971'),
(326, 'umarramzan12@gmail.com', '8802', 'Elite', '85871'),
(327, 'sheikhtariq001@gmail.com', '7620', 'Elite', '5521'),
(328, 'duanaaz129@gmail.com', '58978', 'Elite', '80961'),
(329, 'hmdogra@gmail.com', '92634', 'Elite', '55580'),
(330, 'hmdogra@gmail.com', '92634', 'Elite', '54123'),
(331, 'mrityunjay.748081@gmail.com', '14374', 'Elite', '85041'),
(332, 'nadeemmir957@gmail.com', '14374', 'Elite', '08791'),
(333, 'muntazirnissar7@gmail.com', '58978', 'Diamond', '54701'),
(334, 'arsalanmushtaq181@gmail.com', '65088', 'Elite', '85214'),
(335, 'maqboolubaid061@gmail.com', '14374', 'Diamond', '25418'),
(336, 'khursheedhaji55@gmail.com', '58978', 'Elite', '54321'),
(337, 'mushtaqahmadk222@gmail.com', '7285', 'Elite', '52147'),
(338, 'murtazaamushtaq8709@gmail.com', '6802', 'Elite', '88461'),
(339, 'loneb3508@gmail.com', '42819', 'Diamond', '85412'),
(340, 'wajidaashraf2023@gmail.com', '92634', 'Elite', '87912'),
(341, 'faesaliqbal67@gmail.com', '65088', 'Elite', '85496'),
(342, 'priyaneema810@gmail.com', '65088', 'Diamond', '5214'),
(343, 'faisalyt88@gmail.com', '58978', 'Elite', '25941'),
(344, 'bhatkhalid953@gmail.com', '58978', 'Elite', '52417'),
(345, 'qais26785@gmail.com', '58978', 'Elite', '58701'),
(346, 'Shaheenajanwara@gmail.com', '58978', 'Elite', '25413'),
(347, 'mukaanshafi038@gmail.com', '4598', 'Elite', '85412'),
(348, 'meerhilal352@gmail.com', '51985', 'Elite', '52148'),
(349, 'malikkamrankamran396@gmail.com', '65088', 'Diamond', '580213'),
(350, 'sahillone770@gmail.com', '858978', 'Elite', '82816'),
(351, 'aadiaadi2355@gmail.com', '27545', 'Diamond', '521701'),
(352, 'mahjoorbilal9@gmail.com', '65088', 'Diamond', '858613'),
(353, 'meerzainmeer898@gmail.com', '58978', 'Elite', '85613'),
(354, 'amairaamjid589@gmail.com', '58978', 'Diamond', '008751'),
(355, 'mohtishimshabir9@gmail.com', '73116', 'Elite', '08941'),
(356, 'mehruunnissa62@gmail.com', '8802', 'Elite', '87654'),
(357, 'lonejunaid5452@gmail.com', '75228', 'Diamond', '87654'),
(358, 'safeernajar72@gmail.com', '27545', 'Diamond', '65317'),
(359, 'zeanmalik75@gmail.com', '75228', 'Diamond', '76498'),
(360, 'iqrasahil0919@gmail.com', '27545', 'Elite', '67543'),
(361, 'rabilshah94@gmail.com', '58978', 'Elite', '578613'),
(362, 'farhangulzarnajar150@gmail.com', '187004', 'Diamond', '846431'),
(363, 'zs326835@gmail.com', '52355', 'Diamond', '84561'),
(364, 'shaikshabir153@gmail.com', '58978', 'Elite', '5461'),
(365, 'TAJAMULSUFI96@GMAIL.COM', '2385', 'Diamond', '8741'),
(366, 'bushrashafi473@gmail.com', '14374', 'Elite', '08962'),
(367, 'wagayaqib487@gmail.com', '39348', 'Elite', '52138'),
(368, 'TAJAMULSUFI96@GMAIL.COM', '2385', 'Diamond', '54859'),
(369, 'farhangulzarnajar150@gmail.com', '65088', 'elite', '85163'),
(370, 'kh923471@gmail.com', '65088', 'Diamond', '66548'),
(371, 'naveedbashir705@gmail.com', '65088', 'Diamond', '5677'),
(372, 'aadillone2180@gmail.com', '27545', 'Diamond', '5432'),
(373, 'yaarpanun70@gmail.com', '39348', 'Elite', '87951'),
(374, 'yaarpanun70@gmail.com', '39348', 'Elite', '54123'),
(375, 'adiiadil2150@gmail.com', '27545', 'Diamond', '5214'),
(376, 'Enenterprises443@gmail.com', '58978', 'Elite', '85461'),
(377, 'warmomin842@gmail.com', '55266', 'Elite', '54613'),
(378, 'smehakhan19@gmail.com', '74510', 'Elite', '0879'),
(379, 'sanjanasingh021@gmail.com', '58978', 'Elite', '52103'),
(380, 'bazilabatool97@gmail.com', '58978', 'Elite', '85613'),
(381, 'ubaidah724@gmail.com', '7647', 'Elite', '45631'),
(382, 'seeratjan95003@gmail.com', '2385', 'Elite', '0874'),
(383, 'haroonashraf943@gmail.com', '48222', 'Diamond', '54613'),
(384, 'sanahfarooq786@gmail.com', '74510', 'Elite', '5241'),
(385, 'qadeer21789@gmail.com', '74510', 'Diamond', '8521'),
(386, 'SALEEMK1235@GMAIL.COM', '58978', 'Elite', '56321'),
(387, 'SALEEMK1235@GMAIL.COM', '58978', 'Elite', '52136'),
(388, 'raziabhat941@gmail.com', '48222', 'Elite', '12345'),
(389, 'sheikhwishu125@gmail.com', '48222', 'gold', '85613'),
(390, 'theshoaib019@gmail.com', '48222', 'Gold', '5896'),
(391, 'mallashakir135@gmail.com', '65088', 'Diamond', '54213'),
(392, 'imtiyazsheikh999@gmail.com', '92634', 'Diamond', '58978'),
(393, 'sheebasudeep@gmail.com', '58978', 'Elite', '85231'),
(394, 'junaidjunaid@gmail.com', '16100', 'Elite', '542136'),
(395, 'pakeezareyaz94@gmail.com', '8802', 'Elite', '54643'),
(396, 'srinag774624@gmail.com', '48222', 'Elite', '52413'),
(397, 'wanisameer296@gmail.com', '16100', 'Elite', '55653'),
(398, 'skillzard780@gmail.com', '65088', 'Elite ', '68856'),
(399, 'bhatbilal6754@gmail.com', '16100', 'Diamond', '85231'),
(400, 'aabimeer666@gmail.com', '58978', 'Elite', '5463'),
(401, 'mirrashid226@gmail.com', '48222', 'Silver', '52341'),
(402, 'irshadbahat786@gmail.com', '58978', 'Silver', '52316'),
(403, 'shabirchoudhaary77@gmail.com', '90045', 'Elite', '5261'),
(404, 'mominriyazwani000111@gmail.com', '4190', 'elite', '87681'),
(405, 'miramir01@gmal.com', '7926', 'silver', '5213'),
(406, 'syedaijaz94@gmail.com', '16100', 'elite', '5231'),
(407, 'nazirjavid31@gmail.com', '58978', 'Elite', '2580'),
(408, 'bhatfaru62591@gmail.com', '65088', 'diamond', '564312'),
(409, 'ishfaq0109@gmail.com', '65088', 'elite', '8758'),
(410, 'omairlone2@gmail.com', '65088', 'Silver ', '5429'),
(411, 'tahira.mariyam@yahoo.co.in', '58978', 'Elite', '983'),
(412, 'andrabiabid.andrabi7@gmail.com', '16100', 'Elite', '5236'),
(413, 'iqraasmat94@gmail.com', '16100', 'elite', '8563'),
(414, 'lonejunaid96@gmail.com', '16100', 'elite', '52136'),
(415, 'aumairkoka42@gmail.com', '89542', 'Diamond', '52801'),
(416, 'Wanikhalid259@gmail.com', '48048', 'elite', '5583'),
(417, 'shakirhura17@gmail.com', '65088', 'Elite', '6543'),
(418, 'samrahi71@gmail.com', '58978', 'Elite', '8563'),
(419, 'Kokabilal711@gmail.com', '33949', 'diamond', '5236'),
(420, 'aadilsultan2018@gmail.com', '58978', 'Elite', '25803'),
(421, 'sartajbahaisartaj@gmail.com', '46451', 'Diamond', '52801'),
(422, 'shayistakhan10@gmail.com', '8008', 'elite', '8801'),
(423, 'muzamilahzai@gmail.com', '16100', 'elite', '850'),
(424, '6006288198ubi@gmail.com', '16100', 'elite', '8963'),
(425, 'mrkhan32626@gmail.com', '2385', 'elite', '5232'),
(426, 'inshagowhar57@gmail.com', '89542', 'Diamond', '56321'),
(427, 'saleemashraf77796@gmail.com', '7926', 'diamond', '5231'),
(428, 'meershahid20987@gmail.com', '58978', 'Gold', '6533'),
(429, 'farhanahassan725@gmail.com', '58978', 'Elite', '5239'),
(430, 'sohailbhat2@gmail.com', '16100', 'diamond', '8236'),
(431, 'mehnazmushtaq71@gmail.com', '14374', 'Elite', '8854'),
(432, 'Smnakhter396@gmail.com', '16100', 'diamond', '8523'),
(433, 'MaroofAhmed02@gmail.com', '9756', 'elite', '8581'),
(434, 'Khanmasroor639@gmail.com', '89542', 'diamond', '2580'),
(435, 'hjan3819@gmail.com', '58978', 'Elite', '8566'),
(436, 'bhatshahidshahidbhat90@gmail.com', '65088', 'Diamond', '52801'),
(437, 'wabid294@gmail.com', '65088', 'Elite', '5286'),
(438, 'sunadhisahu@gmail.com', '58978', 'Elite', '55569'),
(439, 'parvinderkour99@gmail.com', '58978', 'Elite', '2580'),
(440, 'ishuishfaq776@gmail.com', '65088', 'gold', '2536'),
(441, 'mahfoozb80@gmail.com', '51742', 'elite', '8693'),
(442, 'raziabhat941@gmail.com', '65088', 'diamond', '25803'),
(443, 'ruhianjum010@gmail.com', '74514', 'diamond', '54346'),
(444, 'Farhandiwan551@gmail.com', '74514', 'gold', '54546'),
(445, 'taslemansari123@gmail.com', '58978', 'Elite', '5555'),
(446, 'anjaliverma94184@gmail.com', '74510', 'silver', '2514'),
(447, 'parvaizlone46@gmail.com', '16100', 'elite', '8757'),
(448, 'shahjaany@gmail.com', '72274', 'Gold', '5331'),
(449, 'parvaizlone46@gmail.com', '16100', 'Elite', '5280'),
(450, 'asimaan99@gmail.com', '8802', 'Elite', '5236'),
(451, 'ashutechnology60@gmail.com', '65088', 'elite', '5286'),
(452, 'fmanzoor343@gmail.com', '14374', 'Elite', '8887'),
(453, 'Danishwani623@gmail.com', '39348', 'elite', '65832'),
(454, 'itzmuzamil13@gmail.com', '3372', 'elite', '8767'),
(455, 'muheebbhat021@gmail.com', '58978', 'elite', '8797'),
(456, 'abiddar649@gmail.com', '74514', 'silver', '8757'),
(457, 'musaibm99@gmail.com', '58978', 'elite', '15821'),
(458, 'rutbaAndari112@gmail.com', '58978', 'elite', '86321'),
(459, 'suraj414263@gamail.com', '46451', 'Elite', '64673'),
(460, 'shahrahil030@gmail.com', '65088', 'diamond', '86988'),
(461, 'parvinderK124@gmail.com', '58978', 'elite', '65869'),
(462, 'hummaRashid786@rediffmail.com', '58978', 'diamond', '8761'),
(463, 'dbasit920@gmail.com', '3844', 'silver', '7876'),
(464, 'shaheena.700789@gmail.com', '58978', 'elite', '6465'),
(465, 'shaheena.700789@gmail.com', '58978', 'elite', '6465'),
(466, 'afshanahassan019@gmail.com', '58978', 'elite', '57678'),
(467, 'aamirr4112@gmail.com', '65088', 'Elite', '87521'),
(468, 'aamirr4112@gmail.com', '65088', 'Elite', '8512'),
(469, 'aamirr4112@gmail.com', '52801', 'Elite', '65088'),
(470, 'aamir4112@gmail.com', '65088', 'gold', '52131'),
(471, 'Hayaazainab072@gmail.com', '39348', 'gold', '5661'),
(472, 'shahazaib124@gmail.com', '58978', 'elite', '8653'),
(473, 'Gowharshah008@gmail.com', '92634', 'Elite', '52631'),
(474, 'Sheikhatiya11@gmail.com', '39348', 'silver', '8767'),
(475, 'rahulkumar88@gmail.com', '58978', 'elite', '5454'),
(476, 'Talibkhankhan718@gmail.com', '3785', 'elite', '4643'),
(477, 'Sheikhmehak761@gmail.com', '50338', 'gold', '87683'),
(478, 'farhangulzarnajar150@gmail.com', '65088', 'diamond', '7668'),
(479, 'danishshuaib147@gmail.com', '3785', 'elite', '49461'),
(480, 'rahilff366@gmail.com', '8498', 'silver', '8553'),
(481, 'ks3476201@gmail.com', '5609', 'elite', '5455'),
(482, 'rasibahkhan@gmail.com', '74514', 'elite', '5289'),
(483, 'fza7889@gmail.com', '65088', 'elite', '5801'),
(484, 'khan.mudyy@gmail.com', '65088', 'silver', '5286'),
(485, 'wanirameez23@gmail.com', '3844', 'elite', '6868'),
(486, 'ahangerulfatahanger@gmail.com', '65088', 'diamond', '87979'),
(487, 'Shahidgulzar132@gmail.com', '65088', 'elite', '8512'),
(488, 'shakoormir267@gmail.com', '5455', 'Elite', '5581'),
(489, 'Junaidshabir837@gmail.com', '5293', 'elite', '988'),
(490, 'theshahdawar@gmail.com', '65088', 'diamond', '25814'),
(491, 'bhuzaif454@gmail.com', '80522', 'elite', '8523'),
(492, 'bhuzaif454@gmail.com', '80522', 'elite', '8523'),
(493, 'zainabzanu22@gmail.com', '58978', 'elite', '8632'),
(494, 'mirjameel1192@gmail.com', '80522', 'elite', '9868'),
(495, 'shahidibrahim0786@gmail.com', '65088', 'Diamond', '85621'),
(496, 'suhaibbkhan1@gmail.com', '7240', 'elite', '8531'),
(497, 'sheikhfaizan22049@gmail.com', '7240', 'elite', '8668'),
(498, 'bhatabrar870@gmail.com', '7240', 'elite', '8231'),
(499, 'waniubaid201@gmail.com', '27545', 'elite', '3266'),
(500, 'riderbhai172@gmail.com', '65088', 'diamond', '8546'),
(501, 'shakirfayaz135@gmail.com', '65088', 'diamond', '8888'),
(502, 'neha674@gmail.com', '58978', 'elite', '7878'),
(503, 'kaifb2590@gmail.com', '53281', 'silver', '8891'),
(504, 'shahidbhat13582@gmail.com', '7240', 'elite', '8885'),
(505, 'shahidbhat13582@gmail.com', '7240', 'elite', '8885'),
(506, 'fr5551509@gmail.com', '7240', 'elite', '8236'),
(507, 'ruzainnaik@gmail.com', '8917', 'elite', '2580'),
(508, 'uzairallie121@gmail.com', '5848', 'elite', '5213'),
(509, 'nob998877@gmail.com', '48597', 'elite', '8693'),
(510, 'nob998877@gmail.com', '48597', 'elite', '8693'),
(511, 'bhatsameer5618@gmail.com', '7240', 'elite', '5883'),
(512, 'bhatsameer5618@gmail.com', '7240', 'elite', '5883'),
(513, 'bhatyounis794@gmail.com', '5293', 'elite', '8696'),
(514, 'bhatyounis794@gmail.com', '5293', 'elite', '8696'),
(515, 'mohmmadeyad66@gmail.com', '7240', 'elite', '8539'),
(516, 'hemayata50@gmail.com', '80522', 'silver', '8886'),
(517, 'moviesyt2580@gmail.com', '48597', 'elite', '2580'),
(518, 'uy76363@gmail.com', '65088', 'gold', '6800'),
(519, 'rk9606617@gmail.comcom', '80522', 'elite', '8588'),
(520, 'ovaistak92@gmail.com', '40668', 'elite', '5809');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cert`
--
ALTER TABLE `cert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dash`
--
ALTER TABLE `dash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hen`
--
ALTER TABLE `hen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_user`
--
ALTER TABLE `kyc_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_code`
--
ALTER TABLE `package_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cert`
--
ALTER TABLE `cert`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dash`
--
ALTER TABLE `dash`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1675;

--
-- AUTO_INCREMENT for table `hen`
--
ALTER TABLE `hen`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1708;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc_user`
--
ALTER TABLE `kyc_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `package_code`
--
ALTER TABLE `package_code`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1676;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1656;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;
--
-- Database: `kujannej_xxvigor`
--
CREATE DATABASE IF NOT EXISTS `kujannej_xxvigor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `kujannej_xxvigor`;

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `id` int NOT NULL,
  `video_file` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `password`) VALUES
(17, 'Sonal kumar', 'sonalkumarheroaz@gmail.com', 'sonal');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `video_file` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `email`, `video_file`, `category`, `title`) VALUES
(14, 'sonalkumarheroaz@gmail.com', 'Video-60.mp4', 'korean', 'Mst maal'),
(15, '', '', '', ''),
(16, '', '', '', ''),
(17, '', '', '', ''),
(18, '', '', '', ''),
(19, '', '', '', ''),
(20, '', '', '', ''),
(21, '', '', '', ''),
(22, '', '', '', ''),
(23, '', '', '', ''),
(24, '', '', '', ''),
(25, '', '', '', ''),
(26, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
