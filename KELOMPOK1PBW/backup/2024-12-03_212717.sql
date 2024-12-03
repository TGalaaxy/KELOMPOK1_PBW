DROP TABLE tbl_disposisi;

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;




DROP TABLE tbl_instansi;

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO tbl_instansi VALUES("1","Dinas Pendidikan Pemuda Dan Olahraga","ThorCademic","Terakreditasi A","Depok, Jawa Barat","MOCHAMAD DAFFA THORIQ","-","https://www.instagram.com/mochdaffathoriq/","DAFFATHORIQ@gmail.com","logo.png","1");



DROP TABLE tbl_klasifikasi;

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO tbl_klasifikasi VALUES("1","1","Surat 1","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dolor ipsum, consectetur nec mauris et, varius eleifend ipsum. Cras ut dui consequat, faucibus eros non, tristique mi. Donec leo urna, semper id elementum nec, ullamcorper sit amet justo. Quisque quis libero feugiat, sagittis odio et, rhoncus lectus","1");
INSERT INTO tbl_klasifikasi VALUES("2","22","Surat 2","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dolor ipsum, consectetur nec mauris et, varius eleifend ipsum. Cras ut dui consequat, faucibus eros non, tristique mi. Donec leo urna, semper id elementum nec, ullamcorper sit amet justo. Quisque quis libero feugiat, sagittis odio et, rhoncus lectus","1");



DROP TABLE tbl_sett;

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO tbl_sett VALUES("1","10","10","10","1");



DROP TABLE tbl_surat_keluar;

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO tbl_surat_keluar VALUES("1","1","Alibaba","231NK/SAAFS/21","Test JUga","A","2024-10-28","2024-10-28","7385-Reymondo Saputra S_11122246_Dekstop_F4.pdf","TEST INI","1");



DROP TABLE tbl_surat_masuk;

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO tbl_surat_masuk VALUES("1","1","231234sdf2134214","Dispen","Test Ombak","E","C2","2024-10-28","2024-10-28","4399-3KA01_tgs1_11122246_Reymondo Saputra S.pdf","Testo","1");
INSERT INTO tbl_surat_masuk VALUES("2","2","234/HJKHJ/67567","DEPOK","Integer ac rutrum leo. Donec venenatis purus et diam imperdiet gravida. Suspendisse id rhoncus diam. Nulla vel ex ullamcorper, aliquam odio eget, luctus ante","B","C1","2024-10-11","2024-10-28","1749-1136-Article Text-5841-1-10-20230706.pdf","ntum cursus. Fusce ultrices iaculis vestibulum. Nam bibendum dui sit amet volutpat convallis. Nulla dictum sagittis justo, nec cursus lorem ultricies non. Fusce sit amet urna vel libero accumsan pretium sit amet a velit. Sed eu ante sit amet nisl max","1");
INSERT INTO tbl_surat_masuk VALUES("3","3","234/HJKHJ/67568","DEPOK","am bibendum dui sit amet volutpat convallis. Nulla dictum sagittis justo, nec cursus lorem ultricies non. ","2","2","2024-10-22","2024-10-28","","ntum cursus. Fusce ultrices iaculis vestibulum. N","2");



DROP TABLE tbl_user;

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO tbl_user VALUES("1","Admin","0192023a7bbd73250516f069df18b500","Administrator","1001","1");
INSERT INTO tbl_user VALUES("2","toriq","f7d936f39fce7a5344cf8e2619b2f354","Thoriq","111234242","3");


