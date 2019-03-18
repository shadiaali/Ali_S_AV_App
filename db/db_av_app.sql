-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 18, 2019 at 06:34 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_av_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio`
--

CREATE TABLE `tbl_audio` (
  `audio_id` mediumint(9) NOT NULL,
  `era_id` smallint(6) NOT NULL,
  `audio_title` varchar(125) DEFAULT NULL,
  `audio_cover` varchar(75) DEFAULT 'temp_cover.jpg',
  `audio_src` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_audio`
--

INSERT INTO `tbl_audio` (`audio_id`, `era_id`, `audio_title`, `audio_cover`, `audio_src`) VALUES
(1, 1, 'Jerry Lee Lewis - Great Balls of Fire', 'fire.jpg', 'fire.mp3'),
(2, 1, 'Little Richard - Long Tall Sally', 'sally.jpg', 'sally.mp3'),
(3, 1, 'Johnny Cash - I Walk The Line', 'walk.jpg', 'walk.mp3'),
(4, 1, 'Elvis Presley - Blue Suede Shoes', 'shoes.jpg', 'shoes.mp3'),
(5, 2, 'Chubby Checker - The Twist', 'twist.jpg', 'twist.mp3'),
(6, 2, 'Marvin Gaye - I Heard It Through The Grapevine', 'grapevine.jpg', 'grapevine.mp3'),
(7, 2, 'The Beatles - I Want To Hold Your Hand', 'hand.jpg', 'hand.mp3'),
(8, 2, 'The Beach Boys - Good Vibrations', 'vibrations.jpg', 'vibrations.mp3'),
(9, 3, 'The Jackson 5 - I Will Be There', 'there.jpg', 'there.mp3'),
(10, 3, 'Sugarloaf Green - Eyed Lady', 'eyed.jpg', 'eyed.mp3'),
(11, 3, 'The Beatles - Let It Be', 'let.jpg', 'let.mp3'),
(12, 3, 'The Guess Who - American Woman', 'american.jpg', 'american.mp3'),
(13, 4, 'Queen - Another One Bites the Dust', 'dust.jpg', 'dust.mp3'),
(14, 4, 'Barbra Streisand - Woman in Love', 'woman.jpg', 'woman.mp3'),
(15, 4, 'Men at Work - Down Under', 'under.jpg', 'under.mp3'),
(16, 4, 'Talking Heads - Once in a Lifetime', 'lifetime.jpg', 'lifetime.mp3'),
(17, 5, 'Vanilla Ice - Ice Ice Baby', 'ice.jpg', 'ice.mp3'),
(18, 5, 'M.C. Hammer - U Cant Touch This', 'touch.jpg', 'touch.mp3'),
(19, 5, 'Madonna - Vogue', 'vogue.jpg', 'vogue.mp3'),
(20, 5, 'Whitney Houston - Im Your Baby Tonight', 'tonight.jpg', 'tonight.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio_era`
--

CREATE TABLE `tbl_audio_era` (
  `audio_era_id` smallint(6) NOT NULL,
  `audio_id` smallint(6) NOT NULL,
  `era_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audio_era`
--

INSERT INTO `tbl_audio_era` (`audio_era_id`, `audio_id`, `era_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 4),
(14, 14, 4),
(15, 15, 4),
(16, 16, 4),
(17, 17, 5),
(18, 18, 5),
(19, 19, 5),
(20, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL,
  `comments_auth` varchar(125) DEFAULT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `comments_auth`, `comments_copy`, `comments_date`, `comments_movie`, `comments_rating`) VALUES
(1, NULL, 'Loved it. Chris Pratt is my hero! I LOVE YOU STAR LORD!!', '2018-03-26 19:08:41', 1, 5),
(2, NULL, 'Not quite as good as the first Guardians, but still WAY better that any DC movie... ', '2018-03-26 19:09:57', 1, 4),
(3, NULL, 'It sucked.', '2018-04-01 14:54:32', 1, 1),
(4, NULL, 'It was amazing. I really liked this way better than any DC movie that\'s ever been made, EVER.\n\nCuz DC movies are garbage.', '2018-04-01 14:55:29', 1, 3),
(5, NULL, 'I thought Logan was great.THIS is the way you do comic book dystopia.', '2018-04-01 14:56:55', 3, 4),
(6, NULL, 'Way too violent. I thought Hugh Jackman would at least do a song and dance, but was VERY disappointed.', '2018-04-01 14:57:35', 3, 1),
(7, NULL, 'OMG i can\'t get enough Deadpool.. what a great movie', '2018-04-01 15:11:30', 7, 5),
(8, NULL, 'I really liked this. Prof X made me sad tho. What a way to go...', '2018-04-01 15:51:58', 3, 4),
(9, NULL, 'afsdfsdfa', '2018-04-02 20:59:20', 3, 3),
(10, NULL, 'the most amazingest movie ever to amaze!', '2018-04-07 23:24:41', 1, 3),
(11, NULL, 'best movie ever', '2018-04-07 23:25:17', 1, 5),
(12, NULL, 'undefined', '2018-04-08 17:58:27', 9, 5),
(13, NULL, 'undefined', '2018-04-08 18:01:58', 9, 1),
(14, NULL, 'undefined', '2018-04-08 18:05:54', 1, 4),
(15, NULL, 'undefined', '2018-04-08 18:07:54', 1, 5),
(16, NULL, 'Deadpool smashed quite a few boundaries', '2018-04-08 18:08:45', 7, 5),
(17, NULL, 'last test to see if this works', '2018-04-08 18:09:23', 7, 3),
(18, NULL, 'this looked interesting and then was a bit of a letdown', '2018-04-08 19:03:13', 4, 3),
(19, NULL, 'i like pigs so I didn\'t really like this movie.', '2018-04-08 19:10:07', 4, 1),
(20, NULL, 'pigs are delicious so i think this movie was fantastic. and made me hungry.', '2018-04-08 19:13:06', 4, 3),
(21, NULL, 'i like pork so hooray for super pigs.', '2018-04-08 19:23:53', 4, 3),
(22, NULL, 'I DON\'T like pork so super pigs = boooo!', '2018-04-08 19:25:19', 4, 0),
(23, NULL, 'I ALSO don\'t like super pigs.', '2018-04-08 19:27:19', 4, 1),
(24, NULL, 'I hate super pigs. AND this movie.', '2018-04-08 19:30:01', 4, 0),
(25, NULL, 'I hate super pigs. AND this movie.', '2018-04-08 19:30:32', 4, 1),
(26, NULL, 'I kind of like it. but mostly hated it.', '2018-04-08 19:32:31', 4, 1),
(27, NULL, 'fantabolous', '2018-04-09 15:18:16', 1, 4),
(28, NULL, 'asdfa', '2018-04-27 14:28:12', 5, 3),
(29, NULL, 'afasd', '2018-04-27 15:30:23', 5, 0),
(30, NULL, 'asdfasd', '2018-04-27 16:18:01', 3, 0),
(31, NULL, 'ddddd', '2018-04-27 16:18:11', 3, 0),
(32, NULL, 'vzxvc', '2018-04-27 16:27:32', 5, 0),
(33, NULL, 'dfasdf', '2018-04-27 16:38:46', 2, 0),
(34, NULL, 'sfasdf', '2018-04-27 16:38:49', 2, 0),
(35, NULL, 'aasd', '2018-04-27 16:45:21', 9, 0),
(36, '', 'sadfadsfasdfasdf', '2018-04-27 16:51:40', 5, 3),
(37, NULL, 'adfasdf', '2018-04-27 16:56:50', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_era`
--

CREATE TABLE `tbl_era` (
  `era_id` smallint(6) NOT NULL,
  `era_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_era`
--

INSERT INTO `tbl_era` (`era_id`, `era_name`) VALUES
(1, '1950'),
(2, '1960'),
(3, '1970'),
(4, '1980'),
(5, '1990');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `era_id` smallint(6) NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `era_id`, `movies_cover`, `movies_title`, `movies_trailer`) VALUES
(1, 1, 'rear.jpg', 'Rear Window', 'https://www.youtube.com/embed/m01YktiEZCw'),
(2, 1, 'sunset.jpeg', 'Sunset Boulevard', 'https://www.youtube.com/embed/xzYqUpV_B-A'),
(3, 1, 'singing.jpg', 'Singin\' in the Rain', 'https://www.youtube.com/embed/Fp7Ao6Zk_Mc'),
(4, 1, 'searchers.jpg', 'The Searchers', 'https://www.youtube.com/embed/ii_7QnXPQxA'),
(5, 2, 'psycho.jpg', 'Psycho', 'https://www.youtube.com/embed/DTJQfFQ40lI'),
(6, 2, '2001.jpg', '2001: A SPACE ODYSSEY', 'https://www.youtube.com/embed/oR_e9y-bka0'),
(7, 2, 'strangelove.jpg', 'Dr. Strangelove', 'https://www.youtube.com/embed/IE9CmX15PYA'),
(8, 2, 'graduate.jpg', 'The Graduate', 'https://www.youtube.com/embed/hsdvhJTqLak'),
(9, 3, 'taxi.jpg', 'Taxi Driver', 'https://www.youtube.com/embed/sLpMx8_TYOo'),
(10, 3, 'godfather.jpg', 'The Godfather', 'https://www.youtube.com/embed/sY1S34973zA'),
(11, 3, 'jaws.jpg', 'Jaws', 'https://www.youtube.com/embed/U1fu_sA7XhE'),
(12, 3, 'exorcist.jpeg', 'The Exorcist', 'https://www.youtube.com/embed/YDGw1MTEe9k'),
(13, 4, 'breakfast.jpg', 'The Breakfast Club', 'https://www.youtube.com/embed/BSXBvor47Zs'),
(14, 4, 'future.jpg', 'Back to the Future', 'https://www.youtube.com/embed/MdENmefJRpw'),
(15, 4, 'ferris.jpg', 'Ferris Bueller\'s Day Off', 'https://www.youtube.com/embed/K-X2XzKqBiE'),
(16, 4, 'goonies.jpg', 'The Goonies', 'https://www.youtube.com/embed/hJ2j4oWdQtU'),
(17, 4, 'et.jpg', 'ET', 'https://www.youtube.com/embed/qYAETtIIClk'),
(18, 5, 'pulp.jpg', 'Pulp Fiction', 'https://www.youtube.com/embed/s7EdQ4FqbhY'),
(19, 5, 'clueless.jpg', 'Clueless', 'https://www.youtube.com/embed/RS0KyTZ3Ie4'),
(20, 5, 'titanic.jpg', 'Titanic', 'https://www.youtube.com/embed/zCy5WQ9S4c0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_era`
--

CREATE TABLE `tbl_mov_era` (
  `mov_era_id` smallint(6) NOT NULL,
  `movies_id` smallint(6) NOT NULL,
  `era_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_era`
--

INSERT INTO `tbl_mov_era` (`mov_era_id`, `movies_id`, `era_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 4),
(14, 14, 4),
(15, 15, 4),
(16, 16, 4),
(17, 17, 5),
(18, 18, 5),
(19, 19, 5),
(20, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `tv_id` smallint(6) UNSIGNED NOT NULL,
  `era_id` tinyint(11) NOT NULL,
  `tv_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `tv_title` varchar(125) NOT NULL,
  `tv_src` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `era_id`, `tv_cover`, `tv_title`, `tv_src`) VALUES
(1, 1, 'fkb.jpg', 'Father Knows Best', 'https://www.youtube.com/embed/sXVEWmxkmbQ'),
(2, 1, 'ill.jpg', 'I Love Lucy', 'https://www.youtube.com/embed/C5JJxCePIK0'),
(3, 1, 'b.jpg', 'Bonanza', 'https://www.youtube.com/embed/Z12LxTatFFM'),
(4, 1, 'ahp.jpg', 'Afred Hitchcock Presents', 'https://www.youtube.com/embed/nEuHBMzBgRg'),
(5, 2, 'bm.jpg', 'Batman', 'https://www.youtube.com/embed/qpoxHvmWPfc'),
(6, 2, 'tbh.jpg', 'The Beverly Hillbillies', 'https://www.youtube.com/embed/iYJN2tHgB4Q'),
(7, 2, 'gilligan.jpg', 'Gilligan\'s Island', 'https://www.youtube.com/embed/3ckvlwWglik'),
(8, 2, 'be.jpg', 'Bewitched', 'https://www.youtube.com/embed/x4dfZmGlERU'),
(9, 3, 'happy.jpg', 'Happy Days', 'https://www.youtube.com/embed/oP_HcYawR9U'),
(10, 3, 'aitf.jpg', 'All in the Family', 'https://www.youtube.com/embed/ha7a2v70Ikk'),
(11, 3, 'charlie.jpg', 'Charlie\'s Angels', 'https://www.youtube.com/embed/dYQGwYQZ9PI'),
(12, 3, 'jeff.png', 'The Jeffersons', 'https://www.youtube.com/embed/qmXDXbfECiI'),
(13, 4, 'cheers.jpg', 'Cheers', 'https://www.youtube.com/embed/Qh7p5cPWP-k'),
(14, 4, 'alf.jpg', 'Alf', 'https://www.youtube.com/embed/i75tpMJ7OeM'),
(15, 4, 'cosby.jpeg', 'The Cosby Show', 'https://www.youtube.com/embed/P8oZKoE208E'),
(16, 4, 'knight.jpg', 'Knight Rider', 'https://www.youtube.com/embed/2onplTsnLiA'),
(17, 5, 'friends.jpg', 'Friends', 'https://www.youtube.com/embed/8mP5xOg7ijs'),
(18, 5, 'fresh.jpg', 'Fresh Prince', 'https://www.youtube.com/embed/rCOjDwbP-e4'),
(19, 5, 'married.png', 'Married with Children', 'https://www.youtube.com/embed/WS4ItwFEkoc'),
(20, 5, 'sbtb.png', 'Saved by the Bell', 'https://www.youtube.com/embed/KCUheInoaMY');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv_era`
--

CREATE TABLE `tbl_tv_era` (
  `tv_era_id` smallint(6) NOT NULL,
  `tv_id` smallint(6) NOT NULL,
  `era_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv_era`
--

INSERT INTO `tbl_tv_era` (`tv_era_id`, `tv_id`, `era_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 4),
(14, 14, 4),
(15, 15, 4),
(16, 16, 4),
(17, 17, 5),
(18, 18, 5),
(19, 19, 5),
(20, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_admin` tinyint(4) DEFAULT NULL,
  `user_access` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_admin`, `user_access`) VALUES
(1, 'trevor', 'user1', 'password', 't@t.com', '2019-02-01 19:07:35', '::1', 1, 5),
(2, 'kate', 'user2', 'password', 't@t.com', '2019-02-01 20:11:28', '::1', 1, 5),
(3, 'mad', 'user3', 'password', 't@t.com', '2019-02-01 20:12:40', '::1', 0, 3),
(4, 'emma', 'user4', 'password', 't@t.com', '2019-02-01 20:12:40', '::1', 0, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_audio`
--
ALTER TABLE `tbl_audio`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `tbl_audio_era`
--
ALTER TABLE `tbl_audio_era`
  ADD PRIMARY KEY (`audio_era_id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_era`
--
ALTER TABLE `tbl_era`
  ADD PRIMARY KEY (`era_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_era`
--
ALTER TABLE `tbl_mov_era`
  ADD PRIMARY KEY (`mov_era_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- Indexes for table `tbl_tv_era`
--
ALTER TABLE `tbl_tv_era`
  ADD PRIMARY KEY (`tv_era_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_audio`
--
ALTER TABLE `tbl_audio`
  MODIFY `audio_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_audio_era`
--
ALTER TABLE `tbl_audio_era`
  MODIFY `audio_era_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_era`
--
ALTER TABLE `tbl_era`
  MODIFY `era_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_mov_era`
--
ALTER TABLE `tbl_mov_era`
  MODIFY `mov_era_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_tv_era`
--
ALTER TABLE `tbl_tv_era`
  MODIFY `tv_era_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
