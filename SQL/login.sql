-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 02:28 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ut consequatur', 'ut-consequatur', '2023-03-06 01:30:54', '2023-03-06 01:30:54'),
(2, 'enim aut', 'enim-aut', '2023-03-06 01:30:54', '2023-03-06 01:30:54'),
(3, 'eum pariatur', 'eum-pariatur', '2023-03-06 01:30:54', '2023-03-06 01:30:54'),
(4, 'dolores nihil', 'dolores-nihil', '2023-03-06 01:30:54', '2023-03-06 01:30:54'),
(5, 'aliquam quis', 'aliquam-quis', '2023-03-06 01:30:54', '2023-03-06 01:30:54'),
(6, 'cupiditate molestiae', 'cupiditate-molestiae', '2023-03-06 01:30:54', '2023-03-06 01:30:54'),
(7, 'cum qui', 'cum-qui', '2023-03-06 01:32:18', '2023-03-06 01:32:18'),
(8, 'odio animi', 'odio-animi', '2023-03-06 01:32:18', '2023-03-06 01:32:18'),
(9, 'corrupti dolorum', 'corrupti-dolorum', '2023-03-06 01:32:18', '2023-03-06 01:32:18'),
(10, 'ut minus', 'ut-minus', '2023-03-06 01:32:18', '2023-03-06 01:32:18'),
(11, 'minus exercitationem', 'minus-exercitationem', '2023-03-06 01:32:18', '2023-03-06 01:32:18'),
(12, 'quo dolores', 'quo-dolores', '2023-03-06 01:32:18', '2023-03-06 01:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_05_105628_create_sessions_table', 1),
(7, '2023_03_06_060002_create_categories_table', 2),
(8, '2023_03_06_060412_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `self_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantitiy` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `self_price`, `SKU`, `stock_status`, `featured`, `quantitiy`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'ut qui totam debitis', 'ut-qui-totam-debitis', 'Ea laudantium molestias repellendus reprehenderit sunt earum nihil. Praesentium et qui et est atque. Maxime eos quos illo soluta doloremque.', 'Sit quia ut officiis impedit nemo eos. Eius aut et molestias quisquam reiciendis velit qui. Sed et aut placeat quia unde nostrum. Suscipit beatae et pariatur quia repellat. Omnis ipsum et et. Quod voluptatum quia unde exercitationem at itaque qui. Et a non molestias cupiditate. Consequatur laborum corporis atque quo inventore sed. Facere est sed voluptatibus assumenda blanditiis tenetur. Aperiam quas tempora vitae quas in ut. Quidem id eum illo quasi molestias possimus.', '406.00', NULL, 'DIGI558093611', 'instock', 0, 106, 'digital_9.jpg', NULL, 3, '2023-03-06 01:32:18', '2023-03-06 01:32:18'),
(2, 'totam pariatur aut non', 'totam-pariatur-aut-non', 'Explicabo minus eum ab. Unde deleniti aut ut atque sunt mollitia est. Nihil voluptatem dolor cumque id nobis quo. Amet rem qui ullam sapiente aut placeat.', 'Laboriosam est ex sit architecto illo. Quibusdam ab deleniti nobis dolore occaecati nihil. Ut non illo doloremque. Cupiditate tenetur soluta quis voluptas quaerat magni blanditiis. Error et est dolor maxime aut. Aperiam quia natus expedita fugiat natus in. A et adipisci voluptas quia. Autem numquam velit praesentium ad et sed ratione. Dolores odio voluptatum unde molestias voluptatem. Similique harum cum et ipsam delectus laudantium.', '14.00', NULL, 'DIGI819540533', 'instock', 0, 180, 'digital_16.jpg', NULL, 1, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(3, 'rem pariatur aspernatur numquam', 'rem-pariatur-aspernatur-numquam', 'Tempora aut consequatur quis accusamus esse. Sequi et repellendus dignissimos id hic. Perferendis eum eveniet voluptatem ab. Voluptas blanditiis dolorum est cum quasi numquam.', 'Consequuntur a libero vel earum. Rerum quia excepturi sed totam ut mollitia. Dolorem porro est est aut. Odit facilis ea aut repellendus ad nesciunt qui similique. A aliquid et sint rem esse molestiae. Vitae porro quis aut sequi ut voluptas. Repellendus quasi minima ipsa natus. Et odit aut praesentium qui porro ut ratione aliquam.', '307.00', NULL, 'DIGI1181960633', 'instock', 0, 104, 'digital_21.jpg', NULL, 2, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(4, 'optio dolore maxime earum', 'optio-dolore-maxime-earum', 'Magni sed eaque deleniti pariatur maiores minima. Laborum explicabo animi repellat ut reiciendis voluptatem doloremque qui. Dolores officia voluptate quae similique fuga.', 'Ea beatae delectus ut deserunt consectetur. Autem consequuntur sunt est et. Accusamus harum perferendis quia voluptate quod. Rerum qui eum saepe occaecati qui ad maiores. Labore sed hic quas rerum enim. Voluptas ut unde molestiae ad eius velit alias. Et hic aut quam eveniet voluptatem. Cum tenetur et porro quia qui fuga. Ad voluptatem vel sint inventore optio.', '362.00', NULL, 'DIGI1439629373', 'instock', 0, 197, 'digital_2.jpg', NULL, 4, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(5, 'rerum vitae iure quis', 'rerum-vitae-iure-quis', 'Aut quas qui animi consequuntur non. Saepe neque ut quis sunt laboriosam ut.', 'Iste molestiae nisi distinctio ut et. Soluta perferendis voluptas numquam cumque blanditiis sed perspiciatis consequuntur. Consequatur id pariatur architecto nesciunt consequatur. Reiciendis recusandae id ullam non aut ducimus at. Qui sed dolor nostrum qui sapiente quos cum. Porro quia ullam rem aliquam qui voluptatem animi quam. Aspernatur perferendis rerum deleniti sint quo. Et exercitationem quidem provident recusandae sunt. Voluptatibus aliquam voluptatem ab ratione incidunt tempora.', '15.00', NULL, 'DIGI1504885387', 'instock', 0, 127, 'digital_19.jpg', NULL, 1, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(6, 'voluptas in non saepe', 'voluptas-in-non-saepe', 'Temporibus corrupti in repellat qui in qui. Itaque reiciendis et eum quia esse. Est libero et ipsum est quisquam voluptas et.', 'Magnam illo nihil et non. Excepturi beatae doloremque id dignissimos modi temporibus architecto et. Est fuga molestiae nisi autem vel consequuntur. Inventore porro molestiae hic autem quo possimus quod. Sunt nulla non eveniet sed. Cum animi nihil sit quis pariatur. Commodi sed quo omnis quis consequatur eligendi. Perferendis quis quos nam et. Qui molestiae aliquid laudantium et.', '28.00', NULL, 'DIGI330389304', 'instock', 0, 188, 'digital_7.jpg', NULL, 3, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(7, 'amet velit aliquid molestias', 'amet-velit-aliquid-molestias', 'Aut porro quibusdam debitis nihil. Est nobis mollitia ipsum voluptas. Qui quas voluptatibus assumenda tempore. Sequi in quo illo.', 'Consequatur dolorem voluptatem aspernatur. Consequatur sit deserunt vitae sed nobis. Excepturi soluta enim quo sunt eius provident mollitia. Odio consequuntur et aut rerum et aspernatur. Autem qui eos voluptatem et quos. Consectetur minima neque voluptatem quidem et qui quia.', '421.00', NULL, 'DIGI2014356053', 'instock', 0, 198, 'digital_3.jpg', NULL, 1, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(8, 'officia fugiat rerum excepturi', 'officia-fugiat-rerum-excepturi', 'Sed sit perferendis dignissimos aperiam molestias accusamus. Consectetur numquam vitae aut asperiores voluptatibus sit asperiores. Nisi alias omnis ea. Ut quia impedit sed nihil commodi.', 'Illum nostrum possimus delectus inventore quaerat reprehenderit vitae laudantium. Placeat rem molestiae et corrupti et ea autem. Animi repudiandae natus et ut. Earum in qui iure. Inventore quia nam vitae quis quidem ut. Ut nam qui qui at eius. Aut odit necessitatibus provident excepturi consequatur consectetur tempora. Repellendus sequi culpa et placeat modi sed tenetur consequatur.', '95.00', NULL, 'DIGI1888835023', 'instock', 0, 152, 'digital_11.jpg', NULL, 5, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(9, 'necessitatibus aut sed et', 'necessitatibus-aut-sed-et', 'Et maiores ullam ut. Quos voluptatem voluptate et vel. Dolorum et repellendus iusto magnam.', 'Neque omnis eos sint ipsam iure. Dicta totam esse et voluptas architecto. Ex cumque sit velit perferendis doloribus et aspernatur. Provident asperiores ipsam voluptas enim consequuntur. Et aut quaerat repellendus enim delectus. Quisquam repudiandae odit atque impedit distinctio. Mollitia eos adipisci animi neque iste. Odio dolore alias a aut. Ratione earum et architecto nemo est est aspernatur eum. Dolorem numquam non et aut iure sequi. Quas ut aut quae iste.', '210.00', NULL, 'DIGI1560233349', 'instock', 0, 131, 'digital_13.jpg', NULL, 4, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(10, 'omnis maiores natus repellat', 'omnis-maiores-natus-repellat', 'Molestias fugiat asperiores optio a enim quae. Et dolorum quo voluptatibus quisquam id quia sint. Doloremque atque maiores voluptatibus molestiae qui consectetur animi.', 'Voluptate assumenda sed officiis et ullam sunt in. Voluptas sequi ipsa quis excepturi. Non blanditiis et quas omnis ut mollitia. Enim aut quibusdam voluptas accusamus error magnam. Commodi unde quo neque quos consequuntur odit. Ab beatae officiis est libero odio quasi. Soluta autem amet hic nihil. Neque architecto ea qui. Alias aut commodi autem excepturi. Praesentium quo asperiores libero eveniet nam aliquam. Adipisci quis quisquam ut. Veritatis repellendus quidem in.', '269.00', NULL, 'DIGI1112354241', 'instock', 0, 149, 'digital_18.jpg', NULL, 1, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(11, 'similique delectus at repudiandae', 'similique-delectus-at-repudiandae', 'Officia iusto odio voluptatem labore illum earum sint. Natus perferendis nisi facere excepturi ipsum reiciendis recusandae. Sequi sed est sunt nihil molestiae.', 'Praesentium ea ut ex architecto consectetur id exercitationem. Adipisci atque voluptatibus possimus reprehenderit non nulla. Ab id autem quas qui sint. Quam voluptatum neque inventore dolore autem itaque. Culpa ullam facere enim. Et sit doloribus voluptatem voluptatibus. Deserunt cum tempora qui reiciendis. Doloribus ut eaque ut est ex ullam molestiae. Expedita molestiae nam dolores eligendi id quia accusantium nesciunt.', '16.00', NULL, 'DIGI1894497855', 'instock', 0, 182, 'digital_4.jpg', NULL, 4, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(12, 'maxime eum et veniam', 'maxime-eum-et-veniam', 'Consectetur laborum est in odio. Consequatur harum eaque sunt facere et ea. Eum cum mollitia sit quas. Maxime deserunt doloribus vel quo. Optio aut ducimus eligendi. Et id molestiae a ad dolorum.', 'Recusandae et qui repellat laboriosam. Tempora voluptas est maiores quod vero quis itaque. Blanditiis in laudantium dolore. Eveniet inventore id tenetur aut. Quos voluptas occaecati deleniti molestiae. Mollitia totam qui odio placeat. Consectetur et enim aliquam harum eum doloremque aut. Veniam dolorem minima necessitatibus et deleniti quia. Maiores corrupti ea temporibus aut ut ea. Neque quasi quisquam eos. Corrupti culpa iste voluptatum repudiandae fugiat impedit et.', '427.00', NULL, 'DIGI314631886', 'instock', 0, 159, 'digital_6.jpg', NULL, 3, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(13, 'autem voluptatem voluptatem quia', 'autem-voluptatem-voluptatem-quia', 'Dolorem impedit ipsa vero necessitatibus. Nam quia ex deserunt cum quidem.', 'Incidunt sit dolorem eaque qui provident aperiam voluptas placeat. Praesentium tempora sit aspernatur nam. Et voluptatem ratione deserunt id architecto assumenda. Placeat voluptate et ut adipisci. Libero eius tempora natus natus praesentium. Iusto cupiditate aut aut quia eius ea. Aspernatur sed sunt sint et. Et deleniti dolores eum. Architecto in possimus ad laboriosam labore quam suscipit. Possimus omnis eum delectus sequi atque maiores. Est consequatur rerum nemo ea beatae.', '106.00', NULL, 'DIGI1061795237', 'instock', 0, 165, 'digital_22.jpg', NULL, 3, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(14, 'enim perspiciatis aut laudantium', 'enim-perspiciatis-aut-laudantium', 'Sit saepe accusamus et quia voluptas. Non ratione necessitatibus esse quasi nulla.', 'Laboriosam qui dolore consequatur molestiae a nemo ipsam. Animi est voluptatem delectus quidem quia molestias consequatur. Esse nam eos rerum ducimus et. Id voluptatum minima quasi sunt ipsam voluptatem itaque. Maxime et doloribus et. Omnis non enim reiciendis eos dolor. Ut mollitia distinctio sint quasi soluta facilis ipsum. Omnis sit et eveniet explicabo facilis.', '11.00', NULL, 'DIGI636762131', 'instock', 0, 142, 'digital_8.jpg', NULL, 3, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(15, 'soluta aut facilis et', 'soluta-aut-facilis-et', 'Rem esse ab delectus occaecati quia at sequi. Unde est animi molestiae doloribus ea distinctio voluptatibus. Voluptatibus sed sed quis et.', 'Repudiandae quos consequuntur aut rerum quis molestias quo. At temporibus laboriosam mollitia ut sint. Facilis sed aut quia autem ex illo aut ex. Rerum voluptate praesentium modi in porro aut provident. Sed corrupti minima doloribus reiciendis sapiente. Dolores quia corrupti tenetur quibusdam officiis quam ea. Tempore excepturi suscipit sunt ullam cum excepturi. Eveniet neque quia laboriosam.', '240.00', NULL, 'DIGI361159309', 'instock', 0, 177, 'digital_10.jpg', NULL, 5, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(16, 'quibusdam porro occaecati dolor', 'quibusdam-porro-occaecati-dolor', 'Et molestiae enim esse ab dolores. Natus mollitia omnis natus sit. Aut recusandae blanditiis esse excepturi voluptatem. Enim dolores laboriosam qui in vel molestias.', 'In tempora ullam iure veniam. Libero voluptatem similique ut nihil dolorum praesentium. Sapiente et earum vel quis voluptate repudiandae. Nemo eum repudiandae similique. Maiores maiores aut laudantium modi rerum omnis odit. Quia totam doloremque fuga minus. Dolores nesciunt ea quam velit. Nulla accusamus nobis quidem eum aliquam voluptas aut dolorem.', '52.00', NULL, 'DIGI2055509444', 'instock', 0, 126, 'digital_17.jpg', NULL, 3, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(17, 'dignissimos labore ut ut', 'dignissimos-labore-ut-ut', 'Aspernatur aut rerum ea fuga enim ut ea illo. Sint mollitia voluptatibus sapiente sed non nemo. Quas quibusdam reiciendis et tenetur.', 'Maiores dolorem aut qui est aperiam voluptatem qui blanditiis. Modi eum cumque enim est ullam iusto hic. Officia iure asperiores iusto sit ut. Natus nemo quis itaque impedit. Tempora ipsa incidunt a in recusandae eius odio. Deleniti nam rerum enim sit enim beatae voluptatem. Voluptates ex eius error ea recusandae in. Rerum qui cum voluptas laboriosam dolorum. Consequatur suscipit qui voluptas aperiam suscipit unde quas. Est sed voluptatem consequatur et delectus rerum.', '445.00', NULL, 'DIGI1614378821', 'instock', 0, 134, 'digital_20.jpg', NULL, 4, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(18, 'molestiae sit error officiis', 'molestiae-sit-error-officiis', 'Magnam quibusdam doloremque natus in sit totam voluptate numquam. Hic et ut eligendi animi cupiditate aut. Quo qui quos aperiam iusto est et. Voluptas mollitia impedit at voluptas totam distinctio.', 'Maxime et non perferendis laborum. Aut veniam blanditiis quasi dolores. Ea maiores culpa sit aliquam voluptatibus tempora ut eius. Culpa tenetur animi vel commodi. Non itaque molestias dolor vero consequatur quos. Incidunt omnis non assumenda quae porro. Nobis repellat praesentium quo ea et. Nihil quia at aut aut voluptatem qui saepe. Nihil id voluptatum et sunt at officia. Nihil sequi provident fugiat laboriosam beatae. Et corrupti sit ut odit voluptatem minima necessitatibus.', '196.00', NULL, 'DIGI528891387', 'instock', 0, 161, 'digital_5.jpg', NULL, 1, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(19, 'eius beatae fuga doloribus', 'eius-beatae-fuga-doloribus', 'Et et error iure suscipit eveniet vel vitae. Sint totam aperiam commodi rem pariatur rem nobis. Suscipit error qui et eos quia voluptatem dolores ipsam.', 'Cumque maiores aliquid alias atque nihil veniam vel. Nulla consequatur incidunt vel dolores ratione. In recusandae earum voluptatibus in. Necessitatibus fuga ab deserunt nostrum et. Et sequi dolore est eaque eum voluptatem. Harum omnis dolor exercitationem ut. Voluptatem rem voluptatem ipsam architecto. Accusantium nihil est quia molestiae ipsum magni et molestias. Tempore voluptatem totam et aut dolor. Placeat cupiditate beatae amet commodi. Nobis labore eius esse vero ullam.', '168.00', NULL, 'DIGI8106146', 'instock', 0, 136, 'digital_15.jpg', NULL, 2, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(20, 'nihil laboriosam iure molestiae', 'nihil-laboriosam-iure-molestiae', 'Officiis ut mollitia quis rerum quis occaecati et quod. Ut itaque aliquid eum officia dolorem veritatis sit. Quaerat quas repellat temporibus quae labore. Aut commodi aut natus.', 'Voluptatem nam deserunt est ut commodi ipsum sit. Esse dolor et est eum deserunt placeat. Quaerat consequuntur eaque odio modi et vitae ratione. Fuga cumque in assumenda. Reiciendis est omnis ratione. Nihil numquam quisquam eius accusamus. Laboriosam quo dolorem sit quia sint quas. Dolorem commodi ea officiis praesentium ut aut. Dolores aut asperiores suscipit omnis sed est.', '85.00', NULL, 'DIGI622366048', 'instock', 0, 116, 'digital_1.jpg', NULL, 3, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(21, 'quae ducimus et eum', 'quae-ducimus-et-eum', 'Facere sed animi dolore ut iure. Qui similique enim aliquid sit sed temporibus eius. Illum et ut non est repellat sunt.', 'Quo alias vel id consequatur iusto odit tempore. Natus blanditiis id molestias voluptates vel aut. Quis numquam voluptas beatae culpa recusandae. Vel explicabo sunt blanditiis similique mollitia iste. Dolores quidem et tenetur labore consectetur consequatur. Nobis sequi iste dolores impedit et consectetur non. Voluptas dolorem est enim aliquid ducimus velit. Aut quas libero quis tenetur sint perferendis.', '165.00', NULL, 'DIGI160772568', 'instock', 0, 173, 'digital_12.jpg', NULL, 4, '2023-03-06 01:32:19', '2023-03-06 01:32:19'),
(22, 'facilis deleniti sequi unde', 'facilis-deleniti-sequi-unde', 'Earum molestiae error ipsa illo quam enim officia. Quia molestias et sunt eos tempore. Iusto vel harum a perspiciatis.', 'Voluptatem sed aut ut ut ea aspernatur dignissimos. Est est ex sequi et. Consequuntur velit repellendus quam. Ipsum et ut voluptatem similique. Ullam non sunt dolores. Saepe tenetur assumenda dicta quo dolorem. Aut quod nam velit debitis. Aperiam iste iure dolor voluptates. Omnis hic expedita cupiditate omnis architecto. Qui quidem esse id dignissimos consequuntur excepturi perferendis.', '368.00', NULL, 'DIGI692690268', 'instock', 0, 105, 'digital_14.jpg', NULL, 5, '2023-03-06 01:32:19', '2023-03-06 01:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4HKggnflG206NLOyft2Pvc9qEfRCfg2Zy0MbHJYL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieUFNakFVQWFIMlFadGg2YUl4RExzSjhkT1c1UUhZUzFQc1dISVNVcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZWFyY2g/cHJvZHVjdF9jYXRfaWQ9JnByb2R1Y3RfY2F0ZT1BbGwlMjBDYXRlZ29yeSZzZWFyY2g9bW9iaWxlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1678243896),
('FYZhsFvZRoD4dh7R00RckW0q73YEAcymTPJhEWQW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ2o2VUl2aDEwN3BBempxaVAwMFY1ZEZnbGtTVTc0eVU4VGM3ZEF2bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo0OiJjYXJ0IjthOjA6e319', 1678182055),
('U8imH5JmxDkaMCXHpzbJbSADnQvCyDnvwQKl4NwM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTXhOb2htbGhrbmFnaWxTaTQ4djRnczRaMzU0cTZBcnFMcmFZR0RiMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6NDp7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIwMjdjOTEzNDFmZDVjZjRkMjU3OWI0OWM0YjZhOTBkYSI7czoyOiJpZCI7aToxO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjIwOiJ1dCBxdWkgdG90YW0gZGViaXRpcyI7czo1OiJwcmljZSI7ZDo0MDY7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO31zOjMyOiIzNzBkMDg1ODUzNjBmNWM1NjhiMThkMWYyZTRjYTFkZiI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjM3MGQwODU4NTM2MGY1YzU2OGIxOGQxZjJlNGNhMWRmIjtzOjI6ImlkIjtpOjI7czozOiJxdHkiO2k6MjtzOjQ6Im5hbWUiO3M6MjI6InRvdGFtIHBhcmlhdHVyIGF1dCBub24iO3M6NToicHJpY2UiO2Q6MTQ7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO31zOjMyOiJhNzc1YmFjOWNmZjdkZWMyYjk4NGUwMjNiOTUyMDZhYSI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImE3NzViYWM5Y2ZmN2RlYzJiOTg0ZTAyM2I5NTIwNmFhIjtzOjI6ImlkIjtpOjM7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6MzE6InJlbSBwYXJpYXR1ciBhc3Blcm5hdHVyIG51bXF1YW0iO3M6NToicHJpY2UiO2Q6MzA3O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiNDY4Mzk5NTgxMzQyNTA1YzQ3ZjQ2MTViODFiZWRhYTkiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiI0NjgzOTk1ODEzNDI1MDVjNDdmNDYxNWI4MWJlZGFhOSI7czoyOiJpZCI7aTo1O3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjIxOiJyZXJ1bSB2aXRhZSBpdXJlIHF1aXMiO3M6NToicHJpY2UiO2Q6MTU7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319fQ==', 1678211184);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and User for User Or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Satyam Singh', 'satyamsinghp40@gmail.com', NULL, '$2y$10$puqn0JfjIdUNCTp1YtK9Left2pg8o1CB.Q6YZz7nHpsLGklNe9Qwe', NULL, NULL, NULL, 'npAAX6NIkOpuMd0L8cws5tBmT5wtt6aEgGF0zbzxTnA8QcRcfpHxsEUmX8Zn', NULL, NULL, 'ADM', '2023-03-05 11:42:42', '2023-03-05 11:42:42'),
(2, 'Arvind Pratap Singh', 'arvindthakur6902@gmail.com', NULL, '$2y$10$Ddq8AWM59bq.Ys81Fa6UO.vrDnANkSDu7SHIyj5DVz7ALuJSrRr36', NULL, NULL, NULL, '8dSrtg4w3NRBrX6YFgzQKmlhz2YKL5u8ovmKZY27FC7j5bNnoTAjUZRM3Jgp', NULL, NULL, 'ADM', '2023-03-05 11:43:56', '2023-03-05 11:43:56'),
(3, 'Bhanu Pratap Singh', 'bhanusingh302@gmail.com', NULL, '$2y$10$xGscXJR6fwgfbIhtQnKCpucJXI/zagmjcgFs1i3xTEc/iW/j2dbzO', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2023-03-05 22:49:00', '2023-03-05 22:49:00'),
(4, 'pavan kumar', 'pavankumarp40@gmail.com', NULL, '$2y$10$OWC7ru38HRDKljcJlHYtIep1VKyfMYFjXIYNEnhEEZ0IDZiyZBR72', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2023-03-05 23:44:21', '2023-03-05 23:44:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
