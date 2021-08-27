-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2021 a las 00:00:13
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `symfony`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile_picture_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `name`, `lastname`, `profile_picture_path`) VALUES
(2, 'wallo190', 'wallo190', 'wallo190@gmail.com', 'wallo190@gmail.com', 1, NULL, '$2y$13$OM2FQSiFU3L0nSyaZ/GaHeLUMVupTNfGjBgFXjGCK9C0ogO.eEIz.', '2021-08-25 22:18:52', '3nfhg7J8ZlyymewpOndHqTlgKn_qY433NMErbOz_Fe8', '2021-08-26 15:26:02', 'a:0:{}', '', '', NULL),
(7, 'will012', 'will012', 'adfa@hiuafsd.com', 'adfa@hiuafsd.com', 1, NULL, '$2y$13$bB3jfVXM4nLlDoGcxzjYZ.ukabDQMMtr99qjWeX9BwJjQjVLcMuMu', '2021-08-26 00:18:53', NULL, NULL, 'a:0:{}', 'william', 'chaves', 'indice.jpeg'),
(12, 'andres', 'andres', 'andres@qeqlkasdf.com', 'andres@qeqlkasdf.com', 1, NULL, '$2y$13$Tmf7U.Phc.LW4IJ5jYS92.E/MZXQp97perixE4mLAqXZa.JXoxB8a', '2021-08-26 06:02:41', NULL, NULL, 'a:0:{}', 'afeqrzxc', 'xcvdsfgew', 'indice.jpeg'),
(13, 'wallo1901', 'wallo1901', 'wallo190@hotmail.com', 'wallo190@hotmail.com', 1, NULL, '$2y$13$0klqSiP1jReLmlyWAnTwTe3oGW/Gc/KEJys.F9xzOo51BneOEvoc.', '2021-08-26 21:30:51', NULL, NULL, 'a:0:{}', 'william', 'sanabria', 'indice3-6127ec30d81a2.jpeg'),
(14, 'admin', 'admin', 'admin@hotmail.com', 'admin@hotmail.com', 1, NULL, '$2y$13$5qLd952yAiXKOlAK6MJrkewaHESSZiNRp4Jy/jJWyfQNeSM.etQNe', '2021-08-26 22:17:56', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 'admin', 'admin', 'indice3-6127f6f41e5ee.jpeg'),
(15, 'adfa1233', 'adfa1233', 'prueba@gmail.com', 'prueba@gmail.com', 0, NULL, '$2y$13$rJg87UZtjENC6itBW8b6i.MRKnm4HeTgDaCfy8t8wwaKlLlCLSBTe', NULL, NULL, NULL, 'a:0:{}', 'usuario', 'prueba', 'C:\\xampp\\tmp\\phpB534.tmp'),
(16, 'q4r1a5', 'q4r1a5', 'priuba2@hortmal.com', 'priuba2@hortmal.com', 0, NULL, '$2y$13$.frj5OT1q58ZFKT6lpIPz.BafFd9uL2uf3Tv/w6Cjho5CQFptaPXm', NULL, NULL, NULL, 'a:0:{}', 'usuario2', 'prueba2', 'indice3-6127ffb60415a.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
