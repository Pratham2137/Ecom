-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2022 at 03:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'Pratham Shinde', 'prathamshinde@gmail.com', '$2y$10$LuRp2mnp.FCh8nO8jgaCtuSActNJzDPjA.3Ql55DzJiZOodIZHcqe', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Apple\r\n'),
(2, 'Samsung'),
(3, 'OnePlus'),
(4, 'Realme'),
(5, 'Oppo'),
(6, 'Nokia'),
(7, 'Boat'),
(8, 'Noise'),
(9, 'Xiaomi'),
(10, 'HP'),
(11, 'Dell'),
(12, 'Acer'),
(13, 'Asus'),
(131, 'SanDisk');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 4, 1),
(2, 11, '::1', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Phones '),
(3, 'Laptop'),
(4, 'Smartwatch'),
(5, 'Storage'),
(6, 'PC Components'),
(12, 'Computer Accessories'),
(13, 'Headphones'),
(14, 'Toys'),
(15, 'Game Accessories'),
(16, 'Mobile Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(78, 2, 3, 'OnePlus Nord CE 2 Lite 5G (Black Dusk, 6GB RAM, 128GB Storage)', 18999, 10, 'Camera: 64MP Main Camera with EIS; 2MP Depth Lens and 2MP Macro Lens; Front (Selfie) Camera: 16MP Sony IMX471\r\nCamera Features: AI scene enhancement, Dual-View Video, HDR, Night Portrait, Panorama Mode, Retouch Filters, 1080p video at 30 fps, SLO-MO: 720p video at 120 fps, TIME-LAPSE: 1080p video at 30 fps, Video editor, Face unlock, Screen flash, HDR, NIGHT, PORTRAIT, TIME-LAPSE, Retouch, Filters\r\nDisplay: 6.59 Inches; 120 Hz Refresh Rate; Support sRGB, Display P3; Resolution: 2412 x 1080 pixels 402ppi; Aspect Ratio: 20:9\r\nDisplay Features: Dark mode\r\nOperating System: Oxygen OS based on Android 12\r\nProcessor: Qualcomm Snapdragon 695 5G\r\nBattery & Charging: 5000 mAh with 33W SuperVOOC', 'OnePlus Nord CE 2 Lite 5G .jpg', 'mobile, phone, onelpus'),
(79, 2, 3, 'OnePlus 10R 5G (Forest Green, 12GB RAM, 256GB Storage, 80W SuperVOOC)', 36999, 10, 'Camera: 50MP Main Camera with Sony IMX766 and 2MP Macro Camera with Dual LED Flash; 16MP Front (Selfie) Camera with Sony IMX471\r\nCamera Features: Nightscape2.0, Super Macro, UltraShot HDR, Smart Scene Recognition, Portrait mode, Pro mode, Panorama, Tilt-shift mode, Focus Peaking, Filters, Video Nightscape, Video HDR, Video Portrait Timelapse, Hyperlapse Mode\r\nDisplay: 6.7 Inches; 120 Hz IRIS Display; Resolution: 2400 X 1080 pixels 394 ppi; Aspect Ratio: 20:9\r\nDisplay Features: Hyper Touch Mode, Reading Mode, Night Mode, Eye Comfort Mode, Auto brightness\r\nOperating System: OxygenOS based on Android 12\r\nProcessor: MTK D8100 Max\r\nBattery & Charging: 5000 mAh with 80W SuperVOOC', 'OnePlus 10R 5G .jpg', 'mobile, phone, onelpus'),
(80, 2, 1, 'Apple iPhone 12 (64GB) - Blue', 47999, 5, '6.1-inch (15.5 cm diagonal) Super Retina XDR display\r\nCeramic Shield, tougher than any smartphone glass\r\nA14 Bionic chip, the fastest chip ever in a smartphone\r\nAdvanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording\r\n12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording\r\nIndustry-leading IP68 water resistance\r\nSupports MagSafe accessories for easy attach and faster wireless charging\r\niOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more', 'Apple iPhone 12.jpg', 'mobile, phone, onelpus'),
(81, 2, 1, 'iPhone 14 256GB (Product) RED', 89900, 5, '15.40 cm (6.1-inch) Super Retina XDR display\r\nAdvanced camera system for better photos in any light\r\nCinematic mode now in 4K Dolby Vision up to 30 fps\r\nAction mode for smooth, steady, handheld videos\r\nVital safety technology — Crash Detection calls for help when you can’t', 'iPhone 14.jpg', 'mobile, phone, onelpus'),
(82, 2, 2, 'Samsung Galaxy S20 FE 5G (Cloud Navy, 8GB RAM, 128GB Storage)', 29990, 10, '5G Ready powered by Qualcomm Snapdragon 865 Octa-Core processor, 8GB RAM, 128GB internal memory expandable up to 1TB, Android 11.0 operating system and dual SIM\r\nTriple Rear Camera Setup - 12MP (Dual Pixel) OIS F1.8 Wide Rear Camera + 8MP OIS Tele Camera + 12MP Ultra Wide | 30X Space Zoom, Single Take & Night Mode | 32MP F2.2 Front Punch Hole Camera\r\n6.5-inch(16.40 centimeters) Infinity-O Super AMOLED Display with 120Hz Refresh rate, 1080 x 2400 (FHD+) Resolution \"\r\n4500 mAh battery (Non -removable) with Super Fast Charging, FAst Wireless Charging & Finger Print sensor\r\nIP68 Rated, MicroSD Card Slot (Expandable upto 1 TB), Dual Nano Sim, Hybrid Sim Slot, 5G+5G Dual stand by\r\n5G Ready powered by Qualcomm Snapdragon 865 Octa-Core processor, 8GB RAM, 128GB internal memory expandable up to 1TB, Android 11.0 operating system and dual SIM', 'Samsung Galaxy S20 FE 5G.jpg', 'mobile, phone, onelpus'),
(83, 2, 2, 'Samsung Galaxy M53 5G (Deep Ocean Blue, 6GB, 128GB Storage) | 108MP | sAmoled+ 120Hz | 12GB RAM with RAM Plus', 21999, 10, 'Segment Best 108MP Quad Camera Setup, with exciting features like Single Take, Object Eraser, and Photo Remaster\r\n6.7-inch Super AMOLED Plus Display, FHD+ resolution, 1080x2400 pixels with 120Hz Refresh Rate\r\nMTK D900 Octa Core 2.4GHz 6nm Processor with 4x4 Mimo Band support for a HyperFast 5G experience\r\nMassive 5000 mAh Battery | Memory, Storage & SIM: 6GB RAM | RAM Plus upto 6GB |128GB internal memory expandable up to 1TB\r\nLatest Android v12.0, One UI 4 operating system', 'Samsung Galaxy M53 5G.jpg', 'mobile, phone, onelpus'),
(84, 2, 4, 'Realme Narzo 50 Pro 5G (Hyper Black 6GB RAM+128GB Storage) Dimensity 920 5G Processor', 17999, 10, 'Mediatek Dimensity 920 5G powerful Gaming Processor\r\n6 GB RAM | 128 GB ROM | Expandable Upto 256 GB\r\n16.3 cm (6.4 inch) FHD+ Display\r\n48MP + 8MP + 2MP | 16MP Front Camera\r\n5000 mAh Battery', 'realme Narzo 50 Pro 5G.jpg', 'mobile, phone, onelpus'),
(85, 2, 4, 'Realme narzo 50i (Mint Green, 4GB RAM+64GB Storage) - 6.5\" inch Large Display | 5000mAh Battery', 8499, 10, '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB\r\n16.51 cm (6.5 inch) HD+ Display\r\n8MP Primary Camera | 5MP Front Camera\r\n5000 mAh Battery\r\nOcta-core Processor', 'Realme narzo 50i.jpg', 'mobile, phone, onelpus'),
(86, 2, 5, 'OPPO F21s Pro (Starlight Black, 8GB RAM, 128 Storage)', 22999, 10, '6.43\" inch (16.33cm) FHD+ AMOLED Punch-hole Display with 2400x1080 pixels. Large Screen to Body ratio of 90.8%\r\nUltra-slim Retro Design with Orbit Light for Notifications\r\nAI Triple Camera setup - 64MP + 2MP + 2MP with microlens| 32MP Front Camera with Flagship Sony IMX709 Sensor\r\nBig 4500 mAh Battery with 33W SUPERVOOC Charging\r\nMemory, Storage & SIM: 8 GB RAM (+ RAM expansion up to 5GB) | 128 GB ROM | Expandable Upto 1TB | SIM 1 + SIM 2+ Micro SD', 'OPPO F21s Pro.jpg', 'mobile, phone, onelpus'),
(87, 2, 5, 'OPPO A74 5G (Fluid Black, 6GB RAM, 128GB Storage)', 14990, 10, 'Qualcomm Snapdragon 480 5G GPU 619 at 650 MHz Support 5G sim| Powerful 2 GHz Octa-core processor, support LPDDR4X memory and latest UFS 2.1 gear 3 storage\r\n5000 mAh lithium polymer battery\r\n48MP Quad Camera ( 48MP Main + 2MP Macro + 2MP Depth Lens) | 8MP Front Camera.\r\nMemory, Storage & SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (5G+5G).| Color OS 11.1 based on Android v11.0 operating system.', 'OPPO A74 5G.jpg', 'mobile, phone, onelpus'),
(88, 2, 6, 'Nokia G21 Android Smartphone, Dual SIM, 3-Day Battery Life, 4GB RAM + 64GB Storage, 50MP Triple AI Camera | Nordic Blue', 12499, 10, '6.5” (16.51 cm) display with 90Hz refresh rate\r\n50MP triple AI rear camera with powerful AI imaging modes and OZO spatial Audio\r\n4GB RAM & 64GB internal storage, expandable up to 512GB\r\nUp to 3-days battery life with a 5050 mAh battery\r\nPure Android 11 OS with 2 years of Android OS upgrades & 3 years of monthly security updates\r\nPowered by the Unisoc T606 processor\r\nSide Finger Print and Face Unlock', 'Nokia G21.jpg', 'mobile, phone, onelpus'),
(89, 2, 9, 'Xiaomi 12 Pro | 5G (Opera Muave, 8GB RAM, 256GB Storage) | Snapdragon 8 Gen 1', 54999, 10, 'The flagship Snapdragon 8 Gen 1, 4nm processor is designed to provide groundbreaking performance. The super-big 2900mm² vapour chamber, along with three layers of massive graphite sheets provides an advanced cooling system.', 'Xiaomi 12 Pro 5G.jpg', 'mobile, phone, onelpus'),
(90, 2, 9, 'Redmi Note 11 Pro (Stealth Black, 6GB RAM, 128GB Storage) | 67W Turbo Charge | 120Hz Super AMOLED Display', 17999, 10, 'The 6.67\" FHD+ 120Hz AMOLED display along with 360Hz touch sampling and 1200 nits peak brightness, brings out immersive picture quality and ensures smoother and faster response. Display is protected by Corning Gorilla Glass 5', 'Redmi Note 11 Pro.jpg', 'mobile, phone, onelpus'),
(91, 13, 7, 'boAt Rockerz 450 Bluetooth On Ear Headphones with Mic, Upto 15 Hours Playback, 40MM Drivers, Padded Ear Cushions, Integrated Controls and Dual Modes', 1099, 10, 'Drivers- Its 40mm dynamic drivers help pump out immersive HD audio all day long.\r\nEarcushions- It has been ergonomically designed and structured as an on-ear headphone to provide the best user experience with its comfortable padded earcushions and lightweight design\r\nControls- You can control your music without hiccups using the easy access controls, communicate seamlessly using the built-in mic, access voice assistant and always stay in the zone\r\nDual Modes- One can connect to boAt Rockerz 450 via not one but two modes, Bluetooth as well as AUX\r\n1 year warranty from the date of purchase', 'boAt Rockerz 450.jpg', 'headpones, earphones, accessories'),
(92, 13, 7, 'boAt Rockerz 255 Pro+ Bluetooth Neckband with Upto 40 Hours Playback, ASAP™ Charge, IPX7, Dual Pairing, BT v5.0 and Mic(Navy Blue)', 999, 10, 'ASAP Charge- With a few minutes of ASAP Charge you can get upto 10 hours of audio time by charging them for only 10 mins. Battery Capacity (mAh): 300 mAh, Charging Time 1.5 hours\r\nDrivers- The unbeatable boAt signature sound shines through no matter what are you playing courtesy its 10mm drivers.\r\nIP Rating- Rockerz 255 Pro+ are perfect for the outdoors and daily workout as they are IPX7 rated.', 'boAt Rockerz 255 Pro.jpg', 'headpones, earphones, accessories'),
(93, 16, 7, 'boAt Airdopes 141 True Wireless Earbuds with 42H Playtime, Beast™ Mode', 1099, 10, 'Low Latency- Our BEAST mode makes these true wireless earbuds a partner in entertainment with real-time audio and low latency experience.\r\nClear Voice Calls- It dons built-in mic on each earbud along with our ENx Environmental Noise Cancellation tech that ensures a smooth delivery of your voice via voice calls.\r\nboAt Signature Sound- Delve into your cherished boAt Immersive auditory time with Airdopes 141.\r\nASAP Charge- The earbuds are equipped with our ASAP Charge feature that offers up to 75 min of playtime in just 5 min of charge; while the carry case comes along with the Type C interface.', 'boAt Airdopes 141.jpg', 'headpones, earphones, accessories'),
(94, 16, 7, 'boAt Bassheads 100 in Ear Wired Earphones with Mic(Black)', 399, 10, 'The perfect way to add some style and stand out from the crowd with the boAt BassHeads 100 \"Hawk\" inspired earphones. Impedance 16?, Sensitivity (dB) 92db ±3db, Frequency Response 20Hz-20KHz\r\nThe stylish BassHeads 100 superior coated wired earphones are a definite fashion statement - wear your attitude with its wide variety of collection\r\nThe powerful 10mm dynamic driver with the speaker resistance of 16 ohm enables the earphone to deliver a punchy, rhythmic response to the most demanding tracks', 'boAt Bassheads 100.jpg', 'headpones, earphones, accessories'),
(95, 4, 7, 'boAt Xtend Smartwatch with Alexa Built-in, 1.69” HD Display, Multiple Watch Faces, Stress Monitor, Heart & SpO2 Monitoring, 14 Sports Modes, Sleep Monitor, 5 ATM & 7 Days Battery', 2099, 10, 'Alexa- Alexa built-in Voice Assistant that sets reminders, alarms and answers questions from weather forecasts to live cricket scores at your command!\r\nScreen Size- ;1.69\" big square colour LCD display with a round dial features complete capacitive touch experience to let you take control, effortlessly.\r\nWatch Faces- Multiple watch faces with customizable options to match your OOTD, every day!\r\nBrightness- The ambient light display allows automatic adjustment of brightness on the watch, suited to your environment\r\nHR & SpO2- The watch comes with a stress monitor that reads your HR to indicate stress levels.It also monitors your heart rate and SpO2 (blood oxygen levels) to keep a tab on your overall health.', 'boAt Xtend Smartwatch.jpg', 'smartwatch, wearables, accessories'),
(96, 4, 7, 'boAt Wave Call Smart Watch, Smart Talk with Advanced Dedicated Bluetooth Calling Chip, 1.69” HD Display with 550 NITS ', 1799, 10, 'Bluetooth Calling- Wave Call comes with a premium built-in speaker and bluetooth calling via which you can stay connected to your friends, family, and colleagues\r\nDial Pad- Its dial pad is super responsive and convenient. You can also save upto 10 contacts in this smart watch\r\nScreen Size- Wave Call comes with a 1.69” HD Display that features a bold, bright, and highly responsive 2.5D curved touch interface\r\nResolution- With 550 nits of brightness get sharper color resolution that brightens your virtual world exponentially.\r\nDesign- The ultra slim and lightweight design of the watch is ideal to keep you surfing your wave all day!', 'boAt Wave Call Smart Watch.jpg', 'smartwatch, wearables, accessories'),
(97, 4, 7, 'boAt Stone 650 10W Bluetooth Speaker with Upto 7 Hours Playback, IPX5 and Integrated Controls (Black)', 1299, 10, 'boAt Stone 650 10W Bluetooth Speaker with Upto 7 Hours Playback, IPX5 and Integrated Controls (Black)', 'boAt Stone 650.jpg', 'headpones, earphones, accessories, speaker'),
(98, 13, 7, 'boAt Stone 1000 14W Bluetooth Speaker with 8 Hours Playback, Bluetooth v5.0, IPX5 Water Resistance(Blue)', 2999, 10, 'Experience optimum wireless connectivity with latest Bluetooth v5.0\r\nIts full range drivers offer 14W signature sound for blissful auditory time. Driver Size: 7.62 cm x 2 Drivers\r\nStone 1000 comes equipped with powerful 3000mAh battery capacity that supports a play time of up to 8 hours, Charging Time 4 hours\r\nIt is IPX5 rated to ensure resistance against dust and water scares.\r\nStone 1000 comes with integrated controls for you to easily change volume, tracks, play/pause music.\r\n1 year warranty from the date of purchase', 'boAt Stone 1000.jpg', 'headpones, earphones, accessories, speaker'),
(99, 16, 7, 'boAt Micro USB 55 Tangle-Free Cable with 3A Fast Charging & 480mbps Data Transmission (1.5 Meter, Black)', 99, 50, 'It Ensures High Speed Transmission And Charging By Offering 3A Fast Charging And Data Transmissions With Rapid Sync At 480 Mbps\r\nThe Braided Skin Makes It Durable And Invincible Against External Damage So You Can Have An Absolute Hassle-Free & Tangle Free Experience\r\nIts Durable Pvc Housing And The Flexible Design Makes It Last 6 Times Longer Than Other Cables', 'boAt Micro USB.jpg', 'accessories'),
(100, 4, 1, 'Apple Watch SE', 26999, 10, 'smartwatch', 'Apple Watch SE.jpg', 'smartwatch, wearables, accessories'),
(101, 4, 8, 'Noise Pulse 2 Max Advanced Bluetooth Calling Smart Watch with 1.85\' TFT and 550 Nits Brightness', 2099, 10, 'smartwatch', 'Noise Pulse 2 Max.jpg', 'smartwatch, wearables, accessories'),
(102, 4, 8, 'Noise ColorFit Pulse Grand Smart Watch with 1.69\"(4.29cm) HD Display, 60 Sports Modes, 150 Watch Faces', 1499, 10, 'smartwatch', 'Noise ColorFit Pulse.jpg', 'smartwatch, wearables, accessories'),
(103, 3, 10, 'HP Victus AMD Ryzen 5 5600H 16.1 inches(40cm) FHD Gaming Laptop (8GB RAM/512GB SSD/4GB Radeon RX5500M Graphics/Flicker Free Display/Windows 11 Home/MS Office/Mica Silver/2.48 Kg', 51999, 10, 'Processor: 5th Gen AMD Ryzen 5 5600H (3.3GHz base clock speed, up to 4.2 GHz Max Boost Clock, 16MB L3 cache, 6 core, 12 threads)\r\nMemory & Storage: 8 GB DDR4-3200 MHz RAM, Up to 32 GB DDR4-3200 SDRAM (2 x 16 GB) | Storage: 512 GB PCIe NVMe TLC M.2 SSD\r\nDisplay: 40.9 cm (16.1\") diagonal, FHD (1920 x 1080), 60 Hz Refresh Rate, IPS, edge-to-edge, micro-edge, 250 nits, 137 ppi, Color Gamut: 45% NTSC\r\nGraphics & Networking: AMD Radeon RX 5500M (4 GB GDDR6 dedicated) | Realtek Wi-Fi 6 (2x2) and Bluetooth 5.2 combo (Supporting Gigabit data rate), MU-MIMO supported, Miracast Compatible\r\nOperating System & Software: Pre-loaded Windows 11 Home 64 Single Language| Pre-installed Microsoft Office Home & Student 2019 | Alexa Built-in', 'HP Victus.jpg', 'laptop, gaming,'),
(104, 3, 10, 'HP 15s-Ryzen 3 5300U 8GB SDRAM/256GB SSD 15.6inch(39.6cm) FHD, Micro-Edge, Anti-Glare Laptop/AMD Radeon Graphics/Dual Speakers/Windows 11 Home/Alexa/MS Office/Fast Charge/Silver/1.69Kg, 15S-Ey2000AU', 33990, 10, 'Processor: AMD Ryzen 3 5300U (up to 3.8 GHz max boost clock(2i),4 MB L3 cache, 4 cores, 8 threads)| Memory & Storage: 8 GB DDR4-3200 SDRAM (1 x 8 GB), Upto 16 GB DDR4-3200 MHz RAM (2 x 8 GB)| Storage: 256 GB PCIe NVMe M.2 SSD\r\nDisplay & Graphics: (15.6\") diagonal FHD, micro-edge, anti-glare, 250 nits, 141 ppi, 45%NTSC |Graphics: AMD Radeon Graphics\r\nOperating System & Pre-installed Software: Pre-loaded Windows 11 Home 64 Single Language| Microsoft Office 2019 & Office 365|McAfee LiveSafe (30 days free trial as default)\r\nPorts: 1 SuperSpeed USB Type-C 5Gbps signaling rate, 2 SuperSpeed USB Type-A 5Gbps signaling rate,1 Headphone/microphone Combo,1 AC Smart pin, 1 HDMI 1.4b', 'HP 15s-Ryzen.jpg', 'laptop, gaming, computer'),
(105, 3, 9, 'Mi Notebook Ultra 3.2K Resolution Display Intel Core I5-11300H 11Th Gen 15.6 Inches Thin Light Laptop(16Gb/512Gb Ssd/Iris Xe Graphics/Windows 11 Home/Ms Office 21/Backlit Kb/Fingerprint Sensor/1.7Kg)', 59990, 10, 'Processor: 11th Gen Intel Tiger Lake Core i5-11300H processor| Speed: 3.1 GHz(base) - 4.4 GHz(max) | 4 cores | 8 Threads | 8 MB Cache\r\nDisplay: 39.62 centimeters IPS 3.2K resolution (3200x2000) | 16:10 aspect ratio, 100% sRGB, 90Hz refresh rate, 241 PPI, 1500:1 contrast ratio | Anti glare | TUV Low blue light\r\nMemory & Storage: 16GB DDR4 3200 MHz | 512GB PCIe NVMe M.2 SSD\r\nOperating System & Software: Windows 11 Home | Microsoft Office Home and Student 2021\r\nGraphics: Intel Iris Xe graphics', 'Mi Notebook Ultra.jpg', 'laptop, gaming, computer'),
(106, 3, 13, 'ASUS VivoBook 14 (2021), Intel Core i5-1135G7 11th Gen, 14-Inch (35.56 cms) FHD Thin and Light Laptop (8GB RAM/1TB HDD + 256GB SSD/Office 2019/Windows 10/Integrated/Silver/1.6 kg), X415EA-EB572TS', 47990, 10, 'Processor: 11th Gen Intel Core i5-1135G7 Processor, 2.4 GHz Base Speed, Up to 4.2 GHz Max Turbo Boost Speed, 4 cores, 8 Threads, 8MB Cache\r\nMemory & Storage: 8GB (4GB onboard + 4GB SO-DIMM) DDR4 3200MHz Dual Channel RAM, Upgradeable up to 12GB using 1x SO-DIMM Slot with, | Storage: 1TB HDD 2.5-inch SATA 5400RPM + 256GB M.2 NVMe PCIe SSD\r\nGraphics: Integrated Intel Iris X? Graphics\r\nDisplay: 14-Inch (35.56 cms) LED-Backlit, FHD (1920 x 1080) 16:9, 220nits, NanoEdge bezel, Anti-Glare Plane with 45% NTSC, 82% Screen-To-Body Ratio\r\nOperating System: Pre-loaded Windows 10 Home with lifetime validity | Software Included: Pre-installed MS Office Home and Student 2019\r\nDesign & battery: Up to 19.9mm Thin | NanoEdge Bezels | Thin and Light Laptop | Laptop weight: 1.6 kg | 37WHrs, 2-cell Li-ion battery | Up to 6 hours battery life ;Note: Battery life depends on conditions of usage', 'ASUS VivoBook 14.jpg', 'laptop, gaming, computer'),
(107, 15, 13, 'ASUS TUF Gaming F15 (2021), 15.6\" (39.62 cms) FHD 144Hz, Intel Core i5-10300H 10th Gen, GTX 1650 4GB Graphics, Gaming Laptop (8GB RAM/512GB NVMe SSD/Windows 11/Black/2.30 Kg)', 50990, 10, 'Processor: 10th Gen Intel Core i5-10300H Processor, 2.5 GHz (8MB Cache, up to 4.5 GHz, 4 Cores, 8 Threads)\r\nAccess to over 100 high-quality PC games on Windows 11\r\nOne-month subscription to Xbox Game Pass that’s included with the purchase of your device\r\nOperating System: Pre-loaded Windows 11 Home with lifetime validity\r\nMemory & Storage: 8GB DDR4 2933MHz RAM, Support up to 32GB using 2x SO-DIMM Slot | Storage: 512GB M.2 NVMe PCIe 3.0 SSD with empty 1x 2.5-inch SATA Slot for Storage Expansion\r\nGraphics: Dedicated NVIDIA GeForce GTX 1650 GDDR6 4GB VRAM\r\nDisplay: 15.6-inch (16:9) LED-backlit FHD (1920x1080) 144Hz Refresh Rate, Anti-Glare IPS-level Panel with 45% NTSC', 'ASUS TUF Gaming.jpg', 'laptop, gaming, computer'),
(108, 3, 12, 'Acer Extensa 15 Lightweight Laptop 11th Gen Intel Core i5 Processor with 15.6\" (39.6 cms) Full HDDisplay - (8 GB/512 GB SSD/Windows 11 Home/Intel Iris Xe Graphics /1.7Kg/Black)', 40000, 10, 'Fast & easy computing Perfect budget laptop for students and working professionals that helps get jobs done quickly and efficiently thanks to the Intel Core i5-1135G7 processor.\r\nThe latest Extensa Acer Laptop has been redesigned to be thinner and lighter than ever. With less than 20mm thin and with a weight of around 1.7kg, it can accompany you wherever you need to go\r\nThe Extensa 15 will help improve your all-round video conferencing experience. It maintains a strong, consistent wireless signal with the strategically placed Wi-Fi 5 (802.11ac) wireless antenna and MU-MIMO. It also offers battery life upto 8 hours.\r\nEase of storage: 4 GB of onboard DDR4 system memory, 4 GB of system memory with 512 GB SSD helps easily store and share important projects and data', 'Acer Extensa 15.jpg', 'laptop, gaming, computer'),
(109, 15, 12, 'Acer Nitro 5 Gaming Laptop/ 12th Gen Intel Core i5-12500H Processor 12 core/ 15.6\"(39.6cms) FHD 144Hz Display (8GB/512GB SSD/RTX 3050 Graphics/Windows 11 Home/RGB), AN515-58 + Xbox Game Pass Ultimate', 74990, 10, 'Processor: Intel Core i5-12500H processor - 12 cores, max turbo up to 4.50 Ghz | RAM : 8 GB of DDR4 system memory, upgradable to 32 GB using two soDIMM module\r\nDisplay : 15.6\" display with IPS (In-Plane Switching) technology, Full HD 1920 x 1080, Acer ComfyView LED-backlit TFT LCD, 16:9 aspect ratio, supporting 144 Hz refresh rate\r\nGraphics : NVIDIA GeForce RTX 3050 with 4 GB of GDDR6 memory | Fully optimized for Max Graphics Performance\r\nStorage : SSD : 512 GB, PCIe Gen4, 16 Gb/s, NVMe | OS : Windows 11 Home 64-bit\r\nPorts: 1 x USB 3.2 Gen 2 port with power-off charging, 1 x USB 3.2 Gen 2 port, 1 x USB Type-C port (USB 3.2 Gen 2) (Thunderbolt 4), 1 x USB 3.2 Gen 1 port | Features: 4 zone RGB keyboard with dedicated NitroSense key | Chilled performance with Quad exhaust design\r\n', 'Acer Nitro 5.jpg', 'laptop, gaming, computer'),
(110, 3, 1, 'Apple MacBook Pro 2022 Laptop with M2 chip: 33.74 cm (13.3-inch) Retina Display, 8GB RAM, 256GB SSD Storage, Touch Bar, Backlit Keyboard, FaceTime HD Camera; Silver', 129900, 10, 'SUPERCHARGED BY M2 – The 13-inch MacBook Pro laptop is a portable powerhouse. Get more done faster with a next-generation 8-core CPU, 10-core GPU and up to 24GB of unified memory.\r\nUP TO 20 HOURS OF BATTERY LIFE – Go all day and into the night, thanks to the power-efficient performance of the Apple M2 chip.\r\nSUSTAINED PERFORMANCE – Thanks to its active cooling system, the 13-inch MacBook Pro can sustain pro levels of performance, so you can run CPU- and GPU-intensive tasks for hours on end.\r\nBRILLIANT DISPLAY – The 33.74-centimetre (13.3-inch) Retina display features 500 nits of brightness and P3 wide colour for vibrant images and incredible detail.\r\nHD CAMERA AND STUDIO-QUALITY MICS – Look sharp and sound great with a FaceTime HD camera and three-mic array.\r\nVERSATILE CONNECTIVITY – Two Thunderbolt ports let you connect and power high-speed accessories.\r\nEASY TO USE – Your Mac feels familiar from the moment you turn it on and it works seamlessly with all your Apple devices.', 'Apple MacBook Pro.jpg', 'laptop, computer'),
(111, 5, 131, 'SanDisk Ultra Dual Drive Go USB Type C Pendrive for Mobile (Black, 128 GB, 5Y - SDDDC3-128G-I35)', 1099, 10, 'The 2-in-1 Pendrive for Mobile with a reversible USB Type-C and a traditional Type-A connector\r\nSeamlessly move content between your USB Type-C smartphone, tablets and Macs and USB Type-A computers. Material : Plastic\r\nFree up space on your USB Type-C smartphone so you can take more photos\r\nAutomatically back up photos using the SanDisk Memory Zone app\r\nHigh-performance USB 3.1 Gen 1 drive with 150MB/s read speeds lets you quickly move your files to your computer\r\nDual-purpose swivel design protects connectors and features a keyring hole to take your drive on the go', 'SanDisk Ultra Dual Drive Go .jpg', 'storage, pc accessories, mobile accessories'),
(112, 16, 131, 'SanDisk Ultra microSD UHS-I Card 128GB, 120MB/s R', 999, 10, 'Ideal for Android smartphones and tablets, and MIL cameras\r\nUp to 1TB to store even more hours of Full HD video\r\nUp to 120MB/s transfer speeds let you move up to 1000 photos in a minute [32GB-1TB]\r\nLoad apps faster with A1-rated performance\r\nClass 10 for Full HD video recording and playback', 'SanDisk Ultra microSD.jpg', 'storage, pc accessories, mobile accessories');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(72, 'Pratham', 'Shinde', 'prathamshinde2137@gmail.com', 'ff5e5dedd80038a847081daf2dee214a', '9867542035', 'A/104,Sairaj Apt. Bhopar Nandivlinr, Vardha Vinayak hall Desale pada dombivli east', 'Vardha Vina');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
