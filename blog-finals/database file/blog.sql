-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 31, 2022 at 06:54 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `image` longblob DEFAULT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, 'Advantage of technology in classroom', 'advantage-of-technology-in-classroom', 0, 0x696d67312e6a706567, 'Technology can help teachers form a better relationship with their students and their colleagues. For example, 84% of teachers report using the internet at least weekly to find content that will engage students.* Integrating technology into your lesson plans as well as using it to expand your own knowledge of subject matter can make a significant difference in the classroom.', 1, '2022-01-30 23:11:30', '2022-01-30 11:14:31'),
(2, 1, 'Second post on this awesome blog', 'second-post-on-this-awesome-blog', 0, 0x696d67322e6a706567, 'This is the body of the second post on this site', 1, '2022-01-30 22:54:42', '2022-01-30 05:04:36'),
(3, 1, 'Tips on living a healthy life', 'tips-on-living-a-healthy-life', 0, 0x696d67332e6a706567, '<p>1. Healthy diet, which was calculated and rated based on the reported intake of healthy foods like vegetables, fruits, nuts, whole grains, healthy fats, and omega-3 fatty acids, and unhealthy foods like red and processed meats, sugar-sweetened beverages, trans fat, and sodium. 2. Healthy physical activity level, which was measured as at least 30 minutes per day of moderate to vigorous activity daily. 3. Healthy body weight, defined as a normal body mass index (BMI), which is between 18.5 and 24.9. 4. Smoking, well, there is no healthy amount of smoking. &quot;Healthy&quot; here meant never having smoked. 5. Moderate alcohol intake, which was measured as between 5 and 15 grams per day for women, and 5 to 30 grams per day for men. Generally, one drink contains about 14 grams of pure alcohol. That&rsquo;s 12 ounces of regular beer, 5 ounces of wine, or 1.5 ounces of distilled spirits.</p>\r\n', 1, '2022-01-31 00:32:00', '2022-01-31 00:13:56'),
(4, 5, '4 ways to do well in school', '4-ways-to-do-well-in-school', 0, 0x696d67342e6a706567, '1. Take notes while you listen or read. Taking notes helps you remember what you hear or read, but it also helps your brain stay active and absorb information adequately. If your teacher allows you to take notes while they’re talking in class, write down key points in the text, or make note of questions you have about the material while you read.\r\n\r\n2. Ask questions if you don’t understand something. It’s your teacher’s job to help you learn and understand, so don’t hesitate to ask them questions! Asking questions will not only help you learn the material better but will also show your teachers that you’re engaged and interested.\r\n\r\n3. Keep up with your homework assignments. This may seem pretty obvious, but it can be easy to get swamped and lose track of all the work you’re supposed to be doing. Make sure to complete your assigned reading and stay on top of any work you’re required to hand in.\r\n\r\n4. Maintain good attendance. Come to class every day if you can. Even if attendance isn’t mandatory in your classes, showing up will ensure you learn more and don’t miss anything important.', 1, '2022-01-31 00:52:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(4, 3, 4),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Education', 'education'),
(4, 'Health', 'health'),
(3, 'Information', 'Information'),
(2, 'Motivation', 'motivation');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT 'Author',
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'bsit3a', 'bsit3a@wvsu.com', 'Admin', 'd41d8cd98f00b204e9800998ecf8427e', '2022-01-25 04:52:58', '2022-01-25 04:52:58'),
(4, 'admin', 'admin@admin.info', 'Admin', '21232f297a57a5a743894a0e4a801fc3', '2022-01-30 22:57:32', '2022-01-30 22:57:32'),
(5, 'Ash', 'ash@gmail.com', 'Author', '635e9014b0ec5274034c60e40757018e', '2022-01-30 23:28:19', '2022-01-30 23:28:19'),
(6, 'UserA', 'usera@email.com', 'Author', '697aa03927398125bb6282e2f414a6be', '2022-01-31 03:34:54', '2022-01-31 03:34:54'),
(7, 'UserB', 'userb@email.com', 'Author', '4e1bdf42c33b390163a92510397d97b0', '2022-01-31 03:58:27', '2022-01-31 03:58:27'),
(8, 'sheina', 'sheina@gmail.com', 'Author', 'bd4b3f07c70f3dde13fccd5ce93f626c', '2022-01-31 04:10:14', '2022-01-31 04:10:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
