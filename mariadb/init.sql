SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;

USE `test`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `m_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `m_sender` varchar(32) CHARACTER SET utf16 COLLATE utf16_german2_ci NOT NULL,
  `m_message` longtext CHARACTER SET utf16 COLLATE utf16_german2_ci NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
