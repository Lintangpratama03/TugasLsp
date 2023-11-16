/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.17-MariaDB : Database - lsp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `app_menu` */

DROP TABLE IF EXISTS `app_menu`;

CREATE TABLE `app_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_date` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4;

/*Data for the table `app_menu` */

insert  into `app_menu`(`id`,`id_parent`,`name`,`description`,`icon`,`link`,`sort`,`type`,`is_admin`,`created_date`,`created_by`,`updated_date`,`updated_by`,`deleted_date`,`deleted_by`,`is_deleted`) values 
(1,1,'Arsip','Menu untuk dashboard admin','nav-icon fa-solid fa-archive fa-lg\r\n','/arsip',1,1,1,'2023-11-03 12:16:37',NULL,NULL,NULL,NULL,NULL,0),
(2,2,'Kategori Surat','Menu Kategori Arsip','nav-icon fa-solid fa-list-ul fa-lg\r\n','/kategori',2,1,1,'2023-11-14 15:33:51',NULL,NULL,NULL,NULL,NULL,0),
(3,3,'About','Menu About','nav-icon fa-solid fa-user fa-lg\r\n','/about',3,1,1,'2023-11-14 15:36:35',NULL,NULL,NULL,NULL,NULL,0);

/*Table structure for table `arsip` */

DROP TABLE IF EXISTS `arsip`;

CREATE TABLE `arsip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(20) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `waktu` timestamp NULL DEFAULT current_timestamp(),
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `arsip` */

insert  into `arsip`(`id`,`no_surat`,`id_kategori`,`judul`,`waktu`,`file_name`) values 
(21,'2023/PENG/15/Surat',1,'Pengumuman Beasiswa','2023-11-15 09:36:15','PDF_-2023-11-15_03-55-40.pdf'),
(22,'UNDANGAN/2023/15/Sur',2,'Surat Undangan Ketua Hima','2023-11-15 10:01:13','PDF_-2023-11-15_04-01-30.pdf'),
(23,'Peng/23/15/',1,'Pengumuman beasiswa','2023-11-15 10:02:18','PDF_-2023-11-15_04-02-18.pdf');

/*Table structure for table `kategori_arsip` */

DROP TABLE IF EXISTS `kategori_arsip`;

CREATE TABLE `kategori_arsip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kategori_arsip` */

insert  into `kategori_arsip`(`id`,`nama_kategori`,`keterangan`) values 
(1,'Pengumuman','Kategori ini menampilkan surat yang berkaitan'),
(2,'Undangan','Undangan Rapat, Koordinasi dll');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
