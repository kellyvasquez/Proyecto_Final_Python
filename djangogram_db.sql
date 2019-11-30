-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.8-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para djangogram
CREATE DATABASE IF NOT EXISTS `djangogram` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `djangogram`;

-- Volcando estructura para tabla djangogram.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.auth_permission: ~44 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
REPLACE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add user', 7, 'add_user'),
	(26, 'Can change user', 7, 'change_user'),
	(27, 'Can delete user', 7, 'delete_user'),
	(28, 'Can view user', 7, 'view_user'),
	(29, 'Can add post', 8, 'add_post'),
	(30, 'Can change post', 8, 'change_post'),
	(31, 'Can delete post', 8, 'delete_post'),
	(32, 'Can view post', 8, 'view_post'),
	(33, 'Can add like', 9, 'add_like'),
	(34, 'Can change like', 9, 'change_like'),
	(35, 'Can delete like', 9, 'delete_like'),
	(36, 'Can view like', 9, 'view_like'),
	(37, 'Can add follower', 10, 'add_follower'),
	(38, 'Can change follower', 10, 'change_follower'),
	(39, 'Can delete follower', 10, 'delete_follower'),
	(40, 'Can view follower', 10, 'view_follower'),
	(41, 'Can add commentary', 11, 'add_commentary'),
	(42, 'Can change commentary', 11, 'change_commentary'),
	(43, 'Can delete commentary', 11, 'delete_commentary'),
	(44, 'Can view commentary', 11, 'view_commentary');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.auth_user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.auth_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.django_admin_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.django_content_type: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
