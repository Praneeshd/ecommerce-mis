-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2024 at 08:04 AM
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
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Monitors', 'laptops'),
(2, 'PC Components', 'desktop-pc'),
(3, 'Peripherals', 'tablets'),
(4, 'Audio', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(31, 2, 'PNY CS1031 500GB M.2 NVMe SSD', '<p>Key Features<br />\r\nMPN: M280CS1031-500-CL<br />\r\nModel: CS1031<br />\r\nFaster boot-up<br />\r\nRead: up to 2,200 MB/s<br />\r\nWrite: up to 1,200 MB/s<br />\r\nBetter System Performance</p>\r\n', 'pny-cs1031-500gb-m-2-nvme-ssd', 7500, 'pny-cs1031-500gb-m-2-nvme-ssd.jpg', '0000-00-00', 0),
(32, 2, 'Thermaltake TOUGHPOWER GF A3 Gold 850W - TT Premium Edition', '<p>Key Specifications:<br />\r\nDimension: 150mm(W) x 86mm(H) x 160mm(D)<br />\r\nWattage: 850W<br />\r\nEfficiency: 80 PLUS GOLD<br />\r\nModular: Full-Modular<br />\r\nInput Voltage: 100-240Vac</p>\r\n', 'thermaltake-toughpower-gf-a3-gold-850w-tt-premium-edition', 24500, 'thermaltake-toughpower-gf-a3-gold-850w-tt-premium-edition.jpg', '0000-00-00', 0),
(33, 2, 'Thermaltake TH240 ARGB Sync AIO Liquid CPU Cooler', '<p>Key Features<br />\r\nModel: TH240 ARGB Sync<br />\r\nMotor Speed: 3300 R.P.M<br />\r\nRated Voltage: 12 V / 5V<br />\r\nTube Length: 400 mm<br />\r\n2 x ARGB Fan</p>\r\n', 'thermaltake-th240-argb-sync-aio-liquid-cpu-cooler', 16000, 'thermaltake-th240-argb-sync-aio-liquid-cpu-cooler.jpg', '0000-00-00', 0),
(34, 2, 'SAMSUNG 990 PRO PCIe 4 Internal SSD', '<p>Read Speed&nbsp;&nbsp; &nbsp;up to 7,450 MB/s<br />\r\nwrite Speed&nbsp;&nbsp; &nbsp;up to 6,900 MB/s</p>\r\n', 'samsung-990-pro-pcie-4-internal-ssd', 21999, 'samsung-990-pro-pcie-4-internal-ssd.jpg', '0000-00-00', 0),
(35, 2, 'PNY XLR8 RGB 8GB DDR4 3600MHz Desktop Gaming RAM', '<p>Key Features<br />\r\nMPN: MD8GD4360016XRGB<br />\r\nModel: XLR8<br />\r\nCapacity: 8Gb<br />\r\nType- DDR4, Speed: 3600MHz<br />\r\nOperating Voltage: 1.35V<br />\r\nLatency: CL18-18-20-20</p>\r\n', 'pny-xlr8-rgb-8gb-ddr4-3600mhz-desktop-gaming-ram', 5500, 'pny-xlr8-rgb-8gb-ddr4-3600mhz-desktop-gaming-ram.jpg', '0000-00-00', 0),
(36, 2, 'PNY GeForce RTX 4090 24GB OC XLR8 Gaming Verto EPIC-X RGB TF GDDR6X Graphics Card', '<p>Key Features<br />\r\nMPN: VCG409024TFXXPB1-O<br />\r\nModel: GeForce RTX 4090 24GB OC XLR8 Gaming Verto EPIC-X RGB TF<br />\r\nCore Clock: Base: 2235 Mhz; Boost: 2565 MHz<br />\r\nMemory Speed Grade: 21Gbps<br />\r\nCUDA Cores: 16384<br />\r\nOutput: 3x DP + HDMI</p>\r\n', 'pny-geforce-rtx-4090-24gb-oc-xlr8-gaming-verto-epic-x-rgb-tf-gddr6x-graphics-card', 310000, 'pny-geforce-rtx-4090-24gb-oc-xlr8-gaming-verto-epic-x-rgb-tf-gddr6x-graphics-card.jpg', '2024-02-24', 1),
(37, 2, 'Asus TUF Gaming GeForce RTX 3060 OC Edition Graphics Card 12GB GDDR6 VRAM (TUF-RTX3060-O12G-GAMING)', '<p>Brand new Asus TUF Gaming GeForce RTX 3060 OC Edition 12GB GDDR6 (TUF-RTX3060-O12G-GAMING) buffed-up design with chart-topping thermal performance.</p>\r\n\r\n<p>NVIDIA Ampere Streaming Multiprocessors: The building blocks for the world&rsquo;s fastest, most efficient GPUs, the all-new Ampere SM brings 2X the FP32 throughput and improved power efficiency.<br />\r\n2nd Generation RT Cores: Experience 2X the throughput of 1st gen RT Cores, plus concurrent RT and shading for a whole new level of ray tracing performance.</p>\r\n', 'asus-tuf-gaming-geforce-rtx-3060-oc-edition-graphics-card-12gb-gddr6-vram-tuf-rtx3060-o12g-gaming', 116000, 'asus-tuf-gaming-geforce-rtx-3060-oc-edition-graphics-card-12gb-gddr6-vram-tuf-rtx3060-o12g-gaming.png', '0000-00-00', 0),
(38, 2, 'MSI MPG X570 Gaming Plus AM4 AMD ATX Motherboard', '<p>Key Features<br />\r\nModel: MSI MPG X570 Gaming Plus<br />\r\nSupports AMD Ryzen 5000 Series/ AMD Ryzen 2nd &amp; 3rd Generation Processors<br />\r\nLightning Fast Game experience<br />\r\nMystic Light : Audio Boost 4<br />\r\n8+4 pin CPU Power Connector</p>\r\n', 'msi-mpg-x570-gaming-plus-am4-amd-atx-motherboard', 33000, 'msi-mpg-x570-gaming-plus-am4-amd-atx-motherboard.jpg', '0000-00-00', 0),
(39, 2, 'Asus Prime X570-PRO CSM PCIe 4.0 AMD Motherboard', '<p>Key Features<br />\r\nModel: Asus Prime X570-PRO CSM<br />\r\nSupports AMD Ryzen 5000 Series/ AMD Ryzen 2nd &amp; 3rd Generation Processors<br />\r\n5-Way Optimization<br />\r\nEnhanced Power Solution<br />\r\nIndustry-leading cooling options</p>\r\n', 'asus-prime-x570-pro-csm-pcie-4-0-amd-motherboard', 35600, 'asus-prime-x570-pro-csm-pcie-4-0-amd-motherboard.jpg', '0000-00-00', 0),
(41, 2, 'AMD Ryzen 9 7900X Processor', '<p>Key Features<br />\r\nModel: Ryzen 9 7900X<br />\r\nClock Speed: 4.7GHz Up to 5.6GHz<br />\r\nCores: 12, Threads: 24<br />\r\nL2 Cache: 12MB, L3 Cache: 64MB<br />\r\nSocket: AM5</p>\r\n', 'amd-ryzen-9-7900x-processor', 67000, 'amd-ryzen-9-7900x-processor.jpg', '0000-00-00', 0),
(42, 2, 'Intel 12th Gen Core i7-12700 Alder Lake Processor', '<p>Key Features<br />\r\nModel: Core i7-12700<br />\r\nClock Speed: 2.10 GHz Up to 4.80 GHz<br />\r\nCache: 25MB, Socket: LGA 1700<br />\r\nCPU Cores: 12, CPU Threads: 20<br />\r\nGPU: Intel UHD Graphics 770</p>\r\n', 'intel-12th-gen-core-i7-12700-alder-lake-processor', 48000, 'intel-12th-gen-core-i7-12700-alder-lake-processor.jpg', '0000-00-00', 0),
(43, 2, 'Thermalright Peerless Assassin 120 ARGB CPU Air Cooler White', '<p>Key Features<br />\r\nModel: Peerless Assassin 120<br />\r\nConnector: 4 PIN PWM<br />\r\nNoise Level: 25.6 dBA<br />\r\nAir Flow: 66.17 CFM (MAX)<br />\r\nBearing Type: S-FDB Bearing</p>\r\n', 'thermalright-peerless-assassin-120-argb-cpu-air-cooler-white', 8000, 'thermalright-peerless-assassin-120-argb-cpu-air-cooler-white.jpg', '0000-00-00', 0),
(44, 2, 'Thermaltake V250 Tempered Glass ARGB Mid Tower Chassis', '<p>Key Features<br />\r\nModel: V250 TG ARGB<br />\r\nSupported Motherboard: ATX, Micro ATX, Mini ITX<br />\r\nThree preinstalled 120mm ARGB front fans<br />\r\n4mm Tempered Glass Panels x 1<br />\r\nCooling Fan (Built-In): 4</p>\r\n', 'thermaltake-v250-tempered-glass-argb-mid-tower-chassis', 11900, 'thermaltake-v250-tempered-glass-argb-mid-tower-chassis.jpg', '0000-00-00', 0),
(45, 1, 'MSI Gaming Monitor Optix G27C2 27\" 144Hz 1ms', '<p>Key Specification<br />\r\nModel: OPTIX G27C2<br />\r\nResolution: Full HD (1920x1080)<br />\r\nDisplay: VA, 144Hz, 1ms (MPRT)<br />\r\nPorts: 1x HDMI, 1x DP, 1x DVI<br />\r\nFeatures: AMD Freesync, Reduce Eye Fatigue</p>\r\n', 'msi-gaming-monitor-optix-g27c2-27-144hz-1ms', 65000, 'msi-gaming-monitor-optix-g27c2-27-144hz-1ms.jpg', '0000-00-00', 0),
(46, 1, 'Samsung Odyssey G9 C49G95TSSW 49\'\' 240Hz G-Sync Dual-QHD Curved Gaming Monitor', '<p>Key Features<br />\r\nModel: Odyssey C49G95TSSW<br />\r\nResolution: Dual-QHD (5120 x 1440)<br />\r\nDisplay: VA, 240Hz, 1ms GTG<br />\r\nPorts: 1x HDMI, 2x DP, 2x USB, Audio Jack<br />\r\nFeatures: Flicker Free, G-Sync, Free Sync</p>\r\n', 'samsung-odyssey-g9-c49g95tssw-49-240hz-g-sync-dual-qhd-curved-gaming-monitor', 360000, 'samsung-odyssey-g9-c49g95tssw-49-240hz-g-sync-dual-qhd-curved-gaming-monitor.jpg', '0000-00-00', 0),
(47, 1, 'Sony 27” INZONE M9 4K HDR 144Hz HDMI 2.1 Gaming Monitor with Full Array Local Dimming and NVIDIA G-SYNC', '<p>Screen Size&nbsp;&nbsp; &nbsp;27 Inches<br />\r\nDisplay Resolution Maximum&nbsp;&nbsp; &nbsp;4K<br />\r\nBrand&nbsp;&nbsp; &nbsp;Sony<br />\r\nSpecial Feature&nbsp;&nbsp; &nbsp;Height Adjustment, Tilt Adjustment, High Dynamic Range<br />\r\nRefresh Rate&nbsp;&nbsp; &nbsp;144 Hz</p>\r\n', 'sony-27-inzone-m9-4k-hdr-144hz-hdmi-2-1-gaming-monitor-full-array-local-dimming-and-nvidia-g-sync', 60000, 'sony-27-inzone-m9-4k-hdr-144hz-hdmi-2-1-gaming-monitor-full-array-local-dimming-and-nvidia-g-sync.jpg', '0000-00-00', 0),
(48, 3, 'Fantech Phantom Ii Vx6 Macro Gaming Mouse-Neon Black', '<p>Gaming Optical Sensor<br />\r\nUp to 60 IPS / 20G Acceleration<br />\r\nOn-the-fly Adjustable DPI 400-7,200 DPI<br />\r\n125Hz Polling Rate<br />\r\n20 Million Clicks Lifetime<br />\r\n7 Independently Programmable Buttons<br />\r\n1.8m Nylon Braided USB Cable<br />\r\nSize: 124.5mm x 65.5mm x 41mm.</p>\r\n', 'fantech-phantom-ii-vx6-macro-gaming-mouse-neon-black', 1850, 'fantech-phantom-ii-vx6-macro-gaming-mouse-neon-black.jpg', '0000-00-00', 0),
(49, 4, 'Fantech MH90 Premium Gaming Headset', '<p>Speaker Driver: 53mm<br />\r\nMemory Foam<br />\r\nDetachable Microphone<br />\r\nLightweight &amp; Durable<br />\r\nMulti-Platform Compatibility<br />\r\nAdjustable Earcup<br />\r\nAdjustable Headband</p>\r\n', 'fantech-mh90-premium-gaming-headset', 6780, 'fantech-mh90-premium-gaming-headset.jpg', '0000-00-00', 0),
(50, 3, 'Redragon Red Dragon K579RGB mechanical keyboard Qing Zhou LOL CF E-sports game player keyboard', '<p>model :K579<br />\r\ntime to Market :2019.11.13<br />\r\napplicable models :universal<br />\r\ntype :mechanical keyboard<br />\r\nkeys :One hundred and four<br />\r\ninterface :USB<br />\r\nconnection with computer :wired<br />\r\nwhether there are multimedia function keys :with<br />\r\nshortcut keys :with<br />\r\nwhether grip :with<br />\r\nkey technology :mechanical Switches<br />\r\nmaterial :aluminum Alloy<br />\r\nline length :1.8<br />\r\nproduct Size :449*182*42MM<br />\r\nproduct Weight :1.65<br />\r\nfastest delivery time :1-3 days<br />\r\nafter-sales service :store Three Guarantees<br />\r\npacking List :no<br />\r\nColor :black</p>\r\n', 'redragon-red-dragon-k579rgb-mechanical-keyboard-qing-zhou-lol-cf-e-sports-game-player-keyboard', 6899, 'redragon-red-dragon-k579rgb-mechanical-keyboard-qing-zhou-lol-cf-e-sports-game-player-keyboard.jpg', '0000-00-00', 0),
(51, 2, 'Cooler Master Hyper 212 LED Turbo ARGB Air CPU Cooling Fan', '<h2>Key Features</h2>\r\n\r\n<ul>\r\n	<li>Model: Cooler Master Hyper 212 LED Turbo ARGB</li>\r\n	<li>Dual-Fan Design</li>\r\n	<li>Xtraflo 120MM PWM Fan</li>\r\n	<li>4 Direct Contact Heatpipes</li>\r\n	<li>Quick-Snap Fan Bracket Design</li>\r\n</ul>\r\n', 'cooler-master-hyper-212-led-turbo-argb-air-cpu-cooling-fan', 81000, 'cooler-master-hyper-212-led-turbo-argb-air-cpu-cooling-fan.jpg', '0000-00-00', 0),
(52, 2, 'Cooler Master MasterLiquid ML360L V2 ARGB Liquid CPU Cooling Fan', '<h2>Key Features</h2>\r\n\r\n<ul>\r\n	<li>Model: Cooler Master MasterLiquid ML360L V2</li>\r\n	<li>Triple Industrial Grade EPDM Rubber</li>\r\n	<li>Tri-Phase Motor with Silent Driver</li>\r\n	<li>PPS-Fiberglass Housing Pump</li>\r\n	<li>Dual Chamber Pump</li>\r\n</ul>\r\n', 'cooler-master-masterliquid-ml360l-v2-argb-liquid-cpu-cooling-fan', 24000, 'cooler-master-masterliquid-ml360l-v2-argb-liquid-cpu-cooling-fan.jpg', '0000-00-00', 0),
(53, 2, 'Darkflash DX240 V2.6 Black', '<ul>\r\n	<li>Brand: darkFlash</li>\r\n	<li>Model: Twister DX240 Liquid CPU Cooler</li>\r\n	<li>Water Block Size: 78.5*70*54mm</li>\r\n	<li>Pump Speed: 2400&plusmn;10% RPM</li>\r\n	<li>Pump Voltage: 12V</li>\r\n	<li>Cooler Size: 274*120*27mm</li>\r\n	<li>Cooler Material: Aluminum</li>\r\n	<li>Dimensions (L X W X H): 140 x 150 x 86 mm</li>\r\n	<li>Fan Size: 120*120*25mm</li>\r\n	<li>Fan Speed: 800~1800 RPM&plusmn;10% RPM</li>\r\n	<li>Air Flow: 75.3 CFM (Max.)</li>\r\n</ul>\r\n', 'darkflash-dx240-v2-6-black', 10915, 'darkflash-dx240-v2-6-black.jpg', '2024-02-23', 1),
(54, 2, 'Transcend 110S 2TB M.2 (NVME) PCIe SSD Drive', '<h2>Key Features</h2>\r\n\r\n<ul>\r\n	<li>MPN: TS2TMTE110S</li>\r\n	<li>Model: 110S</li>\r\n	<li>Sequential Read/Write up to 2,500/1,700 MB/s</li>\r\n	<li>Form Factor: M.2 2280 (M-Key)</li>\r\n	<li>Interface NVMe PCIe Gen3 x4</li>\r\n	<li>Flash Type 3D NAND flash</li>\r\n</ul>\r\n', 'transcend-110s-2tb-m-2-nvme-pcie-ssd-drive', 20000, 'transcend-110s-2tb-m-2-nvme-pcie-ssd-drive.jpg', '2024-02-24', 1),
(55, 2, 'Crucial P3 500GB PCIe 3.0 3D NAND NVMe M.2 SSD, up to 3500MB/s', '<ul>\r\n	<li>Digital storage capacity500 GB</li>\r\n	<li>Storage Interface :Solid State</li>\r\n	<li>Connector TypeSATA</li>\r\n	<li>BrandCrucial</li>\r\n	<li>Special FeatureLaunching with Micron 176-layer NAND5</li>\r\n	<li>Form Factor2.5 Inches</li>\r\n	<li>Compatible DevicesDesktop/Laptop</li>\r\n</ul>\r\n', 'crucial-p3-500gb-pcie-3-0-3d-nand-nvme-m-2-ssd-up-3500mb-s', 5000, 'crucial-p3-500gb-pcie-3-0-3d-nand-nvme-m-2-ssd-up-3500mb-s.jpg', '0000-00-00', 0),
(56, 2, 'Kingston A400 480GB 2.5 inch SATA 3 Internal SSD', '<h2>Key Features</h2>\r\n\r\n<ul>\r\n	<li>MPN: SA400S37/480G</li>\r\n	<li>Model: A400</li>\r\n	<li>SATA Rev 3.0 Internal SSD</li>\r\n	<li>Up to 500 MB/s Read Speed</li>\r\n	<li>Up to 450 MB/s Write Speed</li>\r\n	<li>Faster than a HDD</li>\r\n</ul>\r\n', 'kingston-a400-480gb-2-5-inch-sata-3-internal-ssd', 6800, 'kingston-a400-480gb-2-5-inch-sata-3-internal-ssd.jpg', '0000-00-00', 0),
(57, 2, 'ASUS PRIME B560M-A 10th and 11th Gen Micro-ATX Motherboard', '<h2>Key Features</h2>\r\n\r\n<ul>\r\n	<li>Model: PRIME B560M-A</li>\r\n	<li>Supported CPU: LGA 1200 socket for 11th &amp; 10th Gen Intel Core processors</li>\r\n	<li>Supported RAM: DDR4 up to 5000 MHz</li>\r\n	<li>Graphics Output: 1x DisplayPort, 1x HDMI</li>\r\n	<li>Features: Intel 1Gb Ethernet</li>\r\n</ul>\r\n', 'asus-prime-b560m-10th-and-11th-gen-micro-atx-motherboard', 20500, 'asus-prime-b560m-10th-and-11th-gen-micro-atx-motherboard.jpg', '0000-00-00', 0),
(59, 2, 'Gigabyte B550M K AMD AM4 Micro ATX Motherboard', '<h2>Key Features</h2>\r\n\r\n<ul>\r\n	<li>Model: B550M K</li>\r\n	<li>Supported CPU: Ryzen 5000/ 5000 G/ 4000 G and 3000 Series Processors</li>\r\n	<li>Supported RAM: 4x DDR4, Max 128GB 4733(OC)</li>\r\n	<li>Graphics Output: 1x HDMI, 1x DisplayPort</li>\r\n	<li>Features: GbE LAN with Bandwidth Management</li>\r\n</ul>\r\n', 'gigabyte-b550m-k-amd-am4-micro-atx-motherboard', 19000, 'gigabyte-b550m-k-amd-am4-micro-atx-motherboard.jpg', '0000-00-00', 0),
(60, 2, 'MSI MPG Z690 EDGE WIFI DDR4', '<ul>\r\n	<li>Premium Thermal Design Heavy plated mosfet heatsink with heat-pipe / high quality 7W/mK mosfet thermal pads / extra choke thermal pads / onboard M.2 Shield Frozr</li>\r\n	<li>Lightning Gen 5 The latest PCIe 5.0 solution with up to 128GB/s bandwidth for maximum transfer speed.</li>\r\n	<li>WIFI 6 The latest wireless solution supports MU-MIMO and BSS color technology, delivering speeds up to 2400Mbps.</li>\r\n	<li>2oz Thickened Copper PCB An enhanced PCB design improves heat dissipation and performance reliability.</li>\r\n	<li>Core Boost With premium layout and fully digital power design to support more cores and provide better performance.</li>\r\n	<li>Memory Boost Advanced technology to deliver pure data signals for the best performance, stability and compatibility.</li>\r\n	<li>2.5G Network Solution Featuring premium 2.5G LAN with LAN manager to deliver better network experience.</li>\r\n	<li>Lightning USB 20G Built-in USB 3.2 Gen 2x2 port, offers 20Gbps transmission speed, 4X faster than USB 3.2 Gen 1.</li>\r\n	<li>Audio Boost 5 Isolated audio with a high quality audio processor for the most immersive gaming experience</li>\r\n</ul>\r\n', 'msi-mpg-z690-edge-wifi-ddr4', 53500, 'msi-mpg-z690-edge-wifi-ddr4.jpg', '0000-00-00', 0),
(61, 2, 'MSI GeForce GTX 1650 D6 VENTUS XS OCV1 Graphics Card (4G', '<ul>\r\n	<li>Boost Clock / Memory Speed1665 MHz / 8 Gbps</li>\r\n	<li>4GB GDDR5</li>\r\n	<li>DisplayPort x 1(v1.4a)HDMI x 1(Supports 4K@60Hz as specified in HDMI 2.0b)DL-DVI-D x 1</li>\r\n	<li>OC Scanner: An automated function finds the highest stable overclock settings.</li>\r\n	<li>Kombustor: The latest DirectX versions benchmark supporting.</li>\r\n	<li>Predator: In-game video recording.</li>\r\n	<li>Capture and share videos, screenshots, and livestreams with friends. Keep your drivers up to date and optimize your game settings.</li>\r\n	<li>A powerful photo mode that lets you take professional-grade photographs of your games</li>\r\n</ul>\r\n', 'msi-geforce-gtx-1650-d6-ventus-xs-ocv1-graphics-card-4g', 29800, 'msi-geforce-gtx-1650-d6-ventus-xs-ocv1-graphics-card-4gb-gddr6-128-bits-1620-mhz-core-clocks-dual-fan-support-4k-60hz-hdmi-displayport.png', '0000-00-00', 0),
(63, 2, 'Fantech RGB Aero CG80 Mid Tower 4 RGB Fans Included ATX MATX ITX (Limited Edition)-Black', '<ul>\r\n	<li>?Inner Structure?: AERO CG80 supports ATX, Mini ATX, Micro ATX motherboards, 3 x SSD and 2 x HDD installation locations. Fan compatibility: 3 x 120mm front fan, 1 x 120mm rear fan, 2 x 120mm top fan</li>\r\n	<li>?Tempered Glass Side Panel?: An edge-to-edge Tempered glass Side panel transparent window showcases your PC&#39;s components and RGB lighting</li>\r\n	<li>?4 x Fixed RGB Fan included?: 3 x front and 1x rear 120mm Fixed Colour RGB LED cooling fan pre-installed</li>\r\n	<li>?Top I/O panel &amp; Dust Filter?: 1 x USB3. 0 port, 2 x USB2. 0 port, 1 x HD Audio, 1 x power 1 x reset and 1 x LED Mode. The button on the top-front panel to grant direct access when needed. Dust filters on top and bottom can effectively prevent dust from entering the computer case</li>\r\n	<li>?Dimension &amp; Support?: Case dimension is Length- 415mm, Width- 210mm, Height- 445mm, and Support VGA Length Max-330mm, CPU Height Max-160mm</li>\r\n</ul>\r\n', 'fantech-rgb-aero-cg80-mid-tower-4-rgb-fans-included-atx-matx-itx-limited-edition-black', 7794, 'fantech-rgb-aero-cg80-mid-tower-4-rgb-fans-included-atx-matx-itx-limited-edition-black.jpg', '2024-02-24', 1),
(64, 2, 'Cooler Master MasterBox TD500 Mesh V2', '<ul>\r\n	<li>3 x 120MM ARGB FANS - Pre-installed fan lighting can be assigned via onboard controller or directly connected to an ARGB supported motherboard (ASUS, Gigabyte, MSI &amp; ASRock); The front and top panel features Fine Mesh technology for optimal airflow</li>\r\n	<li>TEMPERED GLASS SIDE PANEL - A removable top panel and tempered-glass side panel provide easy access and showcase system build (tool-free design); The PSU shroud comes with a removable cover to showcase or hide the PSU</li>\r\n	<li>MULTIPLE COOLING OPTIONS &ndash; Comes with 3 x CF120 ARGB frontal fans; The front &amp; top panels each support up to 3 x 120mm fans/2 x 140mm fans, or a 360mm radiator, the rear panel supports 1 x 120mm fan/radiator</li>\r\n	<li>MAXIMIZE THE POSSIBILITIES -The TD500 Mesh V2 interior accommodates E-ATX (up to 12&rdquo; x 10.7&rdquo;), ATX, micro-ATX and mini-ITX motherboards; CPU coolers up to 165mm in height; Graphics cards (GFX/GPU) up to 410mm in length; PSU up to 200mm in length</li>\r\n	<li>RICH CONNECTIVITY I/O PANEL - The I/O panel features 2 x USB 3.2 Gen 1 Type-A ports, 1 x USB 3.2 Gen 2 Type-C port, 1 x audio jack and 1 x Reset/ARGB button for fast data transmission and excellent connectivity</li>\r\n</ul>\r\n', 'cooler-master-masterbox-td500-mesh-v2', 16000, 'cooler-master-masterbox-td500-mesh-v2-e-atx-mid-tower-pc-case-tessellated-mesh-3-x-120mm-pre-installed-argb-fans.png', '0000-00-00', 0),
(65, 2, 'XPG Spectrix D60G 16GB DDR4 3600Mhz RGB Gaming Ram', '<ul>\r\n	<li>Brand: XPG</li>\r\n	<li>Model: Spectrix D60G</li>\r\n	<li>DDR4 CL18-22-22 | 3600 MHz |</li>\r\n	<li>CONFIGURATION: 16GB</li>\r\n	<li>COLOR: Tungsten Grey | Customizable RGB Lighting</li>\r\n	<li>Supports the latest Intel and AMD platforms</li>\r\n	<li>Warranty: 1-Year</li>\r\n</ul>\r\n', 'xpg-spectrix-d60g-16gb-ddr4-3600mhz-rgb-gaming-ram', 10299, 'xpg-spectrix-d60g-16gb-ddr4-3600mhz-rgb-gaming-ram.jpg', '0000-00-00', 0),
(66, 2, ' Lexar Hades RGB DDR4 RAM 16GB', '<ul>\r\n	<li>Vibrant RGB colors let you enjoy an interactive gaming experience</li>\r\n	<li>Level up your gaming experience with DDR4 overclocked performance</li>\r\n	<li>Lexar RGB Sync allows you to synchronize your RGB lighting controls</li>\r\n	<li>Optimized with latest Intel XMP 2.0 and supports AMD Ryzen platform, heat dissipation to keep things cool</li>\r\n	<li>Lifetime limited product support</li>\r\n	<li>CL18-22-22-42</li>\r\n</ul>\r\n', 'lexar-hades-rgb-ddr4-ram-16gb', 10500, 'lexar-hades-rgb-ddr4-ram-16gb.jpg', '0000-00-00', 0),
(67, 3, 'Redragon Deimos K599 2.4G+Wired Mechanical keyboard', '<ul>\r\n	<li>Redragon K599 Wireless/Wired Mechanical Gaming Keyboard up to 60 hours battery life with LED off and 30 hours with LED on, easily switch between wired and wireless mode by plugging in the USB cable</li>\r\n	<li>Small Compact Mechanical Gaming Keyboard Tenkeyless TKL with Custom Dustproof Switches (Blue Switch) Linear quiet click sound, fast action with minimal resistance without a tactile bump feel, for ultimate PC gaming performance</li>\r\n	<li>RGB Backlit Mechanical Gaming Keyboard 18 different preset RGB lighting modes plus 1 User programable mode 9 different colors 6 backlight brightness levels, breathing speed Precision engineered keycaps offering crystal clear uniform backlighting</li>\r\n	<li>Anti Ghosting, ALL 70 keys are conflict free n-Key Rollover for ultimate Gaming performance, Non-Slip Ergonomic, splash-proof Design with adjustable typing angle, WIN Key can be disabled</li>\r\n	<li>PC Gaming Keyboard Compatibility Windows 10, 8, 7, Vista, XP, Limited Mac OS keyboard support. Works well with all major Computers Brands and Gaming PCs, Xbox, PS4 and others</li>\r\n</ul>\r\n', 'redragon-deimos-k599-2-4g-wired-mechanical-keyboard', 64999, 'redragon-deimos-k599-2-4g-wired-mechanical-keyboard.jpg', '0000-00-00', 0),
(68, 3, 'Fantech Maxfit 87 MK856 Gaming Keyboard– Mint Edition', '<ul>\r\n	<li>Now in Mint Edition color!</li>\r\n	<li>TKL Factor + media keys</li>\r\n	<li>RGB Backlighting &amp; Side Panel RGB</li>\r\n	<li>Detachable Type-C Cable</li>\r\n	<li>Blue or Red Switch</li>\r\n	<li>Full Keys Anti-Ghosting</li>\r\n</ul>\r\n', 'fantech-maxfit-87-mk856-gaming-keyboard-mint-edition', 6749, 'fantech-maxfit-87-mk856-gaming-keyboard-mint-edition.jpg', '0000-00-00', 0),
(69, 3, 'Redragon M607 USB Wired MMO Gaming Mouse', '<ul>\r\n	<li>* 7 optimized programmable buttons (Total 8 buttons)</li>\r\n	<li>* Anti-skid Tactile Scroll Wheel</li>\r\n	<li>* up to 7200 DPI (800/1200/1600/2400/7200 DPI User adjustable)</li>\r\n	<li>* 7 RGB color modes, lighting and breathing effects</li>\r\n	<li>* DPI colour indicator</li>\r\n	<li>* 10g acceleration</li>\r\n	<li>* Durable TEFLON feet pads for smooth and accurate movements</li>\r\n	<li>* 6 foot, 3mm high-speed braided fiber cable and with magnet low pass filter to reduce electromagnetic interference</li>\r\n	<li>* Gold-plated corrosion free USB connector for a reliable connection</li>\r\n	<li>* Product dimensions 5.&times;3.2&times;1.65in, Product weight: 9.86oz</li>\r\n	<li>* System Requirements PC with USB port Windows 10, Windows 8, Windows 7, Windows Vista and Windows XP</li>\r\n</ul>\r\n', 'redragon-m607-usb-wired-mmo-gaming-mouse', 2100, 'redragon-m607-usb-wired-mmo-gaming-mouse-8-buttons-7200-dpi-led-rgb-backlit-ergonomic-design-programmable-mice-gamer-lol.png', '0000-00-00', 0),
(70, 3, 'FANTECH HELIOS XD3 Wireless mouse - Mint Edition', '<ul>\r\n	<li>Quick Overview- Light weight 83 grams</li>\r\n	<li>- RGB chroma lighting, can be toggle off</li>\r\n	<li>- 6 programmable mouse buttons</li>\r\n	<li>- Up to 50 mil click lifespan</li>\r\n	<li>- Top tier gaming mouse sensor PixArt 3335 with lower power consumption</li>\r\n	<li>- Designed for palm / claw grip style gamer</li>\r\n	<li>- Adjustable 16000DPI sensitivityTechnical Specifications-PixArt 3335 Gaming Optical Sensor- 1000Hz polling rate- On-the-fly adjustable DPI (400-16000)- Up to 400IPS/20g acceletation- Huano 50mil clicks- Battery capacity: 730mAh- Battery life: up to 70 hours- Size: 120 x 58 x 38mm- Includes 1.8m Type C paracord, Replacement PTFE mouse feet</li>\r\n</ul>\r\n', 'fantech-helios-xd3-wireless-mouse-mint-edition', 7489, 'fantech-helios-xd3-wireless-mouse-mint-edition.jpg', '0000-00-00', 0),
(71, 1, 'Kunyo 34 Inch Wide Screen WQHD Esports Gaming Monitor', '<ul>\r\n	<li>Screen Size: 34 Inch</li>\r\n	<li>Screen Resolution: 3440*1440 WQHD</li>\r\n	<li>Refresh Rate: 170Hz</li>\r\n	<li>Interface: 2HDMI2.0+2DP1.4+Audio Out</li>\r\n	<li>Dynamic Contrast: 4000:1</li>\r\n	<li>Color: Black</li>\r\n	<li>SRGB: 99%</li>\r\n	<li>Panel Type: IPS Panel</li>\r\n	<li>Response Time: 1 ms</li>\r\n	<li>Number of Colors: 16.7 million</li>\r\n	<li>Wall Mount: Supports Wall Mount Feature</li>\r\n	<li>Audio Input Type: Stereo</li>\r\n	<li>HDR Function: Enabled</li>\r\n	<li>Screen Type: IPS Hard Screen</li>\r\n	<li>Flexibility: Rotating Lifting Bracket</li>\r\n	<li>PIP/PBP: Available</li>\r\n	<li>Warranty Period: 1 Year Brand Warranty</li>\r\n	<li>Built in Speaker: No</li>\r\n</ul>\r\n', 'kunyo-34-inch-wide-screen-wqhd-esports-gaming-monitor', 65000, 'kunyo-34-inch-wide-screen-wqhd-esports-gaming-monitor.jpg', '0000-00-00', 0),
(72, 2, 'Intel 14th Gen Core i7-14700K Desktop Processor', '<ul>\r\n	<li>Game Without Compromise. Play harder and work smarter with Intel Core 14th Gen processors</li>\r\n	<li>20 cores (8 P-cores + 12 E-cores) and 28 threads. Integrated Intel UHD Graphics 770 included</li>\r\n	<li>Up to 5.6 GHz with Turbo Boost Max Technology 3.0 gives you smooth game play, high frame rates, and rapid responsiveness</li>\r\n	<li>Compatible with Intel 600-series (with potential BIOS update) or 700-series chipset-based motherboards</li>\r\n	<li>DDR4 and DDR5 platform support cuts your load times and gives you the space to run the most demanding game</li>\r\n</ul>\r\n', 'intel-14th-gen-core-i7-14700k-desktop-processor', 74500, 'intel-14th-gen-core-i7-14700k-desktop-processor.jpg', '0000-00-00', 0),
(73, 2, 'AMD Ryzen 7 5800X Desktop Processor', '<ul>\r\n	<li>AMD&#39;s fastest 8 core processor for mainstream desktop, with 16 procesing threads. OS Support-Windows 10 64-Bit Edition</li>\r\n	<li>Can deliver elite 100-plus FPS performance in the world&#39;s most popular games</li>\r\n	<li>Cooler not included, high-performance cooler recommended</li>\r\n	<li>4.7 GHz Max Boost, unlocked for overclocking, 36 MB of cache, DDR-3200 support</li>\r\n	<li>For the advanced Socket AM4 platform, can support PCIe 4.0 on X570 and B550 motherboards</li>\r\n	<li>System Memory Specification: Up to 3200MHz</li>\r\n</ul>\r\n', 'amd-ryzen-7-5800x-desktop-processor', 35800, 'amd-ryzen-7-5800x-desktop-processor.jpg', '0000-00-00', 0),
(74, 2, 'Gigabyte Radeon RX 6650 XT Gaming OC 8G Graphics Card', '<ul>\r\n	<li>Powered by AMD RDNA 2 Radeon RX 6650XT</li>\r\n	<li>Integrated with 8GB GDDR6 128-bit memory interface</li>\r\n	<li>WINDFORCE 3X Cooling System with alternate spinning fans</li>\r\n	<li>Screen Cooling</li>\r\n	<li>Graphene nano lubricant</li>\r\n	<li>RGB Fusion 2.0</li>\r\n	<li>Protection metal backplate</li>\r\n	<li>2x HDMI, 2x DisplayPort</li>\r\n</ul>\r\n', 'gigabyte-radeon-rx-6650-xt-gaming-oc-8g-graphics-card', 59000, '1-gigabyte-radeon-rx-6650-xt-gaming-oc-8g-graphics-card-windforce-3x-cooling-system-8gb-128-bit-gddr6-gv-r665xtgaming-oc-8gd-video-card.jpg', '0000-00-00', 0),
(75, 4, 'Plextone G800 II Gaming Headset With Mic, Extra Bass Lightweight Gear w/ Rotating Mic Headset', '<ul>\r\n	<li>100% Authentic Quality Guarantee.</li>\r\n	<li>One of the lightest Over-Ear Headsets for Gamers with its 269g weight! Spacious over-ear design, lightweight breathable nylon fabric earmuffs.</li>\r\n	<li>Designed to make gamer boil, equipped with 50mm rubidium, iron, and boron speakers that can receive highly sensitive sound, captures missiles, footsteps, and all special sound effects.</li>\r\n	<li>Flexible microphone with high sensitivity performance, Hidden Flywheel tuner, and One-button microphone mute. Ultra long 190mm cord with 90cm Audio Patch cord extension for the better gaming experience.</li>\r\n	<li>3.5 mm mobile phone plug, Compatible with Mobile Devices/ PC/ PS4/ Switch.</li>\r\n</ul>\r\n', 'plextone-g800-ii-gaming-headset-mic-extra-bass-lightweight-gear-w-rotating-mic-headset', 2799, 'plextone-g800-ii-gaming-headset-mic-extra-bass-lightweight-gear-w-rotating-mic-headset.jpg', '0000-00-00', 0),
(76, 4, 'Logitech G431 7.1 Surround Sound Gaming Headset', '<h3>Key Features</h3>\r\n\r\n<ul>\r\n	<li>Model: Logitech G431</li>\r\n	<li>Driver: 50 mm</li>\r\n	<li>Frequency response: 20Hz-20 KHz</li>\r\n	<li>Impedance: 39 Ohms (passive), 5k Ohms (active)</li>\r\n	<li>Sensitivity: 107 +/-3dB</li>\r\n	<li>Frequency Response: 100 hz-20 KHz</li>\r\n	<li>Warranty: 1 Year Warranty</li>\r\n</ul>\r\n', 'logitech-g431-7-1-surround-sound-gaming-headset', 11000, 'logitech-g431-7-1-surround-sound-gaming-headset.jpg', '0000-00-00', 0),
(77, 4, 'Steel Series Arctis Prime Gaming Headphone', '<ul>\r\n	<li>Advanced high fidelity audio drivers with the same premium hardware and tuning from the Arctis Pro</li>\r\n	<li>Built for extreme durability and lightweight performance with aluminum alloy and steel</li>\r\n	<li>Noise isolating leather-like ear cushions for both long-lasting comfort and noise isolation</li>\r\n	<li>Discord-certified ClearCast microphone</li>\r\n	<li>Detachable 3.5mm cable compatible with all gaming platforms including PC, Xbox, PlayStation, and Switch</li>\r\n</ul>\r\n', 'steel-series-arctis-prime-gaming-headphone', 23999, 'steel-series-arctis-prime-gaming-headphone.jpg', '0000-00-00', 0),
(78, 4, 'Skullcandy Black Slyr Pro Multiplatform Wired Gaming Headset S6SPY-P003', '<ul>\r\n	<li>Enhanced Sound Perception</li>\r\n	<li>Clear Voice Smart Mic</li>\r\n	<li>Comfortable, Lightweight Design</li>\r\n	<li>Advanced Features via Skullcandy Software</li>\r\n	<li>Mute &amp; Volume Control</li>\r\n</ul>\r\n', 'skullcandy-black-slyr-pro-multiplatform-wired-gaming-headset-s6spy-p003', 14990, 'skullcandy-black-slyr-pro-multiplatform-wired-gaming-headset-s6spy-p003.jpg', '0000-00-00', 0),
(79, 4, 'JBL Quantum Duo Gaming Speakers - Oliz Store', '<ul>\r\n	<li>In competitive gaming, sound is survival, and JBL knows great sound; from the thrill of tracking enemies in FPS games, to engaging in epic MOBA battles, JBL Quantum Duo speakers amplify every victory</li>\r\n	<li>Features JBL Quantum Sound Signature which is engineered for accuracy and delivers immersive audio for a competitive edge, so users never have to miss a step, shot or jump during gameplay</li>\r\n	<li>Quantum Duo delivers ground-shaking bass thanks to the exposed drivers and rear-facing bassports, feel the action and never miss a beat with clear crisp JBL audio</li>\r\n	<li>Experience gaming like never before with different colour light presets and effect patterns, built into the Quantum Duo, set the mood and adjust the light type with the control button</li>\r\n	<li>Items delivered: 1 x JBL Quantum Duo gaming speakers, 2 USB powered PC gaming speakers, powerful sound, bold bass and cool lighting effects, take your gaming to the next level, plug and play speakers</li>\r\n</ul>\r\n', 'jbl-quantum-duo-gaming-speakers-oliz-store', 26000, 'jbl-quantum-duo-gaming-speakers-oliz-store.jpg', '0000-00-00', 0),
(80, 4, 'REDRAGON GS560 Adiemus speakers With 3.5mm aux', '<ul>\r\n	<li>Powerful Audio: Experience impressive sound quality with the REDRAGON GS560 Adiemus Speaker, designed to deliver rich and powerful audio for music, movies, and gaming. The first Redragon RGB sound bar with the upgraded driver that delivers clear and crystal sound quality combined with rich bass.</li>\r\n	<li>RGB Lighting: Enhance your ambiance with customizable RGB lighting, adding a touch of style to your audio setup that matches your gaming rig. 4 different backlit modes includes both dynamic and static glowing LED illumination.</li>\r\n	<li>Multiple Connectivity Options: Connect effortlessly with a variety of devices using Bluetooth, USB, AUX, and SD card inputs, ensuring versatile compatibility.</li>\r\n	<li>Portable Design: With its compact and portable design, take your Adiemus Speaker with you wherever you go for on-the-go entertainment.</li>\r\n</ul>\r\n', 'redragon-gs560-adiemus-speakers-3-5mm-aux', 5499, 'redragon-gs560-adiemus-speakers-3-5mm-aux.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'pranish@admin.com', '$2y$10$GzBqQkKzEsDjFkCqxzwiHOiCJO7I7Ye9oX24aPPk8l6Mj/uEdmlcu', 1, 'Pranish', 'Dangol', '', '', 'profile.jpg', 1, '', '', '2018-05-01'),
(13, 'pranish@gmail.com', '$2y$10$I8Qtfhz5OIK8TK7hwkHgF.3QNHnZmFpKEj2xuzG95CdMw1Z.ZmaVu', 0, 'Pranish', 'Dangol', '', '', '', 1, '', '', '2024-02-24'),
(14, 'bean@yahoo.com', '$2y$10$jQULvn8ZkBYw/tjgNX1dkurnaYhwfGMXinMIE8pCbhKJe59xloiAK', 0, 'mr', 'bean', '', '', '', 1, '', '', '2024-02-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
