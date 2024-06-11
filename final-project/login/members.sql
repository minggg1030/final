DROP DATABASE IF EXISTS `members`;
CREATE DATABASE  IF NOT EXISTS `members`; 
--
-- Table structure for table `members`
--
USE `members`;
DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` varchar(45) NOT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--
INSERT INTO `members` VALUES ('asd0389wsx0216@gmail.com','1234');
INSERT INTO `members` VALUES ('Willchen0311@gmail.com','1234');
INSERT INTO `members` VALUES ('2525.tanya.tong@gmail.com','1234');
INSERT INTO `members` VALUES ('eva100837@gmail.com','1234');