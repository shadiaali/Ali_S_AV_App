-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2018 at 04:52 AM
-- Server version: 5.7.20
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(1, 'Sports'),
(2, 'Science & Technology'),
(3, 'Education'),
(4, 'Film & Animation'),
(5, 'Music');

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
(1, 'The Mind of Kobe Bryant - Hard Work', 'piotrekzprod', '\"I can\'t relate to lazy people. We don\'t speak the same language. I don\'t understand you. I don\'t want to understand you.\" \r\nKobe Bryant is the greatest basketball player of all-time. Hands down and it\'s not even close. His mindset is far greater than any of the superstar\'s of today.', '00:16:37', '2018-11-06', 'https://www.youtube.com/watch?v=p5b3LFR4MmA', 'kobe_bryant.jpg', 2100, 55587),
(2, 'The Toronto Raptors Best Plays of the Season', 'NBA', 'Check out the best plays from the Toronto Raptors this season so far!\r\n\r\nSubscribe to the NBA: http://bit.ly/2rCglzY\r\n\r\nFor news, stories, highlights and more, go to our official website at http://www.nba.com\r\n\r\nGet NBA LEAGUE PASS: http://www.nba.com/leaguepass', '00:10:11', '2018-03-10', 'https://www.youtube.com/watch?v=2vbdjj6U__0', 'toronto_raptors.jpg', 3600, 213245),
(3, '2018 Brazilian Grand Prix: Race Highlights', 'Formula 1', 'Title tension and passions boiling over - all the best bits from a dramatic race day in Brazil...\r\n\r\nFor more F1® videos, visit http://www.Formula1.com\r\n\r\nLike F1® on Facebook: https://www.facebook.com/Formula1/\r\n\r\nFollow F1® on Twitter: http://www.twitter.com/F1\r\n\r\nFollow F1® on Instagram: http://www.instagram.com/F1', '00:07:06', '2018-11-11', 'https://www.youtube.com/watch?v=o5pdLO9irzY', 'f1_brazil_2018.jpg', 4000, 33488),
(4, 'Mountain Biking the lower Whistler Bike Park', ' Nate Hills', 'Mountain biking the lower Whistler Bike Park trails. Follow Cam Friday, picking up where we left off in last week\'s episode. This is how we got to the bottom after riding Top of the World. This is basically No Joke, Freight Train, Mckenzie River, Del Boca Vista, Lower A-Line, finishing our 5000ft descent. Ridden by Adrian Camposilvan, Will Cadham, Ben Forbes and Krunk Shox. ', '00:06:38', '2017-02-03', 'https://www.youtube.com/watch?v=p2xBsiNca7c', 'mtb.jpg', 45000, 3400391),
(5, 'WRC Rally Catalunya Spain 2018 | HIGHLIGHTS', ' GHrallyemotion', 'Sebastien Loeb proved that he still got it! Rally Spain offered some great action and an intense battle for the victory. This is competition we really wanna see! Now we will pay close attention to the championship deciding round in Australia in 3 weeks :-)', '00:09:49', '2018-10-28', 'https://www.youtube.com/watch?v=cqHcGvXlBLo', 'rallycar.jpg', 1100, 135615),
(6, 'CSS Grid in 45 Minutes!', 'Wes Bos', 'This is a talk I did at Laracon on CSS Grid. If you want to learn more about CSS Grid, take my free course at https://CSSGrid.io. Slides for this talk available at https://wesbos.github.io/css-grid-talk - ', '00:44:59', '2018-08-23', 'https://www.youtube.com/watch?v=DCZdCKjnBCs&t=33s', 'css_grid_wesbos.jpg', 1000, 24644),
(7, 'Vue.js 2.0 In 60 Minutes', 'Traversy Media', 'In this crash course we will cover all of the fundamentals of the Vue.js 2.0 JavaScript framework. \r\n\r\nVue-cli\r\nDeclarative Rendering\r\nDirectives\r\nConditionals & Loops\r\nEvents & Input\r\nTemplates\r\nComponents\r\nProperties\r\nvue-router\r\nvue-resource\r\n', '01:01:46', '2016-12-04', 'https://www.youtube.com/watch?v=z6hQqgvGI4Y&t=4s', 'traversy_media_vue.jpg', 8000, 506894),
(8, 'What is Blockchain Technology? Easy To Understand Video', 'Blockgeeks', 'What is Blockchain Technology? \r\n\r\nhttps://www.blockgeeks.com\r\n\r\nJoin us for an easy to understand and simple breakdown of blockchain technology. We\'ll introduce you to all the basic concepts so you can begin your journey into the world of blockchain and cryptocurrencies. Stay tuned for our simple blockchain guides being released every Monday! \r\n\r\nFor more guides, content, and videos, check us out over at blockgeeks.com! \r\n\r\nIf you\'re already a blockchain developer and need a smart contract audited, visit our sister site https://www.bountyone.io\r\n\r\n\r\nHow Does Blockchain Work?\r\n\r\nPicture a spreadsheet that is duplicated thousands of times across a network of computers. Then imagine that this network is designed to regularly update this spreadsheet and you have a basic understanding of the blockchain.\r\n\r\nInformation held on a blockchain exists as a shared — and continually reconciled — database. This is a way of using the network that has obvious benefits. The blockchain database isn’t stored in any single location, meaning the records it keeps are truly public and easily verifiable. No centralized version of this information exists for a hacker to corrupt. Hosted by millions of computers simultaneously, its data is accessible to anyone on the internet.\r\n\r\nTo go in deeper with the Google spreadsheet analogy, I would like you to read this piece from a blockchain specialist.', '00:02:28', '2018-11-05', 'https://www.youtube.com/watch?v=27nS3p2i_3g', 'blockchain.jpg', 30, 3849),
(9, 'The mind behind Linux | Linus Torvalds', 'TED', 'Linus Torvalds transformed technology twice — first with the Linux kernel, which helps power the Internet, and again with Git, the source code management system used by developers worldwide. In a rare interview with TED Curator Chris Anderson, Torvalds discusses with remarkable openness the personality traits that prompted his unique philosophy of work, engineering and life. \"I am not a visionary, I\'m an engineer,\" Torvalds says. \"I\'m perfectly happy with all the people who are walking around and just staring at the clouds ... but I\'m looking at the ground, and I want to fix the pothole that\'s right in front of me before I fall in.\"\r\n\r\nTEDTalks is a daily video podcast of the best talks and performances from the TED Conference, where the world\'s leading thinkers and doers give the talk of their lives in 18 minutes (or less). Look for talks on Technology, Entertainment and Design -- plus science, business, global issues, the arts and much more.', '00:21:30', '2016-05-03', 'https://www.youtube.com/watch?v=o8NPllzkFhE', 'linus_torvalds.jpg', 30000, 1460241),
(10, 'The Internet Revolution and Digital Future Technology Documentary 2018', 'Newest Documentaries', 'The Internet Revolution and Digital Future Technology Documentary 2018\r\nThe history of the Internet begins with the development of electronic computers in the 1950s. Initial concepts of wide area networking originated in several computer science laboratories in the United States, United Kingdom, and France.\r\n\r\nWhen the Internet was invented?\r\nARPANET adopted TCP/IP on January 1, 1983, and from there researchers began to assemble the “network of networks” that became the modern Internet. The online world then took on a more recognizable form in 1990, when computer scientist Tim Berners-Lee invented the World Wide Web.\r\n\r\nWhen did people start using the Internet?\r\nOn 6 August 1991, the World Wide Web went live to the world. There was no fanfare in the global press. In fact, most people around the world didn\'t even know what the Internet was. Even if they did, the revolution the Web ushered in was still but a twinkle in Tim Berners-Lee\'s eye.\r\n\r\nWhen did the Internet originate?\r\nFind out here. The internet began life in 1969, when scientists working for the US Advanced Research Projects Agency (ARPA, now known as DARPA) connected computer networks at the University of California and the Stanford Research Institute.\r\n\r\nWhich country first invented the Internet?\r\nThe internet protocols (TCP/IP) happened following initiatives takes by the US Government. The world-wide-web was invented by a British guy (while working at Cern) This brought us HTTP and websites. His work was inspired by the idea of hypertext. Hypertext as a concept had been bouncing around for a while.\r\n\r\nWhat was the original purpose of the Internet?\r\nMany people have heard that the Internet began with some military computers in the Pentagon called Arpanet in 1969. ... Bob Taylor, the Pentagon official who was in charge of the Pentagon\'s Advanced Research Projects Agency Network (or Arpanet) program, insists that the purpose was not military, but scientific.', '00:51:45', '2018-01-21', 'https://www.youtube.com/watch?v=V9xZFZ07UbA', 'internet_future.jpg', 301, 53649),
(11, 'How to Use Layer Masks in Photoshop', 'Phlearn', 'How to Use Layer Masks in Photoshop\r\nLayer Masks are one of the most important tools in Photoshop. In short, they make part of a layer visible and part invisible. The main advantage to using layer masks is they can be changed at any time – they are “non-destructive”, meaning they will never destroy image pixels!\r\n\r\nWhat do Layer Masks Do?\r\nLayer masks control the visibility of a layer, group, or adjustment layer. When a layer mask is completely white, the layer is completely visible. When a layer mask is completely black, the layer is completely invisible.\r\n\r\nYou can choose to make parts of a layer invisible by painting black in certain areas. You can use most of the tools in the tool panel on a layer mask including the brush tool, clone stamp tool, gradient tool and selections.\r\n\r\nFor instance, if you want to cut the subject out of their background, make a selection around the subject and load that selection as a layer mask, the subject will be visible and the background will be invisible.\r\n\r\nDestructive vs. Non-Destructive Editing\r\nWhen it comes to editing images in Photoshop, the ultimate goal is to do everything in a ‘non-destructive’ manner – meaning any change can be undone at any point in time.\r\n\r\nFor example, if you want part of a layer to disappear, using the eraser tool is destructive because it destroys the image, rather than just hiding it. If you use the eraser tool, then save and close an image, you won’t be able to undo those changes the next time you open the image in Photoshop.\r\n\r\nIn contrast, layer masks allow you to make changes at any time – even years from now. Rather than destroying image pixels, they simply hide them.\r\n\r\nHow to Create and Use Layer Masks\r\nTo add a layer mask to a layer, click on the layer mask icon at the bottom of the layers panel (it looks like a square with a circle inside).\r\n\r\nYou can also use the menu, go to ‘Layer – Layer Mask – Reveal All’ to make a white layer mask.\r\n\r\nAdjustment layers come pre-loaded with layer masks, simply paint white or black on them to determine the visibility of the layer.\r\n\r\nHelpful Keyboard Shortcuts\r\nWhen working with Layer masks, a few keyboard shortcuts can go a long way.\r\n\r\nSHIFT+CLICK on Layer Mask – Disable Layer Mask Temporarily\r\nALT/OPTN+CLICK on Layer Mask – Show Contents of Layer Mask\r\nCTRL/CMD+CLICK on Layer Mask – Turn Layer Mask into Selection\r\nCTRL/CMD+I – Invert Layer Mask\r\n/ – View Layer Mask in Quick Mask Mode', '00:20:04', '2016-08-23', 'https://www.youtube.com/watch?v=h5yW5hHjQrE&t=12s', 'ps_layers.jpg', 9000, 639850),
(12, 'Floating Cube Icon Design – Illustrator Tutorial', 'tutvid', 'The first 150 people to use this link will get 2 months of Skillshare for free: https://skl.sh/tutvid2 \r\nLearn to create this isometric style app icon design in this Adobe Illustrator CC tutorial!\r\nWe’ll create this icon inspired by something seen in the Apple App store and will cover how to use transparent gradients, path tools, masks, and much more.', '00:33:30', '2018-08-24', 'https://www.youtube.com/watch?v=ip0e1f8c2ug', 'cube_icon.jpg', 814, 15179),
(13, 'Simple Shape Orbits - Adobe After Effects tutorial', ' ECAbrams', 'Fake 3d orbits. What\'s the difference between a sphere and a circle anyway? It renders fast, sets up in seconds, and so long as you don\'t need shading, it\'s good enough for a particle sprite! It\'s simple shape orbits in under 5 minutes! Airhorn noise!', '00:05:55', '2018-06-22', 'https://www.youtube.com/watch?v=Ct3HkdQHDqI&t=45s', 'orbits_in_ae.jpg', 2000, 43253),
(14, 'Using icons on the web with Ionicons', ' freeCodeCamp.org', 'Learn how to use the Ionicons Icon Set (part of the Ionic Framework) on your own websites or web applications.\r\n\r\nIonicons comes with over 700 high quality icons with designs for both Material Design Style and iOS Style - you can choose them as you please!', '00:05:36', '2018-11-05', 'https://www.youtube.com/watch?v=WGsk13xh-Fk&t=17s', 'default_cover.jpg', 171, 3850),
(15, '6 Secret Steps to Nail Instagram Quality! - Photoshop Tutorial', ' PiXimperfect', 'Besides the best export settings for Instagram, discover the extra steps we need to take to make our images stand out! In this tutorial, we will go through \'6 Golden Steps to Make Your Images Look Amazing on Instagram\' using Photoshop.\r\n\r\nRight from making sure the color doesn\'t change when you upload, to getting the sharpest results, we will cover it all. Whether you are starting from Lightroom or Photoshop, we will learn the right way to compress our images without compromising image quality.', '00:15:07', '2018-11-04', 'https://www.youtube.com/watch?v=4icVUO_nRQM', 'pixPerfect.jpg', 10000, 126149),
(16, 'The Goonies (1985) Official Trailer - Sean Astin, Josh Brolin Adventure Movie HD', ' Movieclips Classic Trailers', 'The Goonies (1985) Official Trailer - Sean Astin, Josh Brolin Adventure Movie HD\r\n\r\nA group of kids set out on an adventure in search of pirate treasure that could save their homes from foreclosure.', '00:02:30', '2014-06-27', 'https://www.youtube.com/watch?v=hJ2j4oWdQtU', 'goonies.jpg', 9600, 2000763),
(17, '\'\'Call me Snake\'\' (Escape from New York -1981)', 'Empire State Studios', 'Synopsis: In 1997, when the U.S. president crashes into Manhattan, now a giant maximum security prison, a convicted bank robber is sent in to rescue him.', '00:03:21', '2017-12-10', 'https://www.youtube.com/watch?v=ACXOhRIe-s4', 'callMeSnake.jpg', 134, 11308),
(18, 'Cars 3 - ALL Memorable Moments (HD)', ' ViVi Film', 'Lightning McQueen, who currently holds seven Pistons, suddenly finds herself overshadowed by the Jackson Storm, a rookie rookie. This racer belongs to a new generation of racing racers that uses the latest technology to improve performance. This led to the veterans of Lightning either retired or fired. As their sponsors replaced the new recruits. In the final race of the season, when Lightning McQueen tried to catch up with Storm and other rivals, Lightning lost control and suffered a very violent collision, almost to the point of losing his life, causing him severe injuries. Four months later, during an injury recovery session at Radiator Springs, Lightning separated from his friends and spent time watching a documentary about his mentor, Doc Hudson. In confrontation with his girlfriend, Sally Carrera, Lightning was reluctant to retire just like Doc Hudson. Rusty and Dusty, the owner of Lightning\'s Rust-eze racing team, took him to a modern racing center, surprisingly. Upon arrival, he learned that they had sold Rust-eze to new owner Sterling, who appointed him to work with coach Cruz Ramirez. McQueen eventually became impatient and frustrated with Cruz\'s methodology and attempted to use a high-tech racing simulation that ended up only to cause serious damage to the device.\r\n\r\nBelieving that Lightning is no longer able to win, Sterling is ready to take him out of the race and use him to promote the product. Lightning made an alternative deal - if Lightning won the first race of the upcoming season in Florida, he could decide when he would retire; Otherwise, he will retire immediately. Sterling accepts the deal and assigns Coach to coach him with a duel. Instead of speeding up, Lightning spends most of the day helping Cruz run on the coast near the training center. For inspiration, they go to a dirt road where Doc runs but accidentally ends up competing in a derby derby, which Cruz eventually wins. Anger leads to a significant amount of training time wasted, Lightning exposes her frustration to Cruz, who reveals that she wants to race professionally, but never starts a race because she feels be overthrown She resigned as a coach of McQueen and started returning to the training center.\r\n\r\nKnowing that Storm was breaking records, Lightning called his best friend Mater for advice. Mater suggests he has Doc\'s mentor, Smokey. Lightning catches up with Cruz and convinces her to go with them, and they go to Doc\'s hometown of Thomasville, Georgia, where they meet Smokey and some old Doc friends. Smokey revealed that even though Doc never ran after his accident, he found a new happiness in training Lightning. Smokey and his friends teach Lightning and Cruz how to drive smarter than Storm, with Cruz being a partner of Lightning. In a final real race, Lightning reminisces of her downfall, starting her self-confidence.', '00:26:04', '2017-12-16', 'https://www.youtube.com/watch?v=rrVk-cHRy04&t=7s', 'cars.jpg', 1400, 586172),
(19, 'Iron Man 2 Official Trailer #1 (2010) - Marvel Movie HD', ' Movieclips', 'As Tony Stark (Robert Downey Jr.) owns up to being Iron Man before the world press, Anton Vanko lies dying in Russia. Years ago, Anton worked with Tony\'s father to create a new source of energy. But greed got the best of Anton, and now as he slips away, his son, Ivan (Mickey Rourke), vows to make Tony pay for the sins of his father. Meanwhile, Tony fends off efforts from smarmy Senator Stern (Garry Shandling) and military weapons expert Justin Hammer (Sam Rockwell) to get him to divulge the secrets of his powerful Iron Man suit. The powers that be are concerned that Tony\'s technology may fall into the wrong hands -- fears that are soon confirmed when the cocky billionaire entrepreneur is confronted in front of the entire world by Ivan, who has built his own weapon using stolen Stark blueprints. Later, as Lt. Rhodes (Don Cheadle) wrestles with the decision to personally deliver Tony\'s suit to the military, Ivan finds an unlikely ally in the quest to destroy Iron Man; Stark Industries legal consultant Natalie Rushman (Scarlett Johansson) reveals her connection to Nick Fury (Samuel L. Jackson); and Pepper Potts (Gwyneth Paltrow) takes on some new responsibilities.', '00:02:57', '2013-04-12', 'https://www.youtube.com/watch?v=BoohRoVA9WQ', 'ironman2.jpg', 3400, 909206),
(20, 'Kung Fu Panda (2006) - The Dragon Warrior Trials Scene (2/10) | Movieclips', 'Movieclips', 'Po the panda (Jack Black) works in his family\'s noodle shop and dreams of becoming a kung-fu master. His dream becomes a reality when, unexpectedly, he must fulfill an ancient prophecy and study the skills with his idols, the Furious Five. Po needs all the wisdom, strength and ability he can muster to protect his people from an evil snow leopard.', '00:03:06', '2018-11-09', 'https://www.youtube.com/watch?v=ihKHvNOTcwk', 'kungFuPanda.jpg', 105, 14460),
(21, 'Pink Floyd Live At Live 8 London 2005', ' michele matraia', 'Last time all together.', '00:47:05', '2014-12-08', 'https://www.youtube.com/watch?v=ljaU7YcrKAU', 'pf_live8.jpg', 8200, 1949895),
(22, 'Queen: Hungarian Rhapsody - Live In Budapest 1986 (Full HD 1080p) Complete Show', ' xabsentx', 'On July 27, 1986, Queen performed the largest-ever stadium concert at the Népstadion in Budapest in front of 80,000 ecstatic fans. The concert was part of the famed Magic Tour, which was the last time the band toured with lead singer Freddie Mercury. Now, this original concert film has been remastered in high definition and features many of Queen\'s favorite tracks Bohemian Rhapsody, Crazy Little Thing Called Love, I Want To Break Free and We Are The Champions. With three years to go before the fall of the Berlin Wall, this was the first Western rock concert performed in a stadium behind the then Iron Curtain. It was of such significance to the Hungarian authorities and film industry that a group of the country\'s top film cameramen and technicians were brought together to film it for posterity.\r\n\r\nHungarian Rhapsody: Queen Live In Budapest \'86 is a concert film of English rock band Queen\'s performance at the concert in Budapest on 27 July 1986, starring Freddie Mercury, Brian May, Roger Taylor and John Deacon, the film was released in theaters worldwide on 20 September 2012. The concert was released on DVD, Blu-ray and Deluxe Editions for the first time on 5 November 2012.', '01:31:11', '2013-03-08', 'https://www.youtube.com/watch?v=EGj3cIWYL4k&t=1216s', 'queen_budapest.jpg', 7100, 1157028),
(23, 'AC/DC - Thunderstruck (from Live at River Plate)', 'AC/DC Official', 'The Razors Edge is an album by Australian hard rock band AC/DC. It was the band\'s eleventh internationally released studio album and the twelfth to be released in Australia. The Razors Edge features hits \"Thunderstruck\" and \"Are You Ready, which reached #5 and #16 respectively on Billboard\'s Mainstream Rock Tracks Chart and \"Moneytalks, which peaked at #23 on theBillboard Hot 100. The album went Multi-Platinum and reached the US Top Ten.', '00:05:20', '2012-11-07', 'https://www.youtube.com/watch?v=n_GFN3a0yj0', 'acdc.jpg', 377000, 84625661),
(24, 'Queen - (1985) Bohemian Rhapsody / Radio Ga-Ga / Hammer To Fall (Live Aid)', ' agustigula4', 'Queen at Live8 - 1985', '00:11:35', '2011-09-05', 'https://www.youtube.com/watch?v=BaudM1mj5b4', 'queen_live8.jpg', 7400, 9513831),
(25, 'Enigma - Principles Of Lust', 'EnigmaSpace', 'Discover more about this classic song and the MCMXC A.D. album here: http://www.udiscovermusic.com/stories...\r\nListen to more from Enigma: https://Enigma.lnk.to/Essentials\r\n\r\nFollow Enigma\r\nhttps://www.facebook.com/Enigma/\r\nhttps://twitter.com/enigmaspace\r\n\r\nhttp://www.enigmaspace.com/\r\n\r\nMusic video by Enigma performing Principles Of Lust (Find Love).', '00:03:27', '2009-03-10', 'https://www.youtube.com/watch?v=ifBM3SY3G-s', 'enigma.jpg', 14000, 3313016);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
