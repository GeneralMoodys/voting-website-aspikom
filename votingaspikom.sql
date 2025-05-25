-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table votingaspikom.admins: ~0 rows (approximately)
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '$2y$12$r4p/2pskwxeZzlXTHSkZV.2eiNRyb.9VvQK///11bc3fP4ony87Qe', '2025-04-18 05:49:43', '2025-04-18 05:49:43');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Dumping data for table votingaspikom.cache: ~0 rows (approximately)
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Dumping data for table votingaspikom.cache_locks: ~0 rows (approximately)
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;

-- Dumping data for table votingaspikom.db_vote: ~327 rows (approximately)
/*!40000 ALTER TABLE `db_vote` DISABLE KEYS */;
INSERT INTO `db_vote` (`id`, `universitas`, `prodi`, `pin_sesi_1`, `pin_sesi_2`, `is_used_1`, `is_used_2`, `created_at`, `updated_at`, `is_active`) VALUES
	(1, 'Universitas Swiss German', 'Ilmu Komunikasi', 'IXolW', 'Atv1Z', 1, 0, '2025-04-16 13:06:21', '2025-05-01 15:08:02', 1),
	(2, 'Universitas Amikom Purwokerto', 'Ilmu Komunikasi', 'Yux1G', 'duf28', 1, 1, '2025-04-16 13:06:21', '2025-05-01 15:09:18', 1),
	(3, 'Universitas Pembangunan Nasional Veteran Jakarta', 'Ilmu Komunikasi', 'BK9yz', 'ooSs4', 0, 0, '2025-04-16 13:06:21', '2025-05-01 15:07:30', 1),
	(4, 'Universitas Bunda Mulia', 'Ilmu Komunikasi', 'ho3pf', '5bZmR', 0, 0, '2025-04-16 13:06:21', '2025-05-01 15:07:30', 1),
	(5, 'Universitas Pembangunan Jaya', 'Ilmu Komunikasi', 'AO4eo', 'SdegR', 0, 0, '2025-04-16 13:06:21', '2025-05-01 15:07:30', 1),
	(6, 'Universitas Gadjah Mada', 'Ilmu Komunikasi', '4sjBM', 'ry9w8', 0, 0, '2025-04-16 13:06:21', '2025-05-01 15:07:30', 1),
	(7, 'Universitas Darussalam Gontor', 'Ilmu Komunikasi', 'Y8n8s', 'gvR87', 0, 0, '2025-04-16 13:06:21', '2025-05-01 15:07:30', 1),
	(8, 'Universitas Ahmad Dahlan', 'Ilmu Komunikasi', '1AwuR', 'mSOtX', 0, 0, '2025-04-16 13:06:21', '2025-05-01 15:07:30', 1),
	(9, 'UIN Sunan Ampel Surabaya', 'Ilmu Komunikasi', 'TnSXE', 'RtCIL', 0, 0, '2025-04-16 13:06:21', '2025-05-01 15:07:30', 1),
	(10, 'Universitas Sumatera Utara', 'Ilmu Komunikasi', 'kNq5K', 'E6uLR', 0, 0, '2025-04-16 13:06:21', '2025-05-01 15:07:30', 1),
	(11, 'Universitas Kristen Satya Wacana', 'Ilmu Komunikasi', 'dWKpu', 'Gh26B', 0, 0, '2025-04-16 13:06:21', '2025-05-01 15:07:30', 1),
	(12, 'Universitas Widya Mataram', 'Ilmu Komunikasi', '8TcQ5', 'p138D', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(13, 'Universitas Islam Indonesia', 'Ilmu Komunikasi', 'oJXh3', 'hLZCW', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(14, 'Universitas Sumatera Selatan', 'Ilmu Komunikasi', 'yqz9y', 'puPxQ', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(15, 'Universitas Bengkulu', 'Ilmu Komunikasi', 'rYf3s', 'LPgA8', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(16, 'Universitas Paramadina', 'Ilmu Komunikasi', 'rLzEv', 'm7W2j', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(17, 'Universitas Sam Ratulangi Manado', 'Ilmu Komunikasi', 'fnzbw', 'qfWN5', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(18, 'Universitas Muhammadiyah Yogyakarta', 'Ilmu Komunikasi', 'COiPr', 'f7zXB', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(19, 'STISIPOL Candradimuka Palembang', 'Ilmu Komunikasi', 'RXuqW', 'Q3JKM', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(20, 'STISIPOL Candradimuka Palembang', 'Magister Ilmu Komunikasi', 'zUCat', 'TNU3k', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(21, 'Universitas Garut', 'Ilmu Komunikasi', 'JAAyX', 'idZmX', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(22, 'Universitas Muhammadiyah Jember', 'Ilmu Komunikasi', 'BJbdX', 'Efz3S', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(23, 'Universitas PGRI Ronggolawe Tuban', 'ILMU KOMUNIKASI', 'jMaTm', 'd3YBv', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(24, 'Universitas Gunadarma', 'Ilmu Komunikasi', '0Vcbu', '9Iw3h', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(25, 'Universitas Gunadarma', 'Ilmu Komunikasi', 'RZD8d', '1Z80s', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(26, 'Universitas Diponegoro', 'Ilmu Komunikasi', '5VmC8', 'MPJUL', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(27, 'Universitas Diponegoro', 'Ilmu Komunikasi', 'e4HLa', '96KDu', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(28, 'Universitas Katolik Soegijapranata', 'Ilmu Komunikasi', '4Shz2', 'uvux9', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(29, 'Universitas Nasional', 'Ilmu Komunikasi', 'FNbBz', 'RG1YU', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(30, 'Politeknik Negeri Media Kreatif', 'Periklanan', 'RPCcM', 'uXUFt', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(31, 'Universitas Sahid Jakarta', 'Ilmu Komunikasi', 'hPAhu', 'ZYiGW', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(32, 'Universitas Pancasila', 'Ilmu Komunikasi', 'M3Rz5', 'ChnMh', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(33, 'Universitas Islam Bandung (UNISBA)', 'Magister Ilmu Komunikasi', 'vox7d', '4wZQn', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(34, 'Universitas Bakrie', 'Ilmu Komunikasi', 'Xpy3c', 'LsxfY', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(35, 'Universitas Muhammadiyah Jakarta', 'Magister Ilmu Komunikasi', 'MCwH9', 'DfKQ5', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(36, 'Universitas Muhammadiyah Jakarta', 'Ilmu Komunikasi', 'wreHj', 'QevCI', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(37, 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi', 'LYrvr', 'I2AKU', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(38, 'Universitas Bina Darma', 'Ilmu Komunikasi', 'mTGj0', 'DBiNg', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(39, 'Universitas Mercubuana Jakarta', 'Ilmu Komunikasi', 'oPpSa', 'AYgip', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(40, 'Institut Komunikasi dan Bisnis LSPR', 'Ilmu Komunikasi', 'rbBiW', 'gFuvf', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(41, 'Institut Komunikasi dan Bisnis LSPR', 'Ilmu Komunikasi', 'qWmKL', '9epyS', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(42, 'Universitas Bhayangkara Surabaya', 'Ilmu Komunikasi', 'QNK1v', 'H2W7A', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(43, 'Universitas Gajayana Malang', 'Ilmu Komunikasi', '7TrfH', 'GLZD8', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(44, 'Universitas Muhammadiyah Ponorogo', 'Ilmu Komunikasi', 'Eqqgr', 'Fjpap', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(45, 'Universitas Islam Majapahit', 'Ilmu Komunikasi', 'h3WCV', '3TGbA', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(46, 'UNIVERSITAS MERDEKA MADIUN', 'Ilmu Komunikasi', 'A36KK', 'WYU5t', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(47, 'Institut Manajemen Wiyata Indonesia', 'Ilmu Komunikasi', 'bARcn', 'acvvq', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(48, 'Universitas Tanjungpura', 'Ilmu Komunikasi', 'JTmLd', 'oiVwW', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(49, 'Universitas Baturaja', 'Ilmu Komunikasi', '6DbF9', 'c5mxG', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(50, 'Universitas Esa Unggul', 'Ilmu Komunikasi', 'Jy9Qc', 'UOVdM', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(51, 'Universitas Esa Unggul', 'Ilmu Komunikasi', '8ctiC', 'AsARJ', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(52, 'Institut Bisnis dan Informatikas Kosgoro 1957', 'Ilmu Komunikasi', '5jgWz', 'NGqwy', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(53, 'Universitas Al Azhar Indonesia', 'Ilmu Komunikasi', 'iBDZY', 'cyCek', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(54, 'Universitas Dharmawangsa', 'Ilmu Komunikasi', 'bzhvT', 'OfWDD', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(55, 'Universitas Katolik Widya Mandira', 'Ilmu Komunikasi', '2n5MH', 'bRlgz', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(56, 'Universitas Brawijaya', 'Ilmu Komunikasi', 'fkMET', 'rbOdc', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(57, 'Universitas Mataram', 'Ilmu Komunikasi', 'ZObDj', 'daR8H', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(58, 'Universitas Ciputra Surabaya', 'Ilmu Komunikasi', 'uTDWP', '8X6YY', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(59, 'Universitas Pertamina', 'Program Studi Komunikasi', 'd0RWy', '5Bc1B', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(60, 'Universitas Muhammadiyah Prof. DR. HAMKA (Uhamka)', 'Ilmu Komunikasi', 'oYHq9', '7e866', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(61, 'Universitas Bung Karno', 'Ilmu Komunikasi', 'V3buR', 'v52OW', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(62, 'Universitas Kader Bangsa (UKB Palembang)', 'Ilmu Komunikasi', 'nyAp1', 'bG9hi', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(63, 'Universitas Dian Nusantara', 'Ilmu Komunikasi', 'IQ1DD', 'BQDEk', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(64, 'Tribhuwana Tunggadewi', 'Ilmu Komunikasi', 'N6gix', 'RXvbr', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(65, 'Universitas Bina Darma', 'Ilmu Komunikasi', 's2JcE', 'tuCjS', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(66, 'Institut Teknologi Kreatif Bina Nusantara Malang', 'Ilmu Komunikasi', '1xdDV', 'EX509', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(67, 'Universitas Islam Riau', 'Ilmu Komunikasi', 'z5OpE', 'LZGGb', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(68, 'Universitas Swadaya Gunung Jati', 'Ilmu Komunikasi', 'vLFGg', 'uD4xa', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(69, 'UIN Raden Fatah Palembang', 'Ilmu Komunikasi', 'oTpk5', 'cCCVT', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(70, 'Universitas Multimedia Nusantara', 'Ilmu Komunikasi', 'OsIiX', 'fkeBT', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(71, 'STISIP MBOJO BIMA', 'Ilmu Komunikasi', 'ATpMc', 'ms3uI', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(72, 'Universitas Dehasen Bengkulu', 'Ilmu Komunikasi', 'CnrIQ', 'doAgF', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(73, 'STISIPOL Pahlawan 12', 'Ilmu Komunikasi', 'H2Hcx', '0Fc8b', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(74, 'Universitas Multimedia Nusantara', 'Pendidikan Jarak Jauh Ilmu Komunikasi', 'HZwNQ', 'swBDt', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(75, 'Universitas Multimedia Nusantara', 'Jurnalistik', 'U9UwS', 'UFdas', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(76, 'Universitas Jenderal Soedirman', 'Ilmu Komunikasi', 'RXwfL', '1pbEP', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(77, 'Universitas Veteran Bangun Nusantara', 'Ilmu Komunikasi', 'Oz92L', 'j0ixm', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(78, 'Universitas Muhammadiyah Riau', 'Ilmu Komunikasi', '5kNDe', 'eUzLM', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(79, 'Universitas Bengkulu', 'Ilmu Komunikasi', 'wYGtU', 'IUyyL', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(80, 'Universitas Muhammadiyah Magelang', 'Ilmu Komunikasi', 'DVMax', 'eZgYy', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(81, 'IAIN SAS BABEL', 'Komunikasi dan Penyiaran Islam', 'IE9Xz', 'OwjMz', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(82, 'Universitas Gajah Putih Takengon', 'Ilmu Komunikasi', 'wOD06', 'UbwrE', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(83, 'Universitas Gadjah Mada', 'Ilmu Komunikasi', 'Td2SN', 'vTdvH', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(84, 'Universitas Bina Sarana Informatika', 'Ilmu Komunikasi', 'HQS0m', 'LIegC', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(85, 'Universitas Negeri Jakarta', 'Ilmu Komunikasi', 'O0rCK', 'CZ1BI', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(86, 'Universitas Paramadina', 'Ilmu Komunikasi', 'JzOse', 'GYn9D', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(87, 'Institut Ilmu Sosial dan Manajemen STIAMI', 'Manajemen Komunikasi', 'RFlYj', 'gaBO4', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(88, 'Universitas Tarumanagara', 'Ilmu Komunikasi', 'pFmSe', 'srd0p', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(89, 'Universitas Pelita Harapan', 'Ilmu Komunikasi', '7VZ88', 'd10db', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(90, 'Universitas Budi Luhur', 'Ilmu Komunikasi', 'P7DbM', 'BYHhy', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(91, 'Institut Komunikasi dan Bisnis LSPR', 'PJJ Ilmu Komunikasi', 'm6GIN', 'UjEBx', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(92, 'UNIVERSITAS SUMATERA UTARA', 'Ilmu Komunikasi', '7jo68', 'PCyKx', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(93, 'Universitas Muhammadiyah Kotabumi Lampung', 'Ilmu Komunikasi', 'wxE21', 'SKdAn', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(94, 'UNIVERSITAS MUHAMMADIYAH SUMATERA UTARA', 'ILMU KOMUNIKASI', 'DhWzl', 'GFLxB', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(95, 'STIKS Tarakanita', 'ILMU KOMUNIKASI', 'gzwxo', 'B2FmW', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(96, 'Sekolah Tinggi Ilmu Komunikasi Yogyakarta', 'S1 Ilmu Komunikasi', 'pF2GW', 'orJgS', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(97, 'Universitas Pejuang Republik Indonesia', 'Ilmu Komunikasi', '0owqz', '6quaD', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(98, 'Politeknik Tempo', 'Produksi Media', 'YpsRu', 'uTMrW', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(99, 'Universitas Djuanda', 'Sains Komunikasi', 't2VX7', '4P5vU', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(100, 'Universitas Pembangunan Nasional Veteran Yogyakarta', 'Magister Ilmu Komunikasi', 'P3VZK', '83rrl', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(101, 'Universitas Gadjah Mada', 'Ilmu Komunikasi', '45JHQ', 'Myrit', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(102, 'UNIVERSITAS INSAN CITA INDONESIA', 'Ilmu Komunikasi', 'ek5Pe', 'p02e2', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(103, 'STIKOM YOGYAKARTA', 'PENYIARAN', '5ITqs', 'B2zi3', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(104, 'Universitas Perintis Indonesia', 'S1 Ilmu Komunikasi', 'mxWDT', 'oUBMM', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(105, 'Universitas Pembangunan Nasional Veteran Yogyakarta', 'Hubungan Masyarakat', '02UWK', 'boTsu', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(106, 'Universitas Islam Kalimantan Muhammad Arsyad Al Banjari', 'Ilmu Komunikasi', 'XMJGp', 'S7pju', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(107, 'UNIVERSITAS ISLAM BALITAR BLITAR', 'Ilmu Komunikasi', 'a3cKO', 'QmFzU', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(108, 'Universitas Bhakti Kencana', 'Ilmu Komunikasi', 'ReOlD', 'e6g2A', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(109, 'Universitas Islam Bandung (UNISBA)', 'Ilmu Komunikasi', 'FvWBA', 'Yexcf', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(110, 'Universitas Bengkulu', 'Jurnalistik', 'Dwhzt', 'S1wcC', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(111, 'Universitas Indonesia', 'Produksi Media', 'Squ0h', 'kPCeN', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(112, 'Universitas Terbuka', 'Ilmu Komunikasi', '6C8Oq', 'vZKHS', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(113, 'Universitas Negeri Yogyakarta', 'Ilmu Komunikasi', 'ouLgP', 'SSF81', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(114, 'Universitas Pasundan', 'Ilmu Komunikasi', '7mcWL', 'FgNHF', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(115, 'Universitas Riau', 'MAGISTER ILMU KOMUNIKASI', 'NctRX', 'gn3tl', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(116, 'Universitas Pembangunan Nasional Veteran Jawa Timur', 'Ilmu Komunikasi', 'NPufz', 'eoAiD', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(117, 'Universitas Katolik Widya Mandala Surabaya', 'Ilmu Komunikasi', 'RCrqL', 'HkYTQ', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(118, 'Universitas Muhammadiyah Sidoarjo', 'Ilmu Komunikasi', 'tnGGc', '0b1qB', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(119, 'Universitas Diponegoro', 'Sarjana Terapan Informasi dan Humas', 'YsdjY', 'YNDcY', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(120, 'Universitas Dr Soetomo', 'Ilmu Komunikasi', 'EPgCN', 'THpSR', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(121, 'Universitas Atma Jaya Yogyakarta', 'Ilmu Komunikasi', 'FCD2o', 'LicUv', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(122, 'Universitas Dwijendra', 'Ilmu Komunikasi', 'bodxo', '5GLQv', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(123, 'Universitas Budi Luhur', 'Ilmu Komunikasi', 'OtNZs', 'eLtIR', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(124, 'STIKOM InterStudi', 'Ilmu Komunikasi', 'kwIR2', 'ZMYqC', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(125, 'UIN Sunan Kalijaga Yogyakarta', 'Ilmu Komunikasi', 'tVc3L', '3BIzf', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(126, 'Universitas Hasanuddin', 'Ilmu Komunikasi', 'GO5k5', 'jWf9V', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(127, 'Universitas Hasanuddin', 'Ilmu Komunikasi', 'sKWsT', 'snPXg', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(128, 'Universitas Lambung Mangkurat', 'Ilmu Komunikasi', 'Dhr6v', 'xnOPg', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(129, 'Universitas Kristen Petra', 'Prodi. Ilmu Komunikasi', 'efK5F', 'LpwfF', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(130, 'Sahid Jakarta', 'Ilmu Komunikasi', 'mXfh3', 'rbVpI', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(131, 'Universitas Fajar', 'Ilmu Komunikasi', 'JBCwW', 'aOrQq', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(132, 'Universitas Fajar', 'Ilmu Komunikasi', 'cQjLe', 'Z7dqv', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(133, 'Stikosa-AWS', 'Komunikasi', 'CLori', 'IJLjN', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(134, 'Universitas Respati Yogyakarta', 'Ilmu Komunikasi', 'udTgd', 'ZIeBi', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(135, 'Sekolah Tinggi Ilmu Komunikasi "Pembangunan" Medan', 'Ilmu Komunikasi', '2VglX', 'UTCSK', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(136, 'Universitas Dian Nuswantoro', 'Ilmu Komunikasi', 'E4hUR', 't0GDe', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(137, 'Universitas Islam Nusantara', 'Ilmu Komunikasi', 'BxCOz', 'hlWfe', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(138, 'Universitas Udayana', 'Ilmu Komunikasi', 'rifqZ', 'pMabO', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(139, 'UNIVERSITAS BUDDHI DHARMA', 'ILMU KOMUNIKASI', 'WD6sK', 'Hbs2F', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(140, 'Universitas Komputer Indonesia', 'Ilmu Komunikasi', 'fdrkd', 't058k', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(141, 'UIN SUMATERA UTARA', 'ILMU KOMUNIKASI', 'bPqZ3', '24ZV7', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(142, 'Universitas Pelita Harapan', 'PJJ Ilmu Komunikasi', 'xVZSS', 'bpjjH', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(143, 'Universitas Multimedia Nusantara', 'Ilmu Komunikasi', '6VYNw', 'SLWn2', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(144, 'Universitas Pelita Harapan', 'Ilmu Komunikasi', 'IiCDO', '9IwT4', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(145, 'Universitas Sari Mutiara Indonesia', 'Ilmu Komunikasi', 'pwhSL', 'ggg22', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(146, 'Universitas Tribhuwana Tunggadewi', 'ILMU KOMUNIKASI', 'sAyvl', 'x7R1W', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(147, 'Universitas Putra Indonesia', 'Ilmu Komunikasi', 'yLUsS', 'IGjyv', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(148, 'Universitas Indonesia Maju', 'Ilmu Komunikasi', 'FRhZx', 'ghR2f', 0, 0, '2025-04-16 13:06:22', '2025-05-01 15:07:30', 1),
	(149, 'Universitas Negeri Jakarta', 'D3 Hubungan Masyarakat', 'X7X1v', 'pZ9TR', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(150, 'Universitas Bhayangkara Jakarta Raya', 'Ilmu Komunikasi', '9T7Ov', 'yzXzn', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(151, 'Universitas Bunda Mulia', 'Magister Ilmu Komunikasi', '9Ice1', 'Yrt2j', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(152, 'Universitas Pancasakti', 'Ilmu Komunikasi', 'Mynax', '0EmL2', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(153, 'Universitas Malikussaleh', 'Prodi Ilmu Komunikasi', 'UDWHp', '8lrj8', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(154, 'Universitas Mpu Tantular', 'Ilmu Komunikasi', 'G12Hp', 'Fdtjk', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(155, 'Muhammadiyah Surakarta', 'Ilmu Komunikasi', 'gLxqb', 'RFutu', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(156, 'Universitas Teuku Umar', 'Ilmu komunikasi', 'RKkpq', 'pTZUs', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(157, 'Universitas Informatika dan Bisnis Indonesia (UNIBI)', 'Ilmu Komunikasi', 'wl4fM', 'SzNEd', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(158, 'Universitas Pattimura', 'Ilmu Komunikasi', '71ZZA', 'r2nAz', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(159, 'Universitas Hasanuddin', 'Ilmu Komunikasi', 'XS1Go', 'R4r90', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(160, 'Universitas Sultan Ageng Tirtayasa', 'Ilmu Komunikasi', 'ukJul', 'YaaWp', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(161, 'Universitas Islam Jember', 'Ilmu Komunikasi', 'iEAXw', '29OUW', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(162, 'Universitas Tadulako', 'Ilmu Komunikasi', 'ZwRbV', 'mk0S1', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(163, 'UAJY', 'Ilmu Komunikasi', 'j0meq', 'Tnlwy', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(164, 'UIN Sultan Syarif Kasim Riau', 'Ilmu Komunikasi', '2dmI5', 'p6bgE', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(165, 'Universitas Pendidikan Nasional', 'Ilmu Komunikasi', '8DVwD', 'l6FTG', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(166, 'Universitas Muhammadiyah Riau', 'Hubungan Masyarakat', 'UYoPK', 'LvOKK', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(167, 'Swiss German University', 'Ilmu Komunikasi', 'ORVjr', 'Gwgjr', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(168, 'SEKOLAH TINGGI PEMBANGUNAN MASYARAKAT DESA "APMD"', 'ILMU KOMUNIKASI', 'V4vvX', '96nfi', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(169, 'Universitas Medan Area', 'Ilmu Komunikasi', 'xiln5', 'iVpsf', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(170, 'UNIVERSITAS YUDHARTA PASURUAN', 'ILMU KOMUNIKASI', 'Zrvos', 'AS85G', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(171, 'UNIVERSITAS AISYIYAH YOGYAKARTA', 'ILMU KOMUNIKASI', 'QeOW4', 'Rjk5H', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(172, 'Politeknik LP3I', 'Hubungan Masyarakat', 'LT7pm', 'SZU8T', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(173, 'Universitas Kristen Satya Wacana', 'Hubungan Masyarakat', 'ZvB6V', 'jhxzp', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(174, 'Universitas Lampung', 'Ilmu Komunikasi', 'a1QJW', 'ZDFug', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(175, 'Universitas Lampung', 'Ilmu Komunikasi', 'QXdvk', '6TY6a', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(176, 'Universitas Indonesia', 'Ilmu Komunikasi', '9R8we', 'IUhQb', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(177, 'Universitas Muhammadiyah Buton', 'Ilmu Komunikasi', 'D0bAV', 'SCk0u', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(178, 'Telkom University', 'Ilmu Komunikasi', 'llXuW', 'HoH59', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(179, 'Universitas Muhammadiyah Bengkulu', 'Ilmu Komunikasi', 'eIbT6', 'Co1Sj', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(180, 'Universitas Telkom', 'Digital Content Broadcasting', 'uUzVo', 'Vf7Vb', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(181, 'Universitas Islam 45 Bekasi', 'Ilmu Komunikasi', 'FQTFm', 'Wi8OM', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(182, 'Universitas Mercu Buana Yogyakarta', 'Ilmu Komunikasi', '4p8R1', 'tclkt', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(183, 'Universitas Kristen Indonesia', 'Ilmu Komunikasi', 'GAPuz', 'wjPHw', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(184, 'Universitas Islam Negeri (UIN) Alauddin Makassar', 'Ilmu Komunikasi', 'gpGIT', 'BAqAl', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(185, 'Universitas Singaperbangsa Karawang', 'Ilmu Komunikasi', 'u9Fq1', 'qCXFq', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(186, 'Universitas Telkom', 'Ilmu Komunikasi', 'qI0PP', 'UtDN9', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(187, 'Universitas Indonesia', 'Ilmu Komunikasi', '2bVoZ', 'ZBTfC', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(188, 'Universitas Indonesia', 'Ilmu Komunikasi', 'vxleH', 'xg9b8', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(189, 'Universitas Adhirajasa Reswara Sanjaya', 'Ilmu Komunikasi', 'NS759', 'gsUf7', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(190, 'Universitas Jenderal Soedirman', 'Ilmu Komunikasi', 'GyTMg', '98zIL', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(191, 'Universitas Subang', 'Ilmu Komunikasi', 'mkYF6', 'T9DFg', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(192, 'Universitas Sriwijaya', 'Ilmu Komunikasi', 'FPfvT', 'tj5NB', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(193, 'Universitas Padjadjaran', 'Hubungan Masyarakat', 'kAtM7', 'BBSiO', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(194, 'Universitas Padjadjaran', 'Ilmu Komunikasi', 'W3iVS', 'YBzb6', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(195, 'Universitas Padjadjaran', 'Jurnalistik', '1qSkK', 'vcwNQ', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(196, 'Universitas Padjadjaran', 'Televisi dan Film', 'UXSwN', 'LoTZR', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(197, 'Universitas Padjadjaran', 'Ilmu Komunikasi', 'I6eqQ', 'tqpbx', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(198, 'UNIVERSITAS KEBANGSAAN REPUBLIK INDONESIA', 'ILMU KOMUNIKASI', 'MVuGO', '2Bc7y', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(199, 'Universitas Presiden', 'Ilmu Komunikasi', 'VD4f4', 'tMPSd', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(200, 'Universitas Padjadjaran', 'MANAJEMEN PRODUKSI MEDIA', 'KgI4e', 'AIZmF', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(201, 'Universitas Telkom', 'Hubungan Masyarakat', 'n376v', 'l1n3g', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(202, 'UNIVERSITAS SATYA NEGARA INDONESIA', 'ILMU KOMUNIKASI', 'CDron', '1iFqT', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(203, 'UNIVERSITAS NAHDLATUL ULAMA SULAWESI TENGGARA', 'Ilmu Komunikasi', 'tJlc8', 'vLUUJ', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(204, 'Universitas Bhayangkara Jakarta Raya', 'Ilmu Komunikasi', 'ToBAb', 'zcTBx', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(205, 'Universitas Muhammadiyah Malang', 'Ilmu Komunikasi', 'da4ZQ', 'tLm0u', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(206, 'Universitas Sebelas Maret', 'Ilmu Komunikasi', 'ZUY6J', '61s5d', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(207, 'Universitas Pasundan', 'Magister Ilmu Komunikasi', 'R8Qam', 'Dkrsd', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(208, 'Institut Agama Islam Negeri Bone', 'Komunikasi dan Penyiaran Islam', 'IE7Rc', 'QBVeI', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(209, 'Universitas Teknologi Sumbawa', 'Ilmu Komunikasi', 'gR2oC', 'PmTZZ', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(210, 'Universitas Halu Oleo', 'Jurnalistik', 'kVoWP', 'yGBNZ', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(211, 'Universitas Sahid Jakarta', 'Ilmu Komunikasi', 'FcxWU', 'zm5pj', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(212, 'Universitas Muhammadiyah Papua', 'Ilmu Komunikasi', '2dzES', 'AHk2U', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(213, 'Universitas Halu Oleo', 'Ilmu Komunikasi', 'iqNLq', 'KddVd', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(214, 'Akademi Komunikasi Media Radio & Televisi Jakarta', 'Hubungan Masyarakat', 'axMs3', 'CdQIo', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(215, 'Universitas Andalas (UNAND)', 'Ilmu Komunikasi', '1u6iT', 'jvCqk', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(216, 'Universitas Serang Raya (UNSERA)', 'Ilmu Komunikasi', '30WO1', 'z7FpB', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(217, 'Universitas Negeri Surabaya', 'Ilmu Komunikasi', 'N4APr', 'HDu6I', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(218, 'Universitas Ratu Samban Bengkulu Utara', 'Ilmu Komunikasi', '52WbZ', 'kXrwq', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(219, 'Universitas Nusa Nipa', 'Ilmu Komunikasi', 'xrU0T', 'XGsC9', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(220, 'Universitas Padjadjaran', 'Manajemen Komunikasi', 'xbLJD', 'qmmZG', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(221, 'Universitas Kristen Indonesia Maluku', 'Ilmu Komunikasi', 'wuD8Z', 'SHvX2', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(222, 'Universitas Darma Agung', 'Ilmu Komunikasi', '47sq3', '79jlf', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(223, 'Universitas Prof. Dr. Moestopo (Beragama)', 'Ilmu Komunikasi', 'iCcxq', 'Bcps1', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(224, 'Universitas Prof. Dr. Moestopo (Beragama)', 'Ilmu Komunikasi', '45ITl', 'tWZ6x', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(225, 'Universitas Siber Asia', 'Ilmu Komunikasi', 'bwDRD', 'X4AYy', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(226, 'Universitas Trunojoyo Madura', 'Ilmu Komunikasi', 'jBvin', 'OEFtz', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(227, 'Universitas Sultan Ageng Tirtayasa', 'Ilmu Komunikasi', 'sjTDM', 'x2nXF', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(228, 'Universitas Bina Sarana Informatika', 'Periklanan', 'QoYKL', 'jMNbt', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(229, 'Universitas Bina Sarana Informatika', 'Hubungan Masyarakat', 'Cswzu', 'VcQwn', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(230, 'Universitas Brawijaya', 'Ilmu Komunikasi', 'Jrhf0', 'KVMMW', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(231, 'Universitas Nurdin Hamzah', 'Ilmu Komunikasi', 'iID6T', 'KmEbQ', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(232, 'Universitas Media Nusantara Citra', 'Sains Komunikasi', 'onvvD', '0jf2j', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(233, 'Institut Pertanian Bogor', 'Komunikasi Pembangunan Pertanian dan Perdesaan', '7MKbi', 'syp4u', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(234, 'Institut Pertanian Bogor', 'Komunikasi Pembangunan Pertanian dan Perdesaan', 'XPouS', 'T6kj5', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(235, 'Universitas Abdurrab', 'Ilmu komunikasi', '1N8Wi', 'SrEBA', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(236, 'Universitas Pembangunan Nasional Veteran Jakarta', 'Ilmu Komunikasi', 'qPrGA', 'vTZJh', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(237, 'Universitas Tulang Bawang Lampung', 'Ilmu Komunikasi', 'K95AK', 'kzeKd', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(238, 'Universitas Pembangunan Nasional Veteran Jakarta', 'Sains Informasi', 'MOqaz', 'uwE7F', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(239, 'IISIP Jakarta', 'Ilmu Komunikasi', '8ufoh', 'gMDKS', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(240, 'IISIP Jakarta', 'Ilmu Komunikasi', 'xn8gS', 'btybf', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(241, 'IISIP Jakarta', 'Ilmu Komunikasi', 'qWjpc', 'NxMgw', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(242, 'Universitas Indonesia Maju', 'Periklanan', 'DcVPW', 'nbFZT', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(243, 'Universitas Sumatera Utara', 'Ilmu Komunikasi', 'wxn5K', '1v6DB', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(244, 'Universitas Tidar', 'Ilmu Komunikasi', 'jPyUA', 'SmdvI', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(245, 'Universitas Bina Nusantara', 'Ilmu Komunikasi', 'OIxbR', 'sPxj3', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(246, 'Univesitas Negeri Malang', 'Ilmu Komunikasi', 'BcHcn', 'H6ZN6', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(247, 'Sekolah Tinggi Ilmu Komunikasi (STIKOM) InterStudi', 'Ilmu Komunikasi', 'MmcHC', 'MzRHQ', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(248, 'Universitas Riau', 'Ilmu Komunikasi', '25Btg', 'nub8L', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(249, 'Universitas Boyolali', 'Ilmu Komunikasi', '3660W', 'VhXKN', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(250, 'Universitas Islam Bandung (UNISBA)', 'Ilmu Komunikasi', 'm4Tfj', '1zak5', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(251, 'Universitas Indonesia', 'Hubungan Masyarakat', 'CVAHz', 'R4Mg2', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(252, 'Universitas Indonesia', 'Periklanan', '6Ui3x', 'XQUFI', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(253, 'Universitas Putera Batam', 'Ilmu Komunikasi', 'eReZx', 'D9CIP', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(254, 'Universitas Indonesia', 'Penyiaran Multimedia', 'vart0', 'J2VO5', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(255, 'Universitas Pancasakti Tegal', 'Ilmu Komunikasi', 'jm3n4', 'gq58X', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(256, 'Universitas Indonesia Membangun (INABA)', 'Ilmu Komunikasi', 'CHFOc', 'HIFFy', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(257, 'Universitas Bina Bangsa', 'Ilmu Komunikasi', '8T5OA', 'nE44I', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(258, 'Institut Ilmu Al-Qur\'an (IIQ) Jakarta', 'Komunikasi dan Penyiaran Islam', 'ID5my', 'Q0LEG', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(259, 'Universitas Bina Nusantara Malang', 'Hubungan Masyarakat', 'aWiPY', 'uU03J', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(260, 'Universitas Pendidikan Muhammadiyah Sorong', 'Ilmu Komunikasi', 'SJPZQ', 'oHqxF', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(261, 'Universitas Pamulang', 'Ilmu Komunikasi', 'S0iX4', 'HpHCq', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(262, 'Universitas Muslim Indonesia', 'Ilmu Komunikasi', '7mYZd', 'gKKMX', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(263, 'Universitas Langlangbuana', 'Ilmu Komunikasi', 'wjKjP', 'c1CS0', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(264, 'Universitas Slamet Riyadi Surakarta', 'Ilmu Komunikasi', 'uncMk', 'UaG5C', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(265, 'Universitas Islam Negeri Sunan Gunung Djati Bandung', 'Ilmu Komunikasi', 'GVjh3', 'Cctv4', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(266, 'IAIN SAS BABEL', 'Jurnalistik', 'R4M5k', 'GfyUx', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(267, 'Universitas Islam Negeri Sumatera Utara Medan', 'Komunikasi dan Penyiaran Islam', 'uECP7', 'BanyV', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(268, 'Universitas Bina Nusantara Malang', 'Ilmu Komunikasi', '9MkZ7', 'D4RG9', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(269, 'Universitas Nusa Cendana', 'Ilmu Komunikasi', 'A3O2E', 'scKmv', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(270, 'Universitas Jayabaya', 'Ilmu Komunikasi', 'ODXqI', 'canJK', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(271, 'Universitas Muhammadiyah Cirebon', 'Ilmu Komunikasi', 'dYrlC', 'T23US', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(272, 'Universitas Syiah Kuala', 'Ilmu Komunikasi', '780DA', 'BocEg', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(273, 'Universitas Pakuan', 'Ilmu Komunikasi', 'Mk8d8', 'vaQJy', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(274, 'Universitas Hang Tuah Pekanbaru', 'Ilmu Komunikasi', 'NvWRf', 'ZaFlY', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(275, 'Politeknik Negeri Jakarta', 'Penerbitan', 'FyY8w', '9cZYE', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(276, 'Universitas Mulawarman', 'Ilmu Komunikasi', 'SZ7eU', 'YwySy', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(277, 'Universitas Muhammadiyah Bandung', 'Ilmu Komunikasi', 'HoBWk', 'wFyZ9', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(278, 'Universitas Amikom Yogyakarta', 'Ilmu Komunikasi', 'VZnTZ', 'TuueF', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(279, 'Universitas Dharma Andalas', 'Ilmu Komunikasi', 'k2UJx', 'nBa7A', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(280, 'Universitas Muhammadiyah Tangerang', 'Periklanan', 'YUuf4', 'ANc8s', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(281, 'Universitas Islam Kalimantan Muhammad Arsyad Al Banjari', 'Ilmu Komunikasi', 'OgZn6', 'qPB8j', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(282, 'STISIP Guna Nusantara', 'Ilmu Komunikasi', 'MVSXH', 'yFzya', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(283, 'Universitas Islam Sumatera Utara', 'Ilmu Komunikasi', 'PdVAs', 'lmnta', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(284, 'Sekolah Tinggi Agama Buddha Nalanda', 'Ilmu Komunikasi', '3kQqC', 'Bppi2', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(285, 'Universitas Sangga Buana YPKP Bandung', 'Ilmu Komunikasi', 'J7P42', '8XZrz', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(286, 'Universitas Negeri Gorontalo', 'Ilmu Komunikasi', 'Mwfud', 'cHgWv', 0, 0, '2025-04-16 13:06:23', '2025-05-01 15:07:30', 1),
	(287, 'Universitas Negeri Padang', 'Ilmu Komunikasi', 'txrVC', 'qBtdz', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(288, 'Sekolah Tinggi Ilmu Agama Buddha (STIAB) Jinarakkhita Lampung', 'Ilmu Komunikasi Buddha', 'MzjnA', 'NiLHb', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(289, 'Universitas Nahdlatul Ulama Kalimantan Timur', 'Ilmu Komunikasi', 'GDema', 'RdYKM', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(290, 'Universitas Islam Syekh Yusuf Tangerang', 'Ilmu Komunikasi', 'q2Bf4', 'W2agp', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(291, 'Universitas Sang Bumi Ruwa Jurai', 'Humas dan Komunikasi Digital', 'kid2s', 'Ykuu9', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(292, 'Universitas Ary Ginanjar', 'Ilmu Komunikasi', 'kaV3U', 'SJLIV', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(293, 'Universitas Sahid Jakarta', 'Ilmu Komunikasi', 'FzM1L', 'yWoq2', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(294, 'Institut Bisnis Muhammadiyah Bekasi', 'Ilmu Komunikasi', 'ftko2', '7BDtO', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(295, 'Universitas Jayabaya', 'Ilmu Komunikasi', 'DzBVD', 'eWM8R', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(296, 'Universitas Muhammadiyah Palangkaraya', 'Ilmu Komunikasi', 'QjHBM', 'erTRw', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(297, 'Universitas Bandar Lampung', 'Ilmu Komunikasi', 'o3XiV', 'f7lmO', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(298, 'UHN I Gusti Bagus Sugriwa Denpasar', 'Ilmu Komunikasi Hindu', 'lUGiM', 'tEoVy', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(299, 'Universitas Al Asyariah Mandar', 'Ilmu Komunikasi', 'Td3Kj', 'DYpnY', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(300, 'Sekolah Tinggi Pembangunan Masyarakat Desa (APMD)', 'Ilmu Komunikasi', '0MwN6', 'kuDN9', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(301, 'Universitas Annuqayah', 'Ilmu Komunikasi', 'h2LJO', 'DRQJf', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(302, 'Universitas Islam Negeri Alauddin Makassar', 'Ilmu Komunikasi', '5McF3', 'D3mPO', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(303, 'Universitas Nasional', 'Ilmu Komunikasi', '4lyhC', 'MZr8F', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(304, 'Universitas Islam Makassar', 'Ilmu Komunikasi', 'fD99K', 'ZJRLv', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(305, 'Universitas 45 Mataram', 'Ilmu Komunikasi', 'nBFSs', 'fPfi1', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(306, 'Politeknik Caltex Riau', 'Hubungan Masyarakat dan Komunikasi Digital', '07eLi', '2b7dt', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(307, 'Universitas Pendidikan Indonesia', 'Ilmu Komunikasi', 'IaYg3', 'JtfSq', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(308, 'Universitas Islam Sultan Agung', 'Ilmu Komunikasi', '6Qzg4', 'OV7Ug', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(309, 'Universitas Muhammadiyah Cileungsi', 'Ilmu Komunikasi', 'C6U1z', 'URZw3', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(310, 'Universitas Tarumanagara', 'Ilmu Komunikasi', 'vG2vK', 'L2nCe', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(311, 'Institut Bisnis dan Komunikasi Swadaya (SWINS)', 'Ilmu Komunikasi', 'M8Piz', 'WitpT', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(312, 'Universitas Maritim Raja Ali Haji', 'Kajian Film TV dan Media', 'ka5cP', 'xufds', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(313, 'Universitas Atma Jaya Yogyakarta', 'Ilmu Komunikasi', 'Zjyqw', 'B9AqC', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(314, 'Universitas Indonesia Timur', 'Ilmu Komunikasi', 'v4N8b', '8weWk', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(315, 'Sekolah Tinggi Agama Hindu Dharma Nusantara Jakarta', 'Ilmu Komunikasi Hindu', 'SGTzZ', 'P9Xzu', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(316, 'Universitas 17 Agustus 1945 Jakarta', 'Ilmu Komunikasi', 'oJOGn', 'vSi5c', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(317, 'Universitas Sebelas Maret', 'Ilmu Komunikasi', 'a999v', 'wOldJ', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(318, 'Universitas Pembangunan Nasional Veteran (UPN) Jakarta', 'Kajian Film TV dan Media', 'RituE', '2k4sg', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(319, 'Universitas iskandarmuda banda aceh', 'Ilmu Komunikasi', '5qzkL', 'nFc3P', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(320, 'Universitas Selamat Sri', 'Ilmu Komunikasi', 'fiMOc', 'WEwFd', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(321, 'Institut Teknologi Sepuluh Nopember', 'Sains Komunikasi', 'Jkafa', 'VnGEy', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(322, 'Universitas Islam Negeri Sunan Kalijaga Yogyakarta', 'Ilmu Komunikasi', 'DDY7E', '3JtVK', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(323, 'Universitas Lambung Mangkurat', 'Ilmu Komunikasi', 'DSlin', 'ahraa', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(324, 'Institut Pertanian Bogor', 'Komunikasi Digital dan Media', 'TOaGi', 'NXo1q', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(325, 'Politeknik Indonusa Surakarta', 'Produksi Media', 'WuXfy', 'iW2ib', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(326, 'Universitas Negeri Semarang', 'Ilmu Komunikasi', 'kvbkE', 'oayIP', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1),
	(327, 'Universitas Nusa Nipa', 'Ilmu Komunikasi', 'tsmYk', '7ZSG2', 0, 0, '2025-04-16 13:06:24', '2025-05-01 15:07:30', 1);
/*!40000 ALTER TABLE `db_vote` ENABLE KEYS */;

-- Dumping data for table votingaspikom.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping data for table votingaspikom.jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping data for table votingaspikom.job_batches: ~0 rows (approximately)
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;

-- Dumping data for table votingaspikom.kandidats: ~2 rows (approximately)
/*!40000 ALTER TABLE `kandidats` DISABLE KEYS */;
INSERT INTO `kandidats` (`id`, `vote_session_id`, `nama`, `profil`, `foto`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Kandidat 1', 'lorem ipsum', 'kandidat_photos/lkMl1A4CPgMpXG3tDe8Y3peMATg3acJdK9DHrbbr.png', '2025-04-17 03:10:18', '2025-04-22 07:44:25'),
	(2, NULL, 'Kandidat 2', 'lorem ipsum', 'kandidat_photos/qNPiqmETEN3yUgKaEeAqlnGlwKaoyycfQIEmUQgs.png', '2025-04-17 03:13:16', '2025-04-22 07:44:42');
/*!40000 ALTER TABLE `kandidats` ENABLE KEYS */;

-- Dumping data for table votingaspikom.migrations: ~15 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2025_04_06_020057_create_kandidat_table', 1),
	(5, '2025_04_06_035928_create_db_vote_table', 1),
	(6, '2025_04_07_131328_create_votes_table', 1),
	(7, '2025_04_07_142325_create_voters_table', 1),
	(8, '2025_04_07_170613_add_vote_session_id_to_kandidats_table', 1),
	(9, '2025_04_16_131850_add_role_to_users_table', 2),
	(10, '2025_04_17_025433_add_kandidat_id_to_voters_table', 3),
	(11, '2025_04_17_084458_create_admins_table', 4),
	(12, '2025_04_19_032920_add_used_session_field_to_voters_table', 5),
	(13, '2025_04_21_132126_add_sesi_ke_to_voters_table', 6),
	(14, '2025_04_21_170626_add_is_used_1_to_votes_table', 7),
	(15, '2025_04_21_170820_add_is_used_2_to_votes_table', 8),
	(16, '2025_04_25_105027_add_is_active_to_db_vote_table', 9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping data for table votingaspikom.password_reset_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

-- Dumping data for table votingaspikom.sessions: ~2 rows (approximately)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('gF7N0zqGq13J5gELeMXevDOtCm7QfiMmkNNigal7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiYUZ6dVlacWJLM0xqTk9mc0lMRTlKemt1R1hxZjVSUnVRUEp6dFdVcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92b3RlcnM/c2VzaT0yIjt9czoxNToiYWRtaW5fbG9nZ2VkX2luIjtiOjE7czoxNToidm90ZV9zZXNzaW9uX2lkIjtpOjI7czoxODoidXNlZF9zZXNzaW9uX2ZpZWxkIjtzOjk6ImlzX3VzZWRfMiI7czoxMToidW5pdmVyc2l0YXMiO3M6Mjk6IlVuaXZlcnNpdGFzIEFtaWtvbSBQdXJ3b2tlcnRvIjtzOjU6InByb2RpIjtzOjE1OiJJbG11IEtvbXVuaWthc2kiO30=', 1746112167),
	('KIsM7KC1pHFyRvnmOrGeY2krANIhzJ60JqnfgH8d', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiamdFTUR1cmZncjdSSndWczdiVW9OaDhvRWJCaExGalRvTTUzYnNoeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92b3RlcnM/c2VzaT0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNToiYWRtaW5fbG9nZ2VkX2luIjtiOjE7fQ==', 1746265612);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping data for table votingaspikom.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'dils', 'dils@admin.com', 'user', NULL, '$2y$12$OJiRw/9HjMcCFNHjlExqgOiLyaoBNxEUi.Tl/uot6Oq9Rv.04g61a', NULL, '2025-04-16 13:05:05', '2025-04-16 13:05:05'),
	(3, 'Admin', 'admin@aspikom.com', 'admin', NULL, '$2y$12$V1LyKewLFOST4QyVX7yPDOR9iAgnBQaFH9nidQSd9lBD5dztmNeZq', NULL, '2025-04-16 13:49:04', '2025-04-16 13:49:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping data for table votingaspikom.voters: ~2 rows (approximately)
/*!40000 ALTER TABLE `voters` DISABLE KEYS */;
INSERT INTO `voters` (`id`, `kandidat_id`, `nama`, `vote_session_id`, `status`, `sesi_ke`, `bukti_anggota`, `surat_kuasa`, `used_session_field`, `created_at`, `updated_at`) VALUES
	(39, 2, 'ADI FUADIL HIDAYAH', 1, 1, 1, 'bukti/anggota/IBRSlIbPjg4IJGiNKb6ZQzm3BDAZJXBOl2jN9YUW.jpg', 'bukti/surat_kuasa/q5Tg9f6PKFMAOhhBaygQutx9QIyvspJUqpFoLdIC.jpg', NULL, '2025-05-01 15:07:56', '2025-05-01 15:08:01'),
	(40, 1, 'Adeela Zayna', 2, 1, 1, 'bukti/anggota/DaAIAGdtUD5Du97RjK3dWSW3aRq3rWjGZ2gss8m2.png', 'bukti/surat_kuasa/GJ2ld0dArI0mVfNTCyP7XhrDMfAIbqJ75Ydmw72K.png', NULL, '2025-05-01 15:08:40', '2025-05-01 15:08:46'),
	(41, 2, 'Adeela Zayna', 2, 1, 2, 'bukti/anggota/DaAIAGdtUD5Du97RjK3dWSW3aRq3rWjGZ2gss8m2.png', 'bukti/surat_kuasa/GJ2ld0dArI0mVfNTCyP7XhrDMfAIbqJ75Ydmw72K.png', NULL, '2025-05-01 15:09:12', '2025-05-03 09:08:57');
/*!40000 ALTER TABLE `voters` ENABLE KEYS */;

-- Dumping data for table votingaspikom.votes: ~0 rows (approximately)
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
