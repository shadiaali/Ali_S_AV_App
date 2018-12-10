-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 02, 2018 at 04:09 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_video_player`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `category_id` tinyint(1) UNSIGNED NOT NULL,
  `category_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`category_id`, `category_name`) VALUES
(1, 'Fantasy'),
(2, 'Adventure'),
(3, 'Drama'),
(4, 'Animation'),
(5, 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_videos`
--

CREATE TABLE `tbl_videos` (
  `video_id` mediumint(8) UNSIGNED NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `video_author` varchar(60) NOT NULL,
  `video_description` text NOT NULL,
  `video_duration` time NOT NULL,
  `video_upload_date` date NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `video_cover_image` varchar(80) NOT NULL DEFAULT 'default_cover.jpg',
  `video_rating` int(11) UNSIGNED NOT NULL,
  `video_visits` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_videos`
--

INSERT INTO `tbl_videos` (`video_id`, `video_name`, `video_author`, `video_description`, `video_duration`, `video_upload_date`, `video_url`, `video_cover_image`, `video_rating`, `video_visits`) VALUES
(1, 'Fantastic Beasts and Where to Find Them', 'Warner Bros. UK', 'Official Final Trailer for Fantastic Beasts and Where to Find Them - in UK cinemas November 18, 2016 – set in the wizarding world created by J.K. Rowling and directed by David Yates. The film stars Academy Award winner Eddie Redmayne, Colin Farrell, Ron Perlman, Dan Fogler, Katherine Waterston, Alison Sudol, Ezra Miller, Samantha Morton, Gemma Chan, and Jon Voight.', '00:02:52', '2016-09-28', 'https://www.youtube.com/embed/VYZ3U1inHA4', 'fbawtft.jpg', 11000, 2697337),
(2, 'The Hobbit', 'Warner Bros. Pictures', 'In theaters December 14, 2012.\r\n\r\n\"The Hobbit: An Unexpected Journey\" follows title character Bilbo Baggins, who is swept into an epic quest to reclaim the lost Dwarf Kingdom of Erebor from the fearsome dragon Smaug.  Approached out of the blue by the wizard Gandalf the Grey, Bilbo finds himself joining a company of thirteen dwarves led by the legendary warrior, Thorin Oakenshield.  Their journey will take them into the Wild; through treacherous lands swarming with Goblins and Orcs, deadly Wargs and Sorcerers. \r\n\r\nAlthough their goal lies to the East and the wastelands of the Lonely Mountain, first they must escape the goblin tunnels, where Bilbo meets the creature that will change his life forever...Gollum.   \r\n\r\nHere, alone with Gollum, on the shores of an underground lake, the unassuming Bilbo Baggins not only discovers depths of ingenuity and courage that surprise even him, he also gains possession of Gollum\'s \"precious\" ring that holds unexpected and useful qualities... A simple, gold ring that is tied to the fate of all Middle-earth in ways Bilbo cannot begin to know.', '00:02:31', '2012-08-19', 'https://www.youtube.com/embed/SDnYMbYB-nU', 'th.jpg', 17000, 5605957),
(3, 'Pan\'s Labyrinth', 'TrailersPlaygroundHD', 'Following a bloody civil war, young Ofelia enters a world of unimaginable cruelty when she moves in with her new stepfather, a tyrannical military officer. Armed with only her imagination, Ofelia discovers a mysterious labyrinth and meets a faun who sets her on a path to saving herself and her ailing mother. But soon, the lines between fantasy and reality begin to blur, and before Ofelia can turn back, she finds herself at the center of a ferocious battle between good and evil.', '00:02:30', '2013-08-20', 'https://www.youtube.com/embed/E7XGNPXdlGQ', 'pl.jpg', 2700, 870352),
(4, 'Stardust', 'YouTube Movies', '\"Scheming princes, wicked witches, flying pirates, celestial love, a pure-hearted hero, all in a magical land. What more do you want?\" raves Today\'s Gene Shalit for Stardust, an epic adventure starring Claire Danes with Michelle Pfeiffer and Robert De Niro. In Hopes of wooing a beautiful girl (Sienna Miller), Tristan (Charlie Cox) promises to bring her a falling star. But he\'s in for the adventure of his life when he discovers the star is actually a celestial beauty named Yvaine (Danes). When an old witch Lamia (Pfeiffer) attempts to steal Yvaine\'s youth, Tristan must protect her at all costs. This magical fairytale like no other will make you laugh out loud and believe in love again.', '00:02:30', '2012-05-04', 'https://www.youtube.com/embed/VfYBKDyF-Dk', 's.jpg', 0, 2064562),
(5, 'Labyrinth', 'YouTube Movies', 'Teenage Sarah is left to babysit her baby brother Toby and he will not stop crying. So Sarah tries to put the baby to sleep by reading him a story. When she accidentally conjures up the Goblin King from the fantasy, he steals the baby and takes him to his castle, which is in the middle of a labyrinth. Now Sarah must solve the labyrinth by midnight, or Toby will be turned into a goblin. (Original Title - Labyrinth (1986)) (c) 2007 TM & © 1986, 2007 The Jim Henson Company.  LABYRINTH mark & logo are trademarks of The Jim Henson Company.  LABYRINTH characters © 1986 Labyrinth Enterprises.  All Rights Reserved.', '00:01:24', '2013-12-11', 'https://www.youtube.com/embed/XRcOZZDvMv4', 'l.jpg', 0, 733242),
(6, 'Black Panther', 'FilmSelect Trailer', 'Here is Trailer 2 for Black Panther\r\n', '00:04:22', '2017-10-16', 'https://www.youtube.com/embed/vt9UZo32KMk', 'bp.jpg', 114000, 26503779),
(7, 'Avatar', 'JoBlo Movie Trailers', 'PLOT: A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.\r\n\r\nCAST: Sam Worthington, Zoe Saldana, Sigourney Weaver', '00:03:49', '2017-09-26', 'https://www.youtube.com/embed/6ziBFh3V1aM', 'a.jpg', 1000, 234905),
(8, 'Pirates of the Caribbean', 'Movieclips Classic Trailers', 'Blacksmith Will Turner teams up with eccentric pirate \"Captain\" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.', '00:02:25', '2013-09-19', 'https://www.youtube.com/embed/naQr0uTrH_s', 'potc.jpg', 4600, 1651933),
(9, 'Gladiator', 'FilmTrailersChannel', 'Maximus is a powerful Roman general, loved by the people and the aging Emperor, Marcus Aurelius. Before his death, the Emperor chooses Maximus to be his heir over his own son, Commodus, and a power struggle leaves Maximus and his family condemned to death. The powerful general is unable to save his family, and his loss of will allows him to get captured and put into the Gladiator games until he dies. The only desire that fuels him now is the chance to rise to the top so that he will be able to look into the eyes of the man who will feel his revenge.  \r\n', '00:01:22', '2009-08-22', 'https://www.youtube.com/embed/ol67qo3WhJk', 'g.jpg', 2300, 2318668),
(10, 'The Mummy', 'Movieclips Classic Trailers', 'The Mummy Trailer - Directed by Stephen Sommers and starring Brendan Fraser Rachel Weisz John Hannah Arnold Vosloo and Kevin J. O\'Connor Dashing legionnaire Rick O\'Connell and Beni, his weasel of a companion, stumble upon the hidden ruins of Hamunaptra while in the midst of a battle in 1923, 3,000 years after Imhotep has suffered a fate worse than death; his body will remain undead for all eternity as a punishment for a forbidden love.', '00:03:55', '2011-12-11', 'https://www.youtube.com/embed/f7oKxlaUBac', 'tm.jpg', 919, 406827),
(11, 'La La Land', 'Lionsgate Movies', 'Starring Ryan Gosling, Emma Stone, John Legend, Rosemarie DeWitt, Finn Wittrock, Callie Hernandez, Sonoya Mizuno, Jessica Rothe, Tom Everett Scott and Josh Pence.', '00:02:26', '2016-11-03', 'https://www.youtube.com/embed/0pdqf4P9MB8', 'lll.jpg', 128000, 34883394),
(12, '12 Years a Slave', 'FoxSearchlight', '12 YEARS A SLAVE is based on an incredible true story of one man\'s fight for survival and freedom.  In the pre-Civil War United States, Solomon Northup (Chiwetel Ejiofor), a free black man from upstate New York, is abducted and sold into slavery.  Facing cruelty (personified by a malevolent slave owner, portrayed by Michael Fassbender) as well as unexpected kindnesses, Solomon struggles not only to stay alive, but to retain his dignity.  In the twelfth year of his unforgettable odyssey, Solomon\'s chance meeting with a Canadian abolitionist (Brad Pitt) forever alters his life.\r\n\r\nStarring Chiwetel Ejiofor, Michael Fassbender, Benedict Cumberbatch, Paul Dano, Paul Giamatti, Lupita Nyong\'o, Sarah Paulson, Brad Pitt, and Alfre Woodard.  In theaters October 18.', '00:02:29', '2013-07-19', 'https://www.youtube.com/embed/z02Ie8wKKRg', '12yas.jpg', 15000, 5392920),
(13, 'The Help', 'DanceOn', 'Set in Mississippi during the 1960s, Skeeter (Emma Stone) is a southern society girl who returns from college determined to become a writer, but turns her friends\' lives -- and a small Mississippi town -- upside down when she decides to interview the black women who have spent their lives taking care of prominent southern families. Aibileen (Viola Davis), Skeeter\'s best friend\'s housekeeper, is the first to open up -- to the dismay of her friends in the tight-knit black community. Despite Skeeter\'s life-long friendships hanging in the balance, she and Aibileen continue their collaboration and soon more women come forward to tell their stories -- and as it turns out, they have a lot to say. Along the way, unlikely friendships are forged and a new sisterhood emerges, but not before everyone in town has a thing or two to say themselves when they become unwittingly -- and unwillingly -- caught up in the changing times.', '00:02:48', '2011-06-08', 'https://www.youtube.com/embed/aT9eWGjLv6s', 'thelp.jpg', 1300, 362883),
(14, 'Titanic', 'MoviesHistory', 'Deep-sea explorer Brock Lovett has reached the most famous shipwreck of all - the Titanic. Emerging with a safe believed to contain a diamond called \'The Heart of the Ocean\', he discovers the safe does not hold the diamond but a drawing of a beautiful woman wearing it. When Brock is later interviewed on TV, he shows the drawing to the cameras, and a 100-year-old woman named Rose Calvert living in Michigan recognizes the woman in the drawing - herself! On a visit to Brock\'s explorer ship over the wreck, Rose tells her story of the Titanic and its ill-fated voyage. Engaged to a would-be steel magnate, Caledon Hockley, she boards the Titanic\'s first-class suites with him & her mother in Southampton. Also boarding are Jack Dawson & his friend Fabrizio, after a lucky poker game wins them tickets in steerage. When Rose attempts suicide by jumping off the stern in 3rd class, Jack pulls her back onto the ship...and a bond is forged between them as Jack is invited by her into 1st-class the following day. Rose\'s mother & Cal Hockley try desperate measures to keep them apart. But that strategy goes out the window when the Titanic collides with an iceberg, and due to a design flaw begins to sink - despite being proclaimed \'unsinkable\'. Now Rose & Jack must fight to stay alive, but is young Jack already doomed because of his lower status as a steerage passenger? Written by Derek O\'Cain\r\n', '00:04:08', '2009-04-18', 'https://www.youtube.com/embed/zCy5WQ9S4c0', 't.jpg', 35000, 13263567),
(15, 'Fight Club', 'Movieclips Classic Trailers', 'A depressed man (Edward Norton) suffering from insomnia meets a strange soap salesman named Tyler Durden (Brad Pitt) and soon finds himself living in his squalid house after his perfect apartment is destroyed. The two bored men form an underground club with strict rules and fight other men who are fed up with their mundane lives. Their perfect partnership frays when Marla (Helena Bonham Carter), a fellow support group crasher, attracts Tyler\'s attention.', '00:02:27', '2017-11-21', 'https://www.youtube.com/embed/qtRKdVHc-cE', 'fc.jpg', 126, 17167),
(16, 'Shrek', 'DreamworksAnimFan', 'Shrek is now available on DVD', '00:02:10', '2008-06-10', 'https://www.youtube.com/embed/W37DlG1i61s', 'shrek.jpg', 3300, 4053197),
(17, 'Coco', 'Disney•Pixar', 'Despite his family’s baffling generations-old ban on music, Miguel (voice of newcomer Anthony Gonzalez) dreams of becoming an accomplished musician like his idol, Ernesto de la Cruz (voice of Benjamin Bratt). Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events. Along the way, he meets charming trickster Hector (voice of Gael García Bernal), and together, they set off on an extraordinary journey to unlock the real story behind Miguel\'s family history. Directed by Lee Unkrich, co-directed by Adrian Molina and produced by Darla K. Anderson, Disney•Pixar’s “Coco” opens in U.S. theaters on Nov. 22, 2017. ', '00:02:10', '2017-11-06', 'https://www.youtube.com/embed/Rvr68u6k5sI', 'c.jpg', 17000, 4415277),
(18, 'Finding Dory', 'Disney•Pixar', 'Disney•Pixar\'s “Finding Dory” reunites everyone’s favorite forgetful blue tang, Dory, with her friends Nemo and Marlin on a search for answers about her past. What can she remember? Who are her parents? And where did she learn to speak Whale? Directed by Andrew Stanton (“Finding Nemo,” “WALL•E”) and produced by Lindsey Collins (co-producer “WALL•E”), the film features the voices of Ellen DeGeneres, Albert Brooks, Ed O\'Neill, Kaitlin Olson, Ty Burrell, Eugene Levy and Diane Keaton. “Finding Dory” swims into theaters June 17, 2016. ', '00:01:48', '2016-10-02', 'https://www.youtube.com/embed/JhvrQeY3doI', 'fd.jpg', 12000, 3017216),
(19, 'Despicable Me', ' Movieclips', 'A mysterious criminal mastermind has stolen one of the pyramids in Egypt, sparking a fit of jealous envy in evil genius Gru (Steve Carell), who hasn\'t managed to make headlines since he and his minions swiped the Times Square JumboTron years back. Ever since Gru was a little boy, he dreamed of going to the moon. Now, if Gru can just build a rocket and get his hands on a powerful shrink-ray, he can cement his reputation as the greatest thief who ever lived by stealing the Earth\'s satellite right out of the sky. But immediately after Gru heists the shrink-ray, the cunning super-nerd Vector (Jason Segel) swoops in and snatches it right out of his hands. Now, in order to claim the moon, Gru must first reacquire the weapon from Vector. Armed with the knowledge that his nemesis has a mean sweet tooth, Gru adopts cookie-selling orphans Margo (Miranda Cosgrove), Agnes (Elsie Fisher), and Edith (Dana Gaier) and commissions a new line of cookie robots from the evil Dr. Nefario (Russell Brand), his personal weapons specialist. But as Gru and his diminutive yellow minions prepare to carry out the biggest heist in history, something strange happens. Gru discovers that the three little girls who have come into his life are much more than simple pawns. They actually seem to care about Gru, and it turns out the scheming evildoer makes a pretty good father. When Gru realizes that his upcoming moon mission clashes with a ballet performance by the girls, he must decide what\'s more important -- being a present parent or cementing his nefarious reputation once and for all.', '00:02:59', '2011-06-16', 'https://www.youtube.com/embed/sUkZFetWYY0', 'dm.jpg', 15000, 17063421),
(20, 'Monsters, Inc.', 'YouTube Movies', 'Lovable Sulley (John Goodman) and his wisecracking sidekick Mike Wazowski (Billy Crystal) are the top scare team at MONSTERS, INC., the scream-processing factory in Monstropolis. When a little girl named Boo wanders into their world, it\'s the monsters who are scared silly, and it\'s up to Sulley and Mike to keep her out of sight and get her back home.', '00:01:42', '2013-01-24', 'https://www.youtube.com/embed/8IBNZ6O2kMk', 'mi.jpg', 105, 100),
(21, 'THE NUN', 'Warner Bros. Pictures', 'When a young nun at a cloistered abbey in Romania takes her own life, a priest with a haunted past and a novitiate on the threshold of her final vows are sent by the Vatican to investigate.  Together they uncover the order’s unholy secret.  Risking not only their lives but their faith and their very souls, they confront a malevolent force in the form of the same demonic nun that first terrorized audiences in “The Conjuring 2,” as the abbey becomes a horrific battleground between the living and the damned.  ', '00:01:32', '2018-06-13', 'https://www.youtube.com/embed/pzD9zGcUNrw', 'tn.jpg', 298000, 36618919),
(22, 'Get Out', 'Movieclips Trailers', 'A young African American man visits his Caucasian girlfriend\'s cursed family estate.\r\n', '00:02:32', '2016-10-04', 'https://www.youtube.com/embed/DzfpyUB60YY', 'go.jpg', 56000, 13497862),
(23, 'The Witch', 'Zero Media', 'The Witch Trailer 1 (2015) Anya Taylor-Joy, Ralph Ineson Horror Movie HD [Official Trailer]\r\n', '00:03:19', '2015-08-19', 'https://www.youtube.com/embed/iQXmlf3Sefg', 'tw.jpg', 3300, 1681403),
(24, 'Train to Busan', 'Zero Media', 'Train to Busan Trailer 2 (2016) Yoo Gong Korean Zombie Movie HD [Official Trailer]\r\n', '00:02:28', '2016-07-22', 'https://www.youtube.com/embed/1d4DACwz49o', 'ttb.jpg', 14000, 5626936),
(25, 'Gerald\'s Game', 'Netflix', 'Breaking free will require more than keeping her sanity. Based on a novel by Stephen King, Gerald\'s Game is now streaming exclusively on Netflix.', '00:02:23', '2017-09-06', 'https://www.youtube.com/embed/twbGU2CqqQU', 'gg.jpg', 20000, 8752446);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_videos_categories`
--

CREATE TABLE `tbl_videos_categories` (
  `videos_categories_id` mediumint(8) UNSIGNED NOT NULL,
  `video_id` mediumint(8) NOT NULL,
  `category_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_videos_categories`
--

INSERT INTO `tbl_videos_categories` (`videos_categories_id`, `video_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 4),
(17, 17, 4),
(18, 18, 4),
(19, 19, 4),
(20, 20, 4),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_videos`
--
ALTER TABLE `tbl_videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `tbl_videos_categories`
--
ALTER TABLE `tbl_videos_categories`
  ADD PRIMARY KEY (`videos_categories_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `category_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_videos`
--
ALTER TABLE `tbl_videos`
  MODIFY `video_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_videos_categories`
--
ALTER TABLE `tbl_videos_categories`
  MODIFY `videos_categories_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
