/*
 * Sql rules to create a table.
 */
DROP TABLE IF EXISTS `places`;
CREATE TABLE `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `place_name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `admin_name1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_code1` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `admin_name2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_code2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `admin_name3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_code3` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(7,4) NOT NULL,
  `longitude` decimal(7,4) NOT NULL,
  `accuracy` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postal_code` (`postal_code`),
  KEY `postal_code_2` (`postal_code`,`place_name`,`admin_name1`)
) ENGINE=MyISAM AUTO_INCREMENT=43634 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
