-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2024 a las 19:06:01
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attacheds`
--

CREATE TABLE `attacheds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `attacheds`
--

INSERT INTO `attacheds` (`id`, `type`, `image`, `visit_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 2, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(2, NULL, NULL, 12, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(3, NULL, NULL, 6, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(4, NULL, NULL, 13, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(5, NULL, NULL, 5, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(6, NULL, NULL, 10, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(7, NULL, NULL, 6, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(8, NULL, NULL, 11, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(9, NULL, NULL, 9, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(10, NULL, NULL, 5, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(11, NULL, NULL, 2, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(12, NULL, NULL, 11, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(13, NULL, NULL, 2, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(14, NULL, NULL, 11, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(15, NULL, NULL, 5, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(16, 'jpg', '39329 (1).jpg', 16, '2024-07-03 14:42:21', '2024-07-03 14:42:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` enum('efectivo','tarjeta') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent` tinyint(1) DEFAULT NULL,
  `invoice_date` datetime NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `specialist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `payment_type`, `sent`, `invoice_date`, `total_price`, `specialist_id`, `visit_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'efectivo', 0, '2024-03-07 08:13:48', 21.40, NULL, 3, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(2, NULL, 'efectivo', 1, '2023-10-07 16:45:40', 35.97, NULL, 12, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(3, NULL, 'efectivo', 1, '2023-11-14 04:10:49', 15.40, NULL, 5, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(4, NULL, 'efectivo', 0, '2024-03-20 16:09:07', 31.15, NULL, 13, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(5, NULL, 'efectivo', 1, '2023-11-18 13:27:54', 49.79, NULL, 14, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(6, NULL, 'efectivo', 0, '2024-03-06 12:34:41', 12.64, NULL, 2, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(7, NULL, 'efectivo', 1, '2023-11-22 16:45:19', 91.62, NULL, 7, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(8, NULL, 'tarjeta', 1, '2024-02-23 07:12:33', 20.67, NULL, 5, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(9, NULL, 'tarjeta', 0, '2024-03-28 07:37:30', 13.67, NULL, 11, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(10, NULL, 'tarjeta', 1, '2024-06-26 17:37:28', 81.78, NULL, 10, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(11, NULL, 'tarjeta', 1, '2024-02-09 16:25:51', 77.63, NULL, 3, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(12, NULL, 'tarjeta', 0, '2024-06-18 12:09:46', 75.51, NULL, 12, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(13, NULL, 'efectivo', 1, '2024-05-22 03:20:13', 43.35, NULL, 7, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(14, NULL, 'efectivo', 1, '2024-03-27 01:06:05', 98.42, NULL, 7, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(15, NULL, 'tarjeta', 0, '2023-11-11 20:37:58', 60.59, NULL, 9, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(16, '1/2024', 'tarjeta', 1, '2024-07-03 00:00:00', 25.90, 7, 16, '2024-07-03 14:42:21', '2024-07-03 14:43:54'),
(17, '2/2024', 'tarjeta', 1, '2024-07-03 00:00:00', 55.89, 7, 16, '2024-07-03 14:42:21', '2024-07-03 14:43:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_id`, `name`, `price`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(1, 10, 'CIRUGÍA DE LA UÑA', 17.86, 1, 74.32, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(2, 4, 'PROTESIS GRANDE', 64.48, 1, 76.31, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(3, 9, 'CURAS', 49.41, 1, 92.03, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(4, 2, 'PROTESIS PEQUEÑAS', 62.58, 1, 20.67, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(5, 11, 'TRATAMIENTO VERRUGAS', 63.12, 1, 73.84, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(6, 7, 'ESTUDIO BIOMECÁNICO + SP INFANTIL', 48.64, 1, 49.04, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(7, 15, 'ESTUDIO BIOMECÁNICO + SP ADULTO', 20.24, 1, 13.28, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(8, 8, 'ESTUDIO BIOMECANICO', 43.96, 1, 29.08, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(9, 13, 'ESTUDIO BIOMECÁNICO + SP ADULTO', 97.75, 1, 40.27, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(10, 11, 'ESTUDIO BIOMECÁNICO + SP ADULTO', 11.52, 1, 62.31, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(11, 10, 'VENDAJE NEUROMUSCULAR', 19.42, 1, 68.46, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(12, 14, 'CURAS', 12.55, 1, 47.81, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(13, 6, 'ESTUDIO BIOMECÁNICO + SP ADULTO', 88.35, 1, 88.93, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(14, 15, 'SILMA', 56.89, 1, 62.44, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(15, 11, 'RETOQUES O CAMBIO FORROS SP', 33.07, 1, 93.04, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(16, 16, 'PROTESIS PEQUEÑAS', 25.90, 1, 25.90, '2024-07-03 14:42:21', '2024-07-03 14:42:21'),
(17, 17, 'TRATAMIENTO VERRUGAS', 55.89, 1, 55.89, '2024-07-03 14:42:21', '2024-07-03 14:42:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_11_073756_create_treatments_table', 1),
(6, '2022_05_11_073848_create_visit_table', 1),
(7, '2022_05_11_073924_create_invoices_table', 1),
(8, '2022_05_11_073956_create_invoice_details_table', 1),
(9, '2022_05_11_074034_create_partner_invoices_table', 1),
(10, '2022_05_11_075550_create_uses_table', 1),
(11, '2022_05_11_080351_create_attacheds_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partner_invoices`
--

CREATE TABLE `partner_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collegiate_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','specialist','patient') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `partner_invoices`
--

INSERT INTO `partner_invoices` (`id`, `phone`, `dni`, `collegiate_num`, `first_name`, `last_name`, `role`, `nif`, `postal_code`, `address`, `city`, `invoice_id`, `created_at`, `updated_at`) VALUES
(1, '669758245', '40075779L', '29741', 'Anastasia', 'Cruickshank', 'patient', '85052465A', '53494', '8466 Brooks Inlet Suite 418\nPort Christopheton, WA 79758-6439', 'South', 6, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(2, '616519488', '76027180Y', '87207', 'Mylene', 'Mante', 'patient', '56926916H', '82979', '4849 Adolf Ridge Apt. 099\nCalebville, SC 39576', 'West', 13, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(3, '609307322', '45531824Y', '09038', 'Joany', 'Conn', 'patient', '25648498Y', '50040', '8677 Libbie Highway Apt. 382\nEast Carlimouth, NJ 35291', 'West', 9, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(4, '616752446', '44657717R', '99896', 'Pearlie', 'Reinger', 'patient', '43682736T', '96982', '542 D\'Amore Cape\nPort Jadeshire, NJ 31280', 'West', 6, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(5, '657682798', '62251310H', '64078', 'Adela', 'Hettinger', 'patient', '51030075A', '39216', '24451 Mitchell Lakes\nWest Noelburgh, GA 73597-4956', 'North', 14, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(6, '664249702', '38230597W', '48673', 'Annetta', 'Hauck', 'patient', '63512663Q', '96292', '1517 Herzog Harbors\nLake Jodie, UT 38054', 'East', 9, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(7, '655517896', '06073724I', '19162', 'Jarrell', 'Nolan', 'specialist', '31362393J', '93662', '7197 Frida Fall Suite 561\nHegmannville, UT 22688-9184', 'North', 8, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(8, '695773260', '87059628S', '32106', 'Grayson', 'Kutch', 'patient', '15859945N', '71480', '69854 Beer Villages\nWeissnattown, MN 11097-0394', 'South', 10, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(9, '681739988', '07327609H', '57089', 'Nels', 'Bayer', 'specialist', '50404423F', '24401', '49116 Gutkowski Cove\nSouth Matilde, TX 21584-7541', 'East', 9, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(10, '617014924', '11204328C', '14714', 'Lolita', 'Hauck', 'patient', '88956595S', '38480', '8232 Larkin Throughway\nGloverburgh, AZ 19117', 'South', 5, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(11, '664558173', '06478289X', '89925', 'Myriam', 'Harber', 'specialist', '48740875B', '24230', '1124 Schinner Greens Suite 772\nHoppeshire, LA 88880', 'East', 6, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(12, '624031580', '24766834G', '61523', 'Wellington', 'Shields', 'specialist', '49899427J', '65106', '803 Ibrahim Corners Apt. 253\nKundeshire, IL 49995-8287', 'West', 12, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(13, '651700462', '07411501J', '79974', 'Ruthie', 'Kuhn', 'patient', '83987411I', '82935', '808 Darrel Ways Suite 070\nCindyville, OH 81498', 'Port', 5, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(14, '698879788', '42637555H', '55824', 'Dustin', 'Koelpin', 'patient', '53566686F', '24754', '848 Kuhn Crossing Suite 888\nNorth Tiaburgh, TN 65323', 'South', 8, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(15, '621678824', '11766116T', '37929', 'Ethyl', 'Heidenreich', 'specialist', '52592990U', '17504', '47800 Bernadine Summit Suite 009\nPort Bernardfort, MO 08321-1122', 'Lake', 13, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(16, '698503807', '94437685P', '77852', 'Flo', 'Lueilwitz', 'specialist', NULL, '72538', '26054 Thiel Fort\nSouth River, NV 51308', 'West', 16, '2024-07-03 14:42:21', '2024-07-03 14:42:21'),
(17, '631726969', '49953749A', NULL, 'Daniel', 'Rocha', 'patient', NULL, '08902', 'Aprestadora', 'Barcelona', 16, '2024-07-03 14:42:21', '2024-07-03 14:42:21'),
(18, '698503807', '94437685P', '77852', 'Flo', 'Lueilwitz', 'specialist', NULL, '72538', '26054 Thiel Fort\nSouth River, NV 51308', 'West', 17, '2024-07-03 14:42:21', '2024-07-03 14:42:21'),
(19, '631726969', '49953749A', NULL, 'Daniel', 'Rocha', 'patient', NULL, '08902', 'Aprestadora', 'Barcelona', 17, '2024-07-03 14:42:21', '2024-07-03 14:42:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treatments`
--

CREATE TABLE `treatments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(6,2) NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `treatments`
--

INSERT INTO `treatments` (`id`, `name`, `price`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'REEDUCACIÓN UNGUEAL', 80.22, 'Neque velit voluptatem facere est quo et autem.', 0, '2024-07-03 14:29:57', '2024-07-03 14:35:11'),
(2, 'ESTUDIO BIOMECANICO', 12.90, 'Ut aspernatur commodi facere.', 1, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(3, 'PROTESIS MEDIANA', 70.78, 'Quis enim ut libero necessitatibus qui.', 1, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(4, 'TRATAMIENTO VERRUGAS', 16.35, 'Eos enim repudiandae vel velit.', 1, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(5, 'RETOQUES O CAMBIO FORROS SP', 11.71, 'Aperiam et assumenda impedit consequatur facere.', 1, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(6, 'RETOQUES O CAMBIO FORROS SP', 24.71, 'Id optio hic modi laborum assumenda sunt libero.', 0, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(7, 'RETOQUES O CAMBIO FORROS SP', 84.39, 'Repudiandae eum et adipisci doloribus.', 0, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(8, 'PROTESIS PEQUEÑAS', 25.90, 'Quia reiciendis assumenda fugit unde.', 1, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(9, 'PROTESIS MEDIANA', 53.75, 'Nobis cupiditate magnam maxime iure.', 0, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(10, 'PROTESIS PEQUEÑAS', 39.13, 'Quas eveniet veniam cum ut.', 0, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(11, 'REEDUCACIÓN UNGUEAL', 92.57, 'Quos est explicabo doloribus in odio quidem.', 0, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(12, 'TRATAMIENTO VERRUGAS', 55.89, 'Consequuntur tempore quos mollitia aut.', 0, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(13, 'VENDAJE NEUROMUSCULAR', 46.74, 'Fuga officiis voluptatem sint.', 1, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(14, 'PROTESIS GRANDE', 89.66, 'Quis dolor esse consequatur itaque temporibus.', 1, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(15, 'RETOQUES O CAMBIO FORROS SP', 63.04, 'Cum voluptatum voluptatibus et deleniti omnis.', 0, '2024-07-03 14:29:57', '2024-07-03 14:29:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT 1,
  `previous_pathologies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diabetic` tinyint(1) DEFAULT 0,
  `ss_CIP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `center_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collegiate_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','specialist','patient') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'patient',
  `register_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `dni`, `email`, `phone`, `birthdate`, `city`, `address`, `postal_code`, `active`, `previous_pathologies`, `diabetic`, `ss_CIP`, `center_code`, `collegiate_num`, `role`, `register_date`, `created_at`, `updated_at`) VALUES
(1, 'Keenan', 'Rowe', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '59183547P', 'marquise.paucek@example.com', '633299890', '1975-11-10', 'West', '31144 Kautzer Land\nFarrellstad, WV 03059-1903', '18209', 0, 'Qui sed dolores consectetur provident.', 1, 'ARVZ1510064361', '1767505200', '69489', 'patient', '1970-03-01 05:16:03', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(2, 'Mariela', 'Prohaska', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '54199387M', 'vrunolfsdottir@example.net', '613463743', '2014-10-15', 'North', '76693 Norris Meadow Apt. 334\nTyreehaven, MS 94063', '13585', 1, 'Autem magnam id commodi.', 1, 'KKIZ4037367653', '2795409587', '68410', 'patient', '1986-11-04 06:56:12', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(3, 'Dusty', 'Connelly', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '82918684Q', 'burnice.pollich@example.org', '699810621', '1989-04-06', 'South', '24680 Ike Center\nVandervortchester, TX 86327', '90626', 1, 'Maiores minus occaecati est temporibus.', 1, 'OPAH4315172160', '0000050523', '15474', 'specialist', '2000-09-04 12:40:16', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(4, 'Enrique', 'Jacobs', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '53440083D', 'sarina52@example.org', '699064368', '1985-09-07', 'North', '951 Pansy Estate Apt. 623\nRebekahfurt, IN 38772', '86326', 0, 'Quis ullam dolorem natus eos.', 0, 'HOMJ4465282614', '4371630898', '96732', 'patient', '1977-09-07 16:33:17', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(5, 'Sydnie', 'Bernhard', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '61788741W', 'bkuhlman@example.com', '630486345', '2013-01-20', 'South', '5144 Nakia Locks\nTatyanamouth, IN 92098-2498', '45362', 0, 'Minima sed quidem et.', 0, 'YGTQ5839384167', '9768564977', '60500', 'admin', '1988-07-22 05:58:42', '2024-07-03 14:29:57', '2024-07-03 14:35:45'),
(6, 'Dereck', 'Langworth', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '90883611Q', 'bridget.little@example.com', '677451403', '1996-02-16', 'Lake', '8433 Hailey Flat\nEstellestad, AZ 72493-3133', '75532', 1, 'Qui ut amet ex porro.', 1, 'JGYP8468906962', '8262572125', '85605', 'admin', '1996-09-30 22:35:16', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(7, 'Flo', 'Lueilwitz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '94437685P', 'goodwin.joanne@example.net', '698503807', '2011-04-17', 'West', '26054 Thiel Fort\nSouth River, NV 51308', '72538', 1, 'Laudantium sit totam aut qui.', 1, 'RYVN2300742735', '2231531725', '77852', 'specialist', '1978-01-15 22:03:07', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(8, 'Valerie', 'Haag', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '26364931A', 'denesik.edward@example.com', '668066732', '2023-12-07', 'New', '5181 Boehm Glens Suite 724\nNorth Darenbury, TX 94644', '47467', 1, 'Et laudantium odit sint.', 1, 'PCIA5271811503', '0368925011', '26820', 'patient', '2009-02-04 03:13:51', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(9, 'Domenic', 'Lueilwitz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '08071032P', 'bogisich.alfred@example.net', '637220296', '2017-03-29', 'Port', '6656 Kuhn Street\nShadport, WY 30226', '76465', 1, 'Nulla explicabo nihil et dolorem sint.', 1, 'DQTQ9129306024', '5262634209', '03557', 'patient', '1986-08-13 13:02:11', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(10, 'Nannie', 'Corkery', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '50179487Y', 'xorn@example.org', '689591515', '1980-09-25', 'West', '5777 Lyla Gateway\nNorth Haven, NV 62046', '56095', 0, 'Voluptatum veritatis porro at neque.', 1, 'RCPK1251824410', '6439938263', '75899', 'patient', '2022-08-15 18:22:02', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(11, 'Brennon', 'Runte', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '92732694S', 'verna93@example.org', '668522208', '2009-04-23', 'West', '2555 Gorczany Tunnel Apt. 965\nWest Francis, AR 86500', '61015', 0, 'Quam eligendi labore qui inventore.', 1, 'BWVE2724843938', '2234191531', '35034', 'admin', '2018-02-22 06:44:23', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(12, 'Genoveva', 'Dicki', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '05795733O', 'brakus.herman@example.net', '610663430', '1981-03-01', 'Port', '174 McKenzie Pine\nZiemetown, MI 79064-7509', '68007', 0, 'Quis laudantium tenetur et minus odio.', 0, 'YJBM7374390797', '2247055697', '30291', 'specialist', '1976-11-06 23:48:18', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(13, 'Luisa', 'Collins', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '96996510Z', 'qkihn@example.org', '657892343', '1989-01-24', 'Port', '6474 Langosh Fall Suite 815\nRoobburgh, ND 16509-3829', '68348', 0, 'Aut ut est id quia laudantium aperiam.', 0, 'QZXF6230034603', '3040310606', '04480', 'specialist', '1991-09-05 16:03:05', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(14, 'Tia', 'Brakus', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '89262395P', 'nikolaus.isabell@example.net', '601939390', '1994-09-24', 'North', '2033 Thomas Dale\nAsatown, NJ 94601-4203', '42379', 1, 'Amet itaque cum quod autem.', 1, 'QCOO0743699819', '3356986719', '81450', 'specialist', '2002-03-19 04:03:08', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(15, 'Anya', 'Dickinson', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '48336559W', 'devin91@example.org', '636567600', '1997-01-27', 'West', '828 Cronin Port\nLake Eusebioburgh, IA 53338-4290', '21779', 1, 'Veniam nobis voluptatibus ipsam sed.', 1, 'DEYZ2540419744', '4467332298', '02745', 'specialist', '1988-02-07 06:51:38', '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(16, 'Daniel', 'Rocha', NULL, '49953749A', 'daniel@gmail.com', '631726969', '2019-02-02', 'Barcelona', 'Aprestadora', '08902', 1, 'Tiene una herida en la pierna derecha.', 1, 'ARVZ1510064361', '1767505200', NULL, 'patient', '2024-07-02 22:00:00', '2024-07-03 14:40:17', '2024-07-03 14:40:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uses`
--

CREATE TABLE `uses` (
  `visit_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `treatment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `uses`
--

INSERT INTO `uses` (`visit_id`, `user_id`, `treatment_id`, `created_at`, `updated_at`) VALUES
(1, 4, 3, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(2, 9, 4, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(2, 12, 15, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(4, 8, 3, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(5, 4, 13, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(6, 3, 12, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(7, 15, 13, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(8, 1, 13, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(9, 10, 2, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(11, 1, 14, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(11, 6, 5, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(12, 7, 2, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(13, 3, 4, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(13, 4, 13, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(14, 12, 14, '2024-07-03 14:29:58', '2024-07-03 14:29:58'),
(16, 7, 8, '2024-07-03 14:42:21', '2024-07-03 14:42:21'),
(16, 7, 12, '2024-07-03 14:42:21', '2024-07-03 14:42:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visit_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` date NOT NULL,
  `sent` tinyint(1) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `visits`
--

INSERT INTO `visits` (`id`, `visit_description`, `visit_date`, `sent`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Et maxime nihil aliquid velit enim.', '2023-12-14', 1, 1, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(2, 'Illo sint dolor et voluptate tempora.', '2024-01-02', 1, 15, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(3, 'Nisi culpa aut sed nobis et tempora est.', '2023-12-26', 0, 14, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(4, 'Alias est excepturi eligendi ipsam.', '2024-06-20', 1, 14, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(5, 'Sed sed aut eum in inventore ratione aspernatur.', '2024-02-28', 0, 6, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(6, 'Aliquam vitae amet itaque magni harum.', '2024-02-02', 0, 12, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(7, 'Sapiente sed ratione sapiente doloremque.', '2023-11-22', 1, 11, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(8, 'Repellat aut facere voluptas ea.', '2023-11-18', 1, 8, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(9, 'Ea dolorem hic amet quis magni.', '2023-11-30', 0, 15, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(10, 'Beatae recusandae vel veniam sunt sunt soluta.', '2024-05-01', 0, 7, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(11, 'Repellat omnis expedita expedita ut id adipisci.', '2024-04-11', 1, 14, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(12, 'Reiciendis corrupti adipisci ex dolore quis.', '2023-10-15', 0, 12, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(13, 'Aut aliquam magni enim magni adipisci.', '2023-12-17', 0, 1, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(14, 'Recusandae doloremque nam quis enim.', '2023-12-04', 1, 15, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(15, 'Ut et consequatur odio cupiditate illum.', '2024-01-22', 0, 14, '2024-07-03 14:29:57', '2024-07-03 14:29:57'),
(16, 'Todo bien!', '2024-07-03', 0, 16, '2024-07-03 14:42:21', '2024-07-03 14:42:21');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `attacheds`
--
ALTER TABLE `attacheds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attacheds_visit_id_foreign` (`visit_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_visit_id_foreign` (`visit_id`);

--
-- Indices de la tabla `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_details_invoice_id_foreign` (`invoice_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partner_invoices`
--
ALTER TABLE `partner_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_invoices_invoice_id_foreign` (`invoice_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_dni_unique` (`dni`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`visit_id`,`user_id`,`treatment_id`),
  ADD KEY `uses_user_id_foreign` (`user_id`),
  ADD KEY `uses_treatment_id_foreign` (`treatment_id`);

--
-- Indices de la tabla `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `attacheds`
--
ALTER TABLE `attacheds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `partner_invoices`
--
ALTER TABLE `partner_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `attacheds`
--
ALTER TABLE `attacheds`
  ADD CONSTRAINT `attacheds_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Filtros para la tabla `partner_invoices`
--
ALTER TABLE `partner_invoices`
  ADD CONSTRAINT `partner_invoices_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Filtros para la tabla `uses`
--
ALTER TABLE `uses`
  ADD CONSTRAINT `uses_treatment_id_foreign` FOREIGN KEY (`treatment_id`) REFERENCES `treatments` (`id`),
  ADD CONSTRAINT `uses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `uses_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
