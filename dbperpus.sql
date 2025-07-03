-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dbperpus
CREATE DATABASE IF NOT EXISTS `dbperpus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbperpus`;

-- Dumping structure for table dbperpus.akun
CREATE TABLE IF NOT EXISTS `akun` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomor_hp` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dbperpus.akun: ~1 rows (approximately)
REPLACE INTO `akun` (`id`, `username`, `password`, `email`, `nomor_hp`) VALUES
	(2, 'septianirawan25', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'septianirawan25@uniliak.ac.id', '0895331327356'),
	(3, 'ADMIN', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'admin@gmail.com', '089337533374');

-- Dumping structure for table dbperpus.tbanggota
CREATE TABLE IF NOT EXISTS `tbanggota` (
  `idanggota` varchar(225) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(225) COLLATE utf8mb4_general_ci NOT NULL,
  `kelas` varchar(225) COLLATE utf8mb4_general_ci NOT NULL,
  `jurusan` varchar(225) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(225) COLLATE utf8mb4_general_ci NOT NULL,
  `jeniskelamin` varchar(23) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggallahir` date NOT NULL,
  `agama` varchar(29) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(225) COLLATE utf8mb4_general_ci NOT NULL,
  `no_telepon` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` blob,
  PRIMARY KEY (`idanggota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table dbperpus.tbanggota: ~2 rows (approximately)
REPLACE INTO `tbanggota` (`idanggota`, `nama`, `kelas`, `jurusan`, `alamat`, `jeniskelamin`, `tanggallahir`, `agama`, `email`, `no_telepon`, `foto`) VALUES
	('KDA001', 'septian irawan', 'KELAS 31', 'SISTEM INFROMASI', 'jl.yosudarso', 'LAKI LAKI', '2003-01-25', 'ISLAM', 'septianirawan95@gmail.com', '0895331327356', _binary 0x433a5c55736572735c6f635c4f6e6544726976655c50696374757265735c7365707469616e2e6a7067),
	('KDA002', 'anselma putri', 'KELAS 31', 'SISTEM INFROMASI', 'jl berdikari', 'PEREMPUAN', '2004-12-10', 'ISLAM', 'anselmaputri09@gmail.com', '0894463363', _binary 0x433a5c6a6176615c666f746f5c416e73656c204d6170757472692e6a7067);

