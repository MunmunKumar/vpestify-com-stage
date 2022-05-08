-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 12:13 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `v_pestify`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(250) NOT NULL,
  `head` varchar(300) NOT NULL,
  `head_url` varchar(300) NOT NULL,
  `header_con` varchar(200) NOT NULL,
  `file` varchar(300) NOT NULL,
  `c_title` text NOT NULL,
  `c_keyword` text NOT NULL,
  `c_description` text NOT NULL,
  `create_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `menu_name`, `head`, `head_url`, `header_con`, `file`, `c_title`, `c_keyword`, `c_description`, `create_date`) VALUES
(99, 'pests-services', 'Termite Treatment', 'termite-treatment', '', '', 'Vpestify | Termite Treatment', '', '', '23-01-2020 11:39:02 AM'),
(100, 'pests-services', 'Cockroaches Treatment', 'cockroaches-treatment', '', '', 'Vpestify | Cockroaches Treatment', '', '', '23-01-2020 11:43:48 AM'),
(101, 'pests-services', 'Bed Bugs Treatment', 'bed-bugs-treatment', '', '', 'Vpestify | Bed Bugs Treatment', '', '', '23-01-2020 11:44:53 AM'),
(102, 'pests-services', 'Wood Borers Treatment', 'wood-borers-treatment', '', '', 'Vpestify | Wood Borers Treatment', '', '', '23-01-2020 11:45:18 AM'),
(103, 'pests-services', 'Flying Insects Treatment', 'flying-insects-treatment', '', '', 'Vpestify | FlyingInsects Treatment', '', '', '23-01-2020 11:45:32 AM'),
(104, 'pests-services', 'Crawling Insects Treatment', 'crawling-insects-treatment', '', '', 'Vpestify | Crawling Insects Treatment', '', '', '23-01-2020 11:45:46 AM'),
(105, 'birds-and-pigeon', 'Birds & Pigeon Control', 'birds-and-pigeon-control', '', '', 'Vpestify | Birds & Pigeon Control', '', '', '23-01-2020 11:49:49 AM'),
(106, 'pests-services', 'Rodents Control', 'rodents-control', '', '', 'Vpestify | Rodents Control', '', '', '23-01-2020 11:49:58 AM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `E_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone_no` varchar(15) NOT NULL,
  `Service_name` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Message` text NOT NULL,
  `E_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`E_id`, `Name`, `Phone_no`, `Service_name`, `City`, `Message`, `E_time`) VALUES
(2, 'Safder', '1234567890', 'Abc', 'Delhi', 'Hello World', '2020-02-10 05:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `m_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`m_id`, `name`, `link`) VALUES
(45, 'Pests Services', 'pests-services'),
(46, 'Birds And Pigeon', 'birds-and-pigeon');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mob`
--

CREATE TABLE `tbl_mob` (
  `M_id` int(11) NOT NULL,
  `M_mob_no` varchar(15) NOT NULL,
  `M_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mob`
--

INSERT INTO `tbl_mob` (`M_id`, `M_mob_no`, `M_time`) VALUES
(1, '1234567890', '2020-02-10 06:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ordes`
--

