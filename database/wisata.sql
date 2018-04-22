-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2015 at 04:45 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE IF NOT EXISTS `wisata` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `jenis` enum('Wisata Alam','Wisata Buatan','Wisata Hiburan','Wisata Religius','Wisata Sejarah') NOT NULL,
  `alamat` text NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `nama`, `jenis`, `alamat`, `latitude`, `longitude`, `keterangan`) VALUES
(1, 'Rumah Adat Dulohupa', 'Wisata Buatan', 'Jl. Jendral Sudirman, Kel. Limba U2, Kec. Kota Selatan', '0.54926', '123.061222', 'Kosong'),
(2, 'Mesjid Baiturahim', 'Wisata Religius', 'Jl. Nani Wartabone, Kel. Siendeng, Kec. Hulondalangi', '0.533781', '123.065443', 'Kosong'),
(3, 'Benteng Otanaha', 'Wisata Religius', 'Jl. Usman Isa, Kel. Dembe I, Kec. Kota Barat', '0.546786', '123.011739', 'Kosong'),
(4, 'Pantai Karang Citra', 'Wisata Alam', 'Jl. RE Martadinata, Kel. Leato, Kec. Dumbo Raya', '0.485556', '123.085682', 'Kosong'),
(5, 'Pantai Indah Pohe', 'Wisata Alam', 'Jl. Ahmad Yani, Kel. Pohe, Kec. Hulondalangi', '0.504799', '123.060609', 'Kosong'),
(6, 'Pasir Putih Leato', 'Wisata Alam', 'Jl. RE Martadinata, Kel. Leato, Kec. Dumbo Raya', '0.500916', '123.068248', 'Kosong'),
(7, 'Kolam Renang Lahilote', 'Wisata Hiburan', 'Jl. Jendral Sudirman Kel. Limba U2, Kec. Kota Selatan', '0.550976', '123.059803', 'Kosong'),
(8, 'Pemandian Bak Air Potanga', 'Wisata Hiburan', 'Jl. Raya Batudaa, Kel. Pilolodaa, Kec. Kota Barat', '0.54237', '123.030042', 'Kosong'),
(9, 'Tangga Dua Ribu', 'Wisata Buatan', 'Jl. Ahmad Yani, Kel. Pohe, Kec. Hulondalangi', '0.505304', '123.061972', 'Kosong'),
(10, 'Patung Nani Wartabone', 'Wisata Buatan', 'Jl. Ahmad Yani, Kel. Pohe, Kec. Hulondalangi', '0.528359', '123.062422', 'Kosong'),
(11, 'Mesjid Hunto', 'Wisata Sejarah', 'Jl. Teuku Umar, Kel. Biawu, Kec.Kota Selatan', '0.526503', '123.063452', 'Kosong'),
(12, 'Tapak Kaki Lahilote', 'Wisata Sejarah', 'Jl. Ahmad Yani, Kel. Pohe, Kec. Hulondalangi', '0.505282', '123.06062', 'Kosong'),
(13, 'Makam Keramat JU Panggola', 'Wisata Religius', 'Jl. Usman Isa, Kel. Dembe I, Kec. Kota Barat', '0.546179', '123.018949', 'Kosong'),
(14, 'Makam Keramat Ta''Jailoyibuo', 'Wisata Religius', 'Jl. Ahmad Yani, Kel. Donggal, Kec. Hulondalangi', '0.534161', '123.047311', 'Kosong'),
(15, 'Makam Keramat Ta''Ilayabe', 'Wisata Religius', 'Jl. RE Martadinata, Kel. Leato, Kec. Dumbo Raya', '0.50731', '123.067465', 'Kosong'),
(16, 'Makam Keramat Haji Buulu', 'Wisata Religius', 'Jl. Teuku Umar, Kel. Biawu, Kec.Kota Selatan', '0.535106', '123.063165', 'Kosong'),
(17, 'Makam Keramat Pulubunga', 'Wisata Religius', 'Jl. Ahmad Yani, Kel. Tanjung Kramat, Kec. Hulondalangi', '0.49951', '123.050084', 'Kosong');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
