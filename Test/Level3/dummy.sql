-- campaign_types
DROP TABLE IF EXISTS `campaign_types`;
CREATE TABLE `campaign_types` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(100) NOT NULL
);

INSERT INTO `campaign_types` (`id`, `name`) VALUES
	(NULL, 'AdWords'),
	(NULL, 'Bing'),
	(NULL, 'Facebook'),
	(NULL, 'LinkedIn');

-- campaigns
DROP TABLE IF EXISTS `campaigns`;
CREATE TABLE `campaigns` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(100) NOT NULL,
	`campaign_type_id` INT(10) UNSIGNED NOT NULL,
	`active` TINYINT(1) NOT NULL DEFAULT 1
);

INSERT INTO `campaigns` (`id`, `name`, `campaign_type_id`, `active`) VALUES
	(NULL, 'Berkhout Tweewielers', 3, 1),
	(NULL, 'Power Computers', 1, 1),
	(NULL, 'Autobedrijf De Krik B.V.', 1, 0),
	(NULL, 'Foobar Recruitment', 4, 1),
	(NULL, 'Chef\'s Kitchen', 1, 1);

-- keywords
DROP TABLE IF EXISTS `keywords`;
CREATE TABLE `keywords` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`campaign_id` INT(10) UNSIGNED NOT NULL,
	`keyword` VARCHAR(50) NULL DEFAULT NULL,
	`impressions` INT(10) UNSIGNED NOT NULL,
	`clicks` INT(10) UNSIGNED NOT NULL,
	`conversions` INT(10) UNSIGNED NOT NULL,
	`day` DATE NOT NULL
);

INSERT INTO `keywords` (`id`, `campaign_id`, `keyword`, `impressions`, `clicks`, `conversions`, `day`) VALUES
	(NULL, 1, 'Fietspomp', 20, 2, 0, '2013-11-16'),
	(NULL, 1, 'Zuurstok roze fietsventiel', 7, 4, 3, '2013-11-16'),
	(NULL, 1, 'Batavus Diva 7 Plus', 115, 23, 1, '2013-11-16'),
	(NULL, 1, 'Fietspomp', 48, 6, 1, '2013-11-17'),
	(NULL, 1, 'Zuurstok roze fietsventiel', 3, 0, 0, '2013-11-17'),
	(NULL, 1, 'Batavus Diva 7 Plus', 185, 18, 0, '2013-11-17'),
	(NULL, 2, 'Intel Xeon processor', 457, 46, 2, '2013-11-16'),
	(NULL, 2, 'Western Digital harde schijf', 1482, 117, 3, '2013-11-16'),
	(NULL, 2, 'Samsung monitor', 2894, 325, 6, '2013-11-16'),
	(NULL, 2, 'Intel Xeon processor', 457, 46, 2, '2013-11-18'),
	(NULL, 2, 'Western Digital harde schijf', 982, 40, 1, '2013-11-18'),
	(NULL, 2, 'Samsung monitor', 1889, 185, 3, '2013-11-18'),
	(NULL, 3, 'Giga spinners', 1293, 12, 0, '2013-12-09'),
	(NULL, 3, 'Koppakking Audi A6 vervangen', 113, 4, 1, '2013-12-09'),
	(NULL, 3, 'Goedkope APK keuring', 488, 6, 1, '2013-12-09'),
	(NULL, 3, 'Autobanden vervangen', 154, 2, 0, '2013-12-09'),
	(NULL, 3, 'Giga spinners', 1293, 12, 0, '2013-12-14'),
	(NULL, 3, 'Koppakking Audi A6 vervangen', 113, 4, 1, '2013-12-14'),
	(NULL, 3, 'Goedkope APK keuring', 488, 6, 1, '2013-12-14'),
	(NULL, 3, 'Autobanden vervangen', 126, 2, 0, '2013-12-14'),
	(NULL, 4, 'Systeembeheerder Gouda', 18, 1, 0, '2013-10-10'),
	(NULL, 4, 'PHP Developer Rotterdam', 304, 28, 2, '2013-10-12'),
	(NULL, 4, 'C# .NET Developer Rotterdam', 128, 2, 0, '2013-10-11'),
	(NULL, 4, 'Java Developer Utrecht', 422, 10, 0, '2013-10-14'),
	(NULL, 4, 'Netwerkbeheerder Groningen', 8, 3, 0, '2013-10-18'),
	(NULL, 4, 'PHP Developer Rotterdam', 548, 12, 1, '2013-10-13'),
	(NULL, 5, 'Chocolate Salty Balls', 1108, 115, 3, '2013-08-24'),
	(NULL, 5, 'Chef\'s Chili', 899, 30, 2, '2013-08-24'),
	(NULL, 5, 'Chef\'s Mixed Grill', 242, 12, 1, '2013-08-24'),
	(NULL, 5, 'Chocolate Salty Balls', 1544, 138, 2, '2013-08-25'),
	(NULL, 5, 'Chef\'s Chili', 612, 22, 1, '2013-08-25'),
	(NULL, 5, 'Chef\'s Mixed Grill', 417, 14, 0, '2013-08-25');