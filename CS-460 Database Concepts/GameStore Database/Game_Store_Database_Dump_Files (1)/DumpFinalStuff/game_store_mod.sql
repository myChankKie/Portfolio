-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: game_store
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mod`
--

DROP TABLE IF EXISTS `mod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mod` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `publisher` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` double NOT NULL,
  `game_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mods_foreign_key_idx` (`game_id`),
  CONSTRAINT `mods_foreign_key` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod`
--

LOCK TABLES `mod` WRITE;
/*!40000 ALTER TABLE `mod` DISABLE KEYS */;
INSERT INTO `mod` VALUES (1,'3 Ninjas Knuckle Up','Wehner-Nitzsche',97.39,68),(2,'Criminal','Lakin, Legros and Parisian',11.81,14),(3,'Mean Season, The','Zieme Group',91.78,65),(4,'Faster','Schaefer Group',31.92,76),(5,'Finding Nemo','Howell-Thiel',39.16,73),(6,'Girl from Monday, The','Witting-McGlynn',69.55,62),(7,'Clara and Me (Clara et moi)','Runolfsdottir LLC',19.31,55),(8,'Street Smart','Jast LLC',12.14,79),(9,'Mr. Untouchable','Stanton-Parisian',24.31,22),(10,'Brother (Hermano)','Emmerich Group',76.44,57),(11,'Simply Irresistible','Bauch-Runolfsdottir',56.38,63),(12,'Paris','Upton Group',51.29,84),(13,'Mesmerist, The','Kreiger, Keeling and Kunze',40.67,23),(14,'No Where No One (Hich Koja Hich Kas)','Kohler-Murphy',40.54,41),(15,'Young Thugs: Nostalgia (Kishiwada shÃ´nen gurentai: BÃ´kyÃ´)','Braun Inc',6.47,47),(16,'Bomb the System','Johnson, Johns and Ratke',74.09,81),(17,'Cool It','Abbott Group',39.07,27),(18,'Magnificent Seven Ride!, The','Padberg LLC',27.65,41),(19,'Killing Room, The','Thiel LLC',5.81,87),(20,'Double Play: James Benning and Richard Linklater','Nicolas, Pagac and Schiller',25.31,47),(21,'Dead of the Nite','Bartoletti, Crist and Wuckert',54.3,49),(22,'Redemption (Hummingbird)','Cruickshank-Schoen',72.76,43),(23,'Smiling Madame Beudet, The (La souriante Madame Beudet)','Glover LLC',46.46,36),(24,'Three Smart Girls','Ryan-Mertz',6.39,25),(25,'Man Who Sleeps, The (Un homme qui dort)','Witting-Hackett',33.28,70),(26,'Sabata','Koepp and Sons',33.91,62),(27,'Two Solutions for One Problem (Dow Rahehal Baraye yek Massaleh)','Romaguera, Lesch and Grant',94.21,51),(28,'Ballroom, The (Chega de Saudade)','Kris-Pagac',78.01,37),(29,'Columbus Circle','Kuhic and Sons',60.25,19),(30,'Mr. Robinson Crusoe','King, Torphy and Farrell',85.69,17),(31,'She\'s So Lovely','Hoeger-Hand',57.58,21),(32,'Jimmy Rosenberg: The Father, the Son & the Talent','Hintz-Wolf',65.96,49),(33,'Oliver & Company','Pfannerstill, Doyle and Simonis',28.85,48),(34,'Transit','Boyer LLC',52.98,42),(35,'Captain January','Nader, Greenfelder and Kerluke',27.61,8),(36,'American Wedding (American Pie 3)','Beer-Zemlak',65.74,85),(37,'Funny People','Maggio and Sons',71.92,89),(38,'Can-Can','Heathcote Inc',84.97,26),(39,'Dr. Mabuse: The Gambler (Dr. Mabuse, der Spieler)','Schultz, Goldner and Muller',56.52,96),(40,'Entity','Abbott and Sons',3.77,4),(41,'Paleface, The','Grant-Will',11.97,56),(42,'Big Eden','Nikolaus, Mraz and Treutel',13.47,96),(43,'Home','Mraz-Conn',22.27,48),(44,'Le crocodile du Botswanga','Conroy, Upton and Gleichner',59.48,59),(45,'Adventures of Power','Nitzsche-Mitchell',61.47,79),(46,'Diamonds','Gerhold Group',39.44,7),(47,'Turn the River','Maggio LLC',11.51,10),(48,'Maniac Cop 2','Rice, Blanda and Schowalter',75.79,14),(49,'Cool as Ice','Ernser, Gutkowski and Kulas',43.64,15),(50,'At Any Second (In jeder Sekunde)','Johnson, Wiza and Borer',26.58,89),(51,'Mysterious Object at Noon (Dokfa nai meuman)','Emmerich LLC',11.7,64),(52,'Mommie Dearest','Kreiger-Bogan',98.05,60),(53,'Touch the Sound: A Sound Journey with Evelyn Glennie','Hansen, Rodriguez and Schneider',14.94,91),(54,'Shepherd of the Hills, The','Thompson LLC',4.73,87),(55,'Fine Madness, A','Mayer LLC',85.42,74),(56,'Tempest','Feeney, Nicolas and Krajcik',42.91,46),(57,'Spy in Black, The','D\'Amore-Brekke',72.1,66),(58,'Persuasion','Kassulke-Veum',37.17,53),(59,'Brony Tale, A','Waters, Weber and Luettgen',10.34,66),(60,'Four Musketeers, The','Gusikowski, Wiza and Bayer',50.28,64),(61,'Barefoot Gen (Hadashi no Gen)','Heathcote-Beer',8.89,77),(62,'Adam & Steve','Kuhlman, Keeling and Crist',7.96,70),(63,'This Christmas','Powlowski-Blanda',51.32,66),(64,'The... Beautiful Country','Gleason-Zemlak',41.64,84),(65,'Alias the Doctor','Johns and Sons',56.07,30),(66,'Queen of the Amazons','Larkin-Torp',27.88,99),(67,'One of Our Aircraft Is Missing','Donnelly Inc',80.12,90),(68,'Grapes of Death, The (Raisins de la mort, Les)','Bauch LLC',4.79,20),(69,'Thunderbirds','Bahringer and Sons',21.18,16),(70,'Chemical Brothers: Don\'t Think, The','Hyatt-Ankunding',15.28,83),(71,'Year of the Gun','Bosco Group',33.24,23),(72,'Il cappotto di legno','Lowe-Grimes',40.29,17),(73,'Pay It Forward','Quitzon Group',83.67,6),(74,'Man in the Saddle','Koch, Botsford and Beier',1.16,13),(75,'Drive-In Horrorshow','Cummings Group',50.57,65),(76,'Navigator, The','Kerluke-Jaskolski',54.04,71),(77,'Canyon Passage','Skiles-Upton',32.82,33),(78,'Journey to Saturn (Rejsen til Saturn)','Rogahn Inc',12.5,27),(79,'Three Monkeys (ÃœÃ§ maymun)','King-Lebsack',62.77,49),(80,'Good Earth, The','Kreiger LLC',95.69,94),(81,'O Auto da Compadecida (Dog\'s Will, A)','Mohr, Goodwin and Wuckert',69.71,3),(82,'Brigadoon','Flatley Inc',69.78,15),(83,'Lonely Guy, The','Schowalter Inc',8.19,34),(84,'Uninvited, The','Fahey, Considine and Bayer',30.61,23),(85,'Carne','Wintheiser, Kautzer and Hagenes',32.05,85),(86,'Mo\' Better Blues','Daugherty Inc',89.81,98),(87,'Rashomon (RashÃ´mon)','Stroman, Ullrich and Toy',62.59,55),(88,'Daybreak','Anderson, Ryan and McLaughlin',14.1,42),(89,'The Crown Jewels','Morar-Schimmel',89.66,23),(90,'Spanish Prisoner, The','Nader LLC',45.07,66),(91,'They Bite','Johns and Sons',91.23,83),(92,'Kounterfeit','Fisher Group',8.57,95),(93,'The Tomb','King-Nitzsche',3.32,39),(94,'Killers from Space','Lakin, Rath and Mayer',84.07,97),(95,'Saddest Music in the World, The','Stracke and Sons',12.45,69),(96,'Elvis and Me','Wunsch LLC',59.91,42),(97,'BrÃ¼no (Bruno)','Lindgren-Glover',14.18,90),(98,'Tramp, The (Awaara) (Awara)','Monahan, Price and Koepp',86.47,24),(99,'I Accuse','Braun-Hilpert',42.39,37),(100,'Lonesome','MacGyver-Ryan',21.46,53),(101,'Bitter Tears of Petra von Kant, The (bitteren TrÃ¤nen der Petra von Kant, Die)','Labadie, Mertz and Sanford',14.19,77),(102,'Chasers','Hoeger, Balistreri and Tromp',55.93,46),(103,'Everyday Sunshine:  The Story of Fishbone','Metz, Maggio and Green',83.29,48),(104,'Stealth','Carter-O\'Keefe',32.76,58),(105,'The Woman in Black 2: Angel of Death','Volkman LLC',40.47,6),(106,'Everyone Says I Love You','Torphy Inc',34.39,60),(107,'Wishful Thinking','Schiller Inc',45.34,63),(108,'Dragon Ball: Sleeping Princess in Devil\'s Castle (Doragon bÃ´ru: MajinjÃ´ no nemuri hime)','Hodkiewicz-Mayert',64.43,85),(109,'Star!','Dibbert, Runolfsdottir and Mosciski',32.06,97),(110,'Robot Carnival (Roboto kÃ¢nibauru)','Jacobs LLC',50.28,77),(111,'Introduction to Physics, An','Vandervort, Skiles and Streich',59.72,56),(112,'Glass-blower\'s Children, The (GlasblÃ¥sarns barn)','Buckridge Inc',11.52,58),(113,'The Joy of Living','Stehr, Littel and Wuckert',98.42,87),(114,'Wolf Creek 2','Lang, Zemlak and Mante',58.49,16),(115,'The Karen Carpenter Story','Cruickshank, Grady and Jenkins',32.33,70),(116,'Come Back to Me','Brekke LLC',79.78,34),(117,'Jerry Seinfeld: \'I\'m Telling You for the Last Time\'','McClure-Stehr',69.23,21),(118,'How 2 Build a Rapper','Greenholt Inc',15.62,9),(119,'Finding Vivian Maier','Tillman, Luettgen and Schmeler',82.28,89),(120,'My Father and My Son (Babam ve oglum)','Bauch and Sons',55.3,90),(121,'Employees\' Entrance','Willms-Morissette',63.48,73),(122,'Raw Deal','Thompson, Hickle and Luettgen',94.14,47),(123,'I Married A Strange Person!','Gottlieb Group',34.91,55),(124,'Fantastic Fear of Everything, A','Johnston, Macejkovic and Boyle',23.26,89),(125,'Lady Terminator (Pembalasan ratu pantai selatan)','Towne-Hayes',24.05,16),(126,'It\'s a Very Merry Muppet Christmas Movie','Bergnaum-O\'Kon',84.54,18),(127,'Fear City: A Family-Style Comedy (La citÃ© de la peur)','O\'Hara, O\'Reilly and Rice',85.42,20),(128,'Soupe aux Choux, La','Trantow and Sons',66.42,100),(129,'The Front','Langosh, Moore and Larson',74.29,38),(130,'Vice','Mertz Group',11.43,65),(131,'A Pistol For Ringo','Pfannerstill, Beer and Medhurst',13.65,67),(132,'Wild Tigers I Have Known','Lueilwitz-Schaden',37.55,37),(133,'At First Sight','Rippin-Shanahan',83.91,63),(134,'Breathing Room','Balistreri-Wolf',95.99,7),(135,'Palindromes','Mayert, Fritsch and Schamberger',94.46,29),(136,'Stacy','Gulgowski-O\'Reilly',63.06,97),(137,'Fiorile','Cruickshank Group',19.83,58),(138,'BlinkyTM','Steuber, Konopelski and Koepp',76.71,74),(139,'Sadness of Sex, The','Dicki Inc',63.22,31),(140,'Headhunters (Hodejegerne)','Schinner, Johnson and Steuber',84.85,70),(141,'8 Seconds','Russel-Medhurst',11.19,46),(142,'Krrish 3','Schowalter-Lakin',44.31,54),(143,'Piece of the Action, A','Carroll-Labadie',89.84,62),(144,'Imaginary Witness: Hollywood and the Holocaust','Keebler, Jast and Jast',60.07,50),(145,'Swan Princess: Escape from Castle Mountain, The','Keeling-Bartell',40.38,64),(146,'Behind the Candelabra','Adams-Nikolaus',42.36,57),(147,'Reality','Herzog, Turcotte and Trantow',38.7,90),(148,'Forever, Darling','King, Nicolas and McClure',65.43,65),(149,'Mysterious Island, The','Von Group',18.65,1),(150,'Beautiful Kate','Dach-Ledner',69.11,97),(151,'In the Heart of the Sea','Prohaska, Satterfield and Lowe',19.04,85),(152,'Frozen City (Valkoinen kaupunki)','Rogahn Group',23.24,94),(153,'Vampire Hunter D: Bloodlust (Banpaia hantÃ¢ D)','Roberts, Klein and Cummings',63.28,54),(154,'Devil\'s Carnival, The','Mueller Group',93.76,9),(155,'Love with the Proper Stranger','Baumbach-Howe',60.98,1),(156,'Time Machine, The','Hayes-Hoppe',78.83,10),(157,'Valhalla','Wisoky-Turcotte',21.64,32),(158,'The Golden Cage','Grady Inc',49.04,6),(159,'Behold a Pale Horse','Prohaska-Cremin',16.44,80),(160,'8:46','Langworth LLC',16.03,13),(161,'I\'m No Angel','Boyle-O\'Connell',79.59,30),(162,'Foosball (Metegol)','Abbott Group',1.1,69),(163,'The Madagascar Penguins in a Christmas Caper','Boyle LLC',12.13,86),(164,'7 Days in Havana','Conroy Group',9.39,7),(165,'Raise the Titanic','Franecki, Ebert and Torphy',99.07,7),(166,'Stranger, The (Straniero, Lo)','Mayert and Sons',95.42,76),(167,'Chill Out! (DescongÃ©late!)','Dickinson, Daniel and Goyette',24.6,94),(168,'Hangman\'s Curse','Johnson, Dooley and Tremblay',32.54,13),(169,'Flodder in Amerika!','Hettinger, Turner and Torp',45.2,84),(170,'Merry-Go-Round','Goldner, Feil and Walter',58.6,25),(171,'Same Old Song (On connaÃ®t la chanson)','Upton, Glover and Schinner',58.55,65),(172,'Great Lie, The','Legros Inc',21.36,44),(173,'Ghost Dog: The Way of the Samurai','Torp, Barrows and Carroll',49.12,75),(174,'Bandits','Wisoky-Parker',8.38,60),(175,'Assault on a Queen','McKenzie, Kassulke and Boyle',95.93,36),(176,'Over the Hedge','Gibson, Hoppe and Langosh',31.77,61),(177,'New York Cop (NyÃ» YÃ´ku no koppu)','Zboncak-Cummings',96.68,2),(178,'Svengali','Howell-Douglas',45.37,86),(179,'Blood of Redemption','Davis and Sons',82.71,66),(180,'Friday the 13th Part 2','Cruickshank Group',54.83,68),(181,'Roman Polanski: Wanted and Desired','Ferry-Medhurst',60.48,98),(182,'Conception','Lemke, Crona and Wolff',5.98,10),(183,'She Monkeys','Conroy, Hane and Schowalter',5.56,85),(184,'Justin Bieber\'s Believe','Powlowski, Williamson and Hettinger',63.37,37),(185,'Resident Evil: Afterlife','Johns and Sons',6.69,88),(186,'I\'m Not There','Herman Inc',73.12,74),(187,'Quatermass and the Pit','Abernathy, Runolfsdottir and Mante',96.29,13),(188,'Woman Rebels, A (Portrait of a Rebel)','Schroeder LLC',48.51,1),(189,'Snowblind','Ryan, Nader and Shanahan',92.54,63),(190,'Muppets Take Manhattan, The','Goyette-Daugherty',20.63,31),(191,'Caltiki the Undying Monster','Heller Inc',51.95,99),(192,'Expelled','Yost Group',66.07,10),(193,'Cinderella Story, A','Okuneva LLC',83.79,95),(194,'X-Files: Fight the Future, The','Schneider-Kuhn',89.85,96),(195,'Wooden Bridge, The','Stehr Group',9.91,7),(196,'Tunnel, The','Morissette, Grimes and Langosh',71.63,54),(197,'Colour Me Kubrick: A True...ish Story','Hilll Group',83.02,67),(198,'Lamp in the Dark; The Untold History of the Bible, A','Jast-Little',77.97,2),(199,'Carry on Spying (Agent Oooh!)','Aufderhar-Corkery',90.14,52),(200,'Gus','O\'Kon LLC',61.54,11),(201,'skdljfas','asdfdsaf',128,2);
/*!40000 ALTER TABLE `mod` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03 18:26:00
