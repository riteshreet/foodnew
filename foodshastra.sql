-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2020 at 08:33 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

CREATE TABLE `app_user` (
  `id` int(11) NOT NULL,
  `create_at` varchar(30) CHARACTER SET latin1 NOT NULL,
  `mob_number` varchar(15) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_user`
--

INSERT INTO `app_user` (`id`, `create_at`, `mob_number`) VALUES
(3, '20-02-13 05-41-08', '7004994286');

-- --------------------------------------------------------

--
-- Table structure for table `fooddelivery_food_desc`
--

CREATE TABLE `fooddelivery_food_desc` (
  `id` int(11) NOT NULL,
  `ingredients_id` varchar(255) NOT NULL,
  `item_amt` varchar(50) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `ItemTotalPrice` varchar(50) NOT NULL,
  `set_order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fooddelivery_food_desc`
--

INSERT INTO `fooddelivery_food_desc` (`id`, `ingredients_id`, `item_amt`, `item_id`, `item_qty`, `ItemTotalPrice`, `set_order_id`) VALUES
(1, '2', '209.0', 7, 1, '209.0', 1),
(2, '', '30.0', 11, 1, '30.0', 2),
(3, '', '199.0', 7, 1, '199.0', 3),
(4, '', '50.0', 10, 1, '50.0', 4),
(5, '', '199.0', 7, 1, '199.0', 4),
(6, '', '50.0', 4, 1, '50.0', 5),
(7, '', '50.0', 4, 1, '50.0', 6),
(8, '', '150.0', 3, 1, '150.0', 7),
(9, '2', '209.0', 7, 1, '209.0', 8),
(10, '1', '109.0', 6, 1, '109.0', 9),
(11, '', '199.0', 7, 1, '199.0', 10),
(12, '', '199.0', 9, 1, '199.0', 11),
(13, '', '199.0', 9, 1, '199.0', 12),
(14, '', '200.0', 1, 1, '200.0', 13),
(15, '1', '109.0', 6, 1, '109.0', 14),
(16, '', '50.0', 4, 1, '50.0', 15),
(17, '', '30.0', 16, 1, '30.0', 16),
(18, '', '30.0', 11, 1, '30.0', 17),
(19, '', '200.0', 17, 1, '200.0', 17),
(20, '', '199.0', 9, 1, '199.0', 17),
(21, '', '199.0', 9, 1, '199.0', 18),
(22, '', '199.0', 7, 1, '199.0', 19),
(23, '', '199.0', 7, 1, '199.0', 20),
(24, '', '199.0', 7, 1, '199.0', 21),
(25, '', '199.0', 9, 1, '199.0', 22),
(26, '', '99.0', 5, 1, '99.0', 23),
(27, '', '199.0', 9, 1, '199.0', 24),
(28, '', '199.0', 7, 1, '199.0', 25),
(29, '', '99.0', 12, 1, '99.0', 26);

-- --------------------------------------------------------

--
-- Table structure for table `food_category`
--

CREATE TABLE `food_category` (
  `id` int(11) NOT NULL,
  `cat_icon` varchar(70) CHARACTER SET latin1 NOT NULL,
  `cat_name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_category`
--

INSERT INTO `food_category` (`id`, `cat_icon`, `cat_name`) VALUES
(1, 'category_1580464258.jpg', 'Pizzas'),
(2, 'category_1580464274.jpg', 'Burger'),
(3, 'category_1580464335.jpeg', 'Tea'),
(4, 'category_1580464361.jpg', 'Cake'),
(5, 'category_1580464413.jpg', 'Biryani'),
(6, 'category_1580464494.jpg', 'Sea-Food'),
(7, 'category_1580465546.jpg', 'Soft-Drinks'),
(8, 'category_1580545172.jpg', 'Wine');

-- --------------------------------------------------------

--
-- Table structure for table `food_city`
--

CREATE TABLE `food_city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(70) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_city`
--

INSERT INTO `food_city` (`id`, `city_name`) VALUES
(9, 'Mumbai'),
(10, 'Bengaluru'),
(11, 'Chennai'),
(12, 'Kolkata'),
(13, 'Hyderabad'),
(14, 'Jaipur'),
(15, 'Ahmedabad'),
(16, 'Pune'),
(17, 'Lucknow'),
(18, 'Surat'),
(19, 'New Delhi'),
(20, 'Kochi'),
(21, 'Bhopal'),
(22, 'Varanasi'),
(23, 'Agra'),
(24, 'Kanpur'),
(25, 'Indore'),
(26, 'Gwalior'),
(27, 'Shimla'),
(28, 'Ghaziabad'),
(29, 'Udaipur'),
(30, 'Mysuru'),
(31, 'Raipur'),
(32, 'Amritsar'),
(33, 'Chandigarh');

-- --------------------------------------------------------

--
-- Table structure for table `food_delivery_boy`
--

CREATE TABLE `food_delivery_boy` (
  `id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `attendance` varchar(10) CHARACTER SET latin1 NOT NULL,
  `create_at` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mobile_no` varchar(15) CHARACTER SET latin1 NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(15) CHARACTER SET latin1 NOT NULL,
  `vehicle_no` varchar(30) CHARACTER SET latin1 NOT NULL,
  `vehicle_type` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_delivery_boy`
--

INSERT INTO `food_delivery_boy` (`id`, `action`, `attendance`, `create_at`, `email`, `mobile_no`, `name`, `password`, `vehicle_no`, `vehicle_type`) VALUES
(3, 0, 'yes', '20-02-13 02:04:13', 'sumit@gmail.com', '8271760256', 'sumit', 'd123456', 'KA02C8657', 'Moter-Cycle');

-- --------------------------------------------------------

--
-- Table structure for table `food_ingredients`
--

CREATE TABLE `food_ingredients` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` varchar(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_ingredients`
--

INSERT INTO `food_ingredients` (`id`, `category`, `item_name`, `menu_id`, `price`, `type`) VALUES
(1, 2, 'Sauce', 6, '10', 1),
(2, 1, 'Ketchup', 7, '10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `food_menu`
--

CREATE TABLE `food_menu` (
  `id` int(11) NOT NULL,
  `hotel_name` varchar(2000) NOT NULL,
  `category` int(11) NOT NULL,
  `description` text NOT NULL,
  `menu_image` varchar(70) NOT NULL,
  `menu_name` varchar(70) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_menu`
--

INSERT INTO `food_menu` (`id`, `hotel_name`, `category`, `description`, `menu_image`, `menu_name`, `price`) VALUES
(1, '', 6, 'rish cuisine is the style of cooking that originated from Ireland, an island in the North Atlantic; ... Food in Ireland today uses traditional ingredients cooked and presented in a modern way', 'Menuitem_1580464686.jpg', 'Irish', '200'),
(2, '', 5, 'Biryani is the primary dish in a meal, while the pulao is usually a secondary accompaniment to a larger meal. In biryani, meat and rice are cooked separately before being layered and cooked together. Pulao is a single-pot dish: meat and rice are simmered in a liquid until the liquid is absorbed.', 'Menuitem_1580464846.jpg', 'Hyderabadi Biryani', '199'),
(3, '', 5, 'Biryani is a mixed rice dish with its origins ... In all biryanis, the main ingredient that accompanies the spices is the chicken', 'Menuitem_1580464990.jpg', 'Chicken Biryani', '150'),
(4, '', 4, 'A cupcake is a small cake designed to serve one person, which may be baked in a small thin paper or aluminum cup. As with larger cakes, icing and other cake ', 'Menuitem_1580465121.jpg', 'Cup-Cake', '50'),
(5, '', 2, 'A hamburger (also burger for short) is a food consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun.', 'Menuitem_1580465275.jpg', 'German Burger', '99'),
(6, '', 2, 'Pure Veg Burger', 'Menuitem_1580465309.jpg', 'Veg-Burger', '99'),
(7, '', 1, 'Pizza is a savory dish of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often', 'Menuitem_1580465376.jpg', 'Pan-Pizza', '199'),
(8, '', 5, 'Pure-Veg Biryani', 'Menuitem_1580465417.jpg', 'Veg_Biryani', '99'),
(9, '', 1, 'Chicago-style pizza is pizza prepared according to several different styles developed in ... In addition to ordinary wheat flour, the pizza dough may contain corn meal, semolina, or food coloring, giving the crust a distinctly yellowish tone.', 'Menuitem_1580465512.jpg', 'Corn-Pizza', '199'),
(10, '', 7, 'Fanta is a brand of fruit-flavored carbonated drinks marketed globally created by The Coca-Cola Company. There are more than 100 flavors worldwide', 'Menuitem_1580465592.jpg', 'Fanta', '50'),
(11, '', 7, 'Red Bull is an energy drink. Red Bull is based on the Thai energy drink Krating Daeng, which translates as \"Red Bull\". Red Bull is the most popular energy drink ', 'Menuitem_1580465667.jpg', 'Red-Bull', '30'),
(12, '', 5, 'Hyderabadi Dum Chicken Biryani ... Main ingredients, Rice, Indian spices, base (Vegetables, Meat or Egg)', 'Menuitem_1580465813.jpg', 'Egg-Biryani', '99'),
(13, '', 7, 'Lemon juice is used to make lemonade, soft drinks, and cocktails', 'Menuitem_1580465902.jpg', 'Lemon Juice', '20'),
(14, '', 3, 'Best For your Health', 'Menuitem_1580465965.jpg', 'Green Tea', '20'),
(15, 'Garib', 7, 'A milkshake is a sweet, cold beverage that is usually made from milk, ice cream or ice milk, and ... A Johnny Rockets strawberry milkshake topped with whipped cream and strawberry syrup.', 'Menuitem_1580466088.jpg', 'stoberry', '99'),
(16, 'k', 3, 'Start your morning with cold-coffee', 'Menuitem_1580537899.jpg', 'Cold-coffee', '30'),
(17, 'Govt Thekka', 8, 'sdgdf', 'Menuitem_1580545225.jpg', 'Old Mong', '200');

-- --------------------------------------------------------

--
-- Table structure for table `food_notification`
--

CREATE TABLE `food_notification` (
  `id` int(11) NOT NULL,
  `android_key` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ios_key` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_notification`
--

INSERT INTO `food_notification` (`id`, `android_key`, `ios_key`) VALUES
(1, 'AAAARR8Ez-8:APA91bEdibuIZsrgSEgjTm9efVdMlYNim3sUu20aOiCaJq3zN5tYsUdWOv41Kw9wyoZGnfamseuD8odbD8qNTYGg48LxW7diKLGkBAgyugpmDLHj56s9KdSWbZ7GsWDauCZSCm3TIzRT', '122334');

-- --------------------------------------------------------

--
-- Table structure for table `food_order_response`
--

CREATE TABLE `food_order_response` (
  `id` int(11) NOT NULL,
  `desc` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_order_response`
--

INSERT INTO `food_order_response` (`id`, `desc`, `order_id`) VALUES
(1, '{\"Order\":[{\"ItemId\":\"7\",\"ItemName\":\"Pan-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"209.0\",\"ItemTotalPrice\":\"209.0\",\"Ingredients\":[{\"id\":\"2\",\"category\":\"1\",\"item_name\":\"Ketchup\",\"type\":\"1\",\"price\":\"10.0\",\"menu_id\":\"7\"}]}]}', 1),
(2, '{\"Order\":[{\"ItemId\":\"11\",\"ItemName\":\"Red-Bull\",\"ItemQty\":\"1\",\"ItemAmt\":\"30.0\",\"ItemTotalPrice\":\"30.0\",\"Ingredients\":[]}]}', 2),
(3, '{\"Order\":[{\"ItemId\":\"7\",\"ItemName\":\"Pan-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 3),
(4, '{\"Order\":[{\"ItemId\":\"10\",\"ItemName\":\"Fanta\",\"ItemQty\":\"1\",\"ItemAmt\":\"50.0\",\"ItemTotalPrice\":\"50.0\",\"Ingredients\":[]},{\"ItemId\":\"7\",\"ItemName\":\"Pan-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 4),
(5, '{\"Order\":[{\"ItemId\":\"4\",\"ItemName\":\"Cup-Cake\",\"ItemQty\":\"1\",\"ItemAmt\":\"50.0\",\"ItemTotalPrice\":\"50.0\",\"Ingredients\":[]}]}', 5),
(6, '{\"Order\":[{\"ItemId\":\"4\",\"ItemName\":\"Cup-Cake\",\"ItemQty\":\"1\",\"ItemAmt\":\"50.0\",\"ItemTotalPrice\":\"50.0\",\"Ingredients\":[]}]}', 6),
(7, '{\"Order\":[{\"ItemId\":\"3\",\"ItemName\":\"Chicken Biryani\",\"ItemQty\":\"1\",\"ItemAmt\":\"150.0\",\"ItemTotalPrice\":\"150.0\",\"Ingredients\":[]}]}', 7),
(8, '{\"Order\":[{\"ItemId\":\"7\",\"ItemName\":\"Pan-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"209.0\",\"ItemTotalPrice\":\"209.0\",\"Ingredients\":[{\"id\":\"2\",\"category\":\"1\",\"item_name\":\"Ketchup\",\"type\":\"1\",\"price\":\"10.0\",\"menu_id\":\"7\"}]}]}', 8),
(9, '{\"Order\":[{\"ItemId\":\"6\",\"ItemName\":\"Veg-Burger\",\"ItemQty\":\"1\",\"ItemAmt\":\"109.0\",\"ItemTotalPrice\":\"109.0\",\"Ingredients\":[{\"id\":\"1\",\"category\":\"2\",\"item_name\":\"Sauce\",\"type\":\"1\",\"price\":\"10.0\",\"menu_id\":\"6\"}]}]}', 9),
(10, '{\"Order\":[{\"ItemId\":\"7\",\"ItemName\":\"Pan-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 10),
(11, '{\"Order\":[{\"ItemId\":\"9\",\"ItemName\":\"Corn-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 11),
(12, '{\"Order\":[{\"ItemId\":\"9\",\"ItemName\":\"Corn-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 12),
(13, '{\"Order\":[{\"ItemId\":\"1\",\"ItemName\":\"Irish\",\"ItemQty\":\"1\",\"ItemAmt\":\"200.0\",\"ItemTotalPrice\":\"200.0\",\"Ingredients\":[]}]}', 13),
(14, '{\"Order\":[{\"ItemId\":\"6\",\"ItemName\":\"Veg-Burger\",\"ItemQty\":\"1\",\"ItemAmt\":\"109.0\",\"ItemTotalPrice\":\"109.0\",\"Ingredients\":[{\"id\":\"1\",\"category\":\"2\",\"item_name\":\"Sauce\",\"type\":\"1\",\"price\":\"10.0\",\"menu_id\":\"6\"}]}]}', 14),
(15, '{\"Order\":[{\"ItemId\":\"4\",\"ItemName\":\"Cup-Cake\",\"ItemQty\":\"1\",\"ItemAmt\":\"50.0\",\"ItemTotalPrice\":\"50.0\",\"Ingredients\":[]}]}', 15),
(16, '{\"Order\":[{\"ItemId\":\"16\",\"ItemName\":\"Cold-coffee\",\"ItemQty\":\"1\",\"ItemAmt\":\"30.0\",\"ItemTotalPrice\":\"30.0\",\"Ingredients\":[]}]}', 16),
(17, '{\"Order\":[{\"ItemId\":\"11\",\"ItemName\":\"Red-Bull\",\"ItemQty\":\"1\",\"ItemAmt\":\"30.0\",\"ItemTotalPrice\":\"30.0\",\"Ingredients\":[]},{\"ItemId\":\"17\",\"ItemName\":\"Old Mong\",\"ItemQty\":\"1\",\"ItemAmt\":\"200.0\",\"ItemTotalPrice\":\"200.0\",\"Ingredients\":[]},{\"ItemId\":\"9\",\"ItemName\":\"Corn-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 17),
(18, '{\"Order\":[{\"ItemId\":\"9\",\"ItemName\":\"Corn-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 18),
(19, '{\"Order\":[{\"ItemId\":\"7\",\"ItemName\":\"Pan-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 19),
(20, '{\"Order\":[{\"ItemId\":\"7\",\"ItemName\":\"Pan-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 20),
(21, '{\"Order\":[{\"ItemId\":\"7\",\"ItemName\":\"Pan-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 21),
(22, '{\"Order\":[{\"ItemId\":\"9\",\"ItemName\":\"Corn-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 22),
(23, '{\"Order\":[{\"ItemId\":\"5\",\"ItemName\":\"German Burger\",\"ItemQty\":\"1\",\"ItemAmt\":\"99.0\",\"ItemTotalPrice\":\"99.0\",\"Ingredients\":[]}]}', 23),
(24, '{\"Order\":[{\"ItemId\":\"9\",\"ItemName\":\"Corn-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 24),
(25, '{\"Order\":[{\"ItemId\":\"7\",\"ItemName\":\"Pan-Pizza\",\"ItemQty\":\"1\",\"ItemAmt\":\"199.0\",\"ItemTotalPrice\":\"199.0\",\"Ingredients\":[]}]}', 25),
(26, '{\"Order\":[{\"ItemId\":\"12\",\"ItemName\":\"Egg-Biryani\",\"ItemQty\":\"1\",\"ItemAmt\":\"99.0\",\"ItemTotalPrice\":\"99.0\",\"Ingredients\":[]}]}', 26);

-- --------------------------------------------------------

--
-- Table structure for table `food_send_notification`
--

CREATE TABLE `food_send_notification` (
  `id` int(11) NOT NULL,
  `message` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_send_notification`
--

INSERT INTO `food_send_notification` (`id`, `message`) VALUES
(1, 'Hello'),
(2, 'Hello'),
(3, 'Offer'),
(4, 'hello users'),
(5, 'hello users');

-- --------------------------------------------------------

--
-- Table structure for table `food_tokandata`
--

CREATE TABLE `food_tokandata` (
  `id` int(11) NOT NULL,
  `token` text NOT NULL,
  `type` varchar(20) CHARACTER SET latin1 NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_boyid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_tokandata`
--

INSERT INTO `food_tokandata` (`id`, `token`, `type`, `user_id`, `delivery_boyid`) VALUES
(8, 'c0yhqNgJgjk:APA91bFdxoQ7UGkKxwKvHbQZUnZFEaCgahwPemTzejh-H3JUhxYaeu8N5gmIVhoQhfrMS-Jy6PDFi_zB-9nHm5U5p6J6daFOm5BO_HbM8xIlYtQGsI_3P17WV0fASTUEQpB0fXTeui8a', 'android', 0, 3),
(9, 'dp0s3rwkNBY:APA91bFTIYFDxm5DItecRWrTnKpzTzv3VR1sIb07Jo6ixa0wIXI7YUZFDQQwxmLLQLEqXlx_B0NNI-CRQzMwwKHeDakA-tIY6qfGYZtnnRt2amZWvNQb6ROffEo-K2rdEdl4lqRwUvV4', 'android', 0, 3),
(10, 'eT1ZI0nPnxQ:APA91bHMC3nHICnC0NHfuLvtp2FRS_NdQNEzaB6g8xMEs0aYx5qBXJggeitZAJ6_d5bmZFgWgL-dQYsWm-bT-fQGTTrIaQNg9qg3kB1GTo4AbpBi9RNlNCs7wgV7uQ9YOGz4iiZ3krUJ', 'android', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `food_user`
--

CREATE TABLE `food_user` (
  `userid` int(11) NOT NULL,
  `currency` varchar(30) NOT NULL,
  `email` varchar(70) CHARACTER SET latin1 NOT NULL,
  `password` varchar(30) CHARACTER SET latin1 NOT NULL,
  `user_name` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food_user`
--

INSERT INTO `food_user` (`userid`, `currency`, `email`, `password`, `user_name`) VALUES
(1, 'INR - ₹', 'admin@gmail.com', '123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `set_order_detail`
--

CREATE TABLE `set_order_detail` (
  `id` int(11) NOT NULL,
  `assign_date_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `assign_status` varchar(225) NOT NULL,
  `delivered_date_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `delivered_status` varchar(11) NOT NULL,
  `dispatched_date_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `dispatched_status` varchar(11) NOT NULL,
  `is_assigned` varchar(11) NOT NULL,
  `order_placed_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `cancel_date_time` varchar(50) DEFAULT NULL,
  `order_status` int(11) NOT NULL,
  `preparing_date_time` varchar(30) CHARACTER SET latin1 NOT NULL,
  `preparing_status` varchar(225) NOT NULL,
  `total_price` varchar(225) NOT NULL,
  `latlong` varchar(155) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `payment_type` varchar(225) NOT NULL,
  `notes` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `notify` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `set_order_detail`
--

INSERT INTO `set_order_detail` (`id`, `assign_date_time`, `assign_status`, `delivered_date_time`, `delivered_status`, `dispatched_date_time`, `dispatched_status`, `is_assigned`, `order_placed_date`, `cancel_date_time`, `order_status`, `preparing_date_time`, `preparing_status`, `total_price`, `latlong`, `user_id`, `name`, `address`, `email`, `payment_type`, `notes`, `city`, `notify`) VALUES
(1, '31-01-2020 17:49', '1', '31-01-2020 18:30', '1', '31-01-2020 18:29', '1', '1', '31-01-2020 16:59', NULL, 4, '31-01-2020 17:00', '1', '209.0', '12.992989,80.2430539', 1, 'RITESH Kumar', '11, Nehru St, Kanagam, Tharamani, Chennai, Tamil Nadu 600113, India', 'reetkr768@gmail.com', 'Cash', 'extra cheese', 'Ranchi', 2),
(2, '31-01-2020 18:02', '1', '31-01-2020 18:31', '1', '31-01-2020 18:31', '1', '2', '31-01-2020 18:01', NULL, 4, '31-01-2020 18:02', '1', '30.0', '12.9930554,80.2430619', 1, 'ritesh', '11, Nehru St, Kanagam, Tharamani, Chennai, Tamil Nadu 600113, India', 'reetkr768@gmail.com', 'Cash', 'no', 'New-York', 2),
(3, '', '', '', '', '', '', '', '31-01-2020 19:52', '31-01-2020 19:52', 6, '', '', '199.0', '12.9929717,80.243063', 1, 'abhishek', '11, Nehru St, Kanagam, Tharamani, Chennai, Tamil Nadu 600113, India', 'abesingh20@gmail.com', 'Card Swipe', 'make it as soon as possible', 'Hazaribagh', 2),
(4, '31-01-2020 20:51', '1', '', '', '', '', '2', '31-01-2020 20:46', NULL, 5, '31-01-2020 20:49', '1', '249.0', '12.9929717,80.243063', 1, 'reet', '11, Nehru St, Kanagam, Tharamani, Chennai, Tamil Nadu 600113, India', 'reetkr768@gmail.com', 'Cash', 'nil', 'Ranchi', 2),
(5, '', '', '', '', '', '', '', '01-02-2020 13:32', NULL, 1, '01-02-2020 13:47', '1', '50.0', '12.9942807,80.2422929', 1, 'rohan', '39, Pillaiyar Koil St, Kanagam, Tharamani, Chennai, Tamil Nadu 600113, India', 'rohanreet79@gmail.com', 'Cash', 'kuchh', 'Patna', 2),
(6, '', '', '', '', '', '', '', '01-02-2020 13:32', '01-02-2020 13:32', 6, '', '', '50.0', '12.9942807,80.2422929', 1, 'rohan', '39, Pillaiyar Koil St, Kanagam, Tharamani, Chennai, Tamil Nadu 600113, India', 'rohanreet79@gmail.com', 'Cash', 'kuchh', 'Patna', 2),
(7, '01-02-2020 13:53', '1', '01-02-2020 13:55', '1', '01-02-2020 13:55', '1', '2', '01-02-2020 13:52', NULL, 4, '01-02-2020 13:52', '1', '150.0', '12.9922493,80.2417156', 1, 'reet', '61, Kanagam, Tharamani, Chennai, Tamil Nadu 600036, India', 'reetkr@gmail.com', 'Cash', 'nil', 'Ramgarh', 2),
(8, '04-02-2020 20:17', '1', '04-02-2020 20:18', '1', '04-02-2020 20:18', '1', '2', '04-02-2020 20:16', NULL, 4, '04-02-2020 20:16', '1', '209.0', '12.9219503,77.5068532', 1, 'reet', 'Site# 3& 4, pattanagere village, global village main gate, BHEL Layout, RR Nagar, Bengaluru, Karnataka 560098, India', 'reetkr768@gmail.com', 'Cash', 'nil', 'Ramgarh', 2),
(9, '04-02-2020 21:17', '1', '04-02-2020 21:19', '1', '04-02-2020 21:18', '1', '2', '04-02-2020 21:17', NULL, 4, '04-02-2020 21:17', '1', '109.0', '12.9219503,77.5068532', 1, 'reet', 'Site# 3& 4, pattanagere village, global village main gate, BHEL Layout, RR Nagar, Bengaluru, Karnataka 560098, India', 'reetkr768@gmail.com', 'Cash', 'extra sauce', 'Bengaluru', 2),
(10, '', '', '', '', '', '', '', '11-02-2020 17:57', '11-02-2020 18:12', 6, '', '', '199.0', '12.9222575,77.506608', 1, 'reeti', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rohanreet79@gmail.com', 'Cash', 'nill', 'Bengaluru', 2),
(11, '11-02-2020 18:14', '1', '12-02-2020 03:33', '1', '12-02-2020 03:25', '1', '2', '11-02-2020 18:13', NULL, 4, '11-02-2020 18:13', '1', '199.0', '12.9222575,77.506608', 1, 'qwerty', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rohanreet79@gmail.com', 'Cash', 'nill', 'Bengaluru', 2),
(12, '12-02-2020 16:36', '1', '12-02-2020 16:38', '1', '12-02-2020 16:37', '1', '2', '12-02-2020 16:36', NULL, 4, '12-02-2020 16:36', '1', '199.0', '12.9222545,77.5066182', 1, 'ytrewq', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rohank752@Gmail.com', 'Cash', 'nill', 'Bengaluru', 2),
(13, '13-02-2020 14:19', '1', '13-02-2020 14:21', '1', '13-02-2020 14:21', '1', '3', '13-02-2020 14:17', NULL, 4, '13-02-2020 14:18', '1', '200.0', '12.9222545,77.5066182', 1, 'rich', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rich@gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(14, '13-02-2020 14:44', '1', '13-02-2020 15:35', '1', '13-02-2020 15:35', '1', '3', '13-02-2020 14:43', NULL, 4, '13-02-2020 14:43', '1', '109.0', '12.9222545,77.5066182', 1, 'qwert', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'reetkr768@gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(15, '13-02-2020 15:45', '1', '13-02-2020 15:53', '1', '13-02-2020 15:53', '1', '3', '13-02-2020 15:44', NULL, 4, '13-02-2020 15:44', '1', '50.0', '12.9222545,77.5066182', 1, 'hen', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rohanreet79@gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(16, '13-02-2020 15:55', '1', '13-02-2020 15:56', '1', '13-02-2020 15:56', '1', '3', '13-02-2020 15:55', NULL, 4, '13-02-2020 15:55', '1', '30.0', '12.9222545,77.5066182', 1, 'rohan', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rohanreet79@gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(17, '13-02-2020 16:59', '1', '13-02-2020 17:03', '1', '13-02-2020 17:02', '1', '3', '13-02-2020 16:59', NULL, 4, '13-02-2020 16:59', '1', '429.0', '12.9279596,77.5049233', 1, 'finalize', '10, Kenchenhalli, RR Nagar, Bengaluru, Karnataka 560059, India', 'rohank752@Gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(18, '13-02-2020 17:17', '1', '13-02-2020 17:23', '1', '13-02-2020 17:21', '1', '3', '13-02-2020 17:17', NULL, 4, '13-02-2020 17:17', '1', '199.0', '12.9222545,77.5066182', 1, 'test', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rohanreet79@gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(19, '', '', '', '', '', '', '', '13-02-2020 17:26', NULL, 1, '13-02-2020 17:27', '1', '199.0', '12.9222545,77.5066182', 1, 'firse', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rohanreet79@gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(20, '', '', '', '', '', '', '', '13-02-2020 17:29', '13-02-2020 17:31', 6, '13-02-2020 17:30', '1', '199.0', '12.9279596,77.5049233', 1, 'sghg', '10, Kenchenhalli, RR Nagar, Bengaluru, Karnataka 560059, India', 'rdgg@gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(21, '13-02-2020 17:34', '1', '13-02-2020 17:37', '1', '13-02-2020 17:36', '1', '3', '13-02-2020 17:32', NULL, 4, '13-02-2020 17:33', '1', '199.0', '12.9222545,77.5066182', 1, 'vsjs', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'gsg@gmal.com', 'Cash', 'Notes', 'Bengaluru', 2),
(22, '13-02-2020 17:42', '1', '13-02-2020 18:00', '1', '13-02-2020 18:00', '1', '3', '13-02-2020 17:41', NULL, 4, '13-02-2020 17:41', '1', '199.0', '12.9222545,77.5066182', 3, 'vivc', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rdns@gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(23, '13-02-2020 18:02', '1', '13-02-2020 19:01', '1', '13-02-2020 19:01', '1', '3', '13-02-2020 18:02', NULL, 4, '13-02-2020 18:02', '1', '99.0', '12.9222545,77.5066182', 3, 'fshsv', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'gdhd@gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(24, '13-02-2020 18:56', '1', '13-02-2020 19:02', '1', '13-02-2020 19:02', '1', '3', '13-02-2020 18:55', NULL, 4, '13-02-2020 18:56', '1', '199.0', '12.9222545,77.5066182', 3, 'on eagain', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rohanreet79@gmail.com', 'Cash', 'Notes', 'Bengaluru', 2),
(25, '13-02-2020 18:58', '1', '13-02-2020 19:01', '1', '13-02-2020 19:01', '1', '3', '13-02-2020 18:57', NULL, 4, '13-02-2020 18:58', '1', '199.0', '12.9222545,77.5066182', 3, 'xvhxxh', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'ra@g.com', 'Cash', 'Notes', 'Indore', 2),
(26, '13-02-2020 19:01', '1', '13-02-2020 19:02', '1', '13-02-2020 19:01', '1', '3', '13-02-2020 19:00', NULL, 4, '13-02-2020 19:00', '1', '99.0', '12.9222545,77.5066182', 3, 'machhi', 'No 1-10, G3 , GRL Complex, next to Global Village Tech Park, Pattanagere, RR Nagar, Bengaluru, Karnataka 560098, India', 'rohank752@Gmail.com', 'Cash', 'Notes', 'Kolkata', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fooddelivery_food_desc`
--
ALTER TABLE `fooddelivery_food_desc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_city`
--
ALTER TABLE `food_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_delivery_boy`
--
ALTER TABLE `food_delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_ingredients`
--
ALTER TABLE `food_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_notification`
--
ALTER TABLE `food_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_order_response`
--
ALTER TABLE `food_order_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_send_notification`
--
ALTER TABLE `food_send_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_tokandata`
--
ALTER TABLE `food_tokandata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_user`
--
ALTER TABLE `food_user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `set_order_detail`
--
ALTER TABLE `set_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fooddelivery_food_desc`
--
ALTER TABLE `fooddelivery_food_desc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `food_category`
--
ALTER TABLE `food_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `food_city`
--
ALTER TABLE `food_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `food_delivery_boy`
--
ALTER TABLE `food_delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food_ingredients`
--
ALTER TABLE `food_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `food_notification`
--
ALTER TABLE `food_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food_order_response`
--
ALTER TABLE `food_order_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `food_send_notification`
--
ALTER TABLE `food_send_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `food_tokandata`
--
ALTER TABLE `food_tokandata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `food_user`
--
ALTER TABLE `food_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `set_order_detail`
--
ALTER TABLE `set_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
