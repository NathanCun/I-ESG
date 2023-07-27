-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2023 pada 04.28
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_esg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_histori_proyek`
--

CREATE TABLE `db_histori_proyek` (
  `id` int(11) NOT NULL,
  `id_proyek` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dana`
--

CREATE TABLE `tb_dana` (
  `id` int(11) NOT NULL,
  `id_proyek` int(20) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `waktu` text NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `jumlah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_dana`
--

INSERT INTO `tb_dana` (`id`, `id_proyek`, `tanggal`, `waktu`, `rekening`, `jumlah`) VALUES
(1, 29, '2023-07-25', '13:11:56', 'bca 24205568', '200'),
(2, 31, '2023-07-25', '13:31:34', 'BCA 222222222 ', '1000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_donasi`
--

CREATE TABLE `tb_donasi` (
  `id` int(11) NOT NULL,
  `id_proyek` int(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last-name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomor_telepon` varchar(20) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `jumlah_donasi` text NOT NULL,
  `pembayaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_donasi`
--

INSERT INTO `tb_donasi` (`id`, `id_proyek`, `tanggal`, `waktu`, `first_name`, `last-name`, `email`, `nomor_telepon`, `alamat`, `keterangan`, `jumlah_donasi`, `pembayaran`) VALUES
(2, 8, '2023-07-07', '', 'Jiro ', 'Donovan', 'jiro@gmail.com', '092188999299', 'Jl Cemara No 19', '', '100000', ''),
(3, 8, '2023-07-07', '', 'Jiro', 'Donovan', 'jiro@gmail.com', '082163697808', 'Jl Cemara No 19', 'Sudah ', '50000', ''),
(5, 9, '2023-07-07', '', 'Jiro', 'donovan', 'jiro@gmail.com', '082163697808', '', '', '100000', ''),
(7, 2023, '19:53:42', '', 'Nathan', 'Donovan', 'nathandonovan@gmail.com', '082165624559', 'Jl sutomo, no 52e', '', '1000000', ''),
(8, 2023, '20:21:33', '', 'Nathan', 'Donovan', 'nathandonovan@gmail.com', '082165624559', 'Jl sutomo, no 52e', '', '1000000', ''),
(9, 27, '2023-07-25', '17:59:47', 'NATHAN', 'NATHAN', 'nathantjendra67@gmail.com', '+6282165264558', 'jl m yakub\r\nkomplek serdang residence b 8', '', '', ''),
(10, 29, '2023-07-25', '18:00:35', '', '', '', '', '', '', '200', ''),
(11, 27, '2023-07-25', '18:13:49', '', '', '', '', '', '', '0', ''),
(12, 31, '2023-07-25', '18:29:41', 'nathan', 'n', 'nathantjendra67@gmail.com', '082165624559', 'jl m yakub\r\nkomplek serdang residence b 8', '', '1000000', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_faq`
--

CREATE TABLE `tb_faq` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(200) NOT NULL,
  `jawaban` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_faq`
--

INSERT INTO `tb_faq` (`id`, `pertanyaan`, `jawaban`) VALUES
(1, 'Apa itu ESG', 'SG adalah singkatan dari Environmental, Social, and Governance. ESG merujuk pada faktor-faktor nonkeuangan yang digunakan untuk mengevaluasi kinerja dan dampak suatu perusahaan atau investasi. Penting untuk memperhatikan faktor-faktor ESG karena ini memungkinkan kita untuk mengukur dan mengelola dampak sosial, lingkungan, dan tata kelola dari aktivitas kita. Dengan memperhatikan ESG, kita dapat berkontribusi pada pembangunan yang berkelanjutan dan bertanggung jawab.'),
(2, 'Apa itu kalkulator jejak karbon dan bagaimana cara menggunakannya?', 'Kalkulator jejak karbon adalah alat yang digunakan untuk mengestimasi jumlah emisi gas rumah kaca yang dihasilkan oleh suatu aktivitas atau entitas. Pengguna dapat memasukkan data terkait konsumsi energi, transportasi, dan kegiatan lainnya untuk menghitung jejak karbon mereka. Pengguna dapat mengikuti petunjuk yang disediakan oleh kalkulator dan memasukkan data yang relevan untuk mendapatkan hasil perhitungan jejak karbon mereka.'),
(16, 'Apa manfaat menghitung jejak karbon?', 'Manfaat menghitung jejak karbon adalah...');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id` int(11) NOT NULL,
  `nomor_telepon` varchar(30) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kabupaten_kota` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_profil`
--

INSERT INTO `tb_profil` (`id`, `nomor_telepon`, `alamat_email`, `password`, `lokasi`, `provinsi`, `kabupaten_kota`, `kode_pos`, `logo`) VALUES
(0, '082165624559', 'indonesia-esg@gmail.com', 'Admin', 'Medan', 'Sumatera Utara', 'Medan', '20233', 'abc');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_projek`
--

CREATE TABLE `tb_projek` (
  `id` int(11) NOT NULL,
  `nama_proyek` varchar(100) NOT NULL,
  `bidang_industri` varchar(50) NOT NULL,
  `deskripsi_proyek` varchar(1000) NOT NULL,
  `rencana_proyek` varchar(100) NOT NULL,
  `perizinan_proyek` varchar(100) NOT NULL,
  `foto_utama_proyek` varchar(100) NOT NULL,
  `lingkungan1` varchar(100) NOT NULL,
  `lingkungan2` varchar(100) NOT NULL,
  `lingkungan3` varchar(100) NOT NULL,
  `sosial1` varchar(100) NOT NULL,
  `sosial2` varchar(100) NOT NULL,
  `sosial3` varchar(100) NOT NULL,
  `tata_kelola1` varchar(100) NOT NULL,
  `tata_kelola2` varchar(100) NOT NULL,
  `tata_kelola3` varchar(100) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kabupaten_kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `alamat_lengkap` varchar(300) NOT NULL,
  `nama_pengurus` varchar(50) NOT NULL,
  `no_telepon_pengurus` varchar(20) NOT NULL,
  `ktp_pengurus` varchar(50) NOT NULL,
  `target_donasi` varchar(10) NOT NULL,
  `rupiah_emisi` varchar(10) NOT NULL,
  `bukti_perhitungan` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_projek`
--

INSERT INTO `tb_projek` (`id`, `nama_proyek`, `bidang_industri`, `deskripsi_proyek`, `rencana_proyek`, `perizinan_proyek`, `foto_utama_proyek`, `lingkungan1`, `lingkungan2`, `lingkungan3`, `sosial1`, `sosial2`, `sosial3`, `tata_kelola1`, `tata_kelola2`, `tata_kelola3`, `provinsi`, `kabupaten_kota`, `kecamatan`, `kelurahan`, `alamat_lengkap`, `nama_pengurus`, `no_telepon_pengurus`, `ktp_pengurus`, `target_donasi`, `rupiah_emisi`, `bukti_perhitungan`, `status`, `id_user`) VALUES
(27, 'Proyek Ekosistem Hijau oleh Vincent Laurence', 'option3', 'qwrqfas', 'wdqas', 'sadasdsa', '64ba2a704da94.png', 'Pendidikan', '', '', 'Pendidikan', 'Kesehatan', '', 'Partisipasi Publik', '', '', 'Sumatera utara', 'Sumatera utara', 'Sumatera utara', 'Sumatera utara', 'sdasdsad', 'sdasdsa', '123213123', '64ba2a704da95.png', '23123', '23123123', '21213123', 'disetujui', 66),
(29, 'Proyek Ekosistem Hijauscscsacc oleh Babi', 'Lingkungan dan Konservasi', '', 'link abc', 'link bcd', '64bb63cd13a38.png', 'Pekerjaan', '', '', 'Pekerjaan', '', '', 'Transparansi', '', '', 'Sumatera utara', 'Sumatera utara', 'Sumatera utara', 'Sumatera utara', 'jl m yakub komplek serdang residence no b 8', 'scsc', '2431514559', '64bb63cd13fb2.png', '1333241', '1333241', '', 'disetujui', 70),
(30, 'Proyek Ekosistem Hijau oleh Vincent Laurence', 'Energi Terbarukan', 'Nathanscascascsacascsac', 'link', 'link', '64bf7bae85792.png', 'Kesehatan', 'Kesehatan', '', 'Kesehatan', '', '', 'Transparansi', 'Anti Korupsi', '', 'Sumatera utara', 'Sumatera utara', 'Sumatera utara', 'Sumatera utara', 'jl m yakub', 'Nathan', '082165624559', '64bf7bae85794.png', '1000000000', '50000', 'link', 'disetujui', 79),
(31, 'Proyek Ekosistem Hijau oleh Vincent Laurence', 'Efisiensi Energi', 'njknjnnjnjnjnjnjnjnjnjn', 'link', 'link', '64bfb14a703b3.png', 'Kesehatan', '', '', 'Kesehatan', 'Pendidikan', '', 'Transparansi', 'Akuntabilitas', 'Partisipasi Publik', 'Sumatera utara', 'Sumatera utara', 'Sumatera utara', 'Sumatera utara', 'Jl Medan', 'nathan', '090990909', '64bfb14a703b6.png', '10000000', '50000', 'link', 'disetujui', 81);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `namaPerusahaan` varchar(100) NOT NULL,
  `namaDepan` varchar(100) NOT NULL,
  `namaTengah` varchar(100) NOT NULL,
  `namaBekalang` varchar(100) NOT NULL,
  `emailPerusahaan` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `otp` varchar(32) NOT NULL,
  `verifikasi` varchar(1) NOT NULL,
  `level` int(1) NOT NULL,
  `profileimg` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `namaPerusahaan`, `namaDepan`, `namaTengah`, `namaBekalang`, `emailPerusahaan`, `email`, `password`, `otp`, `verifikasi`, `level`, `profileimg`) VALUES
(66, 'Prime One School', 'Nathan', '', 'Nathan', 'nathantjendra@gmail.com', '', '220466675e31b9d20c051d5e57974150', '643274', 'Y', 0, ''),
(74, 'Prime One School', '', '', '', '', '', '', '', '', 0, ''),
(75, 'Prime One School', 'Nathan', '', 'Nathan', '', '', '', '', '', 0, ''),
(79, 'Prime One School', 'NATHAN', '', 'NATHAN', 'nathantjendra67@gmail.com', '', '6c23f67f42297ed50c6e6da71b160304', 'bf8896ee1cac3f5d0bf340a1f7f0153b', 'Y', 1, ''),
(81, 'UPH MEDAN', 'NATHAN', '', 'NATHAN', 'nathanjun2003@gmail.com', 'nathantjendra76@gmail.com', '25d55ad283aa400af464c76d713c07ad', '470891', 'Y', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_histori_proyek`
--
ALTER TABLE `db_histori_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_dana`
--
ALTER TABLE `tb_dana`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_donasi`
--
ALTER TABLE `tb_donasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_faq`
--
ALTER TABLE `tb_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_projek`
--
ALTER TABLE `tb_projek`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_dana`
--
ALTER TABLE `tb_dana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_donasi`
--
ALTER TABLE `tb_donasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_faq`
--
ALTER TABLE `tb_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_projek`
--
ALTER TABLE `tb_projek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
