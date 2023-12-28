-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Agu 2021 pada 03.34
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int(3) NOT NULL,
  `kd_jurusan` varchar(10) NOT NULL,
  `nm_jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `kd_jurusan`, `nm_jurusan`) VALUES
(1, 'JR01', 'IPA'),
(2, 'JR02', 'IPS'),
(3, 'JR03', 'UMUM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id_mapel` int(3) NOT NULL,
  `no_urut` int(3) DEFAULT NULL,
  `nm_mapel` varchar(255) DEFAULT NULL,
  `kd_jurusan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id_mapel`, `no_urut`, `nm_mapel`, `kd_jurusan`) VALUES
(8, 1, 'Al-Qur\'an-Hadis', 'JR03'),
(9, 2, 'Aqidah-Akhlak', 'JR03'),
(10, 3, 'Fikih', 'JR03'),
(11, 4, 'Sejarah Kebudayaan Islam', 'JR03'),
(12, 15, 'Fisika', 'JR01'),
(13, 16, 'Biologi', 'JR01'),
(14, 17, 'Kimia', 'JR01'),
(15, 19, 'Ekonomi', 'JR02'),
(16, 20, 'Geografi', 'JR02'),
(17, 21, 'Sejarah', 'JR02'),
(18, 18, 'Matematika', 'JR01'),
(19, 22, 'Sosiologi', 'JR02'),
(20, 5, 'Pendidikan Pancasila dan Kewarganegaraan', 'JR03'),
(21, 6, 'Bahasa Indonesia', 'JR03'),
(22, 7, 'Bahasa Arab', 'JR03'),
(23, 8, 'Matematika', 'JR03'),
(24, 9, 'Sejarah Indonesia', 'JR03'),
(25, 10, 'Bahasa Inggris', 'JR03'),
(26, 11, 'Seni Budaya', 'JR03'),
(27, 12, 'Pendidikan Jasmani, Olahraga, dan Kesehatan', 'JR03'),
(28, 13, 'Prakarya dan Kewirausahaan', 'JR03'),
(29, 14, 'Mulok', 'JR03'),
(30, 23, 'Informatika', 'JR01'),
(31, 24, 'Bahasa dan Sastra Inggris', 'JR01'),
(32, 25, 'Informatika', 'JR02'),
(33, 26, 'Biologi', 'JR02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_profil`
--

CREATE TABLE `tbl_profil` (
  `id_profil` int(10) NOT NULL,
  `nm_sekolah` varchar(200) NOT NULL,
  `nm_aplikasi` varchar(200) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tgl_pengumuman` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_profil`
--

INSERT INTO `tbl_profil` (`id_profil`, `nm_sekolah`, `nm_aplikasi`, `tahun`, `tgl_pengumuman`) VALUES
(1, 'Madrasah Aliyah (MA) Negeri 1 Andalusia', 'E-MANDANET', 2021, '2021-08-12 12:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `no` varchar(200) NOT NULL,
  `nisn` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `addresse` varchar(200) NOT NULL,
  `tgllhr` varchar(200) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `ket` varchar(200) NOT NULL,
  `sekolah` varchar(200) NOT NULL,
  `kd_jurusan` varchar(10) NOT NULL,
  `nilai1` varchar(200) DEFAULT NULL,
  `nilai2` varchar(200) DEFAULT NULL,
  `nilai3` varchar(200) DEFAULT NULL,
  `nilai4` varchar(200) DEFAULT NULL,
  `nilai5` varchar(200) DEFAULT NULL,
  `nilai6` varchar(200) DEFAULT NULL,
  `nilai7` varchar(200) DEFAULT NULL,
  `nilai8` varchar(200) DEFAULT NULL,
  `nilai9` varchar(200) DEFAULT NULL,
  `nilai10` varchar(200) DEFAULT NULL,
  `nilai11` varchar(200) DEFAULT NULL,
  `nilai12` varchar(200) DEFAULT NULL,
  `nilai13` varchar(200) DEFAULT NULL,
  `nilai14` varchar(200) DEFAULT NULL,
  `nilai15` varchar(200) DEFAULT NULL,
  `nilai16` varchar(200) DEFAULT NULL,
  `nilai17` varchar(200) DEFAULT NULL,
  `nilai18` varchar(200) DEFAULT NULL,
  `nilai19` varchar(200) DEFAULT NULL,
  `nilai20` varchar(200) DEFAULT NULL,
  `nilai21` varchar(200) DEFAULT NULL,
  `nilai22` varchar(200) DEFAULT NULL,
  `nilai23` varchar(200) DEFAULT NULL,
  `nilai24` varchar(200) DEFAULT NULL,
  `nilai25` varchar(200) DEFAULT NULL,
  `nilai26` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`no`, `nisn`, `name`, `addresse`, `tgllhr`, `kelas`, `ket`, `sekolah`, `kd_jurusan`, `nilai1`, `nilai2`, `nilai3`, `nilai4`, `nilai5`, `nilai6`, `nilai7`, `nilai8`, `nilai9`, `nilai10`, `nilai11`, `nilai12`, `nilai13`, `nilai14`, `nilai15`, `nilai16`, `nilai17`, `nilai18`, `nilai19`, `nilai20`, `nilai21`, `nilai22`, `nilai23`, `nilai24`, `nilai25`, `nilai26`) VALUES
('', '1111111190', 'ARIF RAHMAN HAKIM', 'SITUBONDO', '01/01/1990', 'XII IPA 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR01', '10', '20', '30', '40', '50', '60', '70', '80', '90', '100', '11', '12', '13', '14', '15', '16', '17', '18', '', '', '', '', '23', '24', '', ''),
('1', '1111111111', 'DENI KURNIAWAN', 'JAKARTA', '01/01/2001', 'XII IPA 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR01', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('10', '1111111120', 'DWI SEPTI WULAN A', 'JEPARA', '01/01/2010', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('11', '1111111121', 'EKA RIZQI APRILIA', 'JAKARTA', '01/01/2011', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('12', '1111111122', 'FEBRINA SOLKIA WARDANI', 'JEPARA', '01/01/2012', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('13', '1111111123', 'ISMAIL BAKRIN', 'JAKARTA', '01/01/2013', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('14', '1111111124', 'MIRANDA HIDAYAT', 'JEPARA', '01/01/2014', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('15', '1111111125', 'MOHAMMAD YERI ARIF H', 'JAKARTA', '01/01/2015', 'XII IPA 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR01', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('16', '1111111126', 'NADIA AULIA SARI', 'JEPARA', '01/01/2016', 'XII IPA 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR01', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('17', '1111111127', 'NANANG QOSIM', 'JAKARTA', '01/01/2017', 'XII IPA 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR01', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('18', '1111111128', 'RATNA?PUSPITA SARI', 'JEPARA', '01/01/2018', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('19', '1111111129', 'SITI ANDARUNI', 'JAKARTA', '01/01/2019', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('2', '1111111112', 'AMRIZAL NUR SHOLIHIN', 'JEPARA', '01/01/2002', 'XII IPA 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR01', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('20', '1111111130', 'SITI FATIMATUS ZAHRO', 'JEPARA', '01/01/2020', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('4', '1111111114', 'AHMAD IRFANI', 'JEPARA', '01/01/2004', 'XII IPA 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR01', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('5', '1111111115', 'AHMAD SYAIKHUL FURQON', 'JAKARTA', '01/01/2005', 'XII IPA 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR01', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('6', '1111111116', 'ALVIAN SYAMSUL MUKHLISIN', 'JEPARA', '01/01/2006', 'XII IPA 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR01', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('7', '1111111117', 'AN SURYADI', 'JAKARTA', '01/01/2007', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('8', '1111111118', 'ANANDA IMELIA PUTRI', 'JEPARA', '01/01/2008', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('9', '1111111119', 'DEDY IRAWAN', 'JAKARTA', '01/01/2009', 'XII IPS 1', 'LULUS', 'MAN 2 SITUBONDO', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `pass`, `nama`) VALUES
(39, 'admin', '0192023a7bbd73250516f069df18b500', 'Deni Kurniawan'),
(41, 'user@user.com', '88b87698be0bc461f3cacf1f080929d5', 'Arif Rahman Hakim');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `tbl_profil`
--
ALTER TABLE `tbl_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no` (`no`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_jurusan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id_mapel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `id_profil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
