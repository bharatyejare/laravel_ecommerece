-- Adminer 4.8.1 MySQL 8.0.29-0ubuntu0.20.04.3 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15,	'2022_05_19_080303_product_payment_details',	1),
(16,	'2014_10_12_000000_create_users_table',	2),
(17,	'2014_10_12_100000_create_password_resets_table',	2),
(18,	'2019_08_19_000000_create_failed_jobs_table',	2),
(19,	'2019_12_14_000001_create_personal_access_tokens_table',	2),
(20,	'2022_05_19_085943_create_products_table',	2);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1,	'Gerda',	42,	'Eius voluptatibus ipsa eum ut neque saepe et. Sed quia iste porro sed non at recusandae. Molestiae unde nobis iste.',	NULL,	NULL),
(2,	'Amaya',	47,	'Et et id natus et dolorem aut laboriosam. Nihil officiis itaque omnis enim. Sit sed cum placeat inventore reprehenderit distinctio doloribus. Eos vel veritatis atque natus.',	NULL,	NULL),
(3,	'Fiona',	44,	'Atque animi omnis quia aut. Eum reiciendis voluptates eum vel animi a expedita et.',	NULL,	NULL),
(4,	'Damaris',	41,	'Et id consequatur ex illo similique non explicabo. Dolores sed unde molestias. Ut in quidem aliquid ipsam aperiam impedit modi exercitationem.',	NULL,	NULL),
(5,	'Estevan',	42,	'Aut et est quod officia aut. Eos itaque perferendis molestiae sapiente dicta quidem dolorem et. Voluptatem aut ut accusamus dignissimos. Id tempore autem sit.',	NULL,	NULL),
(6,	'Luna',	49,	'Voluptatem commodi omnis in provident. Nesciunt harum ut quasi dolores eligendi ad. Praesentium velit ducimus labore quo est repellat.',	NULL,	NULL),
(7,	'Burnice',	42,	'Quis eius odio in et autem ut quos. Maxime aut rerum est ea nihil quia. Quaerat et laborum architecto omnis ut iste. Ad repellat accusamus pariatur officiis qui rem labore.',	NULL,	NULL),
(8,	'Hailey',	36,	'Qui expedita qui neque perferendis. Sequi ea ut veniam praesentium nam aperiam neque.',	NULL,	NULL),
(9,	'Korbin',	40,	'A sunt eos quo itaque fugiat sit. Sint sed nihil quaerat ut in sunt atque dolorem. Sed vel nemo quia autem. At quisquam illo aut velit.',	NULL,	NULL),
(10,	'Pearlie',	30,	'Consequuntur labore dolores hic aperiam voluptatem. Sed rerum adipisci sit expedita tempore. Ab recusandae itaque rerum ad a nihil.',	NULL,	NULL),
(11,	'Kelvin',	42,	'Voluptas enim sit qui aut et atque. Inventore ut corporis non iste provident. Quis architecto vel nulla quasi deserunt dignissimos. Et nostrum sint facere repellat quae.',	NULL,	NULL),
(12,	'Gaetano',	45,	'Pariatur quasi et nihil repudiandae tenetur odit est. Impedit quidem ut corrupti vel aut rem vel dicta. Aut consequatur qui ab fugiat veritatis ut. Voluptatem aperiam saepe adipisci corporis numquam.',	NULL,	NULL),
(13,	'Eloisa',	45,	'Voluptas dolores ipsa nobis expedita. Dicta explicabo perferendis provident ut. Quo enim qui facere. Magni aut rem corrupti similique unde dolores rerum.',	NULL,	NULL),
(14,	'Chyna',	46,	'Ipsum amet debitis odit dolorem necessitatibus similique tenetur. Animi quia aliquam ullam iusto recusandae labore totam.',	NULL,	NULL),
(15,	'Evelyn',	25,	'Voluptate quod veniam velit. Quam est officiis dolores libero vitae fugit at. Accusamus atque rem et saepe quas nobis delectus. Quia quis iusto occaecati qui voluptatem veritatis.',	NULL,	NULL),
(16,	'Sally',	29,	'Vel est magni veritatis praesentium. Cum saepe quis vel velit. Occaecati atque qui qui est libero. Fugit et at laborum voluptates.',	NULL,	NULL),
(17,	'Shannon',	25,	'Numquam ipsam itaque distinctio nesciunt cum optio possimus. Et repellendus est quod est qui atque qui. Ea nostrum qui autem molestias autem. Non autem nesciunt non nostrum pariatur veritatis.',	NULL,	NULL),
(18,	'Fletcher',	35,	'Delectus rerum iste qui in nesciunt. Laborum recusandae corrupti omnis ut. Et officiis sequi dolorem dignissimos. Quasi eius culpa minima pariatur.',	NULL,	NULL),
(19,	'Johan',	45,	'Et nobis beatae deserunt nisi ratione eaque. Quos quos omnis sunt. Voluptas omnis quidem qui quaerat quia.',	NULL,	NULL),
(20,	'Peter',	39,	'Ratione commodi eos eum et error optio. Possimus aut aliquam qui aut eaque dolor. A voluptatem est sit repudiandae quae ut et. Eos quis enim aut reiciendis consectetur illo pariatur.',	NULL,	NULL);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'Holden Predovic',	'larissa.von@example.org',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'w5PEjEG4wN',	'2022-05-19 03:51:12',	'2022-05-19 03:51:12'),
(2,	'Dr. Keith Jacobs',	'thea81@example.com',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'xGZ4dRPUU6',	'2022-05-19 03:51:13',	'2022-05-19 03:51:13'),
(3,	'Ellis Mayert',	'elaina.mertz@example.com',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'5EaehHsbBM',	'2022-05-19 03:51:14',	'2022-05-19 03:51:14'),
(4,	'Francisca Wilkinson IV',	'dach.nigel@example.net',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'5JKxHoT3gj',	'2022-05-19 03:51:15',	'2022-05-19 03:51:15'),
(5,	'Mrs. Kelsi Orn DVM',	'gfadel@example.com',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'YtZTEXo8i3',	'2022-05-19 03:51:15',	'2022-05-19 03:51:15'),
(6,	'Emie Sauer',	'hill.delpha@example.org',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'kkHh87yXyE',	'2022-05-19 03:51:16',	'2022-05-19 03:51:16'),
(7,	'Erick Ortiz',	'kaia59@example.net',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'4LGf0QE8Sq',	'2022-05-19 03:51:16',	'2022-05-19 03:51:16'),
(8,	'Miss Alysson O\'Connell',	'connie24@example.com',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'WPyzBM3AW4',	'2022-05-19 03:51:17',	'2022-05-19 03:51:17'),
(9,	'Estel Beatty',	'bridgette.zieme@example.com',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'Afky6OPwEB',	'2022-05-19 03:51:17',	'2022-05-19 03:51:17'),
(10,	'Georgiana Sawayn',	'emil16@example.net',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'3DIzPopK5M',	'2022-05-19 03:51:18',	'2022-05-19 03:51:18'),
(11,	'Mr. Arnaldo Grimes',	'arielle.kuvalis@example.org',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'w8iYLTPkca',	'2022-05-19 03:51:19',	'2022-05-19 03:51:19'),
(12,	'Cara Smitham',	'mireille82@example.com',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'9fsikLVQJH',	'2022-05-19 03:51:20',	'2022-05-19 03:51:20'),
(13,	'Clotilde Mitchell',	'hoppe.ayana@example.com',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'ucnGyNiMBe',	'2022-05-19 03:51:21',	'2022-05-19 03:51:21'),
(14,	'Beverly Parisian',	'andreane46@example.org',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'KCMzXIt6Rs',	'2022-05-19 03:51:22',	'2022-05-19 03:51:22'),
(15,	'Dr. Christian Hilpert',	'carol.cronin@example.org',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'SnzRTxlAvL',	'2022-05-19 03:51:22',	'2022-05-19 03:51:22'),
(16,	'Dr. Elwyn Hackett',	'marley.ward@example.com',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'sWG6gbuQ7r',	'2022-05-19 03:51:23',	'2022-05-19 03:51:23'),
(17,	'Zola Kirlin',	'pankunding@example.com',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'3t4NZk0tS5',	'2022-05-19 03:51:24',	'2022-05-19 03:51:24'),
(18,	'Delphia Kuphal',	'doyle.zechariah@example.org',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'hWX6V9HX8L',	'2022-05-19 03:51:25',	'2022-05-19 03:51:25'),
(19,	'Ara VonRueden',	'udibbert@example.net',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'kjLeKozLBK',	'2022-05-19 03:51:26',	'2022-05-19 03:51:26'),
(20,	'Mr. Blake Brakus PhD',	'brandy.batz@example.com',	'2022-05-19 03:51:12',	'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',	'r2OYGR8zfo',	'2022-05-19 03:51:26',	'2022-05-19 03:51:26');

-- 2022-05-19 13:33:01