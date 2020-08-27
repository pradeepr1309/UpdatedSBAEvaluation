
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coronakitdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerdb`
--

CREATE TABLE `customerdb` (
  `OrderId` int(11) NOT NULL,
  `custName` varchar(250) NOT NULL,
  `custEmail` varchar(250) NOT NULL,
  `custPhone` varchar(12) DEFAULT NULL,
  `address` varchar(300) NOT NULL,
  `orderDate` date NOT NULL DEFAULT current_timestamp(),
  `totalAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerdb`
--

INSERT INTO `customerdb` (`OrderId`, `custName`, `custEmail`, `custPhone`, `address`, `orderDate`, `totalAmount`) VALUES
(1, 'test1', 'test1@gmail.com', '1234567891', 'hubli', '2020-08-23', 100),
(2, 'test2', 'test2@gmail.com', '1234567892', 'bangalore', '2020-08-23', 200),
(3, 'test3', 'test3@gmail.com', '1234567893', 'chennai', '2020-08-23', 300),
(4, 'test4', 'test4@gmail.com', '1234567894', 'delhi', '2020-08-23', 400),
(5, 'test5', 'test5@gmail.com', '1234567895', 'Sikhim', '2020-08-23', 500),
(6, 'test6', 'test6@gmail.com', '1234567898', 'kashmir', '2020-08-23', 600),
(7, 'test7', 'test7@gmaig.com', '1234567899', 'hyderabad', '2020-08-23',700);

-- --------------------------------------------------------

--
-- Table structure for table `productmaster`
--

CREATE TABLE `productmaster` (
  `id` int(11) NOT NULL,
  `productName` varchar(250) NOT NULL,
  `cost` varchar(250) NOT NULL,
  `productDescription` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productmaster`
--

INSERT INTO `productmaster` (`id`, `productName`, `cost`, `productDescription`) VALUES
(1, 'Mask', '100', 'Surgical face Mask'),
(2, 'Sanitizer', '10', 'Hand Sanitizer Small Bottle'),
(4, 'Sanitizer', '100', 'Hand Sanitizer Big Bottle'),
(5, 'Hydrochloric', '100', 'Paracetamol tablets'),
(6, 'Face Shield', '100', 'Full Face Shield'),
(7, 'Gloves', '100', 'Hand Gloves Pair');

ALTER TABLE `customerdb`
  ADD PRIMARY KEY (`OrderId`);

ALTER TABLE `productmaster`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerdb`
--
ALTER TABLE `customerdb`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `productmaster`
--
ALTER TABLE `productmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;