CREATE TABLE `tbl_ordes` (
  `o_id` int(11) NOT NULL,
  `o_order_by` int(11) NOT NULL,
  `o_head_url` varchar(100) NOT NULL,
  `o_head` varchar(100) NOT NULL,
  `o_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ordes`
--

INSERT INTO `tbl_ordes` (`o_id`, `o_order_by`, `o_head_url`, `o_head`, `o_file`) VALUES
(1, 1, 'birds-and-pigeon', 'Birds And Pigeon Control', 'bird-cage.svg'),
(2, 2, 'termites', 'Termite Treatment', 'termite.svg'),
(3, 3, 'cockroaches', 'Cockroaches Treatment', 'cockroach.svg'),
(4, 4, 'bed-bugs', 'Bed Bugs Treatment', 'bed-bug.svg'),
(5, 5, 'wood-borers', 'Wood Borers Treatment', 'bug.svg'),
(6, 6, 'flies', 'Flying Insects Treatment', 'bee.svg'),
(7, 7, 'ants', 'Crawling Insects Treatment', 'earthworm.svg'),
(8, 8, 'rodents', 'Rodents Control', 'rat.svg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `s_id` int(11) NOT NULL,
  `s_menu_link` varchar(100) NOT NULL,
  `s_sub_link` varchar(100) NOT NULL,
  `s_file1` varchar(100) DEFAULT NULL,
  `s_file2` varchar(100) DEFAULT NULL,
  `s_file3` varchar(100) DEFAULT NULL,
  `s_file4` varchar(100) DEFAULT NULL,
  `s_file5` varchar(100) DEFAULT NULL,
  `s_head` varchar(100) NOT NULL,
  `s_head_url` varchar(100) NOT NULL,
  `s_des` text,
  `s_short_des` varchar(100) NOT NULL,
  `s_service` text,
  `s_after_service` text,
  `s_offer` text,
  `s_whu_us` text,
  `p_title` text,
  `p_keyword` text,
  `p_description` text,
  `s_date` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`s_id`, `s_menu_link`, `s_sub_link`, `s_file1`, `s_file2`, `s_file3`, `s_file4`, `s_file5`, `s_head`, `s_head_url`, `s_des`, `s_short_des`, `s_service`, `s_after_service`, `s_offer`, `s_whu_us`, `p_title`, `p_keyword`, `p_description`, `s_date`) VALUES
(2, 'pests-services', 'termite-treatment', 'termite.svg', 'termite2.jpg', 'termites-banner.jpg', '', '', 'Termites', 'termites', '<p><span style=\"font-size:14px\"><strong>Termites Should Not Be Allowed to Feed On Your infrastructures!</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Every year the termites can cause a damage of over 7 billion properties all over the world. They can enter your house through a crack as small as 1/64 of an inch. Upon entry in your house, they build a nest, develop their community and cause extensive damage to your furniture. You need to spend thousands of money to get them repaired.</span></p>\r\n', 'Every year the termites can cause a damage of over 7 billion properties all over the world', '', '', '', '', 'Vpestify | Termites', '', '', '23-01-2020 05:55:26'),
(3, 'pests-services', 'termite-treatment', 'termite.svg', 'termite3.jpg', 'termites-banner.jpg', '', '', 'Termite Control', 'termite-control', '<p><span style=\"font-size:14px\"><strong>No Need to Risk Your Property in the Hands of Termites</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Your home is a place to shelter you and your loved ones. Do not turn it into a shelter home for the termites. Call Vpestify now, to shield your home and its valuables against the termites. We are a termite control service company Delhi, who can provide you expert guidance against termite. We can design customised pest control methods especially for you.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>What are the Symptoms of Termite Infestation?</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">The small termites are not always visible in your house. Mostly, by the time they make their appearance they have already built up huge colonies inside the cracks and crevices of your house. The king and the queen termites have two pairs of translucent wings and they tend to break off quickly after swarming.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Sometimes you may notice large volumes of discarded wings of termites especially around the heat source like chimneys and furnaces. Sometimes you may find termites damages on your wooden framework and flooring which are a sure indication of termite infestation in your house.</span></p>\r\n', '', '', '', '', '', 'Vpestify | Termite Control', '', '', '23-01-2020 05:55:48'),
(4, 'pests-services', 'termite-treatment', 'termite.svg', 'Termite-3.jpg', 'termites-banner.jpg', '', '', 'Termite Inspection', 'termite-inspection', '<p><span style=\"font-size:14px\"><strong>Prevention of Termite Infestation</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Prevention is always better than cure, so stop the termite infestation by taking the guidance of expert termite control services company in Delhi. We can inspect your house and detect the termite breeding area.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">At Vpestify, we check all possible signs termite infestation in and around your house. &nbsp;Our expert exterminators would help you in termite-proofing your home. If you already suffer from termite infestation, we can help you to get rid of them from your property right from the roots.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Contact Vpestify</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">As your trusted termite control service provider, we will protect your premise as if it is our own. your peace of mind is important to us.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Please call us today for a free inspection and evaluation.</span></p>\r\n', '', '', '', '', '', 'Vpestify | Termite Inspection', '', '', '23-01-2020 05:56:20'),
(5, 'pests-services', 'cockroaches-treatment', 'cockroach.png', 'Cockroaches-1.jpg', 'banner-cockroach.jpg', '', '', 'Cockroaches', 'cockroaches', '<p><span style=\"font-size:14px\">Cockroaches are one of the most notorious household pests. They invade your house in the darkness of night and eat up your food products. A large magnitude of people is so allergic to cockroaches that they do not even require physical sighting of the roaches to trigger the allergic reaction.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">If you have any medical condition like asthma, then the cockroaches would be very harmful to you as they can multiply just like Salmonella.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cockroaches have the ability to withstand difficult condition and this is the main reason why you should employ profession cockroach pest control service to deal with them. The approved cockroach control experts can eliminate them right from the roots so that your property becomes 100% pest free.</span></p>\r\n', 'Cockroaches are one of the most notorious household pests. They invade your house in the', '', '', '', '', 'Vpestify | Cockroaches', '', '', '23-01-2020 05:57:15'),
(6, 'pests-services', 'cockroaches-treatment', 'cockroach.png', 'Cockroaches-2.jpg', 'banner-cockroach.jpg', '', '', 'Cockroaches Control', 'cockroaches-control', '<p><span style=\"font-size:14px\">There are quite a few varieties of cockroaches. While some of them are generally outsiders and rarely enters your home in search of warmth, others like the notorious cockroach mostly prefer the interior of your house. The old saying &ldquo;for every cockroach you see, there are 100 more you don&rsquo;t&rdquo; is very apt for them.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">The cockroaches are experts in hiding in between the cracks and crevices of your house, they can survive tough conditions and can perfectly avoid from being stamped under your shoes. But, do not worry. The good news is there is Vpestify for you. We can eliminate them completely with the right cockroach treatment.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">we can offer you a professional cockroach control program to make your premises 100% pest free. Our company is expert in indoor cockroach control service, prevents them from re-multiplying and also effectively eliminate their eggs and larvae from your house. Professional cockroaches control services for all types of pests.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">You can avail our monthly treatment which also includes bait management and spraying of insecticides in the cracks and crevices of your house. We also provide commercial cockroach management service.</span></p>\r\n', '', '', '', '', '', 'Vpestify | Cockroaches Control', '', '', '23-01-2020 05:57:26'),
(7, 'pests-services', 'cockroaches-treatment', 'cockroach.png', 'Cockroaches-3.jpg', 'banner-cockroach.jpg', '', '', 'Cockroaches Inspection', 'cockroaches-inspection', '<p><span style=\"font-size:14px\"><strong>Contact Vpestify Control Services For Cockroach Pest Control</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">As your trusted pest control service provider, we will protect your premise as if it was our own and your peace of mind is important to us.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">You can contact us today to get your house inspected and evaluated.</span></p>\r\n', '', '', '', '', '', 'Vpestify | Cockroaches Inspection', '', '', '23-01-2020 05:57:41'),
(8, 'pests-services', 'bed-bugs-treatment', 'bed-bug.png', 'Bed-1.jpg', 'bed-bug-banner-1.jpg', '', '', 'Bed Bugs', 'bed-bugs', '<p><span style=\"font-size:14px\">Bed Bugs are the ultimate hitchhiker and can be picked up almost anywhere. Once in your home, they can get into all the rooms through door frames, windows, and cracks in the walls. If you&rsquo;ve recently moved in some new furniture, you may even have brought the Bed Bugs in with it. Bed Bugs often lay eggs in the crevices of wood furniture. You are also more at risk if you travel, or if you regularly host travellers (for example, if you rent out your home) since Bed Bugs love to grab a ride on clothing and luggage.</span></p>\r\n', 'Bed Bugs are the ultimate hitchhiker and can be picked up almost anywhere. Once in your home', '', '', '', '', 'Vpestify | Bed Bugs', '', '', '23-01-2020 05:58:28'),
(9, 'pests-services', 'bed-bugs-treatment', 'bed-bug.png', 'Bed-2.jpg', 'bed-bug-banner-1.jpg', '', '', 'Bed Bugs Control', 'bed-bugs-control', '<p><span style=\"font-size:14px\">The bed bugs find an entry to your house either through the second-hand articles or through furniture. They may also find a place in your house through the rain gutters, wires or plumbing pipes. Sometimes the warehouse companies, railroad cars, and the trucks are also found to be infested. The bed bugs can infest your home with the help of new furniture or by the stowed away furniture which has been shipped from some other place.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Bed Bugs are incredibly stubborn, which is why it&rsquo;s almost impossible to get rid of them without professional help. People often try using home remedies or over-the-counter products, but they don&rsquo;t work. You&rsquo;re not going to be able to starve the insects to death as an adult can go three months without feeding. The expert and approved bed bugs removal Company take special effort to make your premises pest-free.</span></p>\r\n', '', '', '', '', '', 'Vpestify | Bed Bugs Control', '', '', '23-01-2020 05:58:39'),
(10, 'pests-services', 'bed-bugs-treatment', 'bed-bug.png', 'Bed-3.jpg', 'bed-bug-banner-1.jpg', '', '', 'Bed Bugs Inspection', 'bed-bugs-inspection', '<p>Once your home is infested, the bugs will spread very quickly. It is vital that you take action as soon as possible to prevent the infestation from becoming even worse. You may spend significant time and money trying to get rid of these bugs, only to find that they won&rsquo;t leave. That&rsquo;s why you should call VpestifyPest Control instead.</p>\r\n\r\n<p>Once we&rsquo;ve gotten rid of the Bed Bugs, you don&rsquo;t want them coming back. Other pest control companies may &ldquo;treat&rdquo; these pests by cutting corners, we are committed to doing it right the first time and making sure that they won&rsquo;t return. Call Vpestify to get these bugs out of your bed and keep them from coming back.</p>\r\n', '', '', '', '', '', 'Vpestify | Bed Bugs Inspection', '', '', '23-01-2020 05:58:50'),
(11, 'pests-services', 'wood-borers-treatment', 'wharf-borer.png', 'wood-1.jpg', 'main_banner-woodborer.jpg', '', '', 'Wood Borers', 'wood-borers', '<p><span style=\"font-size:14px\">Borers are insects which can negatively affect timber. The larval (grub) stage tunnels through the timber causing damage. The first sign of a borer infestation is small pinholes in the timber, as this is the hole where the adult borer has emerged from the wood. The adult will only live for a short period of time. After mating the female will inject her eggs into the pores of the timber.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Once the female lays her eggs in the pores of the timbers, larvae feed upon starch and other nutrients in the sapwood. Some timbers where the sapwood has insufficient starch, or its pores are too narrow for the female&rsquo;s ovipositor, should be immune to attack. However, conducive conditions such as high moisture and poor ventilation can open the pores of the timber and allow borer attack.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Borers are known to attack old furniture and structural timbers such as flooring, bearers and joists and roofing timbers.</span></p>\r\n', 'Borers are insects which can negatively affect timber. The larval (grub) stage tunnels through', '', '', '', '', 'Vpestify | Wood Borers', '', '', '23-01-2020 05:59:28'),
(12, 'pests-services', 'wood-borers-treatment', 'wharf-borer.png', 'wood-2.jpg', 'main_banner-woodborer.jpg', '', '', 'Wood Borers Control', 'wood-borers-control', '<p><span style=\"font-size:14px\">Our Borer treatment is applied to all accessible timber surfaces throughout the roof void and/or subfloor areas using a timber-saver Boric acid treatment. This treatment will kill the adult beetles as they emerge from the timber before they have an opportunity to mate and reinfest.</span></p>\r\n', '', '', '', '', '', 'Vpestify | Wood Borers Control', '', '', '23-01-2020 05:59:40'),
(13, 'pests-services', 'wood-borers-treatment', 'wharf-borer.png', 'wood-3.jpg', 'main_banner-woodborer.jpg', '', '', 'Wood Borers Inspection', 'wood-borers-inspection', '<p><span style=\"font-size:14px\">As your trusted and cost-efficient wood borers removal service provider in Delhi, our expert service providers would protect your premise as if it was our own and your peace of mind is important to us.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">We are an approved pest control service company and you can call us today to book your free inspection and evaluation. We can give you an estimated cost for the service.</span></p>\r\n', '', '', '', '', '', 'Vpestify | Wood Borers Inspection', '', '', '23-01-2020 06:00:02'),
(14, 'pests-services', 'flying-insects-treatment', 'fly.png', 'Flying-1.jpg', 'main_horse-fly-banner-desk.jpg', '', '', 'Flies', 'flies', '<p><span style=\"font-size:14px\">There are over 120,000 species of flies worldwide. Flies are considered pests because they pose a health risk to humans, pets and livestock. They can infest your home or business and spread diseases like Salmonella and E. coli. A few species may even bite humans and animals.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">If a small fly problem is left uncontrolled, it has the potential to turn into a serious infestation. Some fly species are able to mature from eggs to adults in just seven days. There are simple ways you can identify the signs of a fly infestation and reduce the need for fly control. Taking a proactive approach with deterrent measures will also help you avoid costly treatments.</span></p>\r\n', 'There are over 120,000 species of flies worldwide. Flies are considered pests because', '', '', '', '', 'Vpestify | Flies', '', '', '23-01-2020 06:00:59'),
(15, 'pests-services', 'flying-insects-treatment', 'fly.png', 'Flying-2.jpg', 'main_horse-fly-banner-desk.jpg', '', '', 'House Fly', 'house-fly', '<p><span style=\"font-size:14px\">The house fly is the most common fly found in and around homes. It has a worldwide distribution and is prominent in the United States. House flies are not only nuisance pests while buzzing around homes, but they are potential disease carriers. House flies have short lifespans, but they can quickly reproduce in large numbers, leading to large house fly populations if not identified and effectively controlled.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Signs of a House Fly Infestation</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">The most common sign of a housefly infestation is the presence of the flies, themselves. Larvae may also be seen crawling out of their breeding material as they pupate. Along with seeing house flies, people may hear them around the home. House flies produce buzzing sounds which are a result of their two wings beating together.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>House Fly Prevention</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>How Do House Flies Get in the House?</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">House flies take advantage of structural issues, such as damaged weather stripping or torn screens, in order to enter a household. These pests are attracted to buildings by air currents and odours. Due to the fact that their preferred temperature is 83 degrees Fahrenheit (28 degrees Celsius), house flies are attracted to warm air currents coming from buildings on cooler days and vice versa on warmer days.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>How to Get Rid of House Flies?</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">In order to prevent a house fly infestation from happening in the first place, vigilant sanitation is a must. Regularly removing trash and using well-sealed garbage receptacles can help to deter any house flies from residing around waste bins. Additionally, pet waste must be cleaned up immediately in order to prevent the development of any house fly breeding sites. Finally, fine mesh screens should be applied to doors and windows in order to prevent house fly entry into the home. If window screens are already present, make sure there are no visible rips or tears.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>House Fly Control Service</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">If you suspect a house fly infestation in your home, contact Vpestifypest control to conduct an inspection, specifically looking for any places where house fly eggs may have been deposited. Since house flies enter from outside, internal breeding sites are not common. If the breeding site is not thoroughly cleaned or removed, these pests will continue to be a problem.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vpestify offers an effective plan for flies control services. This plan has been designed for controlling the number of house flies that are seen. The pest control company uses chemical applications for flies control during the peak season</span>.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 'Vpestify | Wood Borers Control', '', '', '23-01-2020 06:01:09'),
(16, 'pests-services', 'flying-insects-treatment', 'fly.png', 'Flying-3.jpg', 'main_horse-fly-banner-desk.jpg', '', '', 'Mosquito Control Services', 'mosquito-control-services', '<p><span style=\"font-size:14px\">There are about 3300 mosquitoes&rsquo; species all over in the world. These mosquitoes are responsible for causing so many severe diseases like malaria, dengue, chikungunya with which world is fighting with great efforts, but they cause more damage to human health day by day and human filling effortless. The world health organization is also trying to control this situation but they also don&rsquo;t get satisfactory output, the patients of malaria, chikungunya are increasing in large number.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vpestifypest control &ndash; Mosquito service provider company in Delhi offers net Mosquito &amp; Screen mosquito service as per the demand of the customer.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">The breeding season of the mosquitoes is normally more during the hot months, and thus Vpestify recognizes the need for seasonal spraying. The company treats the area of breeding of the mosquitoes with odour free and fast-acting products so that you get a lesser number of mosquitoes biting you at home.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">One of the best technicians from Vpestify - fly control company would go to inspect your property. They note the areas which are mainly prone to the breeding and activities of mosquitoes. These pests generally breed in the standing water which gets collected in gutters, birdbaths, discarded containers, and water bowls of pets. These areas and the other highly risky areas get treated using special products for the services of control of the flies larvae.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>TIPS TO AVOID MOSQUITOES </strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Here are some listed tips for the homeowners, so that they can reduce the activity of mosquitoes:</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Dispose of any plastic container, tin cans, ceramic pots or other similar types of containers holding water in them.</span></li>\r\n	<li><span style=\"font-size:14px\">Discarded tires also require your attention. The stagnant water inside the tires is the breeding place for most of the mosquitoes or flies.</span></li>\r\n	<li><span style=\"font-size:14px\">The recycling containers that are kept outdoors must be drilled at the bottom to prevent any fly or mosquito breeding.</span></li>\r\n	<li><span style=\"font-size:14px\">The roof gutters which get clogged easily with leaves must be cleaned each year. Roof gutters are common places where mosquitoes and flies breed.</span></li>\r\n	<li><span style=\"font-size:14px\">Thin out the vegetation around your house if it is quite dense</span></li>\r\n	<li><span style=\"font-size:14px\">Wood piles must be kept covered.</span></li>\r\n	<li><span style=\"font-size:14px\">Whack the weeds and cut out dense grasses.</span></li>\r\n	<li><span style=\"font-size:14px\">If you have plastic pools then turn them over when not getting used. The stagnant water inside the wading pool also becomes the breeding place for mosquitoes. No water must be allowed to remain stagnant in the birdbaths. Wheelbarrows must also be turned over.</span></li>\r\n	<li><span style=\"font-size:14px\">Remove junk piles.</span></li>\r\n	<li><span style=\"font-size:14px\">Fish ponds must have continuous running water and stock of fishes in them. Mosquitoes cannot breed in rippling water. They get drowned.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\">Experts suggest that these tips can keep away flies, mosquitoes or other types of fly pests away from your houses.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 'Vpestify | Mosquito Control Services', '', '', '23-01-2020 06:01:21'),
(17, 'pests-services', 'crawling-insects-treatment', 'ant.png', 'Crawling-3.jpg', 'banner_12_spider.jpg', '', '', 'Ants', 'ants', '<p><span style=\"font-size:14px\">One of the most common household insects that you will most likely deal with at some point of living in a home is ants. Ants are found just about all over the world and usually seek shelter inside dry, warm places such as homes, apartments, and duplexes. With an ample supply of food inside most homes, this makes the perfect spot for ants to live. If you have found ants in your home and are worried about an infestation, the pest experts at Vpestifycan get them cleared out.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Ant Prevention Tips</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Successful, long-term ant control requires more than just a surface spray. AtVpestify, we use the latest products available including repellent, non-repellent liquid insecticide as well as insecticidal dust, baits and granules.</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">Clean up food and drink spills immediately.</span></li>\r\n	<li><span style=\"font-size:14px\">Rinse out cans or bottles before putting them into the recycling bin.</span></li>\r\n	<li><span style=\"font-size:14px\">Keep food stored tightly.</span></li>\r\n	<li><span style=\"font-size:14px\">Pick up pet food at night and don&rsquo;t feed them outdoors.</span></li>\r\n	<li><span style=\"font-size:14px\">Seal cracks around doors and windows, and keep gutters and downpipes clean.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Ant Control Service</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">As responsible home-owners, we should keep an eye on these pests if they are trying to forage indoors in search of a good place for thriving. Ensure a regular inspection in the piles of coarse and stingy wooden structures, the parts of dead insects and the other debris materials which are seen shifting from the siding cracks and also on the backside of the mouldings in the basement and attic or under the porches.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">If you have an ant infestation and need a professional pest company to get them out, trust the experts at VpestifyPest Control. Keeping safety first, our team provides Eco-Friendly services to ensure you and your pets stay safe throughout the extermination. Call our team today for a free quote.</span></p>\r\n', 'One of the most common household insects that you will most likely deal with at some point', '', '', '', '', 'Vpestify | Ants', '', '', '23-01-2020 06:02:04'),
(18, 'pests-services', 'crawling-insects-treatment', 'ant.png', 'Crawling-4.jpg', 'banner_12_spider.jpg', '', '', 'Silverfish', 'silverfish', '<p><span style=\"font-size:14px\">Silverfish prefer damp, dark, warm and humid places to the harbor. Because of this, they are often found in bathrooms, kitchens, roof voids, wall cavities, cupboards and bookshelves.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Outdoors, they may be found living under the bark of trees and garden beds, under rocks, in rotten logs and among leaf litter.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Homeowners most commonly detect silverfish when they find one on the floor or in a sink/bathtub, or they will find holes in their clothing.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Sign of a Silverfish Infestation</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Keep an eye out for feeding marks, although they may be irregular whether they are holes, notches along an edge, or surface etchings. Yellow stains, scales and/or faeces (tiny black pepper-like pellets) may also be seen on infested materials.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">People have noticed silverfish when they come down on ceiling soffits and/or drop from skylights and canister light fixtures in the ceiling, likely entering through shake roofs.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Silverfish Control Service</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">Looking to prevent or get rid of a silverfish infestation? The key to silverfish control is thoroughly inspecting preferred habitat areas and where appropriate food materials are present. If the infestation is localized on the inside, one can assume that it is recent and was either brought in via infested items or represents a recent invasion from the outside. If the infestation is widespread, then attention should be directed to the outside. Anything stored against or near the house&rsquo;s exterior must be moved or removed since silverfish can easily climb up walls and find entrance around window and door frames, utility pipes and vents. Shake roofs should also be cleaned and sealed every other year.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">If a silverfish infestation is suspected or found, it&rsquo;s best to call Vpestify pest control professional to properly inspect the home and recommend the appropriate treatment method.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 'Vpestify | Silverfish', '', '', '23-01-2020 06:02:25'),
(19, 'pests-services', 'crawling-insects-treatment', 'ant.png', 'Crawling-1.jpg', 'banner_12_spider.jpg', '', '', 'Grain Beetls', 'grain-beetls', '<p><span style=\"font-size:14px\">The grain beetle can be found throughout the world, and it loves to attack many common types of food. Macaroni, sugar, biscuit mixes, rice and cereal frequently fall victim to the grain beetle. Homeowners commonly find grain beetles in locations where dry food is stored. Although diseases aren&#39;t associated with grain beetles, nobody wants to eat cereal that has had grain beetles swimming in it. A grain beetle cannot eat through a hard seed of corn, but it loves attacking processed cereal.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Grain beetles have a reddish-brown, flattened body, and they&#39;re usually about a tenth of an inch in length. On both sides of a grain beetle&#39;s body or thorax, there are six projections that are shaped like the teeth of a saw. A grain beetle&#39;s eggs are microscopic and coloured white. The full-grown larvae are usually an eighth of an inch in length. Grain beetles are known to cause problems in commercial facilities and homes. A typical grain beetle is 2.5 up to 3 mm in length and can be identified by its flat body. The tiny projections on a grain beetle are always located behind its head. Although a magnifying glass is required to truly see what they look like, the tiny projections are what give the grain beetle its name.</span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Signs of Infestation</strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\">The presence of the insect within boxed, bagged or sacked grains.</span></li>\r\n	<li><span style=\"font-size:14px\">A number of holes appearing in stored products. These holes will typically be found on surfaces of packages that are contacting the shelf directly, as it will be an easy point of entry for the insect.</span></li>\r\n	<li><span style=\"font-size:14px\">Although it will be much harder to see, cracked kernels of grain or products with odd spotting to them (this will be an indication of the product being infested with insect eggs.)</span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><strong>Grain beetles Control Service</strong></span></p>\r\n\r\n<p><span style=\"font-size:14px\">As your trusted pest control service provider, Vpestify will protect your premise as if it was our own and your peace of mind is important to us.</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Contact us today to have a free inspection and evaluation.</span></p>\r\n', '', '', '', '', '', 'Vpestify | Grain beetls', '', '', '23-01-2020 06:02:35'),
(20, 'pests-services', 'crawling-insects-treatment', 'ant.png', 'Crawling-2.jpg', 'banner_12_spider.jpg', '', '', 'Fabric Beetle', 'fabric-beetle', '<p>As you start digging through the back of your closet for warmer clothing this fall season, keep an eye out for household pests that may be destroying your clothes. Even though these pests are not usually disease or germ carriers, their presence can be a nuisance and difficult to eliminate. It is important to ensure your clothes and other fabrics are protected as these pests can cause considerable damage before you even know they are present.</p>\r\n\r\n<p>Generally, it&rsquo;s the newly hatched larvae that do the damage on everything from sweaters, pants, jackets, wool rugs, to decorative needlework on your walls. Typically insect damage occurs on fabrics containing natural or animal fibres such as wool, mohair, silk, cotton, leather, fur, feathers, down, and any synthetics blended with these natural fibres.</p>\r\n\r\n<p><strong>Clothes Moths</strong></p>\r\n\r\n<p>Clothes moths are a light tan colour, have very narrow wings, and can grow up to 1/2 inch long. It is the larva (small white worm looking) that actually eats wool garments, not the adult moths themselves. But if you see the adult clothes moths around you can assume they are laying eggs. Clothes moths pose no serious health concern to humans; however, an infestation can quickly ruin rarely used or stored clothing such as old military uniforms, blankets, feathered hats, tuxedos, overcoats, evening gowns, hats, antique dolls and toys, and wall hangings.</p>\r\n\r\n<p><strong>Carpet Beetles</strong></p>\r\n\r\n<p>Carpet beetles commonly cause damage to fabrics such as wool, silk, leather, and fur; they do not feed on synthetic fibres. Just like the clothes moth, the carpet beetle larvae are the ones to do the damage to your clothing. Carpet beetle larvae measure 1/8 to 1/4 inch long and appear to be densely covered with tiny hairs or bristles. The garment damage appears in one portion of a garment, or concentrated area. They easily find food in obscure places and can be easily dispersed throughout the home considering their unique ability to travel. Carpet beetles can be difficult to control and can cause extensive damage if left unchecked.</p>\r\n\r\n<p><strong>Tips for keeping your clothes pest free!</strong></p>\r\n\r\n<ul>\r\n	<li>Store only clean garments. Thoroughly clean clothes prior to storage by emptying pockets, washing to remove food stains, perfumes, and perspiration as these can be a reliable food source for a wardrobe-destroying infestation. Have garments dry cleaned (without starch) or place in the dryer on high heat for 15 minutes to eliminate any insect eggs or mildew spores.</li>\r\n	<li>Regularly clean and vacuum. Clean rugs and carpets, draperies, upholstered furniture, closets and anywhere else larvae can hide. When you are finished, immediately dispose of the vacuum bag.</li>\r\n	<li>To avoid future infestations, store clothes in containers located in a cool, dry place. Use garment storage bags made of cotton and or vinyl. Make sure to utilize breathable bags for leather or fur garments. Preventative products such as mothballs and cedar products can provide additional protection. If the insects cannot lay eggs, they will not eat your clothes.</li>\r\n	<li>Be careful about what you buy second-hand. Always launder or dry-clean woollens that are bought from thrift stores or given to you as hand-me-downs. You could have unexpected guests along with that sweater!</li>\r\n</ul>\r\n\r\n<p>Don&rsquo;t let these fabric-eating pests ruin your winter wardrobe. Want to leave it to the professionals? Contact Vpestifypest control expert. Schedule a free inspection today!</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 'Vpestify | Fabric Beetle', '', '', '23-01-2020 06:02:48'),
(21, 'birds-and-pigeon', 'birds-and-pigeon-control', 'hawk.png', 'Birds-1.jpg', 'birds-banner.jpg', '', '', 'Birds & Pigeon', 'birds-and-pigeon', '', '', '', '', '', '', 'Vpestify | Birds & Pigeon', '', '', '23-01-2020 06:03:45'),
(22, 'birds-and-pigeon', 'birds-and-pigeon-control', 'hawk.png', 'Birds-3.jpg', 'birds-banner.jpg', '', '', 'Birds & Pigeon Control', 'birds-and-pigeon-control', '', '', '', '', '', '', 'Vpestify | Birds & Pigeon Control', '', '', '23-01-2020 06:03:59'),
(23, 'birds-and-pigeon', 'birds-and-pigeon-control', 'hawk.png', 'Birds-2.jpg', 'birds-banner.jpg', '', '', 'Birds & Pigeon Inspection', 'birds-and-pigeon-inspection', '', '', '', '', '', '', 'Vpestify | Birds & Pigeon Inspection', '', '', '23-01-2020 06:04:10'),
(24, 'pests-services', 'rodents-control', 'squirrel.png', 'Rodents-1.jpg', 'rodents.jpg', '', '', 'Rodents', 'rodents', '', '', '', '', '', '', 'Vpestify | Rodents', '', '', '23-01-2020 06:04:40'),
(25, 'pests-services', 'rodents-control', 'squirrel.png', 'Rodents-2.jpg', 'rodents.jpg', '', '', 'Rodents Control', 'rodents-control', '', '', '', '', '', '', 'Vpestify | Rodents Control', '', '', '23-01-2020 06:04:50'),
(26, 'pests-services', 'rodents-control', 'squirrel.png', 'Rodents-3.jpg', 'rodents.jpg', '', '', 'Rodents Inspection', 'rodents-inspection', '', '', '', '', '', '', 'Vpestify | Rodents Inspection', '', '', '23-01-2020 06:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE `tbl_team` (
  `id` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `file` varchar(200) NOT NULL,
  `real_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`id`, `heading`, `name`, `file`, `real_date`) VALUES
(1, 'Backend', 'Safder Ali', 'Lorem ipsum dolor sit amet, consetetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum susmodo viisis.', ''),
(2, 'Customer', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consetetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum susmodo viisis.', '28-01-2020 06:18:57 PM'),
(3, 'Customer', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consetetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum susmodo viisis.', ''),
(4, 'Customer', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consetetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum susmodo viisis.', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `password`) VALUES
('myadmin', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`E_id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `tbl_mob`
--
ALTER TABLE `tbl_mob`
  ADD PRIMARY KEY (`M_id`);

--
-- Indexes for table `tbl_ordes`
--
ALTER TABLE `tbl_ordes`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_team`
--
ALTER TABLE `tbl_team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `E_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_mob`
--
ALTER TABLE `tbl_mob`
  MODIFY `M_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ordes`
--
ALTER TABLE `tbl_ordes`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
