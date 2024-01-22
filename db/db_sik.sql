-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2024 pada 11.54
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id_mapel`, `no_urut`, `nm_mapel`, `kd_jurusan`) VALUES
(38, 1, 'Bahasa Indonesia', 'JR03'),
(39, 2, 'Ibadah Akhlak', 'JR03'),
(40, 3, 'Matematika', 'JR03'),
(41, 4, 'PJOK', 'JR03'),
(42, 5, 'Bahasa Sunda', 'JR03'),
(43, 6, 'Bahasa Arab', 'JR03'),
(44, 7, 'Sejarah', 'JR03'),
(45, 8, 'Pendidikan Agama Islam', 'JR03'),
(46, 9, 'Kewirausahaan', 'JR03'),
(47, 10, 'Pendidikan Kewarganegaraan', 'JR03'),
(48, 11, 'Matematika Perminatan', 'JR03'),
(49, 12, 'Bahasa Inggris', 'JR03'),
(50, 13, 'Fisika', 'JR01'),
(51, 14, 'Biologi', 'JR01'),
(52, 15, 'Kimia', 'JR01'),
(53, 16, 'Ekonomi', 'JR02'),
(54, 17, 'Geografi', 'JR02'),
(55, 18, 'Sosiologi', 'JR02'),
(56, 19, 'Sejarah Minat', 'JR02');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_profil`
--

INSERT INTO `tbl_profil` (`id_profil`, `nm_sekolah`, `nm_aplikasi`, `tahun`, `tgl_pengumuman`) VALUES
(1, 'SMA MATHLA\'UL ANWAR', 'E-SIK', '2024', '2024-01-08 12:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `no` int(200) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`no`, `nisn`, `name`, `addresse`, `tgllhr`, `kelas`, `ket`, `sekolah`, `kd_jurusan`, `nilai1`, `nilai2`, `nilai3`, `nilai4`, `nilai5`, `nilai6`, `nilai7`, `nilai8`, `nilai9`, `nilai10`, `nilai11`, `nilai12`, `nilai13`, `nilai14`, `nilai15`, `nilai16`, `nilai17`, `nilai18`, `nilai19`, `nilai20`, `nilai21`, `nilai22`, `nilai23`, `nilai24`, `nilai25`, `nilai26`) VALUES
(1, '21110355', 'Bagas Arya Nugraha', 'Bandung', '16/04/2001', 'XII IPA ', 'LULUS', 'SMA MATHLAUL ANWAR MARGAHAYU', 'JR03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '21110856', 'Rendi Sutendi', 'Bandung', '16/04/2002', 'XII IPA ', 'LULUS', 'SMA MATHLAUL ANWAR', 'JR03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '21110811', 'M Fadlan ', 'Bandung', '35/02/2015', 'XII IPA ', 'LULUS', 'SMA MATHLAUL ANWAR', 'JR01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `pass`, `nama`) VALUES
(1, 'rendi', '40431e62a60b9cdcd6a76a25b2c5034b', 'RENDI SUTENDI'),
(43, 'bagasan', '6456ca1bd63677b1d764c8d351bd93e0', 'Bagas Arya Nugraha');

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
  ADD PRIMARY KEY (`no`);

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
  MODIFY `id_mapel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `id_profil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `no` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