REPLACE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session'),
	(11, 'stories', 'commentary'),
	(10, 'stories', 'follower'),
	(9, 'stories', 'like'),
	(8, 'stories', 'post'),
	(7, 'users', 'user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.django_migrations: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
REPLACE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2019-11-29 22:49:55.328192'),
	(2, 'auth', '0001_initial', '2019-11-29 22:49:56.870525'),
	(3, 'admin', '0001_initial', '2019-11-29 22:50:03.467077'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2019-11-29 22:50:05.138843'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-11-29 22:50:05.216970'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2019-11-29 22:50:05.920029'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2019-11-29 22:50:06.623093'),
	(8, 'auth', '0003_alter_user_email_max_length', '2019-11-29 22:50:07.294926'),
	(9, 'auth', '0004_alter_user_username_opts', '2019-11-29 22:50:07.326174'),
	(10, 'auth', '0005_alter_user_last_login_null', '2019-11-29 22:50:08.169872'),
	(11, 'auth', '0006_require_contenttypes_0002', '2019-11-29 22:50:08.201168'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2019-11-29 22:50:08.279263'),
	(13, 'auth', '0008_alter_user_username_max_length', '2019-11-29 22:50:08.435478'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2019-11-29 22:50:08.591719'),
	(15, 'auth', '0010_alter_group_name_max_length', '2019-11-29 22:50:09.451038'),
	(16, 'auth', '0011_update_proxy_permissions', '2019-11-29 22:50:09.513549'),
	(17, 'sessions', '0001_initial', '2019-11-29 22:50:09.794781'),
	(18, 'users', '0001_initial', '2019-11-29 22:50:10.513479'),
	(19, 'users', '0002_remove_user_biografia', '2019-11-29 22:50:10.685342'),
	(20, 'stories', '0001_initial', '2019-11-29 22:50:11.294674'),
	(21, 'stories', '0002_auto_20191126_2226', '2019-11-29 22:50:13.747603'),
	(22, 'stories', '0003_auto_20191126_2227', '2019-11-29 22:50:14.122566'),
	(23, 'stories', '0004_like_post', '2019-11-29 22:50:14.736190'),
	(24, 'stories', '0005_commentary_follower', '2019-11-29 22:50:18.110957'),
	(25, 'stories', '0006_post_tipo', '2019-11-29 22:50:21.708612'),
	(26, 'users', '0003_auto_20191129_1749', '2019-11-29 22:50:21.786705');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.django_session: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
REPLACE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('tx1xtrgu3cxe92ptmlpp2iw969piqg5x', 'YTA3NDZiMWFjMDdmYmE4ZDQ3NGY0YmViZTlhYmQ4MThkMGE2ZDg5Zjp7ImxvZ2luIjoxLCJ1c2VyX2lkIjoicGVwaXRvIiwidXNlciI6InBlcGl0byJ9', '2019-12-14 01:04:28.210129');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.stories_commentary
CREATE TABLE IF NOT EXISTS `stories_commentary` (
  `commentary_id` int(11) NOT NULL AUTO_INCREMENT,
  `commentary` varchar(255) NOT NULL,
  `post_id_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  PRIMARY KEY (`commentary_id`),
  KEY `stories_commentary_post_id_id_40c8e667_fk_stories_post_post_id` (`post_id_id`),
  KEY `stories_commentary_user_id_a0c6ab25_fk_users_user_user` (`user_id`),
  CONSTRAINT `stories_commentary_post_id_id_40c8e667_fk_stories_post_post_id` FOREIGN KEY (`post_id_id`) REFERENCES `stories_post` (`post_id`),
  CONSTRAINT `stories_commentary_user_id_a0c6ab25_fk_users_user_user` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.stories_commentary: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `stories_commentary` DISABLE KEYS */;
REPLACE INTO `stories_commentary` (`commentary_id`, `commentary`, `post_id_id`, `user_id`) VALUES
	(2, 'Love!', 2, 'kelly'),
	(3, 'Hermoso', 2, 'kelly');
/*!40000 ALTER TABLE `stories_commentary` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.stories_follower
CREATE TABLE IF NOT EXISTS `stories_follower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follower_user_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stories_follower_follower_user_id_84d61fee_fk_users_user_user` (`follower_user_id`),
  KEY `stories_follower_user_id_421df086_fk_users_user_user` (`user_id`),
  CONSTRAINT `stories_follower_follower_user_id_84d61fee_fk_users_user_user` FOREIGN KEY (`follower_user_id`) REFERENCES `users_user` (`user`),
  CONSTRAINT `stories_follower_user_id_421df086_fk_users_user_user` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.stories_follower: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `stories_follower` DISABLE KEYS */;
REPLACE INTO `stories_follower` (`id`, `follower_user_id`, `user_id`) VALUES
	(1, 'luis', 'kelly'),
	(3, 'kelly', 'luis'),
	(5, 'pepito', 'kelly'),
	(6, 'pepito', 'luis');
/*!40000 ALTER TABLE `stories_follower` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.stories_like
CREATE TABLE IF NOT EXISTS `stories_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stories_like_post_id_id_dcdc542b_fk_stories_post_post_id` (`post_id_id`),
  KEY `stories_like_user_id_b2725011_fk_users_user_user` (`user_id`),
  CONSTRAINT `stories_like_post_id_id_dcdc542b_fk_stories_post_post_id` FOREIGN KEY (`post_id_id`) REFERENCES `stories_post` (`post_id`),
  CONSTRAINT `stories_like_user_id_b2725011_fk_users_user_user` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.stories_like: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `stories_like` DISABLE KEYS */;
REPLACE INTO `stories_like` (`id`, `post_id_id`, `user_id`) VALUES
	(1, 1, 'kelly'),
	(4, 2, 'kelly');
/*!40000 ALTER TABLE `stories_like` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.stories_post
CREATE TABLE IF NOT EXISTS `stories_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `stories_post_user_id_a31760b8_fk_users_user_user` (`user_id`),
  CONSTRAINT `stories_post_user_id_a31760b8_fk_users_user_user` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.stories_post: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `stories_post` DISABLE KEYS */;
REPLACE INTO `stories_post` (`post_id`, `nombre`, `imagen`, `descripcion`, `created`, `modified`, `user_id`, `tipo`) VALUES
	(1, 'Compañeros.<3', 'posts/fotos/bebes_KkqJisM.jpg', 'Compañeros.<3', '2019-11-29 22:54:58.926001', '2019-11-29 22:54:58.926001', 'kelly', 1),
	(2, 'Salem', 'posts/fotos/salem.jpg', '', '2019-11-29 23:03:02.850495', '2019-11-29 23:03:02.850495', 'luis', 1),
	(3, 'Prueba', 'posts/fotos/Captura_de_pantalla_1_yXTLTPI.png', 'Esto es una prueba', '2019-11-30 00:27:54.135581', '2019-11-30 00:27:54.135581', 'kelly', 1),
	(4, 'Gatos', 'posts/fotos/Gato_l37Ej73.jpg', '', '2019-11-30 01:09:09.951051', '2019-11-30 01:09:09.951051', 'pepito', 1);
/*!40000 ALTER TABLE `stories_post` ENABLE KEYS */;

-- Volcando estructura para tabla djangogram.users_user
CREATE TABLE IF NOT EXISTS `users_user` (
  `user` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla djangogram.users_user: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
REPLACE INTO `users_user` (`user`, `password`, `phone`, `email`, `name`, `last_name`, `photo`, `created`, `modified`) VALUES
	('kelly', 'c775e7b757ede630cd0aa1113bd102661ab38829ca52a6422ab782862f268646', 1234567, 'kelly@hotmail.com', 'Kelly', 'Vasquez', 'users/pictures/foto_kelly_aQ9ZEy2.jpg', '2019-11-29 22:52:11.293845', '2019-11-29 22:53:36.501820'),
	('luis', '481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5', 7654321, 'lucho@gmail.com', 'Luis', 'Jordan', '', '2019-11-29 22:57:47.144000', '2019-11-29 22:57:47.144992'),
	('pepito', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1234568, 'Pepito@gmail.com', 'Pepito', 'Perez', '', '2019-11-30 01:04:28.150146', '2019-11-30 01:04:28.150146');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