-- Dumping structure for table dbperpus.tbbuku
CREATE TABLE IF NOT EXISTS `tbbuku` (
  `idbuku` varchar(50) NOT NULL DEFAULT '',
  `judul` varchar(225) NOT NULL,
  `pengarang` varchar(225) NOT NULL,
  `penerbit` varchar(225) NOT NULL,
  `jumlahhalaman` varchar(23) NOT NULL,
  `nomorrak` varchar(23) NOT NULL,
  `kategori` varchar(225) NOT NULL,
  `jumlah` varchar(25) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tanggalterbit` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`idbuku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dbperpus.tbbuku: ~51 rows (approximately)
REPLACE INTO `tbbuku` (`idbuku`, `judul`, `pengarang`, `penerbit`, `jumlahhalaman`, `nomorrak`, `kategori`, `jumlah`, `status`, `tanggalterbit`) VALUES
	('KDB001', 'Cinta dan Logika', 'Tere Liye', 'Gramedia', '280', 'C6', 'NOVEL', '0', 'KOSONG', '2023-11-09'),
	('KDB002', 'Sajak-sajak Kecil', 'Chairil Anwar', 'Balai Pustaka', '90', 'B3', 'PUISI', '5', 'TERSEDIA', '2023-10-01'),
	('KDB003', 'Komik Naruto Shippuden Vol. 1', 'Masashi Kishimoto', 'Shueisha', '228', 'A6', 'COMIK ', '5', 'TERSEDIA', '2023-11-10'),
	('KDB004', 'Naruto Vol. 1', 'Masashi Kishimoto', 'Shueisha', '278', 'A1', 'COMIK ', '4', 'TERSEDIA', '2023-01-02'),
	('KDB005', 'Sajak-sajak Rindu', 'Chairil Anwar', 'Balai Pustaka', '100', 'B5', 'PUISI', '5', 'TERSEDIA', '2023-11-11'),
	('KDB006', 'Pendidikan Karakter', 'Dr. H. Ahmad Syafii ', 'Mizan', '226', 'D5', 'BUKU AJAR', '0', 'TERSEDIA', '2023-11-12'),
	('KDB007', 'The Fault in Our Stars', 'John Green', 'Dutton', '300', 'C7', 'NOVEL', '4', 'TERSEDIA', '2023-11-13'),
	('KDB008', 'Komik Attack on Titan Vol. 2', 'Hajime Isayama', 'Kodansha', '256', 'A7', 'PILIH', '6', 'TERSEDIA', '2023-11-14'),
	('KDB009', 'Kumpulan Puisi', 'Sapardi Djoko Damono', 'Gramedia', '90', 'B6', 'PUISI', '5', 'TERSEDIA', '2023-11-15'),
	('KDB010', 'Bumi', 'Tere Liye', 'Gramedia', '400', 'C8', 'NOVEL', '5', 'TERSEDIA', '2023-11-16'),
	('KDB011', 'Komik Bleach Vol. 1', 'Tite Kubo', 'Shueisha', '200', 'A8', 'COMIK', '6', 'TERSEDIA', '2023-11-17'),
	('KDB012', 'Sajak-sajak Cinta', 'Sapardi Djoko Damono', 'Balai Pustaka', '110', 'B7', 'PUISI', '4', 'TERSEDIA', '2023-11-18'),
	('KDB013', 'Pendidikan Agama Islam', 'Dr. H. M. Amin', 'Erlangga', '250', 'D6', 'BUKU AJAR', '3', 'TERSEDIA', '2023-11-19'),
	('KDB014', 'The Alchemist', 'Paulo Coelho', 'HarperCollins', '208', 'C9', 'NOVEL', '4', 'TERSEDIA', '2023-11-20'),
	('KDB015', 'Dilan 1990', 'Pidi Baiq', 'Pastel Books', '300', 'C3', 'NOVEL', '5', 'TERSEDIA', '2023-11-01'),
	('KDB016', 'Komik My Hero Academia Vol. 1', 'Kohei Horikoshi', 'Shueisha', '180', 'A9', 'COMIK', '5', 'TERSEDIA', '2023-11-21'),
	('KDB017', 'Puisi Cinta', 'Sapardi Djoko Damono', 'Gramedia', '80', 'B1', 'PUISI', '3', 'TERSEDIA', '2023-02-01'),
	('KDB018', 'Kumpulan Puisi Cinta', 'Chairil Anwar', 'Balai Pustaka', '96', 'B8', 'PUISI', '5', 'TERSEDIA', '2023-11-22'),
	('KDB019', 'Biologi untuk SMA', 'Dr. Siti Aminah', 'Erlangga', '300', 'D7', 'BUKU AJAR', '2', 'TERSEDIA', '2023-11-23'),
	('KDB020', 'Pulang', 'Tere Liye', 'Gramedia', '350', 'C10', 'NOVEL', '4', 'TERSEDIA', '2023-11-24'),
	('KDB021', 'Komik Fairy Tail Vol. 1', 'Hiro Mashima', 'Kodansha', '220', 'A10', 'COMIK', '6', 'TERSEDIA', '2023-11-25'),
	('KDB022', 'Sajak-sajak Kehidupan', 'Sapardi Djoko Damono', 'Gramedia', '120', 'B9', 'PUISI', '4', 'TERSEDIA', '2023-11-26'),
	('KDB023', 'Fisika untuk SMA', 'Dr. Budi Santoso', 'Erlangga', '280', 'D8', 'BUKU AJAR', '3', 'TERSEDIA', '2023-11-27'),
	('KDB024', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '180', 'C11', 'NOVEL', '5', 'TERSEDIA', '2023-11-28'),
	('KDB025', 'Komik One Piece Vol. 2', 'Eiichiro Oda', 'Shueisha', '220', 'A11', 'COMIK', '7', 'TERSEDIA', '2023-11-29'),
	('KDB026', 'Kumpulan Puisi Terbaik', 'Chairil Anwar', 'Balai Pustaka', '100', 'B10', 'PUISI', '5', 'TERSEDIA', '2023-11-30'),
	('KDB027', 'Matematika untuk SMP', 'Dr. H. Ahmad', 'Erlangga', '250', 'D9', 'BUKU AJAR', '2', 'TERSEDIA', '2023-12-01'),
	('KDB028', 'Seni Berbicara', 'Rudy Gunawan', 'Erlangga', '150', 'D3', 'BUKU AJAR', '4', 'TERSEDIA', '2023-11-02'),
	('KDB029', 'Cinta dalam Sepotong Roti', 'Tere Liye', 'Gramedia', '300', 'C12', 'NOVEL', '4', 'TERSEDIA', '2023-12-02'),
	('KDB030', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '400', 'C1', 'NOVEL', '4', 'TERSEDIA', '2023-03-01'),
	('KDB031', 'Komik Naruto Shippuden Vol. 2', 'Masashi Kishimoto', 'Shueisha', '240', 'A12', 'COMIK', '6', 'TERSEDIA', '2023-12-03'),
	('KDB032', 'Sajak-sajak Rindu', 'Sapardi Djoko Damono', 'Gramedia', '110', 'B11', 'PUISI', '4', 'TERSEDIA', '2023-11-15'),
	('KDB033', 'Bahasa Inggris untuk SMP', 'Dr. Siti Aminah', 'Erlangga', '229', 'D10', 'BUKU AJAR', '3', 'TERSEDIA', '2023-12-05'),
	('KDB034', 'The Hunger Games', 'Suzanne Collins', 'Scholastic', '300', 'C13', 'NOVEL', '5', 'TERSEDIA', '2023-12-06'),
	('KDB035', 'Komik Attack on Titan Vol. 3', 'Hajime Isayama', 'Kodansha', '250', 'A13', 'COMIK', '7', 'TERSEDIA', '2023-12-07'),
	('KDB036', 'Kumpulan Puisi Cinta', 'Chairil Anwar', 'Balai Pustaka', '95', 'B12', 'PUISI', '5', 'TERSEDIA', '2023-12-08'),
	('KDB037', 'Pendidikan Kewarganegaraan', 'Dr. H. M. Amin', 'Erlangga', '280', 'D11', 'BUKU AJAR', '2', 'TERSEDIA', '2023-12-09'),
	('KDB038', 'The Fault in Our Stars', 'John Green', 'Dutton', '300', 'C14', 'NOVEL', '4', 'TERSEDIA', '2023-12-10'),
	('KDB039', 'Kisah Tanah Jawa', 'Pramoedya Ananta Toer', 'Lentera Hati', '350', 'C4', 'NOVEL', '3', 'TERSEDIA', '2023-11-03'),
	('KDB040', 'Matematika untuk SD', 'Budi Santoso', 'Erlangga', '250', 'D1', 'BUKU AJAR', '2', 'TERSEDIA', '2023-04-01'),
	('KDB041', 'Komik Detektif Conan Vol. 1', 'Gosho Aoyama', 'Shogakukan', '180', 'A4', 'COMIK', '6', 'TERSEDIA', '2023-11-04'),
	('KDB042', 'One Piece Vol. 1', 'Eiichiro Oda', 'Shueisha', '220', 'A2', 'COMIK', '6', 'TERSEDIA', '2023-05-01'),
	('KDB043', 'Hujan Bulan Juni', 'Sapardi Djoko Damono', 'Gramedia', '120', 'B4', 'PUISI', '4', 'TERSEDIA', '2023-11-05'),
	('KDB044', 'Aku Ingin Rindu', 'Taufiq Ismail', 'Gramedia', '101', 'B2', 'PUISI', '4', 'TERSEDIA', '2023-06-01'),
	('KDB045', 'Harry Potter', 'J.K. Rowling', 'Bloomsbury', '320', 'C5', 'NOVEL', '5', 'TERSEDIA', '2023-11-06'),
	('KDB046', 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Lentera Hati', '400', 'C2', 'NOVEL', '3', 'TERSEDIA', '2023-07-01'),
	('KDB047', 'Komik One Punch Man Vol. 1', 'ONE', 'Shueisha', '200', 'A5', 'COMIK', '7', 'TERSEDIA', '2023-11-07'),
	('KDB048', 'Fisika Dasar Vol 1', 'Prof. Dr. Agus Tri', 'Salam Cipta', '300', 'D2', 'BUKU AJAR', '3', 'TERSEDIA', '2023-05-23'),
	('KDB049', 'belajar html ', 'sandhika galih', 'wpu', '150', 'C4', 'BUKU AJAR', '23', 'TERSEDIA', '2024-12-03'),
	('KDB050', 'Buku Pintar Bahasa Inggris', 'Siti Aminah', 'Erlangga', '250', 'D4', 'BUKU AJAR', '2', 'TERSEDIA', '2023-11-08');

-- Dumping structure for table dbperpus.tbpeminjam
CREATE TABLE IF NOT EXISTS `tbpeminjam` (
  `kodepinjam` varchar(50) NOT NULL,
  `idanggota` varchar(8) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `buku` varchar(225) NOT NULL,
  `nomorrak` varchar(23) DEFAULT NULL,
  `mulaipinjam` date NOT NULL,
  `akhirpinjam` date NOT NULL,
  `lamapinjam` varchar(50) DEFAULT NULL,
  `harga` varchar(75) DEFAULT NULL,
  `denda` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`kodepinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dbperpus.tbpeminjam: ~2 rows (approximately)
REPLACE INTO `tbpeminjam` (`kodepinjam`, `idanggota`, `nama`, `buku`, `nomorrak`, `mulaipinjam`, `akhirpinjam`, `lamapinjam`, `harga`, `denda`) VALUES
	('KDP001', 'KDA003', 'Siti Lestari', 'Pendidikan Karakter', 'D5', '2024-11-19', '2024-11-27', '7 hari', 'gratis', 40000.00),
	('KDP002', 'KDA001', 'septian irawan', 'Pendidikan Karakter', 'D5', '2024-12-21', '2024-12-29', '7 hari', 'gratis', 0.00),
	('KDP003', 'KDA002', 'anselma putri', 'Pendidikan Karakter', 'D5', '2024-12-21', '2024-12-29', '7 hari', 'gratis', 0.00),
	('KDP004', 'KDA001', 'septian irawan', 'Komik Naruto Shippuden Vol. 1', 'A6', '2025-01-22', '2025-02-13', '21 hari', '35000', 0.00);

-- Dumping structure for table dbperpus.tbpengembalian
CREATE TABLE IF NOT EXISTS `tbpengembalian` (
  `idpengembalian` int NOT NULL AUTO_INCREMENT,
  `kodepinjam` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `idanggota` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `buku` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nomorrak` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mulaipinjam` date NOT NULL,
  `akhirpinjam` date NOT NULL,
  `lamapinjam` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `harga` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `denda` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idpengembalian`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dbperpus.tbpengembalian: ~1 rows (approximately)
REPLACE INTO `tbpengembalian` (`idpengembalian`, `kodepinjam`, `idanggota`, `nama`, `buku`, `nomorrak`, `mulaipinjam`, `akhirpinjam`, `lamapinjam`, `harga`, `denda`) VALUES
	(1, 'KDA002', 'KDA001', 'septian irawan', 'Naruto Vol. 1', 'A1', '2024-12-16', '2024-12-24', '7 hari', 'gratis', 0.00),
	(2, 'KDA002', 'KDA002', 'anselma putri', 'Naruto Vol. 1', 'A1', '2024-12-19', '2024-12-28', '8 hari', '2500', 0.00),
	(3, 'KDA002', 'KDA001', 'septian irawan', 'Sajak-sajak Rindu', 'B5', '2024-12-21', '2024-12-31', '9 hari', '5000', 0.00);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
