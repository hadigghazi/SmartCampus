-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 07:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_campus_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `admin_type` enum('Super Admin','Admin') NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `admin_type`, `salary`, `department_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Super Admin', 134.00, 1, '2024-09-05 13:23:06', '2024-09-09 06:05:52', NULL),
(2, 14, 'Super Admin', NULL, 23, '2024-09-05 13:23:06', '2024-09-09 06:06:09', '2024-09-09 06:06:09'),
(3, 15, 'Admin', 11.00, 24, '2024-09-05 13:23:06', '2024-09-09 06:19:16', '2024-09-09 06:19:16'),
(4, 17, 'Admin', NULL, 25, '2024-09-05 13:23:06', '2024-09-05 13:23:06', NULL),
(5, 17, 'Super Admin', NULL, 26, '2024-09-05 13:23:06', '2024-09-05 13:23:06', NULL),
(6, 18, 'Admin', NULL, 27, '2024-09-05 13:23:06', '2024-09-05 13:23:06', NULL),
(7, 19, 'Admin', NULL, 28, '2024-09-05 13:23:06', '2024-09-05 13:23:06', NULL),
(8, 20, 'Admin', NULL, 28, '2024-09-05 13:23:06', '2024-09-07 12:48:02', NULL),
(9, 21, 'Admin', NULL, 30, '2024-09-05 13:23:06', '2024-09-07 12:47:51', '2024-09-07 12:47:51'),
(10, 22, 'Super Admin', NULL, 9, '2024-09-05 13:23:06', '2024-09-07 12:42:02', '2024-09-07 12:42:02'),
(11, 31, 'Admin', NULL, 11, '2024-09-09 03:58:29', '2024-09-09 03:58:29', NULL),
(12, 12, 'Admin', NULL, 13, '2024-09-09 04:01:23', '2024-09-09 04:01:23', NULL),
(13, 9, 'Admin', 12002.00, 12, '2024-09-09 05:58:16', '2024-09-09 05:58:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ai_instructor_interactions`
--

CREATE TABLE `ai_instructor_interactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ai_instructor_interactions`
--

INSERT INTO `ai_instructor_interactions` (`id`, `user_id`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'hi', 'Hello! How can I assist you today?', '2024-09-06 07:33:04', '2024-09-06 07:33:56', '2024-09-06 07:33:56'),
(2, 1, 'hey', 'Hello! How can I assist you today?', '2024-09-06 07:33:50', '2024-09-06 07:36:39', '2024-09-06 07:36:39'),
(3, 1, 'hi', 'Hello! How can I assist you today?', '2024-09-06 07:59:18', '2024-09-11 16:09:31', '2024-09-11 16:09:31'),
(4, 1, 'What is Javascript', 'JavaScript is a popular, high-level programming language that is widely used for creating interactive and dynamic components on web pages. It is a key technology for front-end web development, allowing developers to add functionality such as animations, form validation, and interactivity to websites. JavaScript can also be used for back-end development with platforms like Node.js.', '2024-09-11 05:35:53', '2024-09-11 05:35:53', NULL),
(5, 1, 'hi', 'Hello! How can I help you today?', '2024-09-11 15:35:07', '2024-09-11 15:35:07', NULL),
(6, 1, 'hi', 'Hello! How can I assist you today?', '2024-09-11 15:41:58', '2024-09-11 15:41:58', NULL),
(7, 1, 'what is js', '\"JS\" typically refers to JavaScript, which is a widely-used programming language for creating interactive and dynamic websites. JavaScript is a key technology for front-end web development and allows developers to add interactivity, animations, and other dynamic features to websites.', '2024-09-11 15:42:13', '2024-09-11 15:42:13', NULL),
(8, 1, 'what is js', 'JS is an abbreviation for JavaScript, which is a popular programming language used for creating interactive and dynamic elements on websites. It is commonly used for adding animations, validating forms, creating interactive maps, and many other web development tasks.', '2024-09-11 15:45:51', '2024-09-11 15:45:51', NULL),
(9, 1, 'm', 'Hello! How can I assist you with the letter \"m\"?', '2024-09-11 15:53:33', '2024-09-11 15:53:33', NULL),
(10, 1, 'what is python', 'Python is a high-level, interpreted programming language known for its simplicity and readability. It is widely used in various fields such as web development, data science, artificial intelligence, and more. Python\'s versatility and large standard library make it a popular choice for beginners and experienced programmers alike.', '2024-09-11 15:55:49', '2024-09-11 15:55:49', NULL),
(11, 1, 'ohh', 'Hello! How can I assist you today?', '2024-09-11 15:56:37', '2024-09-11 15:56:37', NULL),
(12, 1, 'what is the capital of lebanon', 'The capital of Lebanon is Beirut.', '2024-09-11 15:57:09', '2024-09-11 15:57:09', NULL),
(13, 1, 'ff', 'It seems like you might have sent a message by mistake. If you have any questions or need assistance, feel free to ask!', '2024-09-11 16:01:44', '2024-09-11 16:01:44', NULL),
(14, 1, 'hiiiiiiiii', 'Hello! How can I assist you today?', '2024-09-11 16:02:14', '2024-09-11 16:02:14', NULL),
(15, 1, 'what is react', 'React is a popular JavaScript library used for building interactive user interfaces. It was developed by Facebook and is known for its component-based architecture that allows developers to build dynamic and reusable UI components. React makes it easier to create and manage complex UIs by efficiently updating and rendering changes to the user interface based on data changes. It is commonly used in combination with other libraries and frameworks, such as Redux and React Router, to create modern and powerful web applications.', '2024-09-11 16:02:55', '2024-09-11 16:02:55', NULL),
(16, 1, 'what is ts', 'TS can refer to different things depending on the context. It could stand for \"typescript,\" a programming language, or \"time series,\" a set of data points collected or recorded at specific time intervals. Can you provide more context so I can give you a more accurate answer?', '2024-09-11 16:04:54', '2024-09-11 16:04:54', NULL),
(17, 1, 'what is react js?', '**React.js** is an open-source JavaScript library created by Facebook for building user interfaces, specifically for single-page applications. It allows developers to create interactive UI components which can be re-used throughout the application. React uses a declarative approach to describe how the UI should look, making it easier to manage and update the UI as the application state changes. It also provides efficient rendering through the use of a virtual DOM, which helps in improving performance.', '2024-09-11 16:06:41', '2024-09-11 16:06:41', NULL),
(18, 1, 'what is react?', 'React is a popular JavaScript library used for building user interfaces. It was developed by Facebook and is widely used in web development to create dynamic and interactive applications. React allows developers to create reusable components that can be easily manipulated to update the user interface in response to user actions or changes in data. It uses a virtual DOM (Document Object Model) to improve performance by minimizing the number of updates to the actual DOM. React is commonly used in conjunction with other libraries and frameworks, such as Redux, to manage state and data flow within an application.', '2024-09-11 16:08:56', '2024-09-11 16:08:56', NULL),
(19, 1, 'what is mrna?', 'mRNA stands for messenger RNA. It is a type of RNA molecule that carries the genetic information transcribed from DNA in the cell nucleus to the ribosomes in the cytoplasm. mRNA serves as a template for protein synthesis, where the information encoded in the mRNA is translated into a specific sequence of amino acids, the building blocks of proteins.', '2024-09-12 17:36:36', '2024-09-12 17:36:36', NULL),
(20, 1, 'what is react?', 'React is a popular JavaScript library used for building user interfaces for web applications. It is maintained by Facebook and a community of individual developers. React allows developers to create interactive UI components that can dynamically update based on changes to data without the need to reload the entire page. Its component-based architecture promotes reusability, efficiency, and maintainability in web development projects.', '2024-09-13 16:35:28', '2024-09-13 16:35:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `published_date` date NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `visibility` enum('General','Admins','Instructors','Students') NOT NULL,
  `category` enum('General','Urgent','Event') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `published_date`, `author_id`, `visibility`, `category`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'ann', 'Et quam et corporis quia in modi iure aut. Non qui dolores veniam nostrum quia illum. Molestiae corporis veniam ducimus dignissimos.', '1992-09-12', 1, 'Instructors', 'General', '2024-09-06 03:25:40', '2024-09-08 03:57:30', '2024-09-08 03:57:30'),
