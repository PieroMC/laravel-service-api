DROP  database if EXISTS tecshop;
CREATE database tecshop;
use tecshop;

--
-- Base de datos: `tecshop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE brands (
  `id` int(10) UNSIGNED NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `brand`, `created_at`, `updated_at`) VALUES
(1, 'LENOVO', NULL, NULL),
(2, 'HP', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type_id` int(10) UNSIGNED NOT NULL,
  `number_document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `name`, `lastname`, `document_type_id`, `number_document`, `telephone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Felicita', 'Maggio', 1, '26424683', '1-584-349-1206', '82707 Schaden Forges Apt. 023\nEast Marciaport, IN 26901-7071', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(2, 'Buster', 'Howell', 2, '75059332', '1-852-788-0883', '37943 Beer Cape\nJohnathanshire, VA 03660-6446', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(3, 'Ashton', 'O\'Reilly', 2, '29822166', '1-934-713-7524', '82459 Mante Lights Apt. 176\nLake Willow, SD 06080', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(4, 'Mercedes', 'D\'Amore', 2, '33878185', '+1-429-462-9967', '746 Avery Crossing\nYesseniaview, MO 43479', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(5, 'Kade', 'McKenzie', 2, '39552689', '(457) 346-4969 x153', '41394 Veum Shoals\nPort Isidroshire, DE 45092-6644', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(6, 'Bart', 'Rau', 2, '80485969', '(379) 343-4383', '569 Grover Plains\nCruickshankport, NE 83102', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(7, 'Ada', 'Eichmann', 1, '05623316', '823.586.2014', '923 Kuhn Mall Apt. 947\nLake Casper, CO 26714-8382', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(8, 'Abigail', 'Treutel', 1, '49881519', '1-292-762-4062 x5987', '65360 Dayna Dam\nNorth Warrenchester, NY 07375-2423', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(9, 'Gracie', 'Dicki', 1, '13406297', '+1 (873) 831-2099', '90890 Augustine Squares Suite 594\nSouth Candace, IN 82889', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(10, 'Gayle', 'Lehner', 1, '04213488', '(875) 448-9316 x96476', '3732 Lehner Trail Suite 464\nSouth Rasheed, MD 74185', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(11, 'Emil', 'Gorczany', 2, '18492908', '1-249-776-5891 x6428', '90837 Kraig Spurs\nAlleneborough, AL 72016', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(12, 'Minerva', 'Davis', 2, '96115796', '472.421.0888 x986', '4993 Marcus Valleys Apt. 032\nNorth Crystal, WY 20521', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(13, 'Landen', 'Hickle', 1, '60707452', '+1.982.436.9622', '928 Leatha Drive Apt. 284\nMaggieview, DE 43906', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(14, 'Arne', 'Lebsack', 2, '47417043', '+1-736-627-2704', '3935 Manley Lane Apt. 171\nJonasport, NY 23193', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(15, 'Gaylord', 'Mraz', 1, '31874555', '(458) 882-3380', '53031 Lourdes Dam\nFreemanhaven, IA 37666-5134', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(16, 'Celestino', 'Wisozk', 1, '72948763', '+1-379-546-8719', '4958 Runolfsdottir Overpass Suite 035\nJanaville, AK 00599-9834', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(17, 'Ashleigh', 'Green', 1, '47921251', '1-638-783-9361', '599 Wuckert Parkway Apt. 646\nMakaylaborough, NH 06894-6408', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(18, 'Theresia', 'McKenzie', 1, '19456327', '(737) 285-8483 x55346', '780 Spencer Mission Suite 302\nEleanoraside, KS 64189-6075', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(19, 'Lazaro', 'Kuhlman', 1, '11728366', '1-665-624-6754', '1659 David Tunnel Suite 585\nLake Rosemarie, DE 51891', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(20, 'Francesco', 'Ortiz', 1, '26783524', '+1 (973) 758-1247', '7893 Hirthe Courts Apt. 353\nWest Denisfort, RI 37371-1190', '2020-09-20 00:12:44', '2020-09-20 00:12:44'),
(21, 'Gloria', 'Sawayn', 1, '49688875', '730-964-2836 x882', '79599 Davis Trail\nShawnhaven, VT 49800-9551', '2020-09-20 00:12:45', '2020-09-20 00:12:45'),
(22, 'Abelardo', 'Harris', 1, '99798205', '509.594.1473 x68739', '28451 Minerva Estates Suite 539\nSouth Alaynamouth, SC 72085', '2020-09-20 00:12:45', '2020-09-20 00:12:45'),
(23, 'Millie', 'Robel', 2, '20365560', '+1.712.874.9452', '948 Hermann Rapid Apt. 964\nSouth Alvismouth, GA 83787-2053', '2020-09-20 00:12:45', '2020-09-20 00:12:45'),
(24, 'Odie', 'Jaskolski', 1, '67486755', '1-250-407-7613 x267', '60984 Koss Route Apt. 075\nStreichton, VA 03408', '2020-09-20 00:12:45', '2020-09-20 00:12:45'),
(25, 'Corene', 'Cruickshank', 2, '53209170', '975-822-6583', '5420 Cornelius Canyon\nPfannerstillton, MO 62469', '2020-09-20 00:12:45', '2020-09-20 00:12:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_types`
--

CREATE TABLE `document_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `document` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `document_types`
--

INSERT INTO `document_types` (`id`, `document`, `created_at`, `updated_at`) VALUES
(1, 'DNI', NULL, NULL),
(2, 'RUC', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type_id` int(10) UNSIGNED NOT NULL,
  `number_document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_birth` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `workstation_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`id`, `name`, `lastname`, `document_type_id`, `number_document`, `date_birth`, `email`, `telephone`, `address`, `created_at`, `updated_at`, `workstation_id`) VALUES
(1, 'Adonis', 'Haley', 1, '31902655', '1995-04-17', 'elmira.skiles@example.com', '+1-679-641-1658', '13505 Nat Mountain Apt. 556\nNew Kaley, CT 68870-3956', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 2),
(2, 'Deshawn', 'Stroman', 1, '69576952', '1984-11-05', 'lebsack.chesley@example.com', '204.243.4649 x5262', '61377 Terry Courts\nJakobville, MI 76673-9345', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 4),
(3, 'Eloise', 'Carter', 2, '57717635', '1992-11-16', 'wiegand.santina@example.net', '624-945-5088 x1691', '660 Will Way\nWest Lennieton, AL 17588', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 2),
(4, 'Dolores', 'Weimann', 2, '32344628', '1970-04-10', 'mdickinson@example.net', '916-302-0311', '91253 Vicente Brooks\nLakinberg, LA 28023', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 1),
(5, 'Reva', 'Rath', 2, '09145951', '2010-02-21', 'elakin@example.net', '(380) 723-6859 x181', '1051 Herman Loaf Apt. 929\nWest Orpha, OK 71245', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 1),
(6, 'Harrison', 'Beer', 2, '14260909', '1983-08-15', 'beer.chelsey@example.net', '(308) 647-5921 x674', '384 Arden Points\nMurphyborough, MD 09646-1722', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 2),
(7, 'Stuart', 'Mohr', 1, '57460447', '2017-07-25', 'olittle@example.com', '585-708-5512 x90742', '355 Ernest Manors Apt. 210\nPaucekbury, WA 96652-4080', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 2),
(8, 'Lydia', 'Schmidt', 1, '05555513', '1973-12-08', 'botsford.johnnie@example.net', '560.629.7830 x03520', '755 Sim Mountain Apt. 064\nMarquardtshire, NC 80778-2577', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 3),
(9, 'Stephania', 'Rowe', 2, '59624018', '2016-08-11', 'gorczany.meaghan@example.net', '+14803626068', '256 Jacobson Road\nWest Ulicesmouth, OH 80420-1968', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 1),
(10, 'Diamond', 'Hill', 2, '85566758', '1995-03-21', 'ari51@example.net', '439.429.0953 x08842', '31653 Jeffery Gardens Suite 426\nWest Myrtle, VA 79231-9082', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 1),
(11, 'Israel', 'Turcotte', 2, '90432407', '2013-05-21', 'buster.hodkiewicz@example.org', '+1 (723) 450-8021', '5189 Nader Greens\nLionelton, CO 19790-7921', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 1),
(12, 'Hailee', 'Goodwin', 2, '36374914', '1996-10-14', 'turcotte.una@example.net', '451.809.2515 x039', '5755 Powlowski Burg\nNorth Eddie, AR 90710', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 4),
(13, 'Aubree', 'Windler', 2, '48841909', '2017-10-07', 'eryan@example.com', '560-496-4040 x0303', '1875 Lillian Centers\nNew Emmanuelle, NM 55142-6172', '2020-09-20 00:12:41', '2020-09-20 00:12:41', 1),
(14, 'Taryn', 'Nienow', 1, '29079914', '2007-06-17', 'xjaskolski@example.net', '+1 (731) 931-4380', '57321 Velma Lock\nKubbury, CO 53472', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 4),
(15, 'Jamir', 'Maggio', 2, '42887132', '2005-10-22', 'heidenreich.shana@example.net', '(804) 420-7855', '94538 Marks Path\nBlockmouth, MA 48865', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 3),
(16, 'Layne', 'Lakin', 2, '72003426', '1974-08-12', 'lwilkinson@example.com', '1-558-534-8766 x22879', '277 Grimes Forks Apt. 198\nRennerville, CT 94238', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 1),
(17, 'Lauren', 'Lubowitz', 2, '23397652', '2020-02-17', 'xwilliamson@example.com', '979-629-1924', '23216 Arvid Court Suite 735\nEffertzstad, NM 36044-4992', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 1),
(18, 'Stewart', 'Waters', 2, '89222938', '1997-12-15', 'sydni65@example.com', '(459) 754-9991', '4530 Daugherty Fall\nEast Tinaview, TN 13600', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 4),
(19, 'Esperanza', 'Bruen', 1, '76866825', '2018-10-06', 'mschaden@example.net', '(307) 915-4654', '7969 John Garden Apt. 703\nSouth Ewell, UT 09320-6568', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 4),
(20, 'Shannon', 'Stehr', 1, '57508482', '2006-09-20', 'beier.gerald@example.com', '+1-315-412-3255', '2988 Wisoky Ports Apt. 838\nLake Delbertberg, HI 55430-0672', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 4),
(21, 'Jo', 'Kreiger', 2, '18633521', '1991-06-06', 'sgrant@example.org', '523.639.0096', '4983 Delfina Lodge\nWalkershire, IN 40025-4789', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 3),
(22, 'Garrett', 'Harber', 1, '96480523', '1974-07-22', 'hbrown@example.com', '217.663.1605', '776 O\'Connell Tunnel\nBethanyhaven, NY 36790-1811', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 3),
(23, 'Justine', 'Davis', 1, '52102503', '1999-05-15', 'schoen.king@example.org', '1-410-282-8243', '89101 Abdiel Highway Suite 776\nDorotheafort, SC 69894-3800', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 1),
(24, 'Mossie', 'Gutkowski', 2, '46792250', '2005-05-08', 'runolfsdottir.lazaro@example.org', '(547) 468-8190 x3013', '699 Gwen Ways Apt. 445\nAugustineberg, KY 70306', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 4),
(25, 'Cleta', 'Hermiston', 2, '54449162', '2018-11-28', 'evelyn.rice@example.org', '+1 (327) 872-9899', '79392 Hugh Hill Suite 008\nElinorhaven, UT 79259', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 4),
(26, 'Max', 'Haley', 1, '70512504', '2000-09-01', 'freddy44@example.org', '475.902.0044 x37921', '537 Cartwright Orchard\nPort Justynmouth, TX 20779', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 2),
(27, 'Elmer', 'Bartoletti', 1, '36755910', '1983-01-06', 'dion92@example.com', '1-472-518-3104', '23840 Borer Parkways Suite 473\nRobelland, MN 32063-8322', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 2),
(28, 'Lucio', 'Okuneva', 1, '70798562', '2004-12-05', 'rcummerata@example.org', '+1-576-385-7109', '20003 Rempel Well Suite 929\nEloytown, ND 62155', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 2),
(29, 'Tristin', 'Terry', 1, '34757328', '2005-12-31', 'augusta77@example.net', '(501) 581-2996 x97480', '4346 Grant Corners Suite 228\nJeffereychester, MO 24914', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 1),
(30, 'Herta', 'Murray', 1, '62699833', '2002-03-24', 'milford.rohan@example.net', '583-913-3277 x8392', '1549 Alessandra Parkway\nNorth Thaliaview, DC 58197-2231', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 3),
(31, 'Frank', 'Lakin', 2, '42866268', '1985-10-29', 'ankunding.maximillia@example.net', '949.268.2239', '4460 Effertz Wall\nEast Will, PA 29045', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 4),
(32, 'Alyce', 'Senger', 1, '45023626', '2019-05-12', 'dudley95@example.net', '443.510.2349', '7578 Tyshawn Coves Apt. 084\nNelsview, NH 45734-5481', '2020-09-20 00:12:42', '2020-09-20 00:12:42', 1),
(33, 'Karina', 'Keeling', 1, '81827262', '2003-02-05', 'cruickshank.wava@example.org', '(635) 535-9370 x749', '46528 Luettgen Plaza Apt. 400\nOceanebury, ME 41371', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 2),
(34, 'Clovis', 'Bartell', 2, '00070095', '1991-08-07', 'medhurst.destin@example.net', '1-407-345-0927', '2851 Quitzon Union\nNew Margotstad, IL 33185', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 4),
(35, 'Domenic', 'Ratke', 1, '64932244', '2004-09-27', 'derrick.jast@example.org', '1-393-927-3213', '591 Johan Plaza Apt. 446\nKochmouth, KY 16117', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 3),
(36, 'Bettie', 'Fadel', 1, '38276476', '1996-04-04', 'konopelski.eldon@example.org', '347-801-6027', '4654 Luther Gardens Apt. 788\nWest Jessiebury, KY 67890-8080', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 2),
(37, 'Talon', 'Rowe', 1, '62707540', '1970-05-13', 'steuber.diego@example.net', '995-655-5496 x30795', '7906 Daniel Cove\nNorth Orrin, CT 23685-9784', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 1),
(38, 'Glen', 'Johnston', 2, '00702106', '1971-08-23', 'richmond.turcotte@example.com', '1-991-672-1325', '2067 Amelia Springs\nGleasonfurt, MD 23147-1854', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 3),
(39, 'Janae', 'Sporer', 2, '91440121', '2000-09-11', 'kellen.hamill@example.com', '678-709-9255', '367 Cordell Pine Suite 282\nReichertshire, MT 45397', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 1),
(40, 'Buster', 'Heller', 2, '57763936', '1974-12-23', 'dagmar.mueller@example.net', '(235) 658-8667 x3167', '16578 Max Stravenue\nBednarchester, WA 00336-0514', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 1),
(41, 'Daphnee', 'Block', 1, '19941165', '1980-10-25', 'laury53@example.net', '714.386.2160 x2472', '93773 Lubowitz Underpass\nEast Barrettborough, MI 71607-6493', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 4),
(42, 'Amanda', 'Oberbrunner', 1, '37680713', '2007-04-18', 'flavie.robel@example.org', '1-256-307-4124 x0428', '4010 Johnathan Landing Apt. 152\nPurdychester, UT 53131', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 2),
(43, 'Jammie', 'Kemmer', 1, '48870258', '2012-08-30', 'ines.gleason@example.com', '(881) 223-1323 x083', '60688 Christiansen Knolls Apt. 705\nKozeyland, FL 14115', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 3),
(44, 'Olin', 'Schoen', 1, '30897173', '1974-12-21', 'dvolkman@example.com', '1-850-330-1328 x0569', '82697 O\'Hara Lights\nEast Miguelside, MS 23010-3549', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 1),
(45, 'Cristina', 'Ritchie', 2, '14159734', '1984-08-16', 'grady.borer@example.org', '1-960-308-3122 x11177', '5525 Thea Bypass\nSouth Anabel, CO 03541', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 4),
(46, 'Fredy', 'Kihn', 2, '24727590', '1994-04-02', 'ugibson@example.com', '(974) 536-4354', '25500 Shany Mission\nNorth Kaitlyn, IL 04446-0391', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 2),
(47, 'Edison', 'Hickle', 2, '42571995', '1974-08-26', 'torrance.jerde@example.net', '612-627-4196 x0618', '501 Lance Unions\nBoganhaven, MS 57987', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 2),
(48, 'Rolando', 'Veum', 1, '78529232', '1987-06-12', 'yundt.anika@example.org', '723.673.1911', '197 Bradtke Ferry Apt. 190\nSouth Violet, VA 41678', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 1),
(49, 'Cody', 'Mayer', 2, '62302912', '1995-06-15', 'royal.haag@example.net', '+1.569.885.6165', '841 Toy Hill Suite 572\nMurphyport, IA 36719-6400', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 3),
(50, 'Jerod', 'Bode', 1, '38887083', '1976-05-18', 'christina01@example.org', '+19218414096', '6302 Keyon Glens\nNorth Akeem, UT 57633', '2020-09-20 00:12:43', '2020-09-20 00:12:43', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2020_08_30_224952_create_document_types_table', 1),
(5, '2020_08_30_225014_create_employees_table', 1),
(6, '2020_08_30_232023_alter_users_table', 1),
(7, '2020_09_01_200254_create_workstations_table', 1),
(8, '2020_09_01_200617_alter_to_employee_table', 1),
(9, '2020_09_16_152432_create_clients_table', 1),
(10, '2020_09_16_163708_create_product_categories_table', 1),
(11, '2020_09_16_163739_create_products_table', 1),
(12, '2020_09_16_163838_create_voucher_types_table', 1),
(13, '2020_09_16_163912_create_sales_table', 1),
(14, '2020_09_16_175611_create_sale_products_table', 1),
(15, '2020_09_16_175959_create_sale_details_table', 1),
(16, '2020_09_16_234513_create_brands_table', 1),
(17, '2020_09_16_234759_alter_products_table', 1);

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
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_categories_id` int(10) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED DEFAULT 12,
  `unit_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_categories`
--

INSERT INTO `product_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'AUDIOS', NULL, NULL),
(2, 'COMPUTADORA', NULL, NULL),
(3, 'MEMORIAS', NULL, NULL),
(4, 'LAPTOP', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `voucher_type_id` int(10) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sales`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_details`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_products`
--

CREATE TABLE `sale_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sale_products`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`, `employee_id`) VALUES
(1, 'tovyStar', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2020-09-20 00:12:43', '2020-09-20 00:12:43', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voucher_types`
--

CREATE TABLE `voucher_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `voucher_types`
--

INSERT INTO `voucher_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'BOLETA', NULL, NULL),
(2, 'FACTURA', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workstations`
--

CREATE TABLE `workstations` (
  `id` int(10) UNSIGNED NOT NULL,
  `work` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `workstations`
--

INSERT INTO `workstations` (`id`, `work`, `created_at`, `updated_at`) VALUES
(1, 'ADMINISTRATOR', NULL, NULL),
(2, 'SELLER', NULL, NULL),
(3, 'BUYER', NULL, NULL),
(4, 'WAREHOUSE', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_number_document_unique` (`number_document`),
  ADD KEY `clients_document_type_id_foreign` (`document_type_id`);

--
-- Indices de la tabla `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `document_types_document_unique` (`document`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_number_document_unique` (`number_document`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_document_type_id_foreign` (`document_type_id`),
  ADD KEY `employees_workstation_id_foreign` (`workstation_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_categories_id_foreign` (`product_categories_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indices de la tabla `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_client_id_foreign` (`client_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_voucher_type_id_foreign` (`voucher_type_id`);


--
-- Indices de la tabla `sale_products`
--
ALTER TABLE `sale_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_products_product_id_foreign` (`product_id`),
  ADD KEY `sale_products_sale_id_foreign` (`sale_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_employee_id_unique` (`employee_id`);

--
-- Indices de la tabla `voucher_types`
--
ALTER TABLE `voucher_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `workstations`
--
ALTER TABLE `workstations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workstations_work_unique` (`work`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


--
-- AUTO_INCREMENT de la tabla `sale_products`
--
ALTER TABLE `sale_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `voucher_types`
--
ALTER TABLE `voucher_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `workstations`
--
ALTER TABLE `workstations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`);

--
-- Filtros para la tabla `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`),
  ADD CONSTRAINT `employees_workstation_id_foreign` FOREIGN KEY (`workstation_id`) REFERENCES `workstations` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_product_categories_id_foreign` FOREIGN KEY (`product_categories_id`) REFERENCES `product_categories` (`id`);

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sales_voucher_type_id_foreign` FOREIGN KEY (`voucher_type_id`) REFERENCES `voucher_types` (`id`);

--
-- Filtros para la tabla `sale_products`
--
ALTER TABLE `sale_products`
  ADD CONSTRAINT `sale_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_products_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);F

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
