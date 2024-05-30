-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6799
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for boynerdb
DROP DATABASE IF EXISTS `boynerdb`;
CREATE DATABASE IF NOT EXISTS `boynerdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `boynerdb`;

-- Dumping structure for table boynerdb.urungruplari
DROP TABLE IF EXISTS `urungruplari`;
CREATE TABLE IF NOT EXISTS `urungruplari` (
  `urungrpid` int unsigned NOT NULL AUTO_INCREMENT,
  `grpadi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`urungrpid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table boynerdb.urungruplari: ~8 rows (approximately)
INSERT INTO `urungruplari` (`urungrpid`, `grpadi`) VALUES
	(1, 'Kadın'),
	(2, 'Erkek'),
	(3, 'Çocuk'),
	(4, 'Spor'),
	(5, 'Ayakkabı & Çanta'),
	(6, 'Kozmetik'),
	(7, 'Ev & Yaşam'),
	(8, 'Outlet'),
	(9, 'Heidye'),
	(10, 'Markalar');

-- Dumping structure for table boynerdb.urunler
DROP TABLE IF EXISTS `urunler`;
CREATE TABLE IF NOT EXISTS `urunler` (
  `urunid` int unsigned NOT NULL AUTO_INCREMENT,
  `magazakodu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `urungrpid` int unsigned DEFAULT '1',
  `urunturu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cinsiyet` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'K',
  `urunadi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marka` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fiyat` decimal(10,2) DEFAULT NULL,
  `toplamsatis` int unsigned DEFAULT 0,
  PRIMARY KEY (`urunid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table boynerdb.urunler: ~8 rows (approximately)
INSERT INTO `urunler` (`urunid`, `magazakodu`, `urungrpid`, `urunturu`, `cinsiyet`, `urunadi`, `marka`, `fiyat`, `toplamsatis`) VALUES
    (1, 'F4SL-PNT0822', 1, 'Pantolon', 'K', 'Bej Kadın Lastikli Bol Kesim Çizgili Keten Pantolon', 'Fabrika', 1199.00, 200),
    (2, 'F3WL-PNT2', 1, 'Pantolon', 'K', 'Yüksek Bel Havuç Lacivert - Beyaz Kadın Pantolon', 'Fabrika', 1559.99, 150),
    (3, 'M1600843-71407', 1, 'T-Shirt', 'K', 'Yuvarlak Yaka Turuncu Kadın T-Shirt', 'Mavi', 299.99, 400),
    (4, 'M101077-30503', 1, 'Pantolon', 'K', 'STAR INDIGO Yüksek Bel Dar Paça Mom Fit Denim Pantolon', 'Mavi', 1099.99, 120),
    (5, '12216305_JCOHIKING', 2, 'Sweatshırt', 'E', 'Kapüşon Yaka Siyah Erkek Sweatshırt', 'Jack & Jones', 420.74, 180),
    (6, '12238998_JCOSWEEP', 2, 'Mont', 'E', 'Krem Erkek Mont', 'Jack & Jones', 4859.99, 60),
    (7, '900303-9662', 3, 'Sandalet', 'K', 'Mor Kız Çocuk Sandalet', 'Hummel', 624.95, 300),
    (8, '900356-2594', 3, 'Ayakkabı', 'E', 'Siyah - Sarı Erkek Çocuk Halı Saha Ayakkabısı', 'Hummel', 974.95, 250),
    (9, '02473901', 1, 'Şapka', 'E', 'Lacivert Erkek Şapka', 'Puma', 399.90, 500),
    (10, '84749101', 1, 'Rüzgarlık', 'K', 'Siyah Kadın Rüzgarlık', 'Puma', 1700.00, 90),
    (11, 'AB1234-TIS', 1, 'Tişört', 'E', 'Beyaz Erkek Tişört', 'Adidas', 129.99, 600),
    (12, 'AB5678-SWT', 2, 'Sweatshirt', 'K', 'Gri Kadın Sweatshirt', 'Adidas', 299.99, 250),
    (13, 'CD9012-KZP', 1, 'Kot Pantolon', 'E', 'Mavi Erkek Kot Pantolon', 'Levis', 499.99, 140),
    (14, 'EF3456-ELB', 1, 'Elbise', 'K', 'Kırmızı Kadın Elbise', 'Zara', 799.99, 180),
    (15, 'GH7890-CEK', 2, 'Ceket', 'E', 'Siyah Erkek Ceket', 'Tommy Hilfiger', 899.99, 75),
    (16, 'IJ1234-GOM', 3, 'Gömlek', 'K', 'Beyaz Kadın Gömlek', 'Massimo Dutti', 299.99, 320),
    (17, 'KL5678-BOT', 3, 'Bot', 'E', 'Kahverengi Erkek Bot', 'Timberland', 1299.99, 110),
    (18, 'MN9012-TIS', 1, 'Tişört', 'K', 'Siyah Kadın Tişört', 'Nike', 149.99, 450),
    (19, 'OP3456-SNK', 3, 'Spor Ayakkabı', 'E', 'Beyaz Erkek Spor Ayakkabı', 'New Balance', 749.99, 200),
    (20, 'QR7890-ELB', 1, 'Elbise', 'K', 'Yeşil Kadın Elbise', 'H&M', 349.99, 300),
    (21, 'ST1234-KAB', 2, 'Kaban', 'E', 'Lacivert Erkek Kaban', 'Columbia', 999.99, 130),
    (22, 'UV5678-AYK', 3, 'Ayakkabı', 'K', 'Beyaz Kadın Spor Ayakkabı', 'Skechers', 599.99, 240),
    (23, 'WX9012-BAG', 1, 'Çanta', 'K', 'Siyah Kadın Omuz Çantası', 'Guess', 399.99, 190),
    (24, 'YZ3456-SWT', 2, 'Sweatshirt', 'E', 'Mavi Erkek Sweatshirt', 'Under Armour', 449.99, 170),
    (25, 'AB6789-KAZ', 2, 'Kazak', 'K', 'Beyaz Kadın Kazak', 'Mango', 299.99, 220),
    (26, 'CD0123-AYK', 3, 'Ayakkabı', 'E', 'Kahverengi Erkek Ayakkabı', 'Clarks', 799.99, 100),
    (27, 'EF4567-CZK', 1, 'Cüzdan', 'K', 'Kırmızı Kadın Cüzdan', 'Michael Kors', 249.99, 350),
    (28, 'GH8910-MNT', 2, 'Mont', 'E', 'Yeşil Erkek Mont', 'The North Face', 1499.99, 80),
    (29, 'IJ2345-BOT', 3, 'Bot', 'K', 'Siyah Kadın Bot', 'Dr. Martens', 1299.99, 140),
    (30, 'KL6789-TSH', 1, 'Tişört', 'E', 'Gri Erkek Tişört', 'Lacoste', 299.99, 310);


/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