(3, 'Et labore id aspernatur optio id qui.', 'Voluptates ut laboriosam consequatur velit officiis repellat. Ducimus facere at in eum omnis placeat. Nostrum atque exercitationem vero aut incidunt fuga aut.', '1987-01-02', 1, 'Students', 'General', '2024-09-06 03:25:40', '2024-09-06 03:25:40', NULL),
(4, 'Minus deserunt est provident et exercitationem.', 'Molestiae amet sint ut nam. Ratione sit ex repellendus quo omnis. Perspiciatis voluptates corrupti a eos est. Quia sequi unde iusto laboriosam. Est voluptatum omnis soluta voluptates possimus impedit et assumenda.', '2022-09-24', 1, 'Students', 'General', '2024-09-06 03:25:40', '2024-09-06 03:25:40', NULL),
(5, 'Qui quae ipsa ducimus qui rerum assumenda.', 'Dolores commodi ratione vel ut et. At delectus quam nobis qui debitis ipsum dicta sed. Voluptatibus similique quisquam tempora aut aliquam. Aut rem et consequatur et id.', '2009-09-05', 1, 'Students', 'General', '2024-09-06 03:25:40', '2024-09-08 03:14:44', '2024-09-08 03:14:44'),
(6, 'Ullam perspiciatis dolores amet officiis.', 'Et possimus odit tempora voluptatem. Recusandae in perferendis incidunt excepturi expedita. Cumque eius harum qui. Earum qui quis magnam laborum.', '2013-12-05', 1, 'General', 'General', '2024-09-06 03:25:40', '2024-09-08 03:17:17', NULL),
(7, 'Eos omnis sit dolor vitae officiis iusto.', 'Ut qui nulla est quam nobis ea. Consequuntur recusandae vel odit aperiam. Rem excepturi minima laboriosam omnis sint cumque. Consequatur molestias est explicabo.', '2005-08-06', 1, 'Students', 'General', '2024-09-06 03:25:40', '2024-09-06 03:25:40', NULL),
(8, 'Mollitia voluptas perspiciatis nesciunt et qui.', 'Eum aliquam iure omnis ut. Nostrum tempore nam temporibus esse maiores quam cupiditate velit. Consequatur quisquam et porro qui quo iusto non. Maxime aut in fugit. Veniam voluptatem nam molestiae et deserunt.', '2001-05-10', 1, 'Students', 'General', '2024-09-06 03:25:40', '2024-09-06 03:25:40', NULL),
(9, 'Quo voluptas corrupti et sint.', 'Ea labore officiis soluta. Placeat omnis et qui molestias at delectus. Rerum labore autem possimus dolorem consequatur.', '1981-08-10', 1, 'Students', 'General', '2024-09-06 03:25:40', '2024-09-08 03:06:39', '2024-09-08 03:06:39'),
(10, 'Unde dignissimos quo cumque quidem ducimus accusantium.', 'Quas quia quia quis qui eos. Occaecati et porro excepturi rerum temporibus. Enim eos et aut sed impedit molestiae. Veritatis molestias illo inventore voluptatem consequatur.', '1986-10-14', 1, 'Students', 'General', '2024-09-06 03:25:40', '2024-09-06 03:25:40', NULL),
(11, 'Adipisci doloribus dolor repudiandae molestias doloremque ut.', 'Ut facere veniam exercitationem voluptatum. Commodi veritatis beatae assumenda consequatur quis inventore facilis. Voluptatem suscipit molestiae fugiat ipsum aut repudiandae.', '1995-06-26', 1, 'Students', 'General', '2024-09-06 03:25:40', '2024-09-06 03:25:40', NULL),
(12, 'new', 'wwwwwwwwwwww', '2024-09-08', 1, 'General', 'General', '2024-09-08 03:20:34', '2024-09-08 03:20:34', NULL),
(13, 'new', 'wwwwwwwwwwww', '2024-09-08', 1, 'Students', 'General', '2024-09-08 03:41:44', '2024-09-08 03:41:44', NULL),
(14, 'Quia qui molestias laborum rerum nihil.', 'Et quam et corporis quia in modi iure aut. Non qui dolores veniam nostrum quia illum. Molestiae corporis veniam ducimus dignissimos.', '1992-09-12', 1, 'Instructors', 'General', '2024-09-08 03:43:38', '2024-09-08 03:43:38', NULL),
(15, 'Quia qui molestias laborum rerum nihil.', 'Et quam et corporis quia in modi iure aut. Non qui dolores veniam nostrum quia illum. Molestiae corporis veniam ducimus dignissimos.', '1992-09-12', 1, 'Instructors', 'General', '2024-09-08 03:45:30', '2024-09-08 03:45:30', NULL),
(16, 'Quia qui molestias laborum rerum nihil.', 'Et quam et corporis quia in modi iure aut. Non qui dolores veniam nostrum quia illum. Molestiae corporis veniam ducimus dignissimos.', '1992-09-12', 1, 'Students', 'General', '2024-09-08 03:47:30', '2024-09-08 03:47:30', NULL),
(17, 'new', 'wwwwwwwwwwww', '2024-09-08', 1, 'Students', 'General', '2024-09-08 03:48:58', '2024-09-08 03:48:58', NULL),
(18, 'tttttttttt', 'ttttttttt', '2024-09-08', 1, 'Students', 'General', '2024-09-08 03:52:39', '2024-09-08 03:52:39', NULL),
(19, 'tttttttttt', 'ttttttttt', '2024-09-08', 1, 'Students', 'General', '2024-09-08 03:52:54', '2024-09-08 03:52:54', NULL),
(20, 'tttttttttt', 'ttttttttt', '2024-09-08', 1, 'Students', 'General', '2024-09-08 03:53:45', '2024-09-08 03:53:45', NULL),
(21, 'tttttttttt', 'ttttttttt', '2024-09-08', 1, 'Students', 'General', '2024-09-08 03:54:33', '2024-09-08 03:54:33', NULL),
(22, 'tttttttttt', 'ttttttttt', '2024-09-08', 1, 'Students', 'General', '2024-09-08 03:55:03', '2024-09-08 03:55:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `due_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `course_instructor_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `description`, `due_date`, `created_at`, `updated_at`, `deleted_at`, `course_instructor_id`) VALUES
(1, 'aa', 'aaaaafaaaaa', '2024-11-11', '2024-09-06 01:21:35', '2024-09-06 10:58:26', '2024-09-06 10:58:26', 1),
(2, 'assignment', 'aaaa', '2024-09-09', '2024-09-06 10:58:12', '2024-09-06 10:58:12', NULL, 1),
(3, 'ee', 'ee', '2024-09-07', '2024-09-06 12:16:03', '2024-09-06 12:16:10', '2024-09-06 12:16:10', 1),
(4, '1', '1', '2024-10-10', '2024-09-06 12:25:14', '2024-09-06 12:31:25', '2024-09-06 12:31:25', 1),
(5, 'q', 'q', '2024-10-08', '2024-09-06 12:31:22', '2024-09-06 12:31:22', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `campus_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `campus_id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'vel', 1, 'Temporibus distinctio est vitae consequatur voluptatibus non quia. Voluptas corporis dolor animi nam pariatur. Voluptatem in assumenda et accusantium dolor quo dignissimos porro.', '2024-09-05 12:16:13', '2024-09-08 07:43:45', '2024-09-08 07:43:45'),
(2, 'ute', 24, 'Molestiae sunt possimus eius voluptatem eos. Facere at molestiae assumenda enim et quia voluptate rerum. Error sint blanditiis repudiandae optio aliquam. Assumenda vel harum sequi ea.', '2024-09-05 12:16:13', '2024-09-08 07:43:56', NULL),
(3, 'ut', 24, 'Consequuntur impedit qui molestias. Qui expedita qui minus nam dolores saepe. Qui in debitis doloremque facere sunt et tempora. Aut voluptatem adipisci dicta suscipit.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(4, 'distinctio', 25, 'Impedit velit distinctio eligendi reprehenderit. Minima unde voluptas magnam et ut ipsa. Aut sunt iure dolores soluta ea dolorem necessitatibus esse. Aliquid natus voluptatem veniam ea. Reprehenderit quidem ut inventore minima ullam corporis.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(5, 'et', 26, 'Harum culpa deleniti repellat et ut. Omnis odit quas suscipit atque in. Omnis illo labore explicabo totam.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(6, 'quos', 27, 'Perferendis culpa temporibus nam rem neque. Nihil aut ea nisi alias. Et excepturi debitis doloribus officia velit cupiditate. Repudiandae nihil accusamus debitis sit.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(7, 'impedit', 28, 'Itaque autem fugiat aut distinctio iste. Porro et fuga rerum officia. Sint sunt nihil voluptatum rerum sed dolores consectetur cupiditate. Repudiandae quidem eum rem.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(8, 'omnis', 29, 'Quia numquam sunt reiciendis ut. Magni nisi qui ullam molestiae iure fuga odio aut. Voluptatem cum nemo et saepe expedita ut dicta dolorum.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(9, 'ea', 30, 'Eum eos modi excepturi qui provident. Voluptatem excepturi sunt qui sed molestiae.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(10, 'voluptates', 31, 'In possimus et rerum placeat quasi. Vitae enim quia nisi. Voluptatum velit consequatur cumque est reprehenderit cupiditate. Accusantium nihil consequuntur ipsam porro vel iusto.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(11, 'vewl', 22, 'Temporibus distinctio est vitae consequatur voluptatibus non quia. Voluptas corporis dolor animi nam pariatur. Voluptatem in assumenda et accusantium dolor quo dignissimos porro.', '2024-09-05 12:16:45', '2024-09-05 12:17:00', NULL),
(12, 'et', 32, 'Consequatur voluptas voluptate aut saepe velit quod tempore. Aut eum sunt enim autem voluptatibus pariatur aspernatur. Occaecati velit ratione impedit pariatur ea. Ea voluptatem recusandae qui in rerum enim mollitia.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(13, 'quia', 33, 'Totam quo doloremque iste sed deleniti debitis et. Sed laboriosam reiciendis et saepe voluptatem aut. Vel expedita ut consequatur nemo veritatis atque.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(14, 'eum', 34, 'Voluptatem quo rerum architecto esse labore similique ipsam officia. Alias est officiis et necessitatibus est repellat. Dolorem accusantium ad numquam. Aspernatur eligendi maxime quia inventore sed nam et.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(15, 'nihil', 35, 'Alias sunt minima voluptatum natus sunt iusto non consequatur. Ex adipisci accusamus quas sunt quae. Aut assumenda consequatur facilis error eveniet ullam architecto. Dolore illum necessitatibus facere perferendis molestiae.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(16, 'magni', 36, 'Alias et laboriosam nisi et nostrum assumenda. Porro error est et. Ab qui labore veritatis.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(17, 'velit', 37, 'Assumenda quis consequatur provident aut. Suscipit pariatur ut optio maiores eos quas rem doloremque. Sapiente consequuntur et dolorem eveniet modi minima quibusdam.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(18, 'eos', 38, 'Sint molestiae ratione et numquam nostrum voluptatem error. Sed voluptatibus possimus facere veniam. Accusamus fugit quia suscipit optio architecto ea.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(19, 'iste', 39, 'Sed non expedita modi et deleniti provident doloremque. Repellendus et tempora non. Tenetur nihil sequi perferendis esse ex.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(20, 'excepturi', 40, 'Aut tempora consequuntur quis ut odit. Ducimus aperiam sit eum ea natus nesciunt voluptatem. Ut et velit dolor ratione. Est saepe et consequatur quos. Necessitatibus et fugiat quia architecto.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(21, 'dolor', 41, 'Quia id amet deserunt maiores. Quidem sunt beatae beatae possimus est et. Facilis quis architecto qui cupiditate. Minus modi voluptatem culpa inventore quia corporis. Tenetur praesentium unde qui voluptatibus nostrum.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(22, 'wwww', 13, 'wwwwwwww', '2024-09-08 07:44:15', '2024-09-08 07:44:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_borrows`
--

CREATE TABLE `book_borrows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `status` enum('Requested','Rejected','Borrowed','Returned','Overdue') NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_borrows`
--

INSERT INTO `book_borrows` (`id`, `student_id`, `book_id`, `due_date`, `return_date`, `status`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2024-09-24', NULL, 'Requested', 'i want it', '2024-09-06 07:08:07', '2024-09-08 02:22:41', '2024-09-08 02:22:41'),
(2, 1, 18, '2025-10-03', NULL, 'Returned', NULL, '2024-09-08 02:08:47', '2024-09-08 02:27:36', NULL),
(3, 1, 19, '1981-05-30', NULL, 'Overdue', NULL, '2024-09-08 02:08:47', '2024-09-08 02:09:04', NULL),
(4, 1, 20, '2009-02-26', '2015-06-09', 'Overdue', NULL, '2024-09-08 02:08:47', '2024-09-08 02:09:04', NULL),
(5, 1, 21, '1992-11-12', '2000-04-18', 'Overdue', NULL, '2024-09-08 02:08:47', '2024-09-08 02:09:04', NULL),
(6, 1, 22, '1999-11-10', '2000-07-01', 'Returned', NULL, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(7, 1, 23, '1988-12-22', '2014-09-26', 'Returned', NULL, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(8, 1, 24, '1984-03-01', '1983-12-22', 'Returned', NULL, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(9, 1, 25, '1971-06-21', NULL, 'Returned', 'Nam aut quo minima enim et et alias. Voluptatem sed nihil occaecati maxime. Voluptatibus aut est ut.', '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(10, 1, 26, '2015-08-05', '1989-05-14', 'Overdue', NULL, '2024-09-08 02:08:47', '2024-09-08 02:09:04', NULL),
(11, 1, 27, '1972-07-20', NULL, 'Returned', NULL, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bus_registrations`
--

CREATE TABLE `bus_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `bus_route_id` bigint(20) UNSIGNED NOT NULL,
  `registration_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_registrations`
--

INSERT INTO `bus_registrations` (`id`, `student_id`, `bus_route_id`, `registration_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, '2024-09-09', '2024-09-08 17:18:32', '2024-09-09 00:38:40', '2024-09-09 00:38:40'),
(2, 3, 2, '2024-09-09', '2024-09-09 00:39:14', '2024-09-09 00:39:14', NULL),
(3, 1, 2, '2024-09-09', '2024-09-09 00:40:41', '2024-09-09 00:40:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bus_routes`
--

CREATE TABLE `bus_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `schedule` text DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `campus_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bus_routes`
--

INSERT INTO `bus_routes` (`id`, `route_name`, `description`, `schedule`, `capacity`, `campus_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'route 1', '111111111', 'monday', 1, 1, '2024-09-08 16:33:04', '2024-09-08 16:33:29', '2024-09-08 16:33:29'),
(2, 'r222b', 'rhh', 'r', 2, 14, '2024-09-08 16:48:25', '2024-09-09 00:31:28', NULL),
(3, 'r', 'r', 'r', 2, 14, '2024-09-08 16:48:33', '2024-09-08 16:48:49', '2024-09-08 16:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `campuses`
--

CREATE TABLE `campuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campuses`
--

INSERT INTO `campuses` (`id`, `name`, `location`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'kket', '384 Kelvin Riv er Apt. 648Port Maximo, AR 97025', 'kkkkkkkkkk', '2024-09-05 12:08:46', '2024-09-08 06:28:10', NULL),
(2, 'et', '490 Ezra Forks Suite 206\nNorth Makenzie, NY 43722-7982', 'Architecto fugiat saepe sequi accusantium veniam aut necessitatibus. Ipsa quis amet facere eveniet. Recusandae labore inventore distinctio accusantium porro est perferendis.', '2024-09-05 12:08:46', '2024-09-05 12:08:46', NULL),
(3, 'temporibus', '8744 Glover Knoll\nNorth Margret, CA 90178', 'Consequatur similique omnis aut. Exercitationem sed sed quod itaque. Aut non dolores sunt fugit.', '2024-09-05 12:08:46', '2024-09-05 12:08:46', NULL),
(4, 'iusto', '20282 Zulauf Summit\nWarrenport, GA 81950', NULL, '2024-09-05 12:08:46', '2024-09-05 12:08:46', NULL),
(5, 'voluptatem', '3862 Reinger Club Suite 194\nPort Lessieberg, IA 47278-4514', NULL, '2024-09-05 12:08:46', '2024-09-05 12:08:46', NULL),
(6, 'vel', '745 Dare Centers Apt. 160\nWest Alvenahaven, OK 56376-4343', 'Corporis autem reprehenderit aut ut neque. Accusamus ut molestias officiis ipsam. Aspernatur debitis tenetur et veritatis eos nobis.', '2024-09-05 12:08:46', '2024-09-05 12:08:46', NULL),
(7, 'et', '99188 Stamm Circle Apt. 686\nNorth Lavernfort, DE 06273', NULL, '2024-09-05 12:08:46', '2024-09-05 12:08:46', NULL),
(8, 'nemo', '3493 Ima Station\nNorth Arleneport, IL 86117', NULL, '2024-09-05 12:08:46', '2024-09-05 12:08:46', NULL),
(9, 'eum', '661 Torrance Bypass\nAdrienneside, NH 85010', NULL, '2024-09-05 12:08:46', '2024-09-05 12:08:46', NULL),
(10, 'temporibus', '89453 Ruecker Green Apt. 056\nWest Justiceberg, MO 55776', 'Aperiam quia dicta doloremque et eum aut. Ad sed voluptatem qui soluta. Mollitia neque ullam reprehenderit. Ut voluptas quaerat culpa dolor inventore.', '2024-09-05 12:08:46', '2024-09-05 12:08:46', NULL),
(11, 'et', '384 Kelvin River Apt. 648\nPort Maximo, AR 97025', 'ddd', '2024-09-05 12:09:26', '2024-09-05 12:09:44', NULL),
(12, 'ullam', '79038 White Point\nFarrellmouth, WI 99273', 'Quos non qui consequuntur laudantium dicta iusto doloremque consequuntur. Dolorem quia asperiores excepturi inventore tempore. Et modi nesciunt hic et.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(13, 'qui', '509 Kub Motorway Suite 164\nDietrichshire, LA 77431-4794', NULL, '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(14, 'rem', '347 Aisha Expressway Suite 003\nEast Aileenfort, IA 06410-8995', NULL, '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(15, 'nostrum', '2470 Jacobson Valley Suite 576\nBashirianshire, AZ 76356-6764', NULL, '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(16, 'possimus', '272 Alfonso Creek\nKunzeton, DC 19586-6067', 'Sapiente dolorem non saepe nobis autem quia iusto. Natus dolorem expedita reprehenderit fugiat nesciunt magni.', '2024-09-05 12:10:29', '2024-09-08 06:27:08', '2024-09-08 06:27:08'),
(17, 'quae', '29618 Hickle Lock Apt. 396\nSouth Obieland, KS 35953-3222', NULL, '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(18, 'sit', '1219 Wuckert Avenue\nAlbinfort, SD 92175-8780', 'Possimus sed saepe voluptas et atque aut voluptatem non. Quis eius voluptate maxime numquam fuga eos id. Unde nisi totam saepe quaerat consequatur porro. Accusamus quam repudiandae rerum.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(19, 'qui', '83005 Stanton Land Suite 722\nYoshikomouth, DC 91241', 'In neque quo quam est porro perferendis omnis. Et architecto aspernatur deleniti et magni rerum quia qui. Totam dolore voluptas veniam aut.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(20, 'cupiditate', '77755 Cormier Junction Suite 166\nWest Raheem, ME 42921', 'Dicta aliquid dolore et sint vel. Voluptatum magni voluptatum quia alias vitae sit. Sequi omnis maxime exercitationem alias eaque ipsa.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(21, 'sunt', '731 O\'Keefe Lakes\nBonnieborough, ID 99601-5753', 'Est aperiam odio et molestias. Earum id exercitationem dicta temporibus est quia reiciendis autem. Ut necessitatibus quasi error aut.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(22, 'ullam', '66898 Gibson Islands Suite 366\nWest Karinaberg, VA 09409', NULL, '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(23, 'repudiandae', '642 Annette Ville Suite 828\nGodfreyland, NE 71626', NULL, '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(24, 'sequi', '378 Rossie Roads Apt. 074\nPort Juliannechester, NY 05437-7907', 'Labore corrupti vitae repudiandae consequatur eligendi sunt. Doloribus itaque saepe quia. Libero quis non autem voluptatibus eveniet.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(25, 'ullam', '797 Daphney Heights Suite 443\nChristiansenview, DE 24435-5780', 'Laudantium modi mollitia minima excepturi. Officiis a fugiat vero quo non facere dignissimos. Ipsa aliquam nemo praesentium ea. Et et neque non.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(26, 'magnam', '620 Mosciski Burg\nLake Eda, PA 90138', 'Maxime expedita dolorum consequatur consequatur. Rem rerum quis provident voluptates. Quas reiciendis quaerat quam. Similique id possimus quo quasi minus.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(27, 'exercitationem', '1356 Noe Mill\nWolffort, CO 47843', 'Quia asperiores omnis quo fugiat neque. Debitis mollitia placeat enim aliquid et dolorem.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(28, 'repellat', '14052 Goodwin Ramp\nEast Jeffereychester, CA 25394-1743', 'Blanditiis nisi vel consequatur tempora modi quisquam vel. Esse distinctio dolorem natus ipsa qui reiciendis. Voluptatem aut consequatur magni dolor et. Vel et deleniti numquam enim animi.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(29, 'voluptatum', '3665 Elna Plaza\nBayleefurt, NM 96434', NULL, '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(30, 'eaque', '391 Mara Ford Apt. 480\nAmelieburgh, TN 10172', NULL, '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(31, 'ipsum', '866 Stefan Port Suite 433\nNew Marcelland, AK 41425-8098', 'Dolorem modi error rem neque non. Dicta soluta sint sunt. Veritatis odio laudantium minus itaque magni. Dicta omnis amet voluptatem vel.', '2024-09-05 12:16:13', '2024-09-05 12:16:13', NULL),
(32, 'quasi', '99667 Tavares Brooks\nWest Ashtynchester, CO 00673', NULL, '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(33, 'rerum', '18551 Heller Shore\nEast Colt, WI 68045-2628', 'Cupiditate consequuntur exercitationem quia minima. Enim non doloremque unde est consequatur soluta est. Id consectetur quos a dicta. Dolores occaecati perspiciatis ut et.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(34, 'et', '52889 Daniela Inlet\nSchimmelmouth, SC 41427', NULL, '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(35, 'modi', '899 Tressa Ridge Apt. 641\nWest Bradford, VT 91465', 'Repellat velit esse vero aspernatur qui veniam eum. Voluptates repellendus doloribus accusamus fuga in quidem.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(36, 'quos', '2079 Hollie Street\nO\'Keefeport, VA 65906-5558', 'Expedita dolorem harum amet maxime id. Consequatur et voluptas iusto qui aspernatur. Nobis aliquid quis quis atque occaecati iure.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(37, 'pariatur', '62512 Smitham Vista\nNorth Portertown, WY 90075', 'Quasi hic ab et omnis suscipit. Nemo corporis ab qui temporibus quisquam. Aut vel ea totam ea ipsum. In inventore sed explicabo aut.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(38, 'quas', '5470 Ankunding Wall\nWest Grantstad, OR 77503', 'Assumenda recusandae at ducimus quia. Qui nulla dolorem qui veritatis qui recusandae eligendi. Eaque sequi labore ad assumenda.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(39, 'unde', '780 Heller Glen Suite 488\nNorth Shaniaside, OH 12463', 'Asperiores minima ipsam eligendi voluptatem. At qui necessitatibus officiis nostrum soluta. Aperiam quis nesciunt consequatur fugit.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(40, 'atque', '76695 Rowan Landing\nHegmannland, MN 83341-6866', 'Nam fugiat id molestiae rerum amet. Est aperiam laudantium quisquam aliquid. Excepturi voluptatem sint voluptate perspiciatis dignissimos est vel. Ut aliquid necessitatibus in aliquam unde sed at. Aspernatur nihil omnis voluptatibus ea labore.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(41, 'libero', '3412 Goodwin Flats\nEldridgeshire, KY 86687-2843', NULL, '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(42, 'provident', '6618 Lowe Trafficway\nKirlinport, OK 24887-7023', NULL, '2024-09-05 12:44:01', '2024-09-05 12:44:01', NULL),
(43, 'officia', '80636 Colby Harbor Suite 886\nNew Kaleighchester, IA 25741-3601', 'Soluta veniam minima qui sed laboriosam qui. Corporis itaque soluta voluptas quis voluptas iusto.', '2024-09-05 12:44:01', '2024-09-05 12:44:01', NULL),
(44, 'neque', '155 Schiller Island Apt. 274\nTheresiafurt, NY 86714', 'Commodi eum repudiandae atque eaque voluptates quo. Et dolores corrupti quam vel non minima nulla. Voluptatem ullam necessitatibus quos sed. Laborum aut quis voluptas in.', '2024-09-05 12:44:02', '2024-09-05 12:44:02', NULL),
(45, 'dolor', '5523 Mazie Pass\nPort Chanelleland, MA 18068-3342', NULL, '2024-09-05 12:44:02', '2024-09-05 12:44:02', NULL),
(46, 'in', '1221 Joannie Stravenue Apt. 683\nArnaldofort, NM 55884-9263', NULL, '2024-09-05 12:44:02', '2024-09-05 12:44:02', NULL),
(47, 'expedita', '5864 Mosciski Camp Suite 207\nNew Paulashire, AZ 64996-1192', NULL, '2024-09-05 12:44:03', '2024-09-05 12:44:03', NULL),
(48, 'dolor', '3329 Leuschke Plaza\nNikolausland, IL 13436-9204', NULL, '2024-09-05 12:44:03', '2024-09-05 12:44:03', NULL),
(49, 'aut', '825 Maureen Parkways Suite 819\nNew Elisha, WV 52716', NULL, '2024-09-05 12:44:03', '2024-09-05 12:44:03', NULL),
(50, 'non', '52846 Juana Summit Suite 193\nUllrichside, NE 59008-6220', NULL, '2024-09-05 12:44:03', '2024-09-05 12:44:03', NULL),
(51, 'et', '751 Bruen Tunnel\nBoehmborough, UT 19898-6708', 'Ut consequatur quis debitis eos. Et nemo quia dolorem. Quae beatae ut quisquam et autem. Dolorum est explicabo qui nemo error veniam minima. Rerum iure dolorum facilis sunt.', '2024-09-05 12:44:04', '2024-09-05 12:44:04', NULL),
(52, 'sequi', '1452 Janis Common Apt. 212\nWildermanstad, PA 32109', NULL, '2024-09-05 13:23:03', '2024-09-05 13:23:03', NULL),
(53, 'accusamus', '610 Botsford Tunnel Suite 191\nLake Aidaburgh, MS 32180-4731', 'Distinctio voluptates reprehenderit laboriosam voluptates voluptatem voluptates quas. Ab ipsa iure commodi ea dolorum numquam. Esse et alias voluptas sint dolorem quasi possimus. Esse modi suscipit voluptas aut a aliquam. Dolorum est dolor consequatur pariatur est aut repudiandae.', '2024-09-05 13:23:03', '2024-09-05 13:23:03', NULL),
(54, 'quia', '9495 Tevin Crest\nSouth Blaze, ND 90979-7181', 'Deserunt dolores tempore qui pariatur tempora quibusdam qui. Consequatur voluptatem alias nulla voluptate. Odio aperiam sed dolor blanditiis.', '2024-09-05 13:23:04', '2024-09-05 13:23:04', NULL),
(55, 'fugiat', '258 Stephany Manors\nShaunfort, PA 65219-2263', 'Non blanditiis enim a voluptate quia. Minus dolore fugiat vitae unde qui. Placeat ad sit cum. Velit consequatur deleniti quibusdam odio inventore numquam ut.', '2024-09-05 13:23:04', '2024-09-05 13:23:04', NULL),
(56, 'sed', '220 Roslyn Course\nEast Sashafort, MN 78469', 'Iure natus voluptas in eveniet dolores porro ipsum. Error ullam mollitia aut nihil aliquid. Aut id consectetur in cumque perspiciatis sapiente exercitationem aliquid.', '2024-09-05 13:23:04', '2024-09-05 13:23:04', NULL),
(57, 'ipsam', '398 Tara Forest Suite 591\nWildermanmouth, ID 35081-8699', NULL, '2024-09-05 13:23:05', '2024-09-05 13:23:05', NULL),
(58, 'excepturi', '1522 Buster Prairie\nSouth Alfreda, VA 08421', 'Eaque aspernatur quas quo modi non. Aut tempore voluptates quas deleniti ad libero. Qui reprehenderit voluptatem voluptatibus et rerum nemo sunt. Aperiam et nam sed animi non.', '2024-09-05 13:23:05', '2024-09-05 13:23:05', NULL),
(59, 'atque', '850 Fisher Extension\nJustinemouth, RI 49229-8824', NULL, '2024-09-05 13:23:05', '2024-09-05 13:23:05', NULL),
(60, 'officia', '82734 Cristian Pine\nHarrisborough, NV 53359', 'Et quasi explicabo perspiciatis et quisquam. Ad dolores blanditiis sed doloribus. Omnis illo nulla suscipit fugiat harum sunt. Aliquid voluptatum placeat eos ea tempore illo repellendus. Mollitia fuga ad ut odio.', '2024-09-05 13:23:06', '2024-09-05 13:23:06', NULL),
(61, 'nam', '22932 Fabian Summit\nFramifurt, NV 32009', 'Sed porro est odit repellat. Deserunt explicabo eius temporibus doloremque. Vitae nesciunt corrupti qui dignissimos. Odio iusto est occaecati nemo doloremque.', '2024-09-05 13:23:06', '2024-09-05 13:23:06', NULL),
(62, 'assumenda', '123 Buck Road\nSouth Kenyonstad, ID 49805', NULL, '2024-09-06 01:52:03', '2024-09-06 01:52:03', NULL),
(63, 'quasi', '218 Lebsack Motorway\nKingland, KS 14280-1591', NULL, '2024-09-06 01:52:03', '2024-09-06 01:52:03', NULL),
(64, 'necessitatibus', '4484 Bergstrom Loaf Suite 890\nHalvorsonburgh, AL 94811-4414', NULL, '2024-09-06 01:52:03', '2024-09-06 01:52:03', NULL),
(65, 'ducimus', '94128 Sarah Mall Suite 617\nNorth Celia, NY 17297', 'Nihil earum architecto aut voluptas rerum qui ut harum. Commodi voluptas aliquam voluptas. Ut eos consequatur aut est deserunt. Autem quos eius porro vel voluptatum.', '2024-09-06 01:52:03', '2024-09-06 01:52:03', NULL),
(66, 'ut', '508 Paris Run\nFraneckishire, MT 74072-7572', 'Aliquid quis sed minus aut voluptatem ea. Et ut ea eligendi excepturi id dicta. Amet quasi praesentium voluptates tempora.', '2024-09-06 01:52:03', '2024-09-06 01:52:03', NULL),
(67, 'nisi', '872 Swaniawski Land\nWest Reaganport, WA 31346-4858', 'Possimus alias mollitia architecto quia. Quo recusandae sit quia est recusandae in est. Modi consectetur qui aut atque. Dolorem iste ut eum qui qui cum tempora necessitatibus. Eos magni rerum perspiciatis et.', '2024-09-06 01:52:03', '2024-09-06 01:52:03', NULL),
(68, 'magnam', '6082 Heaney Unions Apt. 866\nEast Curtshire, NH 90632-4999', 'Ex non et aut consequatur. Dolorem error laborum non quia omnis enim.', '2024-09-06 01:52:03', '2024-09-06 01:52:03', NULL),
(69, 'mollitia', '66625 Schmeler Row\nAntoniostad, SD 68384', 'Unde enim distinctio odit sed sapiente. Vero vel quo architecto accusantium repellat. Dolorem laboriosam sed id omnis voluptas ut nulla.', '2024-09-06 01:52:03', '2024-09-06 01:52:03', NULL),
(70, 'sed', '942 Kozey Vista\nPort Theresa, TX 67292-7988', NULL, '2024-09-06 01:52:03', '2024-09-06 01:52:03', NULL),
(71, 'eligendi', '135 Unique Courts\nNorth Kamille, NH 58104', 'Laboriosam minima tempora sit id excepturi. Nam ex earum voluptas doloribus inventore. Et similique distinctio saepe eos dignissimos pariatur reiciendis.', '2024-09-06 01:52:03', '2024-09-06 01:52:03', NULL),
(72, 'ullam', '73987 Okuneva Land Apt. 269\nPort Kane, MS 42500', 'Adipisci amet odit officia tempora molestias corrupti. Voluptas eligendi sed fugiat. Et voluptatem ipsam sequi placeat voluptas veritatis. Nesciunt dolores officia perferendis qui nostrum debitis magnam.', '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(73, 'illum', '88182 Justice Course\nMarvinhaven, AK 42098', 'Incidunt placeat qui eligendi voluptatibus facere ab. Dolores ut odit recusandae optio sed et laboriosam.', '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(74, 'modi', '9088 Amy Stream\nNorth Jazmyne, NE 73933', 'Sint reprehenderit exercitationem dolor rerum. Et voluptate velit quo in.', '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(75, 'et', '61129 Stracke Forks Suite 047\nPort Nigel, DC 82389', NULL, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(76, 'unde', '705 Jasper Well Apt. 282\nEast Frankie, CT 53318-3069', NULL, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(77, 'omnis', '8760 Bode Trail Apt. 194\nHarrisberg, NJ 28076-2053', 'Assumenda voluptas omnis non impedit. Repudiandae deleniti aliquid a aut et maiores ad eos. Iste repellat sapiente totam.', '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(78, 'maxime', '758 Conroy Lodge Suite 344\nEast Madalynberg, FL 64194', 'Quo cupiditate sunt nulla id molestiae libero asperiores. Necessitatibus totam velit qui laborum laboriosam. Quia est suscipit blanditiis. Atque qui aut est et quidem asperiores explicabo.', '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(79, 'quia', '4492 Krajcik Land\nWest Yvonnestad, NH 75413', NULL, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(80, 'aut', '31817 Euna Landing\nTillmanton, RI 73577-3302', 'Et officia sed eum ut. Eos temporibus dolore id voluptas. Et ratione doloribus unde pariatur enim. Nihil aliquid accusantium aliquam dolor est sint voluptatem. In et aliquid illo inventore.', '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(81, 'esse', '367 Herzog Fall\nNew Jedediah, AR 92116-8162', NULL, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(82, 'laudantium', '9032 Audie Center\nEast Maritzaside, AR 61653-8122', 'm', '2024-09-08 02:08:47', '2024-09-08 06:29:14', NULL),
(83, 'hic', '40772 Koss Plaza Suite 060\nSouth Meredith, MN 10426-7238', 'Illo id ea blanditiis asperiores. Sint ipsum et incidunt enim molestiae sapiente. Quas a excepturi dolore odit rerum ea. Maxime neque quo accusantium rerum sed veniam eaque.', '2024-09-08 02:08:47', '2024-09-08 06:29:06', '2024-09-08 06:29:06'),
(84, 'amet', '90843 DuBuque Groves Suite 909\nWiegandborough, AL 89234-6098', NULL, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(85, 'quae', '28422 Darrick Estates Apt. 666\nNorth Lindsayshire, MD 68628', 'Et est aut odit ut molestiae illo. Minima quod consequatur soluta voluptas maiores nihil cum. Maxime minus sit sit adipisci alias ad aliquid aspernatur.', '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(86, 'corporis', '284 Sipes Ford Suite 759\nBulahview, CO 18777', 'Animi impedit velit ducimus non. Et voluptates expedita quia ut. Earum ut numquam ab distinctio.', '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(87, 'sint', '23371 Zemlak Burg Apt. 615\nFeeneyberg, CO 58529-1754', 'Dolor veritatis aut a est incidunt. Dignissimos dolor inventore totam ea pariatur. In dolor et illum quia debitis eligendi occaecati. Tempore et ut sed.', '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(88, 'consectetur', '1949 Legros Islands\nEast Carsonport, AR 94807-1793', 'Occaecati et quia ut ut. Natus quasi odio cumque nihil ducimus. Quibusdam alias tenetur qui odio repudiandae. Laborum est quam in quos.', '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(89, 'porro', '42547 Frieda Field Apt. 113\nKaseychester, OK 27008-1070', 'Id distinctio cum deleniti alias libero asperiores architecto. Quos laborum non eius quia maiores.', '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(90, 'ad', '992 Wolf Well\nRosenbaumberg, IL 87428-7429', NULL, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(91, 'adipisci', '93554 Reichert Junction\nNew Kennedyfurt, HI 84335-7834', NULL, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(92, 'cc', 'cc', 'cc', '2024-09-08 06:28:29', '2024-09-08 06:28:29', NULL),
(93, 'r', 'r', 'r', '2024-09-08 06:29:21', '2024-09-08 06:29:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `vision` text DEFAULT NULL,
  `mission` text DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`id`, `name`, `vision`, `mission`, `overview`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mollitia', 'Omnis voluptate incidunt vel necessitatibus est neque rem ratione. Sint quae recusandae dolorum sit. Omnis et dignissimos distinctio est consequatur. Quo aperiam neque dolores sunt.', 'Ducimus quo et sed atque at possimus laudantium est. Dolores optio enim aut. Perspiciatis voluptate magni eos nulla doloribus. Labore rerum consectetur vitae veniam.', 'Temporibus officiis qui laudantium ut aliquam. Ut dolor omnis sint et ad eligendi libero. Voluptas est beatae quasi. Et provident et commodi aut. Similique nihil soluta nihil.', '2024-09-05 12:13:29', '2024-09-08 06:31:35', '2024-09-08 06:31:35'),
(2, 'expeditac', 'Est non facilis non tenetur sit. Placeact quam accusamus aliquam vel consequatur eum et sint. Ratione consequuntur vero minima quidem. Perspiciatis quis occaecati dolorem recusandae.', 'Voluptates distincctio voluptas veritatis dolore totam. Consequuntur suscipit id nihil libero laudantium dolor numquam. Aut magni ea laudantium beatae incidunt. Soluta temporibus autem ut placeat.', 'Deleniti sed qui csed et aut quia blanditiis. Dolorum modi sint placeat. Dignissimos qui qui architecto impedit et tempora laudantium laborum.', '2024-09-05 12:13:29', '2024-09-08 06:31:46', NULL),
(3, 'aut', 'Totam quaerat ad ea sit cupiditate blanditiis delectus perspiciatis. Enim consequatur beatae doloremque quis. Est dolorum labore qui praesentium veniam est. Inventore distinctio labore odit sit molestiae.', 'Corporis distinctio perspiciatis modi consequuntur neque. Ducimus dolorem qui atque. Nihil quia ut alias aliquam id autem aut necessitatibus. Fuga adipisci molestias at tenetur minima.', 'Similique quas eaque voluptatibus corrupti sint nulla. Iste et et sed. Suscipit quis voluptates neque dolores architecto aut. Quo voluptatem rerum hic sit.', '2024-09-05 12:13:29', '2024-09-05 12:13:29', NULL),
(4, 'rem', 'Qui inventore autem odio enim. Sunt doloribus neque et non accusamus. Modi culpa doloribus impedit enim et et vitae. Rerum et quas id.', 'Error aut quo corporis incidunt consequuntur. Enim aut consequatur et alias mollitia nulla. Mollitia rem quia neque cupiditate rerum dolores qui. Debitis qui quis expedita alias.', 'Cum culpa nihil accusantium vitae. Et nobis voluptatem dolor.', '2024-09-05 12:13:29', '2024-09-05 12:13:29', NULL),
(5, 'beatae', 'Magni fugit molestias similique dolorem. Ut voluptatem nulla ut soluta voluptatem numquam iste. Molestias et dolor veniam nesciunt. Consequatur qui fugit nihil ex et. Esse qui et nihil ut tenetur neque minus.', 'Reiciendis nisi non quia et dolore et qui. Exercitationem exercitationem cum nisi repudiandae autem fugit. Aut at incidunt eveniet accusantium accusamus provident.', 'Voluptas repellendus quod magni vero velit amet. Et occaecati eos minima aut officiis. Facere et quo provident aspernatur similique. Ut beatae nostrum natus.', '2024-09-05 12:13:29', '2024-09-05 12:13:29', NULL),
(6, 'officiis', 'Officiis non minus assumenda iste. Voluptatem ducimus cupiditate cumque voluptates animi omnis adipisci. Reiciendis quia et officia et dolores. Eligendi adipisci atque alias repudiandae.', 'Nobis velit alias optio reprehenderit et et accusamus. Fugit voluptatem sint magnam nisi ipsa. Dolores vitae dicta animi qui odio in numquam.', 'Est deleniti dolorem cum tenetur dolores maxime dolor. Nihil dolor dolores ut repellendus. Qui facilis totam unde accusamus illo quam sapiente nobis.', '2024-09-05 12:13:29', '2024-09-05 12:13:29', NULL),
(7, 'hic', 'Et magni consequatur ut. Reprehenderit illo nobis quia.', 'Illo voluptatibus dolorem at blanditiis officia voluptatem et. Occaecati praesentium distinctio nihil suscipit incidunt maxime. Natus vitae fuga omnis voluptatem aut sunt ut. Et dolores amet dolorum fuga neque dolorem.', 'Vero quia voluptatem soluta eum. Suscipit ullam doloribus ut qui adipisci dicta aut. Quisquam qui hic qui est quis hic amet.', '2024-09-05 12:13:29', '2024-09-05 12:13:29', NULL),
(8, 'vitae', 'Accusamus ut qui cumque necessitatibus. In dolor ut repellat velit. Voluptates sequi ipsam consectetur blanditiis voluptates nulla necessitatibus aut. Ut rem nulla facilis.', 'Omnis dolores aut repudiandae praesentium. Placeat laborum nostrum sed in sapiente voluptates dolore. Fugiat eaque tempore tempora odio possimus neque voluptatem sed. Libero et aut saepe eius accusamus nesciunt eveniet incidunt.', 'Aliquid et omnis id iusto. Sed hic impedit nisi omnis porro. Beatae sunt sint eveniet et repudiandae expedita voluptatem.', '2024-09-05 12:13:29', '2024-09-05 12:13:29', NULL),
(9, 'et', 'Consequuntur tempora eveniet repellat hic. Ipsa quisquam distinctio itaque odio. Aut et nesciunt et maiores eius ut.', 'Tempora totam similique et accusantium necessitatibus. Qui est ratione et. Nihil veritatis et nam ullam commodi.', 'Suscipit modi eum omnis voluptas. Maiores vero error qui est explicabo. Voluptatum provident debitis ut suscipit ipsum laborum. Fuga labore qui cupiditate quidem aliquid et.', '2024-09-05 12:13:29', '2024-09-05 12:13:29', NULL),
(10, 'recusandae', 'Sapiente natus non est asperiores. Nulla omnis voluptatem minus et. Eum dolores officiis voluptatem facere tenetur.', 'Quo explicabo suscipit qui maxime ducimus voluptas. Vel earum molestiae tenetur rem aut ut. Pariatur dignissimos dignissimos sunt et tempore.', 'Quo tempore quae et in laboriosam nesciunt omnis. Qui rem est cum quod iure porro aut. Vel pariatur pariatur qui repellendus. Nulla expedita minima vero nihil eveniet.', '2024-09-05 12:13:29', '2024-09-05 12:13:29', NULL),
(11, 'hhhhhh', 'Omnis voluptate incidunt vel necessitatibus est neque rem ratione. Sint quae recusandae dolorum sit. Omnis et dignissimos distinctio est consequatur. Quo aperiam neque dolores sunt.', 'Ducimus quo et sed atque at possimus laudantium est. Dolores optio enim aut. Perspiciatis voluptate magni eos nulla doloribus. Labore rerum consectetur vitae veniam.', 'Temporibus officiis qui laudantium ut aliquam. Ut dolor omnis sint et ad eligendi libero. Voluptas est beatae quasi. Et provident et commodi aut. Similique nihil soluta nihil.', '2024-09-05 12:14:05', '2024-09-05 12:14:16', NULL),
(12, 'c', 'c', 'cc', 'c', '2024-09-08 06:32:16', '2024-09-08 06:32:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `credits` int(11) NOT NULL,
  `major_id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `code`, `name`, `description`, `credits`, `major_id`, `faculty_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CS101', 'Introduction to Computer Science', 'Basics of computer science including programming and algorithms.', 4, 4, 12, '2024-09-05 12:25:09', '2024-09-14 15:09:29', NULL),
(2, 'CS102', 'Data Structures', 'Study of data structures such as arrays, linked lists, and trees.', 4, 4, 4, '2024-09-05 12:25:09', '2024-09-14 15:09:29', NULL),
(3, 'BA101', 'Principles of Management', 'Introduction to management principles and practices.', 3, 2, 3, '2024-09-05 12:25:09', '2024-09-14 15:09:29', NULL),
(4, 'CE101', 'Introduction to Civil Engineering', 'Basics of civil engineering including construction and infrastructure.', 5, 4, 5, '2024-09-05 12:25:09', '2024-09-14 15:09:29', NULL),
(5, 'EE101', 'Circuits and Systems', 'Study of electrical circuits and systems.', 4, 5, 8, '2024-09-05 12:25:09', '2024-09-14 15:09:29', NULL),
(6, 'MA101', 'Calculus I', 'Introduction to calculus including differentiation and integration.', 4, 10, 10, '2024-09-05 12:25:09', '2024-09-14 15:09:29', NULL),
(7, 'BI101', 'General Biology', 'Fundamentals of biology including cell structure and function.', 4, 8, 5, '2024-09-05 12:25:09', '2024-09-14 15:09:29', NULL),
(8, 'PH101', 'Introduction to Physics', 'Basics of physics including motion, forces, and energy.', 4, 6, 6, '2024-09-05 12:25:09', '2024-09-14 15:09:29', NULL),
(9, 'CH101', 'General Chemistry', 'Study of chemical reactions, compounds, and properties.', 4, 4, 7, '2024-09-05 12:25:09', '2024-09-14 15:09:29', NULL),
(10, 'ES101', 'Introduction to Environmental Science', 'Study of environmental systems and conservation.', 3, 8, 10, '2024-09-05 12:25:09', '2024-09-14 15:09:29', '2024-09-07 11:57:43'),
(11, 'PSY101', 'Introduction to Psychology', 'Basics of psychology including mental processes and behavior.', 3, 7, 11, '2024-09-05 12:27:01', '2024-09-14 15:09:29', NULL),
(12, 'ECON101', 'Principles of Economics', 'Introduction to economic theories and principles.', 3, 1, 8, '2024-09-05 12:44:16', '2024-09-14 15:09:29', '2024-09-07 10:14:38'),
(13, 'IR101', 'Introduction to International Relations', 'Basics of international relations and global issues.', 3, 9, 10, '2024-09-05 12:44:16', '2024-09-14 15:09:29', NULL),
(14, 'CS201', 'Advanced Programming', 'In-depth study of advanced programming techniques.', 4, 10, 6, '2024-09-05 12:44:16', '2024-09-14 15:09:29', NULL),
(15, 'CS202', 'Database Systems', 'Study of database design, management, and queries.', 4, 10, 2, '2024-09-05 12:44:16', '2024-09-14 15:09:29', NULL),
(16, 'ME101', 'Engineering Mechanics', 'Fundamentals of mechanics applied to engineering problems.', 4, 5, 10, '2024-09-05 12:44:16', '2024-09-14 15:09:29', NULL),
(17, 'ME102', 'Thermodynamics', 'Study of energy, heat, and work in engineering systems.', 4, 3, 3, '2024-09-05 12:44:16', '2024-09-14 15:09:29', NULL),
(18, 'CE201', 'Structural Analysis', 'Analysis of structures including beams and frames.', 4, 11, 4, '2024-09-05 12:44:16', '2024-09-14 15:09:29', NULL),
(19, 'CE202', 'Construction Materials', 'Study of materials used in construction and their properties.', 4, 1, 3, '2024-09-05 12:44:16', '2024-09-14 15:09:29', NULL),
(20, 'EE201', 'Signal Processing', 'Techniques for analyzing and processing signals.', 4, 11, 5, '2024-09-05 12:44:16', '2024-09-14 15:09:29', NULL),
(21, 'EE202', 'Electromagnetics', 'Study of electric and magnetic fields and their interactions.', 4, 3, 1, '2024-09-05 12:44:16', '2024-09-14 15:09:29', NULL),
(22, 'MA201', 'Linear Algebra', 'Study of vector spaces and linear transformations.', 4, 10, 6, '2024-09-07 10:15:09', '2024-09-14 15:09:29', NULL),
(23, 'MA202', 'Probability and Statistics', 'Introduction to probability theory and statistical methods.', 4, 10, 2, '2024-09-07 10:16:55', '2024-09-14 15:09:29', NULL),
(24, 'BI201', 'Genetics', 'Study of genes, genetic variation, and heredity.', 4, 5, 10, '2024-09-07 11:21:01', '2024-09-14 15:09:29', NULL),
(25, 'BI202', 'Ecology', 'Study of ecosystems, organisms, and their interactions.', 4, 3, 3, '2024-09-07 11:44:46', '2024-09-14 15:09:29', NULL),
(26, 'PH201', 'Quantum Mechanics', 'Study of quantum systems and their behavior.', 4, 11, 5, '2024-09-07 11:57:27', '2024-09-14 15:09:29', NULL),
(27, 'CS102', 'Introduction to Computer Science', 'Basic concepts of computer science.', 3, 12, 1, NULL, NULL, NULL),
(28, 'CS103', 'Data Structures', 'Introduction to data structures such as arrays, stacks, and queues.', 3, 12, 1, NULL, NULL, NULL),
(29, 'CS104', 'Algorithms', 'Study of algorithms and their efficiency.', 3, 12, 1, NULL, NULL, NULL),
(30, 'CS105', 'Computer Architecture', 'Understanding the architecture of modern computers.', 3, 12, 1, NULL, NULL, NULL),
(31, 'CS106', 'Operating Systems', 'An introduction to operating system concepts and processes.', 3, 12, 1, NULL, NULL, NULL),
(32, 'CS107', 'Database Systems', 'Design and implementation of database systems.', 3, 12, 1, NULL, NULL, NULL),
(33, 'CS108', 'Software Engineering', 'Principles of software development and engineering.', 3, 12, 1, NULL, NULL, NULL),
(34, 'CS109', 'Theory of Computation', 'Study of computation theory, automata, and formal languages.', 3, 12, 1, NULL, NULL, NULL),
(35, 'CS110', 'Computer Networks', 'Introduction to computer networking concepts and protocols.', 3, 12, 1, NULL, NULL, NULL),
(36, 'CS111', 'Artificial Intelligence', 'Basic concepts and techniques of AI.', 3, 12, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_drop_requests`
--

CREATE TABLE `course_drop_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `course_instructor_id` bigint(20) UNSIGNED NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_drop_requests`
--

INSERT INTO `course_drop_requests` (`id`, `student_id`, `status`, `course_instructor_id`, `reason`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Pending', 1, 'hek', '2024-09-06 04:47:56', '2024-09-06 04:48:26', '2024-09-06 04:48:26'),
(2, 1, 'Approved', 1, 'yy', '2024-09-06 04:48:35', '2024-09-06 12:31:35', NULL),
(3, 8, 'Pending', 17, 'ee', '2024-09-12 05:30:02', '2024-09-12 05:30:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_evaluations`
--

CREATE TABLE `course_evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teaching_number` int(11) NOT NULL,
  `teaching` varchar(255) NOT NULL,
  `coursecontent_number` int(11) NOT NULL,
  `coursecontent` varchar(255) NOT NULL,
  `examination_number` int(11) NOT NULL,
  `examination` varchar(255) NOT NULL,
  `labwork_number` int(11) NOT NULL,
  `labwork` varchar(255) NOT NULL,
  `library_facilities_number` int(11) NOT NULL,
  `library_facilities` varchar(255) NOT NULL,
  `extracurricular_number` int(11) NOT NULL,
  `extracurricular` varchar(255) NOT NULL,
  `course_instructor_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_evaluations`
--

INSERT INTO `course_evaluations` (`id`, `teaching_number`, `teaching`, `coursecontent_number`, `coursecontent`, `examination_number`, `examination`, `labwork_number`, `labwork`, `library_facilities_number`, `library_facilities`, `extracurricular_number`, `extracurricular`, `course_instructor_id`, `student_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, -1, 'Teaching Text 1', -1, 'Course Content Text 1', 0, 'Examination Text 1', -1, 'Labwork Text 1', -1, 'Library Facilities Text 1', 0, 'Extracurricular Text 1', 1, 0, '2024-09-12 14:00:18', '2024-09-12 14:00:18', NULL),
(2, 0, 'Teaching Text 2', -1, 'Course Content Text 2', -1, 'Examination Text 2', -1, 'Labwork Text 2', -1, 'Library Facilities Text 2', -1, 'Extracurricular Text 2', 1, 0, '2024-09-12 14:00:18', '2024-09-12 14:00:18', NULL),
(3, -1, 'Teaching Text 3', -1, 'Course Content Text 3', -1, 'Examination Text 3', -1, 'Labwork Text 3', -1, 'Library Facilities Text 3', -1, 'Extracurricular Text 3', 1, 0, '2024-09-12 14:00:18', '2024-09-12 14:00:18', NULL),
(4, 1, 'Teaching Text 4', 1, 'Course Content Text 4', 0, 'Examination Text 4', 1, 'Labwork Text 4', -1, 'Library Facilities Text 4', 0, 'Extracurricular Text 4', 2, 0, '2024-09-12 14:00:18', '2024-09-12 14:00:18', NULL),
(5, 1, 'Teaching Text 5', 1, 'Course Content Text 5', 1, 'Examination Text 5', 1, 'Labwork Text 5', 1, 'Library Facilities Text 5', 1, 'Extracurricular Text 5', 2, 0, '2024-09-12 14:00:18', '2024-09-12 14:00:18', NULL),
(6, 1, 'Teaching Text 6', -1, 'Course Content Text 6', -1, 'Examination Text 6', -1, 'Labwork Text 6', 1, 'Library Facilities Text 6', 1, 'Extracurricular Text 6', 2, 0, '2024-09-12 14:00:18', '2024-09-12 14:00:18', NULL),
(7, 1, 'Teaching Text 6', -1, 'Course Content Text 6', -1, 'Examination Text 6', -1, 'Labwork Text 6', 1, 'Library Facilities Text 6', 1, 'Extracurricular Text 6', 2, 0, '2024-09-12 14:20:42', '2024-09-12 14:20:42', NULL),
(12, 1, 'The instructor was engaging and clear in lectures, always open to questions.', 1, 'Course materials were well-organized, but lacked some depth in advanced topics.', 1, 'Examinations were fair and directly aligned with the lectures.', 1, 'Lab sessions were productive and supported by good teaching assistants.', 0, 'Library facilities were sufficient, but some key references were missing.', 1, 'Extracurricular activities like group projects were well-structured.', 17, 101, '2024-09-13 11:14:58', '2024-09-13 11:14:58', NULL),
(13, 0, 'Lectures were a bit dry, and sometimes difficult to follow.', 0, 'Course content was repetitive and could have used more real-world examples.', 0, 'The exams were manageable, but didn’t test critical thinking enough.', -1, 'Labwork felt disconnected from the theory, making it hard to apply knowledge.', 1, 'Library facilities were excellent and all resources were readily available.', 0, 'The extracurricular activities were too time-consuming for their value.', 17, 102, '2024-09-13 11:14:58', '2024-09-13 11:14:58', NULL),
(14, 1, 'Very knowledgeable instructor who explained complex concepts well.', 1, 'Course content was comprehensive and covered all necessary areas.', 1, 'The exams were tough but fair, testing a deep understanding of the material.', 0, 'Labwork was okay but sometimes felt rushed.', 1, 'Library facilities were excellent, everything needed was available.', 1, 'Extracurricular projects were a great learning experience.', 17, 103, '2024-09-13 11:14:58', '2024-09-13 11:14:58', NULL),
(15, -1, 'The instructor seemed unprepared for most lectures, and often couldn’t answer questions.', -1, 'Course materials were outdated and hard to follow.', -1, 'The exam questions were unclear, and didn’t reflect what was taught.', -1, 'Labwork was chaotic and lacked proper guidance.', 0, 'Library facilities were average, though I struggled to find relevant materials.', -1, 'Extracurricular activities were poorly organized and didn’t contribute much to learning.', 17, 104, '2024-09-13 11:14:58', '2024-09-13 11:14:58', NULL),
(16, 0, 'The instructor was okay, but sometimes skipped over important details.', 1, 'The course content was interesting, but some sections could have been more in-depth.', 1, 'Exams were clear and fairly graded.', 1, 'Lab sessions were highly beneficial and complemented the lectures well.', 1, 'Library facilities were great and always accessible.', 1, 'Group projects were a valuable part of the learning experience.', 17, 105, '2024-09-13 11:14:58', '2024-09-13 11:14:58', NULL),
(17, 1, 'The instructor did a great job explaining difficult concepts.', 0, 'Course content was generally good but needed more practical examples.', 1, 'Exams were challenging, but rewarded a strong understanding of the course.', 0, 'Labwork was okay but could have been better coordinated with the lectures.', 1, 'Library facilities were exceptional, everything was available when needed.', 1, 'Extracurricular activities were very engaging and relevant to the course.', 17, 106, '2024-09-13 11:14:58', '2024-09-13 11:14:58', NULL),
(18, -1, 'Lectures were unorganized and often difficult to understand.', -1, 'Course content felt outdated and not aligned with current industry practices.', 0, 'Exams were easier than expected, which didn’t encourage thorough study.', -1, 'Labwork was poorly managed, and equipment was often unavailable.', 0, 'Library facilities were okay, but some important materials were outdated.', -1, 'Extracurricular activities didn’t add much value to the learning experience.', 17, 107, '2024-09-13 11:14:58', '2024-09-13 11:14:58', NULL),
(19, 0, 'The instructor had good knowledge but didn’t engage students enough during lectures.', 0, 'Course content was decent but could have included more real-world applications.', 0, 'Exams were average in difficulty, but didn’t test enough critical thinking.', 1, 'Labwork was well organized and helped reinforce lecture content.', 1, 'Library facilities were excellent with access to all needed materials.', 0, 'Extracurricular activities were helpful but sometimes felt rushed.', 17, 108, '2024-09-13 11:14:58', '2024-09-13 11:14:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_instructors`
--

CREATE TABLE `course_instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `capacity` int(11) NOT NULL,
  `campus_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `schedule` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_instructors`
--

INSERT INTO `course_instructors` (`id`, `course_id`, `instructor_id`, `semester_id`, `capacity`, `campus_id`, `room_id`, `schedule`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 14, 1, 1, 11, 1, 1, 'Monday 08:00 AM -> 10:00 AM', '2024-09-05 14:33:49', '2024-09-05 14:36:15', NULL),
(2, 3, 1, 1, 11, 1, 1, 'Monday 08:00 AM -> 10:00 AM', '2024-09-06 00:21:25', '2024-09-06 00:22:02', NULL),
(3, 1, 1, 1, 22, 1, 1, 'Monday 10:00 -> 11:00', '2024-09-07 10:23:26', '2024-09-07 10:24:08', '2024-09-07 10:24:08'),
(4, 1, 1, 1, 1, 1, 1, 'Monday 10:00 -> 11:00', '2024-09-07 10:31:12', '2024-09-07 10:45:54', NULL),
(5, 1, 1, 1, 1, 1, 1, 'Monday 10:00 -> 11:00', '2024-09-07 10:46:14', '2024-09-07 10:46:22', '2024-09-07 10:46:22'),
(14, 27, 1, 1, 30, 2, 1, 'Mon/Wed 9:00-10:30', NULL, NULL, NULL),
(15, 28, 1, 1, 25, 2, 2, 'Tue/Thu 11:00-12:30', NULL, NULL, NULL),
(16, 29, 1, 1, 35, 3, 3, 'Mon/Wed 14:00-15:30', NULL, NULL, NULL),
(17, 32, 1, 2, 40, 3, 4, 'Tue/Thu 16:00-17:30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_materials`
--

CREATE TABLE `course_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `course_instructor_id` bigint(20) UNSIGNED NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_materials`
--

INSERT INTO `course_materials` (`id`, `title`, `description`, `course_instructor_id`, `file_path`, `file_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hh', 'yyy', 1, 'course_materials/NA71eBClGOA9LJiBoMzJiQvMu2vw7G06uYfdFXEq.docx', 'React Cheatsheet.docx', '2024-09-06 01:47:39', '2024-09-06 01:50:14', '2024-09-06 01:50:14'),
(2, 'hh', 'yyy', 1, 'course_materials/znhVKAUuS8Qt6BM7yL3JzNfKpn4F4a9hKhH6m7AO.docx', 'React Cheatsheet.docx', '2024-09-06 04:32:49', '2024-09-06 10:40:13', '2024-09-06 10:40:13'),
(3, 'material', 'react', 1, 'course_materials/9dMF9NLAHS9M6RcYdhTUpUIZpaUCqxAr0JlqMVCL.docx', 'React Cheatsheet (1).docx', '2024-09-06 10:57:44', '2024-09-06 10:57:44', NULL),
(4, 'r', 'r', 1, 'course_materials/nnAtMzEPaj7WVsU9Npoo1EmapZbvlWyPcxGs5VlR.docx', 'React Cheatsheet (2).docx', '2024-09-06 12:15:47', '2024-09-06 12:15:55', '2024-09-06 12:15:55'),
(5, 'q', 'q', 1, 'course_materials/q7Wbv7s07AdLrqSKT8DCD6qCGfpuQXVYoSEsmEd8.docx', 'React Cheatsheet (2) (1).docx', '2024-09-06 12:31:15', '2024-09-06 12:31:26', '2024-09-06 12:31:26'),
(6, 'Chapter 1', 'In this chapter we explain loops in C language', 2, 'course_materials/8cKgkO9g1ZsSAjxMHVpYauTMfODVxSwlgI74FHbK.pdf', 'looping.pdf', '2024-09-11 16:59:49', '2024-09-11 16:59:49', NULL),
(7, 'Chapter 2', 'In this chapter we explain arrays in C language', 2, 'course_materials/eCmy8QAhLPptEY4xkEFrFukCSO1fxmwS8C37sDZW.pdf', 'OLevel_2_B4_CLang_20Apr_SS.pdf', '2024-09-11 17:00:16', '2024-09-11 17:00:16', NULL),
(8, 'Chapter 3', 'In this chapter we explain functions in C language', 2, 'course_materials/aRHiLZwsZiV3nnHlvWngVWi7FWRR7Djx1aKVBz99.pdf', 'functions.pdf', '2024-09-11 17:00:40', '2024-09-11 17:00:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_prerequisites`
--

CREATE TABLE `course_prerequisites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `prerequisite_course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_prerequisites`
--

INSERT INTO `course_prerequisites` (`id`, `course_id`, `prerequisite_course_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 16, 11, '2024-09-05 13:55:25', '2024-09-05 13:55:25', NULL),
(2, 20, 5, '2024-09-05 13:55:25', '2024-09-05 13:55:25', NULL),
(3, 21, 14, '2024-09-05 13:55:25', '2024-09-05 13:55:25', NULL),
(4, 5, 7, '2024-09-05 13:55:25', '2024-09-05 13:55:25', NULL),
(5, 9, 7, '2024-09-05 13:55:25', '2024-09-05 13:55:25', NULL),
(6, 5, 13, '2024-09-05 13:55:25', '2024-09-05 13:55:25', NULL),
(7, 12, 1, '2024-09-05 13:55:25', '2024-09-05 13:55:25', NULL),
(8, 6, 21, '2024-09-05 13:55:25', '2024-09-05 13:55:25', NULL),
(9, 18, 11, '2024-09-05 13:55:25', '2024-09-05 13:55:25', NULL),
(10, 4, 18, '2024-09-05 13:55:25', '2024-09-05 13:55:25', NULL),
(11, 16, 2, '2024-09-05 13:56:05', '2024-09-05 13:56:16', NULL),
(12, 1, 11, '2024-09-07 10:24:29', '2024-09-07 10:24:39', '2024-09-07 10:24:39'),
(13, 1, 11, '2024-09-07 10:37:32', '2024-09-07 10:45:26', '2024-09-07 10:45:26'),
(14, 1, 11, '2024-09-07 10:45:35', '2024-09-07 10:45:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deans`
--

CREATE TABLE `deans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `campus_id` bigint(20) UNSIGNED NOT NULL,
  `role_description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deans`
--

INSERT INTO `deans` (`id`, `name`, `faculty_id`, `campus_id`, `role_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'yx', 6, 1, 'yx', '2024-09-08 08:12:44', '2024-09-08 08:19:03', NULL),
(2, 'rrk', 1, 1, 'rr', '2024-09-08 09:02:10', '2024-09-08 09:02:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ullam', 'Neque sit natus mollitia. Aut voluptate neque adipisci voluptatem assumenda ut.', '2024-09-05 12:10:29', '2024-09-08 06:10:07', NULL),
(2, 'new', 'Voluptas provident beatae quis molestiae modi qui delectus. Error modi aspernatur molestiae sed.', '2024-09-05 12:10:29', '2024-09-08 06:10:15', NULL),
(3, 'vitae', 'Voluptate et nam numquam reprehenderit. Doloremque et libero culpa deleniti. Maxime velit velit necessitatibus laborum omnis ex.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(4, 'voluptas', 'Eos sed porro eum cumque vel eum. Saepe est deserunt ea iure. Ducimus earum saepe consequatur qui odit accusamus voluptatem.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(5, 'aut', 'Suscipit molestiae deleniti officia magni. Dignissimos at incidunt hic perspiciatis voluptas eum. Tenetur exercitationem ea maxime voluptas quia. In quis culpa nihil repellat.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(6, 'et', 'Recusandae dolor fuga enim laboriosam. Earum non et earum ad nobis. Recusandae officia non maiores voluptatem et. Eveniet ut voluptas sed debitis.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(7, 'eos', 'Ut harum ea voluptatem sequi sunt. Eum dolores a ut voluptatem ut nulla et molestias. Magnam vitae fuga modi.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(8, 'qui', 'Voluptas maiores quia omnis doloribus cumque. Iste earum facilis minus nam non. Consequatur pariatur molestias a maiores.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(9, 'odit', 'Aliquid minus at sed. Rerum fugiat unde quia aut aut fugiat eos. Itaque quia officiis explicabo id laboriosam aut earum. Rerum ipsam architecto blanditiis numquam hic ut.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(10, 'doloribus', 'Corporis soluta rem qui dolor id tempore tempore. Eius ullam numquam voluptatem quas sequi ad. Facere recusandae nam quia est et quibusdam modi. Repudiandae perferendis quas quis autem.', '2024-09-05 12:10:29', '2024-09-05 12:10:29', NULL),
(11, 'et', 'ddd', '2024-09-05 12:13:00', '2024-09-05 12:13:00', NULL),
(12, 'officia', 'Veritatis labore dolorem consequuntur dicta nihil et. Eaque enim reiciendis et earum. Odit voluptas commodi ut at debitis dicta debitis. Commodi eum non harum at voluptas.', '2024-09-05 12:44:01', '2024-09-05 12:44:01', NULL),
(13, 'itaque', 'Minus quis eos occaecati cumque atque architecto eius ratione. Quasi omnis placeat voluptas in natus iste. Mollitia rerum ab ut consequatur excepturi maiores. Doloremque consectetur fuga ipsa et occaecati.', '2024-09-05 12:44:01', '2024-09-05 12:44:01', NULL),
(14, 'alias', 'Quod fuga fugiat veniam ut et deserunt. Nulla distinctio saepe ratione sint perferendis. Sint et odio veniam commodi.', '2024-09-05 12:44:02', '2024-09-05 12:44:02', NULL),
(15, 'numquam', 'Molestias aut dolorum aut ratione. Ut nulla architecto dolores modi. Animi voluptatem voluptatibus qui voluptatibus magni culpa tenetur minus. Facilis id dolores aperiam officiis rerum. Pariatur accusamus quia adipisci voluptatem ducimus.', '2024-09-05 12:44:02', '2024-09-05 12:44:02', NULL),
(16, 'dolorum', 'Eum voluptas occaecati quae esse id repudiandae harum. Architecto sunt quisquam odit officiis delectus odio eum. Autem doloremque tempora possimus et. Aut eaque accusamus placeat id explicabo laboriosam id.', '2024-09-05 12:44:02', '2024-09-05 12:44:02', NULL),
(17, 'voluptatem', 'Exercitationem voluptate nemo ipsam temporibus atque dolorum est. Id provident in in aut. Doloremque iure est aspernatur nisi a. Quasi nihil reiciendis rerum nihil perspiciatis eligendi.', '2024-09-05 12:44:03', '2024-09-05 12:44:03', NULL),
(18, 'voluptatibus', 'Voluptas aut atque quibusdam officia. Ipsa repudiandae itaque excepturi expedita ut totam. Omnis quasi omnis aspernatur voluptatem. Qui modi nemo quisquam et.', '2024-09-05 12:44:03', '2024-09-05 12:44:03', NULL),
(19, 'neque', 'Iure voluptas voluptatum rerum laudantium. A qui ut voluptatem itaque. Accusamus possimus nisi nihil et. Deserunt aut ad magnam labore rerum reiciendis tempora qui.', '2024-09-05 12:44:03', '2024-09-05 12:44:03', NULL),
(20, 'corrupti', 'Exercitationem est ut excepturi voluptatum. Aut minus quisquam sit rerum inventore pariatur magni. Nisi qui molestiae est. Est aperiam fuga inventore aperiam.', '2024-09-05 12:44:03', '2024-09-05 12:44:03', NULL),
(21, 'est', 'Soluta cumque error reprehenderit. Ea quia in odit deleniti consequatur ullam vitae.', '2024-09-05 12:44:04', '2024-09-05 12:44:04', NULL),
(22, 'natus', 'Quia quas nihil est voluptatibus similique. Ducimus ut a est dolores. Itaque voluptates omnis aut voluptatem dolor dolor dolore. Repudiandae consequuntur voluptas et omnis sint voluptas.', '2024-09-05 13:23:03', '2024-09-05 13:23:03', NULL),
(23, 'maiores', 'Inventore facilis consequatur maiores nihil iure occaecati quis. Odit nisi doloremque eligendi quo non. Eos cumque sint a voluptatem odio harum incidunt quod.', '2024-09-05 13:23:03', '2024-09-05 13:23:03', NULL),
(24, 'impedit', 'Corrupti explicabo commodi libero dolor et est. Voluptatem repudiandae blanditiis cum nihil sequi praesentium esse. Voluptatem itaque qui dolorum facere iure neque rerum. Aut eligendi aspernatur veniam totam.', '2024-09-05 13:23:04', '2024-09-05 13:23:04', NULL),
(25, 'quos', 'Accusamus in commodi eos vitae accusamus enim repellat. Eos distinctio omnis non dolor laboriosam non. Laborum officiis recusandae ut ea nihil omnis repudiandae maiores.', '2024-09-05 13:23:04', '2024-09-05 13:23:04', NULL),
(26, 'et', 'Earum et eaque nobis porro in. Nihil non ullam illo repellendus ut. Odio harum et magni excepturi.', '2024-09-05 13:23:04', '2024-09-05 13:23:04', NULL),
(27, 'ut', 'Quia sed ex et cumque libero dolorem. Eveniet aut et ut. Et impedit voluptas ullam provident possimus.', '2024-09-05 13:23:05', '2024-09-05 13:23:05', NULL),
(28, 'vero', 'Consequatur dicta ea aut atque. Voluptatum reiciendis aliquid earum totam saepe perferendis. Magnam rem quo aut necessitatibus. Quam nostrum consequatur consectetur architecto rem laborum.', '2024-09-05 13:23:05', '2024-09-05 13:23:05', NULL),
(29, 'unde', 'Reiciendis molestias neque in at. Qui minima voluptates dicta a. Et accusantium quos architecto minus aut eos est consequuntur. Incidunt odio ut asperiores assumenda ut voluptates.', '2024-09-05 13:23:05', '2024-09-05 13:23:05', NULL),
(30, 'voluptas', 'Et quos omnis omnis placeat ut voluptates aliquid aut. Doloribus numquam ea corrupti ea sint temporibus. Eos sint aut dignissimos ad consequuntur. Qui expedita et veniam cumque voluptatibus labore dolores. Unde vel autem et qui aut quae.', '2024-09-05 13:23:06', '2024-09-05 13:23:06', NULL),
(31, 'nam', 'Corporis quam ea tenetur deleniti minima consequuntur eum quidem. Quasi quo id ratione ipsa quia ea. Aliquam molestias et voluptates sit nihil.', '2024-09-05 13:23:06', '2024-09-05 13:23:06', NULL),
(32, 'neww', 'wwwwwww', '2024-09-08 06:14:41', '2024-09-08 06:14:41', NULL),
(33, 'et', 'tttt', '2024-09-08 06:14:56', '2024-09-08 06:14:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dorms`
--

CREATE TABLE `dorms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `capacity` int(11) NOT NULL,
  `available_rooms` int(11) NOT NULL,
  `campus_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dorms`
--

INSERT INTO `dorms` (`id`, `name`, `description`, `capacity`, `available_rooms`, `campus_id`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dorm 1', 'dorm', 33, 3, 15, 'Nabatieh', '2024-09-08 10:46:51', '2024-09-08 10:47:00', NULL),
(2, 'dorm 1', 'eeeee', 2, 2, 14, 'dd', '2024-09-08 10:47:24', '2024-09-08 10:47:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dorm_registrations`
--

CREATE TABLE `dorm_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `dorm_room_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dorm_registrations`
--

INSERT INTO `dorm_registrations` (`id`, `student_id`, `dorm_room_id`, `start_date`, `end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2024-09-09', '2024-09-10', '2024-09-08 13:52:13', '2024-09-08 13:54:09', '2024-09-08 13:54:09'),
(2, 1, 1, '2024-09-09', '2024-09-11', '2024-09-08 13:55:08', '2024-09-08 13:55:17', '2024-09-08 13:55:17'),
(3, 1, 1, '2024-09-09', '2024-09-14', '2024-09-08 14:11:19', '2024-09-08 14:13:42', '2024-09-08 14:13:42'),
(4, 1, 1, '2024-10-08', '2024-11-07', '2024-09-08 14:13:58', '2024-09-08 14:14:45', '2024-09-08 14:14:45'),
(5, 1, 1, '2024-10-08', '2024-11-07', '2024-09-08 14:14:03', '2024-09-08 14:19:50', '2024-09-08 14:19:50'),
(6, 1, 1, '2024-10-08', '2024-11-07', '2024-09-08 14:14:07', '2024-09-08 14:36:56', '2024-09-08 14:36:56'),
(7, 3, 1, '2024-09-22', '2024-10-01', '2024-09-08 14:19:55', '2024-09-08 14:35:33', '2024-09-08 14:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `dorm_rooms`
--

CREATE TABLE `dorm_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dorm_id` bigint(20) UNSIGNED NOT NULL,
  `room_number` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `available_beds` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dorm_rooms`
--

INSERT INTO `dorm_rooms` (`id`, `dorm_id`, `room_number`, `capacity`, `available_beds`, `floor`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1', 2, 2, 11, 'good', NULL, '2024-09-08 11:30:13', NULL),
(2, 1, '1', 1, 1, 1, '11', '2024-09-08 11:34:59', '2024-09-08 11:35:39', '2024-09-08 11:35:39'),
(3, 1, '1', 4, 4, 4, '4', '2024-09-08 12:39:08', '2024-09-08 12:39:16', '2024-09-08 12:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` int(11) NOT NULL,
  `campus_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `course_instructor_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `date`, `time`, `duration`, `campus_id`, `room_id`, `created_at`, `updated_at`, `deleted_at`, `course_instructor_id`) VALUES
(1, '1986-01-03', '01:07:00', 170, 32, 1, '2024-09-06 00:35:48', '2024-09-07 03:49:11', '2024-09-07 03:49:11', 1),
(2, '1986-01-03', '01:07:46', 170, 19, 3, '2024-09-06 00:35:48', '2024-09-06 00:36:52', '2024-09-06 00:36:52', 1),
(3, '2003-06-23', '08:32:00', 133, 52, 1, '2024-09-06 00:35:48', '2024-09-07 05:10:29', NULL, 1),
(4, '1972-04-17', '19:23:55', 78, 6, 3, '2024-09-06 00:35:48', '2024-09-07 06:01:12', '2024-09-07 06:01:12', 1),
(5, '1983-12-31', '19:11:00', 170, 5, 1, '2024-09-06 00:35:48', '2024-09-07 06:01:44', NULL, 1),
(6, '1973-05-16', '18:46:51', 98, 41, 7, '2024-09-06 00:35:48', '2024-09-06 00:35:48', NULL, 1),
(7, '1990-04-17', '21:56:22', 87, 31, 6, '2024-09-06 00:35:48', '2024-09-06 00:35:48', NULL, 1),
(8, '1975-06-15', '09:47:46', 109, 59, 10, '2024-09-06 00:35:48', '2024-09-06 00:35:48', NULL, 1),
(9, '1998-06-20', '13:18:07', 168, 15, 11, '2024-09-06 00:35:48', '2024-09-06 00:35:48', NULL, 1),
(10, '1997-04-29', '00:03:53', 133, 38, 9, '2024-09-06 00:35:48', '2024-09-06 00:35:48', NULL, 1),
(11, '1986-01-03', '01:07:46', 170, 32, 3, '2024-09-06 00:36:37', '2024-09-06 00:36:37', NULL, 2),
(12, '2003-06-23', '08:32:00', 133, 1, 1, '2024-09-07 04:18:03', '2024-09-07 04:18:03', NULL, 1),
(13, '2024-09-08', '10:20:00', 122, 1, 1, '2024-09-07 04:19:13', '2024-09-07 04:19:13', NULL, 1),
(16, '2024-09-16', '12:04:00', 19, 1, 1, '2024-09-07 06:02:27', '2024-09-07 06:02:27', NULL, 1),
(17, '2024-09-09', '12:07:00', 33, 1, 1, '2024-09-07 06:03:27', '2024-09-07 06:03:27', NULL, 1),
(18, '2024-09-15', '12:08:00', 22, 1, 1, '2024-09-07 06:05:07', '2024-09-07 06:05:16', '2024-09-07 06:05:16', 1),
(19, '2024-09-08', '12:36:00', 5, 1, 1, '2024-09-07 06:33:44', '2024-09-07 06:33:44', NULL, 1),
(20, '2024-09-13', '12:07:00', 7, 1, 1, '2024-09-07 06:34:25', '2024-09-07 06:37:07', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `credit_price_usd` decimal(8,2) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `credit_price_usd`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Faculty of Arts and Humanities', 120.00, 'The Faculty of Arts and Humanities offers programs in literature, history, philosophy, and the arts. We focus on developing critical thinking, creative expression, and cultural understanding, preparing students for careers in education, research, and the arts.', '2024-08-01 07:00:00', '2024-08-01 07:00:00', NULL),
(2, 'Faculty of Business Administration', 150.00, 'The Faculty of Business Administration provides comprehensive programs in business management, finance, and marketing. We prepare students for leadership roles in various industries through a focus on practical business skills and strategic thinking.', '2024-08-02 08:00:00', '2024-08-02 08:00:00', NULL),
(3, 'Faculty of Law', 200.00, 'Our Faculty of Law offers rigorous programs in legal studies, including criminal law, civil rights, and international law. We aim to equip students with the knowledge and skills needed for a successful career in legal practice or academia.', '2024-08-03 09:00:00', '2024-08-03 09:00:00', NULL),
(4, 'Faculty of Medicine', 300.00, 'The Faculty of Medicine provides training in medical sciences, clinical practice, and healthcare management. We focus on developing future healthcare professionals with a strong foundation in medical knowledge and patient care skills.', '2024-08-04 10:00:00', '2024-08-04 10:00:00', NULL),
(5, 'Faculty of Sciences', 140.00, 'The Faculty of Sciences offers programs in biological sciences, chemistry, physics, and mathematics. We emphasize scientific inquiry, experimental techniques, and theoretical knowledge to prepare students for research and industry careers.', '2024-08-05 11:00:00', '2024-08-05 11:00:00', NULL),
(6, 'Faculty of Social Sciences', 130.00, 'Our Faculty of Social Sciences offers programs in sociology, psychology, anthropology, and political science. We focus on understanding human behavior and social systems, preparing students for careers in social research, counseling, and public policy.', '2024-08-06 12:00:00', '2024-08-06 12:00:00', NULL),
(7, 'Faculty of Education', 110.00, 'The Faculty of Education provides training in pedagogy, curriculum development, and educational psychology. We aim to prepare future educators with the skills needed for effective teaching and educational leadership.', '2024-08-07 13:00:00', '2024-08-07 13:00:00', NULL),
(8, 'Faculty of Architecture', 180.00, 'Our Faculty of Architecture offers programs in architectural design, urban planning, and construction management. We focus on developing creative and technical skills for designing and managing building projects.', '2024-08-08 14:00:00', '2024-08-08 14:00:00', NULL),
(9, 'Faculty of Engineering', 170.00, 'The Faculty of Engineering provides education in various engineering disciplines, including civil, mechanical, and electrical engineering. We focus on problem-solving skills and technical expertise to prepare students for engineering careers.', '2024-08-09 15:00:00', '2024-08-09 15:00:00', NULL),
(10, 'Faculty of Information Technology', 160.00, 'Our Faculty of Information Technology offers programs in computer science, software engineering, and information systems. We emphasize practical skills and technological innovation to prepare students for careers in the IT sector.', '2024-08-10 16:00:00', '2024-08-10 16:00:00', NULL),
(11, 'Faculty of Engineering and Technology', 160.00, 'The Faculty of Engineering and Technology focuses on cutting-edge technological advancements and engineering innovations. Our programs cover areas such as robotics, artificial intelligence, and sustainable engineering practices, aiming to prepare students for leadership roles in technology-driven industries.', '2024-08-11 15:00:00', '2024-08-11 15:00:00', NULL),
(12, 'Faculty of Environmental Studies', 140.00, 'The Faculty of Environmental Studies offers programs focused on environmental science, conservation, and sustainable development. We emphasize practical solutions for environmental challenges and aim to prepare students for careers in environmental policy, research, and management.', '2024-08-12 16:00:00', '2024-08-12 16:00:00', NULL),
(13, 'Faculty of Sports and Physical Education', 130.00, 'Our Faculty of Sports and Physical Education provides programs in sports management, physical education, and fitness training. We focus on developing skills in sports coaching, fitness instruction, and sports administration, preparing students for careers in the sports industry.', '2024-08-13 17:00:00', '2024-08-13 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculties_campuses`
--

CREATE TABLE `faculties_campuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `campus_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties_campuses`
--

INSERT INTO `faculties_campuses` (`id`, `faculty_id`, `campus_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 38, '2024-09-05 13:49:15', '2024-09-05 13:49:15', NULL),
(2, 8, 51, '2024-09-05 13:49:15', '2024-09-05 13:49:15', NULL),
(3, 11, 43, '2024-09-05 13:49:15', '2024-09-05 13:49:15', NULL),
(4, 9, 37, '2024-09-05 13:49:15', '2024-09-05 13:49:15', NULL),
(5, 9, 24, '2024-09-05 13:49:15', '2024-09-05 13:49:15', NULL),
(6, 7, 17, '2024-09-05 13:49:15', '2024-09-05 13:49:15', NULL),
(7, 11, 59, '2024-09-05 13:49:15', '2024-09-05 13:49:15', NULL),
(8, 4, 2, '2024-09-05 13:49:15', '2024-09-05 13:49:15', NULL),
(9, 5, 39, '2024-09-05 13:49:15', '2024-09-05 13:49:15', NULL),
(10, 8, 3, '2024-09-05 13:49:15', '2024-09-05 13:49:15', NULL),
(11, 1, 2, '2024-09-05 13:51:52', '2024-09-05 13:52:03', NULL),
(12, 1, 1, '2024-09-08 07:56:48', '2024-09-08 07:56:48', NULL),
(13, 9, 1, '2024-09-08 08:01:59', '2024-09-08 08:02:18', '2024-09-08 08:02:18'),
(14, 6, 1, '2024-09-08 08:02:11', '2024-09-08 08:23:33', '2024-09-08 08:23:33'),
(15, 12, 1, '2024-09-08 08:23:41', '2024-09-08 08:23:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text NOT NULL,
  `amount_usd` decimal(10,2) NOT NULL,
  `amount_lbp` decimal(10,2) NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `student_id`, `course_id`, `description`, `amount_usd`, `amount_lbp`, `semester_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 1, 3, 'tlu-405', 369.70, 2310.60, 2, '2024-09-06 08:18:04', '2024-09-06 08:18:04', NULL),
(6, 1, NULL, 'Registration Fee', 100.00, 0.00, 2, '2024-09-06 08:18:04', '2024-09-06 08:18:04', NULL),
(7, 1, 14, 'rvp-111', 3089.38, 19308.60, 1, '2024-09-07 14:40:18', '2024-09-07 14:40:18', NULL),
(8, 1, NULL, 'Registration Fee', 100.00, 0.00, 1, '2024-09-07 14:40:18', '2024-09-07 14:40:18', NULL),
(9, 1, 32, 'CS107', 2317.03, 14481.45, 2, '2024-09-12 02:56:52', '2024-09-12 02:56:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `financial_aid_scholarships`
--

CREATE TABLE `financial_aid_scholarships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `financial_aid_scholarships`
--

INSERT INTO `financial_aid_scholarships` (`id`, `student_id`, `semester_id`, `type`, `percentage`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'fa', 5.00, 'fa', '2024-09-07 14:43:06', '2024-09-07 14:43:06', NULL),
(2, 1, 1, '2', 2.00, '2', '2024-09-07 15:32:59', '2024-09-07 15:32:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_id` bigint(20) UNSIGNED NOT NULL,
  `grade` decimal(5,2) NOT NULL,
  `letter_grade` char(2) NOT NULL,
  `gpa` decimal(3,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `registration_id`, `grade`, `letter_grade`, `gpa`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 9, 85.00, 'B', 3.00, NULL, NULL, NULL),
(16, 10, 92.00, 'A', 4.00, NULL, NULL, NULL),
(17, 11, 78.00, 'C', 2.30, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `important_dates`
--

CREATE TABLE `important_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `type` enum('Deadline','Event','Holiday','Other') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `important_dates`
--

INSERT INTO `important_dates` (`id`, `title`, `description`, `date`, `end_date`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Orientation Day', 'A day for new students to get oriented with the campus and meet their peers.', '2024-09-01', '2024-09-01', 'Event', '2024-08-01 07:00:00', '2024-08-01 07:00:00', '2024-09-07 06:41:32'),
(2, 'First Day of Classes', 'The beginning of the academic semester.', '2024-09-04', '2024-09-04', 'Event', '2024-08-02 08:00:00', '2024-08-02 08:00:00', '2024-09-07 06:45:36'),
(3, 'Midterm Exams Start', 'The start date for midterm examinations.', '2024-10-15', '2024-10-15', 'Deadline', '2024-08-03 09:00:00', '2024-08-03 09:00:00', '2024-09-07 06:47:22'),
(4, 'Final Exams Begin', 'The beginning of the final examination period.', '2024-12-10', '2024-12-10', 'Deadline', '2024-08-04 10:00:00', '2024-08-04 10:00:00', NULL),
(5, 'Winter Break Starts', 'The start of the winter vacation period.', '2024-12-22', '2024-12-22', 'Event', '2024-08-05 11:00:00', '2024-08-05 11:00:00', '2024-09-07 06:48:09'),
(6, 'Spring Semester Begins', 'The start of the spring academic semester.', '2025-01-10', '2025-01-10', 'Event', '2024-08-06 12:00:00', '2024-08-06 12:00:00', NULL),
(7, 'Application Deadline for Scholarships', 'Deadline for submitting scholarship applications.', '2024-11-01', '2024-11-01', 'Deadline', '2024-08-07 13:00:00', '2024-08-07 13:00:00', NULL),
(8, 'Career Fair', 'A day dedicated to career services and networking with potential employers.', '2024-11-15', '2024-11-15', 'Event', '2024-08-08 14:00:00', '2024-08-08 14:00:00', NULL),
(9, 'Last Day to Drop Classes', 'The final date to withdraw from classes without academic penalty.', '2024-10-30', '2024-10-30', 'Deadline', '2024-08-09 15:00:00', '2024-08-09 15:00:00', '2024-09-07 06:51:42'),
(10, 'Graduation Ceremony', 'The official ceremony celebrating the graduation of students.', '2025-05-15', '2025-05-15', 'Event', '2024-08-10 16:00:00', '2024-08-10 16:00:00', '2024-09-07 06:48:47'),
(11, 'Summer Break Begins', 'The start of the summer vacation period.', '2025-06-01', '2025-06-01', 'Event', '2024-08-11 17:00:00', '2024-08-11 17:00:00', NULL),
(12, 'Fall Semester Registration Deadline', 'The last date to register for fall semester courses.', '2025-08-20', '2025-08-20', 'Deadline', '2024-08-12 18:00:00', '2024-08-12 18:00:00', NULL),
(13, 'Thanksgiving Break', 'The period for Thanksgiving holiday break.', '2024-11-28', '2024-11-29', 'Event', '2024-08-13 19:00:00', '2024-08-13 19:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `user_id`, `department_id`, `specialization`, `salary`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 12, 'vero2', 1200.00, '2024-09-05 12:44:04', '2024-09-09 05:19:25', NULL),
(2, 3, 13, 'aliquam', NULL, '2024-09-05 12:44:04', '2024-09-09 05:24:54', '2024-09-09 05:24:54'),
(3, 4, 14, 'beatae', NULL, '2024-09-05 12:44:04', '2024-09-05 12:44:04', NULL),
(4, 5, 15, 'facere', NULL, '2024-09-05 12:44:04', '2024-09-05 12:44:04', NULL),
(5, 6, 16, 'quibusdam', NULL, '2024-09-05 12:44:04', '2024-09-05 12:44:04', NULL),
(6, 7, 17, 'voluptas', NULL, '2024-09-05 12:44:04', '2024-09-05 12:44:04', NULL),
(7, 8, 18, 'repellat', NULL, '2024-09-05 12:44:04', '2024-09-05 12:44:04', NULL),
(8, 9, 19, 'blanditiis', NULL, '2024-09-05 12:44:04', '2024-09-05 12:44:04', NULL),
(9, 10, 20, 'eaqu', NULL, '2024-09-05 12:44:04', '2024-09-07 12:55:51', NULL),
(10, 11, 21, 'dolores', NULL, '2024-09-05 12:44:04', '2024-09-07 12:55:40', '2024-09-07 12:55:40'),
(11, 2, 2, 'vero', NULL, '2024-09-05 13:28:16', '2024-09-07 12:53:13', '2024-09-07 12:53:13'),
(12, 30, 12, 'cs', NULL, '2024-09-09 03:56:26', '2024-09-09 03:56:26', NULL),
(13, 2, 6, 'cs', 1000.00, '2024-09-09 05:13:37', '2024-09-09 05:13:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `library_books`
--

CREATE TABLE `library_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `copies` int(11) NOT NULL,
  `publication_year` int(11) NOT NULL,
  `campus_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `pages` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_books`
--

INSERT INTO `library_books` (`id`, `title`, `author`, `isbn`, `copies`, `publication_year`, `campus_id`, `description`, `pages`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Minus velit voluptate dolore omnis et.', 'Aracely Crist', '9782481854655', 19, 2008, 72, NULL, 1, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(2, 'Suscipit accusamus dolor repellat ab id facilis labore.', 'Concepcion Daniel', '9783598480607', 14, 1989, 73, NULL, 1, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(3, 'Omnis cum autem occaecati aut.', 'Verner Abshire III', '9796643489012', 19, 2002, 74, NULL, 1, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(4, 'Aliquam ea consequuntur aut.', 'Maximillian Abshire II', '9783703597039', 70, 1997, 75, NULL, 1, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(5, 'Mollitia quas qui voluptas inventore officiis.', 'Miss Lizzie Kassulke', '9782171088308', 27, 2014, 76, NULL, 1, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(6, 'Corrupti accusantium iste debitis est asperiores a ipsum.', 'Nick Conroy', '9788956801728', 26, 2007, 77, NULL, 1, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(7, 'Exercitationem modi quo perspiciatis sit quibusdam mollitia.', 'Adrian Kuhlman', '9789113158082', 3, 1992, 78, NULL, 1, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(8, 'Tempora et voluptatem corporis et cum.', 'Orrin Farrell', '9792789159291', 44, 1978, 79, NULL, 1, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(9, 'Sapiente aperiam repellat consectetur labore illo adipisci.', 'Desmond Keeling', '9789132349133', 87, 1987, 80, NULL, 1, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(10, 'Eaque et culpa autem eaque sint.', 'Bartholome Hartmann', '9792424995994', 47, 1997, 81, NULL, 1, '2024-09-06 01:53:21', '2024-09-06 01:53:21', NULL),
(11, 'Corrupti accusantium iste debitis est asperiores a ipsum.', 'Nick Conroy', '978895801728', 26, 2007, 77, NULL, 1, '2024-09-06 01:55:21', '2024-09-08 01:19:11', '2024-09-08 01:19:11'),
(12, 'yyy', 'ttt', '25355353388', 4, 2023, 6, 'tttt', 4, '2024-09-08 01:21:28', '2024-09-08 01:21:28', NULL),
(13, 'vt', 'r', '97824818546556', 3, 2024, 11, 't', 4, '2024-09-08 01:23:44', '2024-09-08 01:23:44', NULL),
(14, 'hgghghghg', 'ttt', '3434558888', 36, 2024, 2, 'yyyyy', 36, '2024-09-08 01:27:30', '2024-09-08 01:53:00', '2024-09-08 01:53:00'),
(15, 'ty', 'Mo salah', '25355353', 4, 2004, 3, 'yy', 6, '2024-09-08 01:53:58', '2024-09-08 01:53:58', NULL),
(17, 'yydjjj', 'yydd', '97818', 8, 2000, 18, 'yy', 8, '2024-09-08 01:54:44', '2024-09-08 02:07:26', '2024-09-08 02:07:26'),
(18, 'Qui minima saepe mollitia illo non dolorum.', 'Aliyah Larson', '9795176190518', 73, 1970, 82, NULL, 1, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(19, 'Eius qui sed ut.', 'Darwin Sauer', '9786204012230', 81, 1980, 83, NULL, 1, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(20, 'Et enim quasi accusantium qui esse recusandae.', 'Mr. Ben Stehr V', '9782953510850', 85, 1996, 84, NULL, 1, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(21, 'Iure et perferendis fugit eum voluptatem consequuntur.', 'Prof. Angel Eichmann', '9795247005611', 94, 1979, 85, NULL, 1, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(22, 'Illo molestiae nesciunt rerum magnam expedita est.', 'Ebba Roob', '9783783423723', 70, 1973, 86, NULL, 1, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(23, 'Vitae nisi exercitationem explicabo possimus rerum.', 'Emerson Stark', '9784403144080', 57, 1990, 87, NULL, 1, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(24, 'Laudantium iusto ullam dolore reprehenderit.', 'Kathlyn Goyette', '9792096528162', 82, 1988, 88, NULL, 1, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(25, 'Hic praesentium consectetur iusto et dolorem voluptatem.', 'Garrett Parker', '9780467531026', 73, 2003, 89, NULL, 1, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(26, 'Minima enim illum quo optio architecto ut voluptatem.', 'Prof. Roger Stroman I', '9792778982312', 28, 2003, 90, NULL, 1, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL),
(27, 'Maxime ea ea odio eos dolore eius.', 'Prof. Gabe Maggio', '9784840568661', 4, 1973, 91, NULL, 1, '2024-09-08 02:08:47', '2024-09-08 02:08:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `name`, `description`, `faculty_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Computer Science', 'A study of computer systems, programming, and algorithms.', 2, '2024-09-05 12:14:38', '2024-09-14 15:02:04', NULL),
(2, 'Business Administration', 'Management principles and business practices.', 6, '2024-09-05 12:14:38', '2024-09-14 15:02:04', NULL),
(3, 'Mechanical Engineering', 'Engineering focused on mechanical systems and machinery.', 1, '2024-09-05 12:14:38', '2024-09-14 15:02:04', NULL),
(4, 'Civil Engineering', 'Design and construction of infrastructure.', 11, '2024-09-05 12:14:38', '2024-09-14 15:02:04', NULL),
(5, 'Electrical Engineering', 'Study of electrical systems and electronics.', 4, '2024-09-05 12:14:38', '2024-09-14 15:02:04', '2024-09-07 07:46:20'),
(6, 'Mathematics', 'The study of numbers, quantities, and shapes.', 1, '2024-09-05 12:14:38', '2024-09-14 15:02:04', '2024-09-07 07:44:32'),
(7, 'Biology', 'Study of living organisms and life processes.', 7, '2024-09-05 12:14:38', '2024-09-14 15:02:04', '2024-09-07 07:43:25'),
(8, 'Physics', 'Study of matter, energy, and their interactions.', 3, '2024-09-05 12:14:38', '2024-09-14 15:02:04', '2024-09-07 07:42:48'),
(9, 'Chemistry', 'Study of substances, their properties, and reactions.', 9, '2024-09-05 12:14:38', '2024-09-14 15:02:04', '2024-09-07 07:41:16'),
(10, 'Environmental Science', 'Study of environmental systems and conservation.', 3, '2024-09-05 12:14:38', '2024-09-14 15:02:04', '2024-09-07 07:38:25'),
(11, 'Psychology', 'Study of the mind and behavior.', 1, '2024-09-05 12:15:09', '2024-09-14 15:02:04', '2024-09-07 07:37:54'),
(12, 'Economics', 'Study of production, distribution, and consumption of goods and services.', 1, '2024-09-07 07:44:23', '2024-09-14 15:02:04', NULL),
(13, 'International Relations', 'Study of relationships between countries and global issues.', 1, '2024-09-07 07:46:55', '2024-09-14 15:02:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `majors_faculties_campuses`
--

CREATE TABLE `majors_faculties_campuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `major_id` bigint(20) UNSIGNED NOT NULL,
  `faculty_campus_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `majors_faculties_campuses`
--

INSERT INTO `majors_faculties_campuses` (`id`, `major_id`, `faculty_campus_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 14, NULL, NULL, NULL),
(4, 13, 12, NULL, NULL, NULL),
(5, 3, 12, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_08_17_090504_create_faculties_table', 1),
(5, '2024_08_17_092525_create_campuses_table', 1),
(6, '2024_08_17_094150_create_departments_table', 1),
(7, '2024_08_17_100024_create_centers_table', 1),
(8, '2024_08_17_104235_create_majors_table', 1),
(9, '2024_08_17_110133_create_blocks_table', 1),
(10, '2024_08_17_115408_create_rooms_table', 1),
(11, '2024_08_17_121043_create_courses_table', 1),
(12, '2024_08_17_132342_create_semesters_table', 1),
(13, '2024_08_17_180351_create_users_table', 1),
(14, '2024_08_17_183917_create_contacts_table', 1),
(15, '2024_08_17_191043_create_admins_table', 1),
(16, '2024_08_17_192608_create_instructors_table', 1),
(17, '2024_08_17_200220_create_addresses_table', 1),
(18, '2024_08_18_060131_create_faculties_campuses_table', 1),
(19, '2024_08_18_065651_create_course_prerequisites_table', 1),
(20, '2024_08_18_071449_create_course_instructors_table', 1),
(21, '2024_08_18_074308_create_dorms_table', 1),
(22, '2024_08_18_075858_create_dorm_rooms_table', 1),
(23, '2024_08_18_081747_create_bus_routes_table', 1),
(24, '2024_08_18_094957_create_registrations_table', 1),
(25, '2024_08_18_101635_create_exams_table', 1),
(26, '2024_08_18_103957_create_grades_table', 1),
(27, '2024_08_18_104431_create_assignments_table', 1),
(28, '2024_08_18_112049_create_submissions_table', 1),
(29, '2024_08_18_112824_create_payments_table', 1),
(30, '2024_08_18_115105_create_fees_table', 1),
(31, '2024_08_18_115246_create_financial_aid_scholarships_table', 1),
(32, '2024_08_18_123521_create_important_dates_table', 1),
(33, '2024_09_05_123005_create_students_table', 2),
(34, '2024_09_05_123634_create_ai_instructor_interactions', 3),
(35, '2024_09_05_123852_create_ai_instructor_interactions', 4),
(36, '2024_09_05_124648_create_announcements', 5),
(37, '2024_09_05_125252_modify_assignments_table', 6),
(38, '2024_09_05_130122_create_bus_registrations', 7),
(39, '2024_09_05_130719_create_course_drop_requests', 8),
(40, '2024_09_05_131119_create_course_materials', 9),
(41, '2024_09_05_131704_create_deans', 10),
(42, '2024_09_05_134023_update_exams', 11),
(43, '2024_09_05_134345_add_credit_price_usd_to_faculties_table', 12),
(44, '2024_09_05_134835_create_fees', 13),
(45, '2024_09_05_135239_create_financial_aid_scholarships', 14),
(46, '2024_09_05_140204_create_library_books', 15),
(47, '2024_09_05_140604_create_majors_faculties_campuses', 16),
(48, '2024_09_05_140907_create_news', 17),
(49, '2024_09_05_141233_create_payments', 18),
(50, '2024_09_05_141543_create_payment_settings', 19),
(51, '2024_09_05_141918_update_ci', 20),
(52, '2024_09_06_074226_add_student_id_to_course_drop_requests_table', 21),
(53, '2024_09_06_074706_add_status_to_course_drop_requests_table', 22),
(54, '2024_09_08_131144_drop_columns_from_students_table', 23),
(55, '2024_09_08_155631_drop_columns_from_dorm_registrations', 24),
(56, '2024_09_08_200451_drop_columns_from_bus_routes', 25),
(57, '2024_09_09_044138_add_address_and_emergency_contact_number_to_users_table', 26),
(58, '2024_09_09_050801_edit_address_and_emergency_contact_number_to_users_table', 27),
(59, '2024_09_09_050948_add_address_and_emergency_contact_number_to_users_table', 28),
(60, '2024_09_09_073224_add_salary_to_instructors_table', 29),
(61, '2024_09_09_073225_add_salary_to_admins_table', 30),
(62, '2024_09_09_074424_adding_salary_payments', 31),
(63, '2024_09_12_132818_create_course_evaluations_table', 32);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `published_date` date NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `published_date`, `author_id`, `category`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'New Research Center Opens at University', 'The university is excited to announce the opening of a new state-of-the-art research center dedicated to advanced studies in artificial intelligence and machine learning. This new facility will support cutting-edge research and provide students with hands-on experience in these rapidly evolving fields.', '2024-09-01', 2, 'Research', '2024-08-15 07:00:00', '2024-08-15 07:00:00', NULL),
(2, 'University Hosts Annual Career Fair', 'The university\'s annual career fair was a great success, featuring over 100 companies and organizations from various industries. Students had the opportunity to network with potential employers and explore job and internship opportunities. The event was well-attended and provided valuable connections for many students.', '2024-09-05', 3, 'Events', '2024-08-16 08:30:00', '2024-08-16 08:30:00', NULL),
(3, 'Faculty Research Grants Available for 2024', 'The university is pleased to announce the availability of research grants for faculty members for the year 2024. These grants aim to support innovative research projects and promote academic excellence. Interested faculty are encouraged to apply before the deadline of October 15, 2024.', '2024-09-10', 4, 'Research', '2024-08-18 06:00:00', '2024-08-18 06:00:00', NULL),
(4, 'New Student Housing Complex Opens', 'We are thrilled to announce the opening of a new student housing complex on campus. The new facility offers modern amenities and comfortable living spaces, providing students with an enhanced residential experience. The complex is now available for students to move in for the upcoming semester.', '2024-09-12', 5, 'Campus Life', '2024-08-20 11:45:00', '2024-08-20 11:45:00', NULL),
(5, 'University Announces New Scholarship Program', 'The university is launching a new scholarship program aimed at supporting underrepresented students in STEM fields. This program will offer financial assistance and mentorship opportunities to eligible students, fostering diversity and inclusion within the academic community.', '2024-09-15', 6, 'Scholarships', '2024-08-22 05:00:00', '2024-08-22 05:00:00', NULL),
(6, 'Renovation of Main Library Completed', 'We are excited to announce the completion of the renovation of the main library. The upgraded facility now includes modern study spaces, additional resources, and improved accessibility for all students and faculty. The library is open and ready to welcome everyone.', '2024-09-18', 7, 'Campus Life', '2024-08-23 10:30:00', '2024-08-23 10:30:00', NULL),
(7, 'New Online Course Offerings for Fall Semester', 'The university is expanding its online course offerings for the upcoming fall semester. Students can now choose from a wider range of subjects and disciplines, providing greater flexibility and access to quality education from anywhere.', '2024-09-20', 8, 'Academics', '2024-08-25 12:00:00', '2024-08-25 12:00:00', NULL),
(8, 'University Wins National Sports Championship', 'Congratulations to our university sports teams for winning the national championship in several disciplines. The dedication and hard work of our athletes and coaches have paid off, and we are proud of their achievements and the recognition they have brought to our institution.', '2024-09-22', 9, 'Sports', '2024-08-27 07:30:00', '2024-08-27 07:30:00', NULL),
(9, 'Upcoming Alumni Reunion Event', 'We are excited to invite all alumni to our upcoming reunion event. This is a great opportunity to reconnect with former classmates, network with fellow alumni, and celebrate the achievements of our graduates. The event will take place on October 5, 2024.', '2024-09-25', 10, 'Events', '2024-08-30 09:00:00', '2024-08-30 09:00:00', NULL),
(10, 'New Sustainability Initiative Launched', 'The university is launching a new sustainability initiative aimed at reducing our environmental footprint and promoting eco-friendly practices across campus. This initiative includes a range of projects and programs designed to make our university more sustainable and environmentally responsible.', '2024-09-28', 11, 'Sustainability', '2024-09-01 06:00:00', '2024-09-01 06:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `currency` enum('USD','LBP') NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `student_id`, `semester_id`, `amount_paid`, `payment_date`, `currency`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 100000.00, '2024-10-10', 'LBP', 'Pay', '2024-09-06 04:57:30', '2024-09-06 04:57:30', NULL),
(2, 1, 1, 100.00, '2024-09-08', 'USD', 'pay', '2024-09-07 14:41:55', '2024-09-07 14:41:55', NULL),
(3, 1, 1, 1000.00, '2024-09-08', 'LBP', 'pay', '2024-09-07 14:42:28', '2024-09-07 14:42:28', NULL),
(4, 1, 1, 1.00, '2024-09-09', 'USD', '1', '2024-09-07 15:26:53', '2024-09-07 15:26:53', NULL),
(5, 1, 1, 1.00, '2024-09-08', 'USD', '2', '2024-09-07 15:27:18', '2024-09-07 15:27:18', NULL),
(6, 1, 1, 2.00, '2024-09-08', 'USD', '22', '2024-09-07 15:29:19', '2024-09-07 15:29:19', NULL),
(7, 1, 1, 500.00, '2024-09-03', 'LBP', '6', '2024-09-07 15:32:49', '2024-09-07 15:32:49', NULL),
(8, 1, 2, 2786.73, '2024-10-10', 'USD', 'Pay', NULL, NULL, NULL),
(9, 1, 2, 469.70, '2024-10-10', 'USD', 'Pay', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exchange_rate` decimal(10,2) NOT NULL,
  `lbp_percentage` decimal(5,2) NOT NULL,
  `registration_fee_usd` decimal(10,2) NOT NULL,
  `effective_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `exchange_rate`, `lbp_percentage`, `registration_fee_usd`, `effective_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 25.00, 0.20, 100.00, '2024-09-06', '2024-09-06 00:32:07', '2024-09-06 00:32:07', NULL),
(2, 21.00, 97.00, 11.00, '2024-09-16', '2024-09-08 07:54:58', '2024-09-08 07:55:14', '2024-09-08 07:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_instructor_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Registered','Completed','Failed') NOT NULL DEFAULT 'Registered',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `course_instructor_id`, `student_id`, `semester_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 2, 1, 1, 'Registered', '2024-09-06 00:33:01', '2024-09-06 00:33:20', NULL),
(8, 1, 1, 1, 'Registered', '2024-09-07 14:40:18', '2024-09-07 14:40:18', NULL),
(9, 14, 1, 1, 'Completed', NULL, NULL, NULL),
(10, 15, 1, 1, 'Completed', NULL, NULL, NULL),
(11, 17, 8, 2, 'Completed', NULL, NULL, NULL),
(13, 17, 1, 2, 'Registered', '2024-09-12 02:56:52', '2024-09-12 02:56:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(20) NOT NULL,
  `block_id` bigint(20) UNSIGNED NOT NULL,
  `capacity` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `number`, `block_id`, `capacity`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'est', 1, 100, 'Inventore eligendi aut quis voluptatibus maiores quisquam assumenda.', '2024-09-05 12:17:18', '2024-09-08 07:50:31', '2024-09-08 07:50:31'),
(2, 'iste', 13, 87, 'Et distinctio ex commodi quod ad.', '2024-09-05 12:17:18', '2024-09-08 07:51:19', '2024-09-08 07:51:19'),
(3, 'fugad', 12, 49, 'Non tenetur totam praesentium autem.', '2024-09-05 12:17:18', '2024-09-08 07:52:37', NULL),
(4, 'aut', 15, 4, 'Excepturi qui ipsa cumque rerum dolorem culpa quae.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(5, 'officiis', 16, 54, 'Aspernatur voluptatem velit autem exercitationem.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(6, 'voluptates', 17, 7, 'Qui magnam officia et.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(7, 'eaque', 18, 82, 'Repellat reiciendis aut enim sit facere qui.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(8, 'occaecati', 19, 21, 'Velit magnam et labore at iusto deserunt.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(9, 'aspernatur', 20, 81, 'Odit sapiente aliquam eius quaerat sint veniam quo.', '2024-09-05 12:17:18', '2024-09-05 12:17:18', NULL),
(10, 'qui', 12, 100, 'Inventore eligendi aut quis voluptatibus maiores quisquam assumenda.', '2024-09-05 12:17:18', '2024-09-05 12:20:15', NULL),
(11, 'eslt', 12, 100, 'Inventore eligendi aut quis voluptatibus maiores quisquam assumenda.', '2024-09-05 12:18:40', '2024-09-05 12:18:40', NULL),
(12, '1', 12, 1, '1', '2024-09-08 07:52:50', '2024-09-08 07:52:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary_payments`
--

CREATE TABLE `salary_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `recipient_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_type` enum('Instructor','Admin') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_payments`
--

INSERT INTO `salary_payments` (`id`, `amount`, `payment_date`, `recipient_id`, `recipient_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1500.00, '2024-09-10', 2, 'Instructor', '2024-09-09 04:57:46', '2024-09-09 04:58:14', '2024-09-09 04:58:14'),
(2, 1200.00, '2024-09-10', 1, 'Instructor', '2024-09-09 07:10:10', '2024-09-09 07:10:10', NULL),
(3, 1000.00, '2024-09-10', 2, 'Instructor', '2024-09-09 07:12:46', '2024-09-09 07:29:46', '2024-09-09 07:29:46'),
(4, 1000.00, '2024-09-10', 2, 'Instructor', '2024-09-09 07:47:09', '2024-09-09 07:47:17', '2024-09-09 07:47:17'),
(5, 1000.00, '2024-09-10', 2, 'Instructor', '2024-09-09 07:52:35', '2024-09-09 07:52:35', NULL),
(6, 122.00, '2024-09-17', 1, 'Admin', '2024-09-09 07:58:56', '2024-09-09 08:00:48', '2024-09-09 08:00:48'),
(7, 12.00, '2024-09-16', 1, 'Admin', '2024-09-09 08:01:50', '2024-09-09 08:01:50', NULL),
(8, 12.00, '2024-09-16', 1, 'Admin', '2024-09-09 08:03:05', '2024-09-09 08:03:11', '2024-09-09 08:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `name`, `start_date`, `end_date`, `is_current`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'nemo Semester', '2024-08-17', '2025-03-10', 0, '2024-09-05 12:31:38', '2024-09-07 03:36:51', NULL),
(2, 'voluptas Semester', '2023-11-19', '2025-05-06', 1, '2024-09-05 12:31:38', '2024-09-07 03:37:00', NULL),
(3, 'culpa Semester', '2024-05-10', '2025-04-18', 0, '2024-09-05 12:31:38', '2024-09-05 12:31:38', NULL),
(4, 'modi Semester', '2024-06-26', '2025-08-31', 0, '2024-09-05 12:31:38', '2024-09-05 12:31:38', NULL),
(5, 'error Semester', '2024-04-20', '2024-12-22', 0, '2024-09-05 12:31:38', '2024-09-05 12:31:38', NULL),
(6, 'impedit Semester', '2024-07-20', '2024-09-15', 0, '2024-09-05 12:31:38', '2024-09-05 12:31:38', NULL),
(7, 'voluptate Semester', '2024-04-21', '2025-02-14', 0, '2024-09-05 12:31:38', '2024-09-05 12:31:38', NULL),
(8, 'sint Semester', '2024-03-31', '2025-04-13', 0, '2024-09-05 12:31:38', '2024-09-05 12:31:38', NULL),
(9, 'cumque Semester', '2024-06-22', '2025-08-24', 0, '2024-09-05 12:31:38', '2024-09-05 12:31:38', NULL),
(10, 'minus Semester', '2024-03-06', '2025-02-14', 0, '2024-09-05 12:31:38', '2024-09-05 12:31:38', NULL),
(11, 'nemeo Semester', '2024-08-17', '2025-03-10', 0, '2024-09-05 12:39:50', '2024-09-05 12:40:34', NULL),
(12, 'hadi', '2024-09-08', '2024-10-09', 0, '2024-09-07 03:33:07', '2024-09-07 03:36:39', NULL),
(13, 'name', '2024-09-08', '2024-09-24', 0, '2024-09-07 03:36:39', '2024-09-07 03:37:00', NULL),
(14, 'hadi', '2024-09-08', '2024-09-17', 0, '2024-09-07 03:37:23', '2024-09-07 03:37:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `major_id` bigint(20) UNSIGNED NOT NULL,
  `government_id` varchar(20) NOT NULL,
  `civil_status_number` varchar(20) NOT NULL,
  `passport_number` varchar(20) DEFAULT NULL,
  `visa_status` varchar(50) DEFAULT NULL,
  `native_language` varchar(50) NOT NULL,
  `secondary_language` varchar(50) NOT NULL,
  `additional_info` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `major_id`, `government_id`, `civil_status_number`, `passport_number`, `visa_status`, `native_language`, `secondary_language`, `additional_info`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 12, '123456789', '987654321', 'A12345678', 'Active', 'English', 'French', 'Enrolled in part-time courses.', '2024-09-05 12:31:40', '2024-09-08 10:20:36', NULL),
(3, 14, 1, '111111111111111', '1111111111111', NULL, NULL, 'arabic', 'english', '111111111111111', '2024-09-07 13:03:58', '2024-09-07 13:03:58', NULL),
(4, 2, 12, '11111', '111', '11', NULL, 'arabic', 'englishs', '1', '2024-09-07 13:04:57', '2024-09-07 15:23:48', '2024-09-07 15:23:48'),
(5, 7, 1, '2222', '22', NULL, NULL, 'arabic', 'english', '2', '2024-09-07 13:05:33', '2024-09-07 14:24:31', '2024-09-07 14:24:31'),
(6, 21, 1, '12', '12', '12', 'valid', 'arabic', 'english', 'yy', '2024-09-09 01:10:02', '2024-09-09 01:10:02', NULL),
(7, 18, 13, '2', '2', '2', '2', '2', '2', '2', '2024-09-09 01:14:33', '2024-09-09 01:14:33', NULL),
(8, 34, 1, '111116666', '11111666', '11166', '6666', 'arabic', 'english', '111', '2024-09-09 02:58:04', '2024-09-09 02:58:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `submission_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `assignment_id`, `student_id`, `file_path`, `submission_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'submissions/FArZewQ1sWRQ89TOZ0iBgmPjc478ePbr13ZuyDHu.docx', '2024-09-06', '2024-09-06 04:36:14', '2024-09-06 04:37:09', '2024-09-06 04:37:09'),
(2, 1, 1, 'submissions/paRN4kGoDi6KswsNPbtv7Z2vLKjBPXosjmtVSLjY.docx', '2024-09-06', '2024-09-06 04:49:42', '2024-09-06 04:49:42', NULL),
(3, 1, 1, 'submissions/oCz1n3140OveaUgNqRDxgECn6mwlX5sb05PUtM6H.docx', '2024-09-06', '2024-09-06 04:49:42', '2024-09-06 04:49:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mother_full_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `role` enum('Student','Admin','Instructor') NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL,
  `date_of_birth` date NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `second_nationality` varchar(50) NOT NULL,
  `country_of_birth` varchar(50) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `marital_status` enum('Single','Married','Divorced','Widowed') NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `emergency_contact_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `mother_full_name`, `email`, `password`, `phone_number`, `role`, `status`, `date_of_birth`, `nationality`, `second_nationality`, `country_of_birth`, `gender`, `marital_status`, `profile_picture`, `address`, `emergency_contact_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'John', 'A.', 'Doe', 'Jane Doe', 'john.doe@example.com', '$2y$12$cP5gSAzs4FTvxkr0itByVurjFa06P16MOw9BoUBCE1oelSU6cHa/i', '+1234567890', 'Admin', 'Approved', '2000-01-01', 'American', 'Canadian', 'United States', 'Male', 'Single', 'https://randomuser.me/api/portraits/men/75.jpg', '', '', '2024-09-05 11:35:19', '2024-09-05 11:35:19', NULL),
(2, 'Patricia', 'Schimmel', 'Treutel', 'Mrs. Shanon Roberts DVM', 'hadigghazi@gmail.com', '$2y$12$OX9ii7CdvUsh68YfedBL9ONO/b3Nx7TxsBa7LQ772SFvh.q32Djse', '(623) 834-1102', 'Instructor', 'Approved', '2017-06-30', 'Azerbaijan', 'Gabon', 'French Guiana', 'Male', 'Divorced', 'https://via.placeholder.com/640x480.png/0088dd?text=ad', '', '', '2024-09-05 12:44:01', '2024-09-09 05:13:39', NULL),
(3, 'Major', 'Lockman', 'Muller', 'Tianna Kovacek PhD', 'terrell61@example.com', '$2y$12$yps6JAhAq4Jppg0.KXt/Eensyb.WeZq50l8q956UTGD0tft7OgI12', '+1-681-902-3606', 'Student', 'Approved', '1970-12-19', 'Jersey', 'Costa Rica', 'Liberia', 'Male', 'Widowed', 'https://via.placeholder.com/640x480.png/005500?text=exercitationem', '', '', '2024-09-05 12:44:01', '2024-09-05 12:44:01', NULL),
(4, 'Jo', 'Morar', 'Mann', 'Hudson Champlin', 'vpacocha@example.org', '$2y$12$2brDKh7ifef1ggairtDZquE/ecQ4GITyZeY4l5ePMnIvU/1RG31xy', '332.826.2131', 'Student', 'Approved', '1992-05-11', 'Korea', 'Togo', 'Serbia', 'Female', 'Single', 'https://via.placeholder.com/640x480.png/00dd77?text=repudiandae', '', '', '2024-09-05 12:44:02', '2024-09-05 12:44:02', NULL),
(5, 'Francesca', 'Mayert', 'Mertz', 'Prof. Lonie Watsica PhD', 'nelda.daniel@example.net', '$2y$12$T9iOGsYG8NCQ9q4qPS43.uLFKi5J/g.aoDjGNsUU5rQAz.dvnGSn.', '+1-217-732-3804', 'Admin', 'Approved', '2005-12-24', 'Kuwait', 'India', 'Thailand', 'Female', 'Single', 'https://via.placeholder.com/640x480.png/001177?text=veritatis', '', '', '2024-09-05 12:44:02', '2024-09-05 12:44:02', NULL),
(6, 'Tyler', 'Ziemann', 'Emard', 'Mrs. Mckayla Haag II', 'pearl.oconner@example.net', '$2y$12$Soxqy6t71D2SON6QDmLbfutZvFgPLd04tr/kfYzT5E6XlhivNPShS', '830-865-4382', 'Admin', 'Approved', '2020-11-18', 'Iceland', 'Iceland', 'Peru', 'Female', 'Widowed', 'https://via.placeholder.com/640x480.png/00ff00?text=dolorem', '', '', '2024-09-05 12:44:02', '2024-09-05 12:44:02', NULL),
(7, 'Allen', 'Dietrich', 'Wintheiser', 'Mrs. Vernice Hills', 'reanna92@example.org', '$2y$12$GpWzpLoji4fI1QfJ1xuFou4u0hdMpvA2LPDDQkQjb2zVLVDZv9aaq', '+1-914-638-8962', 'Student', 'Approved', '1972-09-15', 'Norway', 'Bulgaria', 'Saint Pierre and Miquelon', 'Male', 'Married', 'https://via.placeholder.com/640x480.png/00eebb?text=est', '', '', '2024-09-05 12:44:03', '2024-09-07 13:05:35', NULL),
(8, 'Josh', 'O\'Keefe', 'Schultz', 'Diana Hauck', 'kcasper@example.com', '$2y$12$Z7NNp3j8DBhymOW3l2QyRemuOcy/ZECOPM9T5kTLF1vfQCw4DBhcq', '+1-262-816-1742', 'Student', 'Approved', '1988-05-20', 'Moldova', 'Morocco', 'United States Minor Outlying Islands', 'Male', 'Married', 'https://via.placeholder.com/640x480.png/0077dd?text=aperiam', '', '', '2024-09-05 12:44:03', '2024-09-05 12:44:03', NULL),
(9, 'Reanna', 'Stroman', 'Schaefer', 'Mr. Unique Kautzer', 'zfranecki@example.com', '$2y$12$SVtQePls6VnqZ/Ou.VkneO.1.qiHvY/hYRVBI2Aobje7WYzao5yva', '+1-281-332-3105', 'Admin', 'Approved', '2019-11-29', 'Micronesia', 'Kyrgyz Republic', 'Greece', 'Female', 'Widowed', 'https://via.placeholder.com/640x480.png/004466?text=molestiae', '', '', '2024-09-05 12:44:03', '2024-09-09 05:58:17', NULL),
(10, 'Bill', 'Reynolds', 'Lueilwitz', 'Malika Lakin III', 'christian.dooley@example.net', '$2y$12$EvdWzgaZjrCh1dvpTvmkb.LgKiLNMFq.te3c9vlMlk4OUk7/ZCh0e', '+14784824738', 'Student', 'Approved', '2004-05-06', 'Samoa', 'Iraq', 'Norway', 'Male', 'Divorced', 'https://via.placeholder.com/640x480.png/002200?text=quia', '', '', '2024-09-05 12:44:03', '2024-09-05 12:44:03', NULL),
(11, 'John', 'A.', 'Doe', 'Jane Doe', 'pauline.sporer@example.com', '$2y$12$Xe8ZQVgyFJ6jiNJITmx3o.aCKfWHlQkESvpfxrck5NNlzSMEznxCi', '+113567890', 'Admin', 'Rejected', '2000-01-01', 'American', 'Canadian', 'United States', 'Male', 'Single', 'https://randomuser.me/api/portraits/men/75.jpg', '', '', '2024-09-05 12:44:04', '2024-09-09 05:53:25', NULL),
(12, 'John', 'A.', 'Doe', 'Jane Doe', 'johnw.doe@example.com', '$2y$12$uH5ROPCB4lizFNy72mN2Ve0gKrnmQCQU4xg.7hywCy9Te7de0zQWK', '+1134567890', 'Admin', 'Approved', '2000-01-01', 'American', 'Canadian', 'United States', 'Male', 'Single', 'https://randomuser.me/api/portraits/men/75.jpg', '', '', '2024-09-05 12:50:27', '2024-09-09 04:01:24', NULL),
(13, 'Markus', 'Beer', 'Terry', 'Justina Hintz', 'toby07@example.com', '$2y$12$tPZx/ilgtff3zi2CqvNm5.EG7c2xUqdYXIr8VU.J4ngcrFrEM7a9C', '+1-458-399-1490', 'Student', 'Approved', '2021-03-11', 'Denmark', 'Luxembourg', 'Albania', 'Female', 'Widowed', 'https://via.placeholder.com/640x480.png/00dd44?text=ut', '', '', '2024-09-05 13:23:03', '2024-09-09 00:58:15', '2024-09-09 00:58:15'),
(14, 'Alicia', 'Davis', 'Wuckert', 'Maddison Beatty', 'constance.lind@example.net', '$2y$12$3OpM.WNZo5c/ci1KjAQDLexbZGDiJ1PGqnRtU86V7s96pZoMf8WpO', '(608) 998-7457', 'Student', 'Approved', '2012-06-24', 'French Southern Territories', 'Azerbaijan', 'Mali', 'Female', 'Married', 'https://via.placeholder.com/640x480.png/009988?text=et', '', '', '2024-09-05 13:23:03', '2024-09-09 01:02:02', '2024-09-09 01:02:02'),
(15, 'Haylee', 'Cremin', 'Carroll', 'Pink Rice', 'destany.effertz@example.org', '$2y$12$Nm3gfSWjTCJ989Riihb.du7zfnGfBzY2SQUZPqwAGJGqKOLLyTCaW', '+1-208-920-0799', 'Admin', 'Pending', '1987-08-22', 'Anguilla', 'Madagascar', 'Algeria', 'Female', 'Single', 'https://via.placeholder.com/640x480.png/000011?text=doloremque', '', '', '2024-09-05 13:23:04', '2024-09-09 03:58:16', '2024-09-09 03:58:16'),
(16, 'Waino', 'Johns', 'Stanton', 'Stefan Carter', 'rocio33@example.org', '$2y$12$IL0Wp6szPJY9NOVsfgEpxeZCV.vKK2iGlxNnHjveg5uBUB1RWVml2', '1-539-323-5603', 'Admin', 'Approved', '2022-11-05', 'Guyana', 'Mozambique', 'Portugal', 'Female', 'Divorced', 'https://via.placeholder.com/640x480.png/0033ee?text=totam', '', '', '2024-09-05 13:23:04', '2024-09-09 05:28:35', '2024-09-09 05:28:35'),
(17, 'Gwen', 'Gorczany', 'Gibson', 'Dr. Immanuel Friesen', 'satterfield.lauryn@example.org', '$2y$12$fG0sKo9fBSrXFpk91yJDpORqAuTSqKck2WBJcILew2IO2RTWbJX9.', '+1-806-457-7570', 'Student', 'Pending', '1999-11-25', 'Singapore', 'El Salvador', 'Palestinian Territories', 'Female', 'Divorced', 'https://via.placeholder.com/640x480.png/004488?text=numquam', '', '', '2024-09-05 13:23:04', '2024-09-05 13:23:04', NULL),
(18, 'Trinity', 'Cummings', 'Mueller', 'Elvie Hegmann', 'purdy.orrin@example.net', '$2y$12$dK2h6IsBsXKY.RHaJh71D.6L/Fdf/nncnt9.g66.JkSOENBqQ.DuC', '614.935.4028', 'Student', 'Approved', '1995-04-02', 'Cape Verde', 'Ecuador', 'Colombia', 'Female', 'Single', 'https://via.placeholder.com/640x480.png/008877?text=officiis', '', '', '2024-09-05 13:23:05', '2024-09-09 01:14:34', NULL),
(19, 'Maude', 'Sanford', 'Lemke', 'Leatha Brekke', 'brown.ezekiel@example.com', '$2y$12$SuElnKyrTZuTEEsDQL2OGuCsGGmMYk9Js65Ku0mCYMf3NxWsXKwrK', '520.545.2965', 'Student', 'Rejected', '1997-03-12', 'Denmark', 'Guam', 'Libyan Arab Jamahiriya', 'Male', 'Married', 'https://via.placeholder.com/640x480.png/00ee22?text=deleniti', '', '', '2024-09-05 13:23:05', '2024-09-09 01:15:04', NULL),
(20, 'Krystal', 'Harris', 'Kuhn', 'Dr. Willow Blanda', 'monahan.alexandro@example.net', '$2y$12$CUVHtRuYuPl/sHC4.9FHLulx/IuUKhBz9JsjbzVj9aHTxMzVWQ5IS', '(539) 443-5453', 'Student', 'Approved', '1991-07-21', 'Tanzania', 'Guernsey', 'Bangladesh', 'Female', 'Widowed', 'https://via.placeholder.com/640x480.png/00ffaa?text=ut', '', '', '2024-09-05 13:23:05', '2024-09-05 13:23:05', NULL),
(21, 'Okeyq', 'Lesch', 'Hartmann', 'Chaz Monahan V', 'dante.funk@example.org', '$2y$12$OBeDVSoav1U31zTzaEsk8eVPRXh31WKBSlzcryWIsG3WZMr8sYaU2', '(763) 903-6586', 'Student', 'Approved', '1983-06-03', 'Western Sahara', 'Nicaragua', 'Monaco', 'Female', 'Widowed', 'https://via.placeholder.com/640x480.png/00ffcc?text=rerum', '', '', '2024-09-05 13:23:06', '2024-09-09 01:10:03', NULL),
(22, 'Linnie', 'Prohaska', 'Barrows', 'Prof. Maci Medhurst', 'hparisian@example.net', '$2y$12$LShI7XuW5PMK5Rw.EA9gHuPaxCkEl3ioefX1pF2jXrL6U4tRnaLE6', '+19382449095', 'Admin', 'Rejected', '1981-12-25', 'Chad', 'Kiribati', 'San Marino', 'Male', 'Single', 'https://via.placeholder.com/640x480.png/001177?text=voluptatem', '', '', '2024-09-05 13:23:06', '2024-09-09 04:00:49', NULL),
(23, 'hadi', 'g', 'ghazi', 'IDK', 'hadi.ghazi.inst@example.com', '$2y$12$2jvMKj6NOoHI9d2pD.G09OQ7/tX9uObaTww/pbsnMH5qf4ZyRKnvu', '76639613', 'Student', 'Pending', '2024-09-18', 'Lebanese', 'Austrian', 'Lebanon', 'Male', 'Single', 'https://via.placeholder.com/640x480.png/00ee11?text=sit', '', '', '2024-09-09 01:56:37', '2024-09-09 01:56:37', NULL),
(24, 'Hadi', 'Ghazwan', 'Ghazi', 'IDK', 'hadighazi@gmail.com', '$2y$12$rB0vKqzSyBXQA7FLvA5T2OAElyJxcd/hpyGVVubgCGZOVRJKIY0fG', '76639616', 'Student', 'Pending', '2024-09-10', 'Lebanese', 'Austrian', 'Lebanon', 'Male', 'Single', 'https://via.placeholder.com/640x480.png/00ee11?text=sit', '', '', '2024-09-09 01:59:35', '2024-09-09 01:59:35', NULL),
(25, 'Hadi', 'Ghazwan', 'Ghazi', 'IDK', 'hadighazii@gmail.com', '$2y$12$U4Umc9VlppPe96Ac8oi/1O0rgaPrp5jKq03yFhfWddwOsg4MMoR0a', '76639116', 'Student', 'Pending', '2024-09-10', 'Lebanese', 'Austrian', 'Lebanon', 'Male', 'Single', 'https://via.placeholder.com/640x480.png/00ee11?text=sit', '', '', '2024-09-09 02:03:35', '2024-09-09 02:03:35', NULL),
(26, 'Hadi', 'Ghazwan', 'Ghazi', 'IDK', 'hadighazii5@gmail.com', '$2y$12$N8Yu9gVkCaG5t8JaQKuVfeZf.deRoYJwCD3QzspaQ34ITrOh9nkdO', '766391', 'Student', 'Pending', '2024-09-10', 'Lebanese', 'Austrian', 'Lebanon', 'Male', 'Single', 'https://via.placeholder.com/640x480.png/00ee11?text=sit', '', '', '2024-09-09 02:05:20', '2024-09-09 02:05:20', NULL),
(27, 'Hadi', 'Ghazwan', 'Ghazi', 'IDK', 'hadighaz4ii5@gmail.com', '$2y$12$Dx6MTjubHvvsdIXClUCkB.NfCUh4gcPIg4WRBSu.N4V6LRtY7QH7m', '7663491', 'Student', 'Pending', '2024-09-10', 'Lebanese', 'Austrian', 'Lebanon', 'Male', 'Single', 'https://via.placeholder.com/640x480.png/00ee11?text=sit', 'Nabatieh', '766396', '2024-09-09 02:13:42', '2024-09-09 02:13:42', NULL),
(28, 'Hadi', 'Ghazwan', 'Ghazi', 'IDK', 'wassi3m@example.com', '$2y$12$OKjE6BDQRGZCMfKNcb0ALuuA9Uo7vz7AhladQFVZEZ.GvFe4ew/YG', '76639334', 'Student', 'Pending', '2024-09-10', 'Lebanese', 'Austrian', 'Lebanon', 'Male', 'Single', '1725860409.jpg', 'Nabatieh', '2323233', '2024-09-09 02:40:10', '2024-09-09 02:40:10', NULL),
(29, 'e', 'e', 'e', 'e', 'wassime@example.com', '$2y$12$rBAW1Q9PiXXrD6gsANmV2O7KEhNNRgCZMXCmWnsH58Cou.kNBvvye', '76639613666', 'Student', 'Approved', '2024-09-10', 'Lebanese', 'Austrian', 'Lebanon', 'Male', 'Single', 'https://via.placeholder.com/640x480.png/00ee11?text=sit', 'Nabatieh', '76639613', '2024-09-09 02:55:51', '2024-09-09 02:58:05', NULL),
(30, 'Hadi', 'Ghazwan', 'Ghazid', 'e', 'john.22doe@example.com', '$2y$12$TDdQsgLFh90MAEBNjK2oN.e1aXz.WVzHTx1sPTrlMvvzoWdJ9XkF.', '76639613333', 'Instructor', 'Approved', '2024-09-11', 'Lebanese', 'Austrian', 'Lebanon', 'Male', 'Single', 'https://via.placeholder.com/640x480.png/00ee11?text=sit', 'Nabatieh', '76639613', '2024-09-09 03:37:33', '2024-09-09 03:56:27', NULL),
(31, 'Hadi', 'Ghazwan', 'Ghazi', 'e', 'john.do33e@example.com', '$2y$12$ECCE28ennXZz3yezpS7Jm.iawo86/TmPXFPPTDXkNlfqkai2PK2FC', '7663922', 'Admin', 'Approved', '2024-09-19', 'Lebanese', 'Austrian', 'Lebanon', 'Male', 'Single', 'https://via.placeholder.com/640x480.png/00ee11?text=sit', 'Nabatieh', '76639613', '2024-09-09 03:51:20', '2024-09-09 03:58:30', NULL),
(34, 'Michael', 'Michael', 'Scott', 'Jane Doe', 'johndoe1@example.com', '$2y$12$SPG2jBBfESV324pTPbvhyuy8NQc/jsEfFEL1TQ/L1PjugplZP0kXO', '+123456789', 'Student', 'Approved', '1990-01-01', 'American', 'Canadian', 'USA', 'Male', 'Single', 'https://example.com/profile.jpg', '123 Main St, Springfield', '+1987654321', '2024-09-12 03:39:45', '2024-09-12 03:39:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_user_id_foreign` (`user_id`),
  ADD KEY `admins_department_id_foreign` (`department_id`);

--
-- Indexes for table `ai_instructor_interactions`
--
ALTER TABLE `ai_instructor_interactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_instructor_interactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcements_author_id_foreign` (`author_id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_course_instructor_id_foreign` (`course_instructor_id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_campus_id_foreign` (`campus_id`);

--
-- Indexes for table `book_borrows`
--
ALTER TABLE `book_borrows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_borrows_student_id_foreign` (`student_id`);

--
-- Indexes for table `bus_registrations`
--
ALTER TABLE `bus_registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bus_registrations_student_id_foreign` (`student_id`),
  ADD KEY `bus_registrations_bus_route_id_foreign` (`bus_route_id`);

--
-- Indexes for table `bus_routes`
--
ALTER TABLE `bus_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bus_routes_campus_id_foreign` (`campus_id`);

--
-- Indexes for table `campuses`
--
ALTER TABLE `campuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_major_id_foreign` (`major_id`),
  ADD KEY `courses_faculty_id_foreign` (`faculty_id`);

--
-- Indexes for table `course_drop_requests`
--
ALTER TABLE `course_drop_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_drop_requests_course_instructor_id_foreign` (`course_instructor_id`),
  ADD KEY `course_drop_requests_student_id_foreign` (`student_id`);

--
-- Indexes for table `course_evaluations`
--
ALTER TABLE `course_evaluations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_evaluations_course_instructor_id_foreign` (`course_instructor_id`);

--
-- Indexes for table `course_instructors`
--
ALTER TABLE `course_instructors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_instructors_course_id_foreign` (`course_id`),
  ADD KEY `course_instructors_instructor_id_foreign` (`instructor_id`),
  ADD KEY `course_instructors_semester_id_foreign` (`semester_id`),
  ADD KEY `course_instructors_campus_id_foreign` (`campus_id`),
  ADD KEY `course_instructors_room_id_foreign` (`room_id`);

--
-- Indexes for table `course_materials`
--
ALTER TABLE `course_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_materials_course_instructor_id_foreign` (`course_instructor_id`);

--
-- Indexes for table `course_prerequisites`
--
ALTER TABLE `course_prerequisites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_prerequisites_course_id_foreign` (`course_id`),
  ADD KEY `course_prerequisites_prerequisite_course_id_foreign` (`prerequisite_course_id`);

--
-- Indexes for table `deans`
--
ALTER TABLE `deans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deans_faculty_id_foreign` (`faculty_id`),
  ADD KEY `deans_campus_id_foreign` (`campus_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dorms`
--
ALTER TABLE `dorms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dorms_campus_id_foreign` (`campus_id`);

--
-- Indexes for table `dorm_registrations`
--
ALTER TABLE `dorm_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dorm_rooms`
--
ALTER TABLE `dorm_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dorm_rooms_dorm_id_foreign` (`dorm_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_course_instructor_id_foreign` (`course_instructor_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties_campuses`
--
ALTER TABLE `faculties_campuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faculties_campuses_faculty_id_foreign` (`faculty_id`),
  ADD KEY `faculties_campuses_campus_id_foreign` (`campus_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_student_id_foreign` (`student_id`),
  ADD KEY `fees_course_id_foreign` (`course_id`),
  ADD KEY `fees_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `financial_aid_scholarships`
--
ALTER TABLE `financial_aid_scholarships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `financial_aid_scholarships_student_id_foreign` (`student_id`),
  ADD KEY `financial_aid_scholarships_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_registration_id_foreign` (`registration_id`);

--
-- Indexes for table `important_dates`
--
ALTER TABLE `important_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructors_user_id_foreign` (`user_id`),
  ADD KEY `instructors_department_id_foreign` (`department_id`);

--
-- Indexes for table `library_books`
--
ALTER TABLE `library_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_books_isbn_unique` (`isbn`),
  ADD KEY `library_books_campus_id_foreign` (`campus_id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `majors_faculty_id_foreign` (`faculty_id`);

--
-- Indexes for table `majors_faculties_campuses`
--
ALTER TABLE `majors_faculties_campuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `majors_faculties_campuses_major_id_foreign` (`major_id`),
  ADD KEY `majors_faculties_campuses_faculty_campus_id_foreign` (`faculty_campus_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_author_id_foreign` (`author_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_student_id_foreign` (`student_id`),
  ADD KEY `payments_semester_id_foreign` (`semester_id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrations_course_instructor_id_foreign` (`course_instructor_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_block_id_foreign` (`block_id`);

--
-- Indexes for table `salary_payments`
--
ALTER TABLE `salary_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_government_id_unique` (`government_id`),
  ADD UNIQUE KEY `students_passport_number_unique` (`passport_number`),
  ADD KEY `students_user_id_foreign` (`user_id`),
  ADD KEY `students_major_id_foreign` (`major_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ai_instructor_interactions`
--
ALTER TABLE `ai_instructor_interactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `book_borrows`
--
ALTER TABLE `book_borrows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bus_registrations`
--
ALTER TABLE `bus_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bus_routes`
--
ALTER TABLE `bus_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `campuses`
--
ALTER TABLE `campuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `centers`
--
ALTER TABLE `centers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `course_drop_requests`
--
ALTER TABLE `course_drop_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_evaluations`
--
ALTER TABLE `course_evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `course_instructors`
--
ALTER TABLE `course_instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `course_materials`
--
ALTER TABLE `course_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_prerequisites`
--
ALTER TABLE `course_prerequisites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `deans`
--
ALTER TABLE `deans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `dorms`
--
ALTER TABLE `dorms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dorm_registrations`
--
ALTER TABLE `dorm_registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dorm_rooms`
--
ALTER TABLE `dorm_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faculties_campuses`
--
ALTER TABLE `faculties_campuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `financial_aid_scholarships`
--
ALTER TABLE `financial_aid_scholarships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `important_dates`
--
ALTER TABLE `important_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `library_books`
--
ALTER TABLE `library_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `majors_faculties_campuses`
--
ALTER TABLE `majors_faculties_campuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `salary_payments`
--
ALTER TABLE `salary_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ai_instructor_interactions`
--
ALTER TABLE `ai_instructor_interactions`
  ADD CONSTRAINT `ai_instructor_interactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_course_instructor_id_foreign` FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blocks`
--
ALTER TABLE `blocks`
  ADD CONSTRAINT `blocks_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_borrows`
--
ALTER TABLE `book_borrows`
  ADD CONSTRAINT `book_borrows_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bus_registrations`
--
ALTER TABLE `bus_registrations`
  ADD CONSTRAINT `bus_registrations_bus_route_id_foreign` FOREIGN KEY (`bus_route_id`) REFERENCES `bus_routes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bus_registrations_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bus_routes`
--
ALTER TABLE `bus_routes`
  ADD CONSTRAINT `bus_routes_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_major_id_foreign` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_drop_requests`
--
ALTER TABLE `course_drop_requests`
  ADD CONSTRAINT `course_drop_requests_course_instructor_id_foreign` FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_drop_requests_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_evaluations`
--
ALTER TABLE `course_evaluations`
  ADD CONSTRAINT `course_evaluations_course_instructor_id_foreign` FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_instructors`
--
ALTER TABLE `course_instructors`
  ADD CONSTRAINT `course_instructors_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_instructors_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_instructors_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_instructors_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_instructors_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_materials`
--
ALTER TABLE `course_materials`
  ADD CONSTRAINT `course_materials_course_instructor_id_foreign` FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_prerequisites`
--
ALTER TABLE `course_prerequisites`
  ADD CONSTRAINT `course_prerequisites_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_prerequisites_prerequisite_course_id_foreign` FOREIGN KEY (`prerequisite_course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deans`
--
ALTER TABLE `deans`
  ADD CONSTRAINT `deans_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deans_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dorms`
--
ALTER TABLE `dorms`
  ADD CONSTRAINT `dorms_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dorm_rooms`
--
ALTER TABLE `dorm_rooms`
  ADD CONSTRAINT `dorm_rooms_dorm_id_foreign` FOREIGN KEY (`dorm_id`) REFERENCES `dorms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_course_instructor_id_foreign` FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faculties_campuses`
--
ALTER TABLE `faculties_campuses`
  ADD CONSTRAINT `faculties_campuses_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faculties_campuses_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fees_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `financial_aid_scholarships`
--
ALTER TABLE `financial_aid_scholarships`
  ADD CONSTRAINT `financial_aid_scholarships_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `financial_aid_scholarships_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

--
-- Constraints for table `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instructors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `library_books`
--
ALTER TABLE `library_books`
  ADD CONSTRAINT `library_books_campus_id_foreign` FOREIGN KEY (`campus_id`) REFERENCES `campuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `majors`
--
ALTER TABLE `majors`
  ADD CONSTRAINT `majors_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `majors_faculties_campuses`
--
ALTER TABLE `majors_faculties_campuses`
  ADD CONSTRAINT `majors_faculties_campuses_faculty_campus_id_foreign` FOREIGN KEY (`faculty_campus_id`) REFERENCES `faculties_campuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `majors_faculties_campuses_major_id_foreign` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_course_instructor_id_foreign` FOREIGN KEY (`course_instructor_id`) REFERENCES `course_instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_block_id_foreign` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_major_id_foreign` FOREIGN KEY (`major_id`) REFERENCES `majors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
