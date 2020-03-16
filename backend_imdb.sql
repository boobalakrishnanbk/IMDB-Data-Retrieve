-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2020 at 11:30 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_imdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
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
(25, 'Can add imd b_ database', 7, 'add_imdb_database'),
(26, 'Can change imd b_ database', 7, 'change_imdb_database'),
(27, 'Can delete imd b_ database', 7, 'delete_imdb_database'),
(28, 'Can view imd b_ database', 7, 'view_imdb_database');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'Movie_Database_App', 'imdb_database'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Movie_Database_App', '0001_initial', '2020-03-15 12:54:14.073571'),
(2, 'contenttypes', '0001_initial', '2020-03-15 12:54:14.756636'),
(3, 'auth', '0001_initial', '2020-03-15 12:54:15.533812'),
(4, 'admin', '0001_initial', '2020-03-15 12:54:19.685517'),
(5, 'admin', '0002_logentry_remove_auto_add', '2020-03-15 12:54:20.929553'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-15 12:54:20.972089'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-03-15 12:54:21.968869'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-03-15 12:54:22.004838'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-03-15 12:54:22.049904'),
(10, 'auth', '0004_alter_user_username_opts', '2020-03-15 12:54:22.072526'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-03-15 12:54:22.443304'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-03-15 12:54:22.460772'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-03-15 12:54:22.489679'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-03-15 12:54:22.536134'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-03-15 12:54:22.581315'),
(16, 'auth', '0010_alter_group_name_max_length', '2020-03-15 12:54:22.637053'),
(17, 'auth', '0011_update_proxy_permissions', '2020-03-15 12:54:22.657998'),
(18, 'sessions', '0001_initial', '2020-03-15 12:54:22.763962');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movie_database_app_imdb_database`
--

CREATE TABLE `movie_database_app_imdb_database` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `plot_summary` varchar(500) NOT NULL,
  `directors` varchar(5000) NOT NULL,
  `writers` varchar(5000) NOT NULL,
  `stars` varchar(5000) NOT NULL,
  `rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_database_app_imdb_database`
--

INSERT INTO `movie_database_app_imdb_database` (`id`, `title`, `plot_summary`, `directors`, `writers`, `stars`, `rating`) VALUES
(1, 'Joker', 'Joker centers around an origin of the iconic arch nemesis and is an original, standalone story not seen before on the big screen. Todd Phillips\' exploration of Arthur Fleck (Joaquin Phoenix), a man disregarded by society is not only a gritty character study, but also a broader cautionary tale.', 'Todd Phillips', 'Todd Phillips,Scott Silver,,Bob Kane,Bill Finger,Jerry Robinson', 'Joaquin Phoenix,Robert De Niro,Zazie Beetz,Frances Conroy,Brett Cullen,Shea Whigham,Bill Camp,Glenn Fleshler,Leigh Gill,Josh Pais,Rocco Luna,Marc Maron,Sondra James,Murphy Guyer,Douglas Hodge,Dante Pereira-Olson,Carrie Louise Putrello,Sharon Washington,Hannah Gross,Frank Wood,Brian Tyree Henry,April Grace,Mick Szal,Carl Lundstedt,Michael Benz,Ben Warheit,Gary Gulman,Sam Morril,Chris Redd,Mandela Bellamy,Demetrius Dotson II,Greer Barnes,Ray Iannicelli,Bryan Callen,Peter Benson,Vito Gerbino,Adam Quezada,Xavyer Ureña,Evan Rosado,Damian Emmanuel,Mike Troll,Jane Fergus,David Gibson,Tony D. Head,Jeff McCarthy,Kim Brockington,Troy Roberts,Lou Young,Michael-Scott Druckenmiller,Craig Austin,John Cenatiempo,Danny Schoch,Keith Buterbaugh,James Ciccone,Rich Campbell,Roger Squitero,Steven Elson,Graham Maby,John Alldred,Alonzo Wright,Jack Wilkins,Richard Baratta,Chris Angerman,Michael Bascle,Elizabeth Bluhm,Alissa Bourne,Winslow Bright,Matt Bruzzio,Jamaal Burcher,Marko Caka,Al Cardone,Dj Nino Carta,John Cashin,Jason John Cicalese,Jim Cleary,Brendan Patrick Connor,Blaise Corrigan,Vincent Cucuzza,Gino D\'Cafango,Aynsleigh Dann,Helen Darras,Alfredo David,Adam DeNully,Shamia Diaz,Brandon Essig,Mark Falvo,Isabella Ferreira,Phiona C Foster,Michael James Fry,Ryan Funigiello,Dennis Jay Funny,Jason Gadino,Alexandra Lopez Galan,Matthias Sebastiun Garry,Victor Gaspar,Brayson Goss,Robert Wayne Grondski,James P. Harkins,Dontae Hawkins,Joseph Hernandez,Ben Heyman,David Iacono,Sean Kilkenny,Paul Kulis,Melanie Christine Leon-Soon,Michael Lepre,Bob Leszczak,Mark Lotito,Adrienne Lovette,Justin Mahalsky,Mary Kate Malat,Branden Marlowe,Scott Martin,Lana McLellan,Alexander Mercier,Loretta Anne Miller,Nathan Nauroth,Mick O\'Rourke,Joe Ochman,Joey Pedras,David Valentino Penaga,Rich Petrillo,Annie Pisapia,Celeste Pisapía,Jon Douglas Rainey,Jivan Xander Ramesh,Tamiz U. Rezvi,Emmanuel Rodriguez,Ray Rosario,Shade Rupe,Edward Sass,Keith Schneider,Jesse Schratz,George Signoriello,Marie Smalley,Todd Smolar,Frank Sorgenti,Stephen Stanton,Frank Stellato,Thomas W. Stewart,Chuck Taber,Zak Takowsky,Justin Theroux,Vincent Tumeo,Matthew Vincini,Frank Volpe,Jaidon Walls,Julia Weldon,Alontae Myson Williams,Alex Xenos,Lauren Yaffe,Jaine Ye', 8.6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `movie_database_app_imdb_database`
--
ALTER TABLE `movie_database_app_imdb_database`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `movie_database_app_imdb_database`
--
ALTER TABLE `movie_database_app_imdb_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
