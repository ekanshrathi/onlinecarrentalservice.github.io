-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 07:15 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'adminportal', 'bccf8730fb2d42cd22297bfa9d2f2e48', '2021-12-04 13:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 2, '2020-07-07 14:03:09', '2021-12-04 15:46:52'),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 2, '2020-07-09 17:49:21', '2021-12-04 15:47:01'),
(3, 128526876, 'test@gmail.com', 4, '2021-11-22', '2021-11-27', 'I want this car for just 5 days', 2, '2021-11-22 06:53:43', '2021-11-22 06:57:50'),
(4, 191984165, 'tyagi9818863698@gmail.com', 5, '2021-11-23', '2021-11-30', 'I want a car for 7 days', 2, '2021-11-22 06:56:14', '2021-12-05 15:14:19'),
(5, 958175724, 'gunjantyaginonu@gmail.com', 2, '2021-11-23', '2021-11-30', 'ok', 2, '2021-11-22 13:37:07', '2021-12-04 15:47:28'),
(6, 214736282, 'tyagi@12gmail.com', 9, '2021-12-05', '2021-12-20', 'I want a car for 15 days. can you tell me the price?', 2, '2021-12-04 16:05:42', '2021-12-05 15:12:42'),
(7, 844299730, 'rawat1999@gmail.com', 2, '2021-12-09', '2021-12-23', 'I want this car for 14 days. Is it available in Delhi?', 1, '2021-12-05 15:18:39', '2021-12-05 15:19:31'),
(8, 582541523, 'rawat1999@gmail.com', 6, '2021-12-15', '2021-12-16', 'Nissan Sunny', 2, '2021-12-13 18:58:16', '2021-12-13 18:58:41'),
(9, 910949532, 'rawat1999@gmail.com', 1, '2021-12-29', '2021-12-30', 'I want this car. Is this Available', 1, '2021-12-17 14:27:17', '2021-12-20 04:36:02'),
(10, 647765964, 'rawat1999@gmail.com', 8, '2021-12-22', '2021-12-23', 'I want thi car ', 1, '2021-12-20 04:37:31', '2021-12-20 04:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2021-12-04 16:24:27'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Volkswagon', '2017-06-19 06:22:13', '2021-12-04 16:24:54'),
(8, 'Hyundai', '2021-12-04 15:49:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Laxmi Nagar, New Delhi- 110092', 'info@gmail.com', '9828863691');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2020-07-07 09:34:51', 1),
(3, 'Vikram Reddy ', 'reddyvikram@gmail.com', '6398541287', 'Is your service available in Hyderabad?', '2021-12-05 15:21:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																																												<p align=\"justify\"><strong style=\"font-size: small;\"><font color=\"#990000\">ACCEPTANCE OF TERMS:</font></strong><br></p><p align=\"justify\"><b style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 13px;\">&nbsp;</b></p><header verstioncreated=\"12/14/2017 11:48:53 AM\" verstionpublished=\"12/14/2017 11:48:54 AM\" verstionmodified=\"12/14/2017 11:48:54 AM\" style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 13px;\"><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 30px; font-size: 20px; text-transform: uppercase; color: rgb(0, 0, 0); font-family: Arimo, sans-serif;\">CAR RENTAL TERMS</h2><h1 style=\"font-family: FlamaSemibold; color: rgb(102, 102, 102); font-size: 32px;\"><p style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><strong>In addition to the vehicle are the following is included in the car rental: All tires, tools, documents, accessories as well as equipment.&nbsp; The renter<br>agrees to all conditions and terms printed on this contract and to the<br>information written on the contract with the same number and date as these car rental terms.</strong><br><br><strong>1.</strong>&nbsp;The renter fully agrees to the terms and conditions of this contract and has received a copy thereof.<br><br><strong>2.</strong>&nbsp;The renter has received the mentioned vehicle and its accessories in proper and safe condition.<br><br><strong>3.</strong>&nbsp;The renter agrees to return the vehicle to the lessor on the agreed date and place, as written in the contract, or earlier if the lessor so insists. Should the vehicle not be returned on the agreed time, a fee equal to 1/3 of the daily rate shall be charged for each hour of delay.<br><br><strong>4.</strong>&nbsp;Liability and driver insurance are according to Icelandic law. Third party liability insurance shall be equivalent to the amount stipulated by the car\'s insurance company at each time. The renters own liability for damages on the car is limited to the worth of the car. The renter can limit his liability by purchasing a collision damage waiver (CDW) for a fixed amount which is determined each time by the lessor.&nbsp; The driver liability in excess of ISK 220,000,- for 2wd and 330,000,- for 4wd and vans.<br><br><strong>5.</strong>&nbsp;The collision damage waiver (CDW) does not cover:<br>a) Damages done on purpose or by total carelessness of the driver.<br>b) Damages caused when the driver is intoxicated, under the influence of drugs, or by any other cause which renders him unfit to safely drive a vehicle.<br>c) Damages to the engine caused by water, such as when crossing un-bridged rivers or driving in water.<br>d) Damages which occur while the car is being raced or test-driven.<br>e) Damages caused through war activity, mutiny, riots, and uproar or by sabotage.<br>f) Burns on seats, carpets or floor mats.<br>g) Damages to wheels, tires, springs, batteries, glass (lights &amp; windows), and radio as well as damages caused by theft of certain parts of the vehicle.<br>h) Damages caused by driving on bumpy roads on parts such as:<br>transmission, drive shafts, or other parts in or on the vehicle\'s under wagon. Damages which occur on the under wagon when the vehicle hits the uneven road, such as ridges left by road planers, or rocks stuck in the road or the roadside. Same applies to damages which occur when loose rocks or other items hit the vehicle while it is being driven.<br>i) Damages caused when the vehicle is driven where driving is forbidden, also by driving off-road, on trails not marked on charts as normal roads, on snow piles, on ice, over un-bridged rivers or streams, on beaches, in dirt or on any other kind of off-roads.<br>j) Damages when sand, gravel, ash, lava or other earth materials are blown on the vehicle.<br>k) Should the vehicle be moved by sea, damages caused to it by the ocean water will not be paid.<br>l) Damages caused by the wind blowing up the door while opening it.<br>m) Other cases are referred to the general conditions of the comprehensive vehicle insurance.</p><p style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\">&nbsp;</p><p style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><strong>6.&nbsp;</strong>SUPER CDW<strong>:</strong>&nbsp;CDW covers damages to the rental vehicle; it waives liability in case of any damages to the vehicle in excess of ISK 220.000 for 2wd and ISK 330.000 for 4wd and vans. But when you take Super CDW you change that to ISK 100.000 for 2wd and 160.000 ISK for 4wd and vans. Super CDW is available for ISK 1.300,- per day. But no insurance covers damages to the underside of the car.<br><br><strong>7.</strong>&nbsp;The car must be operated and driven with great care. The renter shall be liable for all damage to the car and injury sustained by passengers caused by collision or accident, which is not paid by the insurance company of the vehicle.<br><br><strong>8.</strong>&nbsp;In case of a collision or accident, the renter must report it instantly to law enforcement authorities and to the lessor, and must not leave the scene of the accident or collision until such action has been taken and after the police has arrived on the scene.<br><br><strong>9.</strong>&nbsp;Renter shall return the vehicle to the office of the lessor which has been agreed upon at the beginning of the rental period, along with all tires, tools, accessories and equipment in same condition as it was when received, though ordinary wear and tear is accepted. Lessor may repossess the vehicle without notice at any time if it is illegally parked, used in violation of law, against the terms of this agreement or is apparently abandoned.<br><br><strong>10.</strong>&nbsp;Under no circumstances is it permitted to use the vehicle, operate or drive:<br>a) In violation of Icelandic law, or the conditions and terms of this contract.<br>b) For the transportation of passengers or property against payment.<br>c) To propel or tow any vehicle, trailer or other objects.<br>d) By any person other than the renter signing this contract, unless by written consent of lessor.<br>e) Off-roads, that is roads that are not marked as normal driving roads on a road map.<br><br><strong>11.</strong>&nbsp;Any violation of Icelandic law, or of any of the terms or conditions of this contract, by the renter or any other driver which the renter has granted permission to operate or drive the vehicle, renders the renter is fully responsible for all damages done to the vehicle what ever the cause may be.<br><br><strong>12.</strong>&nbsp;The number of kilometers (km) the vehicle is driven while this contract is valid is decided by reading the standard km reading device (speedometer) attached to the vehicle by the manufacturer. Renter shall report immediately if the speedometer is not working or seizes to function during the rental period.<br><br><strong>13.</strong>&nbsp;Lessor shall not be liable for disappearance or damage to any property left, stored or transported by renter or other persons, in or on the vehicle, either before or after it has been returned to lessor.<br><br><strong>14.</strong>&nbsp;Renter agrees to pay lessor on demand:<br>a) Deposit of the probable rental cost.<br>b) All expenses incurred by lessor in returning the vehicle back to lessor\'s station, if it has been left somewhere else, regardless of condition of the vehicle, roads or weather.<br>c) A sum equal to the value of all the tires (regardless of road conditions), the tools and accessories which have been damaged, lost or stolen from the vehicle.<br><br><strong>15.</strong>&nbsp;Renter is not authorized to have the vehicle or its accessories repaired or altered. The renter shall not permit any lien to be placed upon the vehicle without lessors prior consent. Renter shall pay all unauthorized charges in connection with the use, repairs, or safekeeping of the vehicle.<br><br><strong>16.</strong>&nbsp;The rental fee is paid up front. Discount agreed upon from that fee will be discontinued on the 10th day of the following month. From that day highest possible monthly interest will be added to the whole sum. VAT&nbsp; will be added to the discontinued discount.If it is written in the rental contract that discount is to be granted from the rental fee, this discount will be discontinued if renter causes injuries to another party or damages the vehicle and is not 100% in the right.<br><br><strong>17.</strong>&nbsp;Renter agrees to pay all costs which lessor may incur in collecting payment by law. Renters self risk with Gravel Protection is 20.000isk.<br><br><strong>18.</strong>&nbsp;Any legal proceedings arising from this contract shall be conducted before the Reykjavik Municipal Court without prior submission to a board of conciliation.<br><br><strong>19.</strong>&nbsp;All car must be retuned with full tank of gas . Service for refuel is 2.500 kr.<br><br><strong>20.</strong>&nbsp;Renter agrees to pay all costs to Lessor incurred in collecting payment from Renter. A credit card number or imprint is taken at start of all rentals for security reasons. It may be used to pay all extra charges, including extra kilometre\'s, extra days, extra insurance, parking fines, refilling gasoline, damages or any cost due to the car rental as a result of the renters use of the car.<br><br><strong>CANCELLATION POLICY:</strong><br>If you cancel 15 days or more before pick up time:<br><strong>- you pay nothing or you get 100% refund of what you have already paid.</strong></p><p style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\">If you cancel 14 days before pickup time:<br><strong>- you pay 20% of the total or you get 80% refund if you have already paid.</strong><br>If you cancel 48 hrs. before pick up time or a no-show:<br><strong>- you pay 80% of the total or you get 20% refund if you have already paid.</strong></p></h1></header><p align=\"justify\"><font size=\"2\"><strong><br></strong></font></p><p style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 13px;\"><br></p>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '																				<p style=\"margin: 13px auto; padding: 0px; width: 1140px; font-family: Arial, Helvetica, sans-serif; color: rgb(89, 89, 89); font-size: 15px; line-height: 25px; background-color: rgb(245, 245, 245);\">We respect your privacy and are committed to protecting the personal data we hold about you. This policy explains what data we collect about you, how we collect it, the measures we take in our efforts to keep your data secure and the uses and disclosures we make of it. We also explain the options you have in relation to your personal data. When you request services from us, through our website, utilize our mobile \"apps\" or otherwise interact with us, through our website, official corporate pages on third party social networks (such as Facebook) or the \"apps\" on those pages, you consent to our collection, retention and use of your personal data in the manner described in this policy and accept the risks outlined in the Security section.</p><p id=\"unlimited_text\" style=\"margin: 13px auto; padding: 0px; width: 1140px; font-family: Arial, Helvetica, sans-serif; color: rgb(64, 64, 64); font-size: 15px; line-height: 25px; font-weight: bold; background-color: rgb(245, 245, 245);\"><span style=\"margin: 0px; padding: 0px;\">We use cookies to:</span></p><p style=\"margin: 13px auto; padding: 0px; width: 1140px; font-family: Arial, Helvetica, sans-serif; color: rgb(89, 89, 89); font-size: 15px; line-height: 25px; background-color: rgb(245, 245, 245);\"></p><ol type=\"1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 15px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; background-color: rgb(245, 245, 245);\"><li style=\"margin-top: 8px; text-align: justify; display: block; overflow-wrap: break-word; font-family: Arial, Helvetica, sans-serif; color: rgb(137, 135, 135); font-size: 15px; line-height: 25px;\">Track your use of our websites during a single visit, remember the data you provide and the choices you make as you progress from page to page (\"session cookies\"); and Recognize you at your next visit (\"persistent cookies\").</li></ol><p style=\"margin: 13px auto; padding: 0px; width: 1140px; font-family: Arial, Helvetica, sans-serif; color: rgb(89, 89, 89); font-size: 15px; line-height: 25px; background-color: rgb(245, 245, 245);\"></p><p style=\"margin: 13px auto; padding: 0px; width: 1140px; font-family: Arial, Helvetica, sans-serif; color: rgb(89, 89, 89); font-size: 15px; line-height: 25px; background-color: rgb(245, 245, 245);\">&nbsp; &nbsp;Third party cookies may also be used on our websites for the purpose of:</p><p style=\"margin: 13px auto; padding: 0px; width: 1140px; font-family: Arial, Helvetica, sans-serif; color: rgb(89, 89, 89); font-size: 15px; line-height: 25px; background-color: rgb(245, 245, 245);\"></p><ol type=\"1\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 15px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: center; background-color: rgb(245, 245, 245);\"><li style=\"margin-top: 8px; text-align: justify; display: block; overflow-wrap: break-word; font-family: Arial, Helvetica, sans-serif; color: rgb(137, 135, 135); font-size: 15px; line-height: 25px;\">Such third parties providing goods or services to you (for example, but without limitation, an insurance carrier paying or reimbursing you for a vehicle or equipment in connection with insurance replacement rentals);</li><li style=\"margin-top: 8px; text-align: justify; display: block; overflow-wrap: break-word; font-family: Arial, Helvetica, sans-serif; color: rgb(137, 135, 135); font-size: 15px; line-height: 25px;\">Performing services on our behalf;</li><li style=\"margin-top: 8px; text-align: justify; display: block; overflow-wrap: break-word; font-family: Arial, Helvetica, sans-serif; color: rgb(137, 135, 135); font-size: 15px; line-height: 25px;\">Facilitating business transactions with or through such third parties; or</li><li style=\"margin-top: 8px; text-align: justify; display: block; overflow-wrap: break-word; font-family: Arial, Helvetica, sans-serif; color: rgb(137, 135, 135); font-size: 15px; line-height: 25px;\">Providing advertisements to you.</li></ol>\r\n										\r\n										'),
(3, 'About Us ', 'aboutus', '																				<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">We offer a varied fleet of cars, ranging from the compact. All our vehicles have air conditioning, &nbsp;power steering, electric windows. All our vehicles are bought and maintained at official dealerships only. Automatic transmission cars are available in every booking class.&nbsp;</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">As we are not affiliated with any specific automaker, we are able to provide a variety of vehicle makes and models for customers to rent.</span><div><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">We are in the market since 2004 and giving best services to our customers and believe in healthy relationship.</span></div><div><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"><br></span><div><span style=\"color: rgb(62, 62, 62); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 11px;\">ur mission is to be recognised as the global leader in Car Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Cab Rental solutions and to achieve service excellence.</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"><br></span></div>\r\n										</div>\r\n										'),
(11, 'FAQs', 'faqs', '																																																		<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q.1 Have you provided your rental service in all over India?</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Ans: Yes, We are providing our services in all leading cities from north to south and east to west.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q.2 What about the fines you charged if someone became late in returning the car?</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Ans: Yes, we charged some extra money if someone haven\'t return the car on time. Also our authorities can</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; extend the time period if in case customer not able to return the car. Customer has to contact authorities&nbsp;</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; before the ending period.&nbsp;</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">for more Queries, Ask here or write us to: carrentalservice2021@gmail.com</span></div>\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(7, 'rawat1999@gmail.com', '2021-12-30 14:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'I am satisfied with their service great job', '2020-07-07 14:30:12', 0),
(2, 'tyagi@12gmail.com', 'They provide very good service at different locations.', '2021-12-04 15:44:57', 1),
(3, 'rawat1999@gmail.com', 'I am satisfied with their service great job', '2021-12-04 18:36:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Test', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '6465465465', '', 'L-890, Gaur City Ghaziabad', 'Ghaziabad', 'India', '2020-07-07 14:00:49', '2020-07-12 05:44:29'),
(2, 'Harshit Tyagi', 'tyagi9818863698@gmail.com', '731bbab74c1f473592040809bddea77a', '8218002658', NULL, NULL, NULL, NULL, '2021-11-22 06:55:02', '2021-12-13 19:00:49'),
(3, 'Gunjan Tyagi', 'gunjantyaginonu@gmail.com', 'c60f1d4668fa28ff6951e0b00c1ad1e3', '9874561234', '08/07/1998', 'Coimbatore', 'Coimbatore', 'India', '2021-11-22 13:35:27', '2021-11-22 13:37:59'),
(4, 'Dinesh Tyagi', 'tyagi@12gmail.com', '978a1b1c3c92bf3704daca2c372295c7', '8218002658', '08/07/1998', '', 'Coimbatore', 'India', '2021-12-04 14:15:48', '2021-12-04 15:40:10'),
(5, 'Mayank Rawat', 'rawat1999@gmail.com', '49995cf3a290e92e186b3ad84ddd0cb9', '9354562658', NULL, NULL, NULL, NULL, '2021-12-04 18:32:39', '2021-12-14 04:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 500, 'Petrol', 2020, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:04:35', '2021-12-04 13:32:13'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 1000, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 07:12:02', '2020-07-07 07:27:44'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:19:21', '2020-07-07 07:28:02'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 800, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2020-07-07 07:25:28', NULL),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 2000, 'Petrol', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:34:17', NULL),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 400, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:12:49', NULL),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2020-07-07 09:17:46', NULL),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 600, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2020-07-07 09:23:11', NULL),
(9, 'Hyundai i20', 8, 'The Hyundai i20 has 1 Diesel Engine and 2 Petrol Engine on offer. The Diesel engine is 1493 cc while the Petrol engine is 1197 cc and 998 cc . It is available with Manual & Automatic transmission. Depending upon the variant and fuel type the i20 has a mileage of 19.65 to 25.0 kmpl . The i20 is a 5 seater 3 cylinder car and has length of 3995, width of 1775 and a wheelbase of 2580.', 900, 'Diesel', 2019, 5, 'Hbrand.jpg', 'H1brand.jpg', 'H2brand.jpg', 'H3brand.jpg', 'H4brand.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, '2021-12-04 16:02:57', '2021-12-04 16:10:54'),
(10, 'Volkswagen Polo', 7, 'The Volkswagen Polo has 1 Petrol Engine on offer. The Petrol engine is 999 cc . It is available with Automatic & Manual transmission. Depending upon the variant and fuel type the Polo has a mileage of 16.47 to 18.24 kmpl & Ground clearance of Polo is 165mm. The Polo is a 5 seater 3 cylinder car and has length of 3971mm, width of 1682mm and a wheelbase of 2470mm.', 1200, 'Petrol', 2018, 5, 'Vbrand.jpeg', 'V3brand.jpg', 'V1brand.jpg', 'V4brand.jpg', 'V2brand.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2021-12-04 16:22:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
