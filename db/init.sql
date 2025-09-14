-- Database initialization script for production
CREATE DATABASE IF NOT EXISTS cars;
USE cars;

-- Create tables if they don't exist
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `cars` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_name` varchar(255) NOT NULL,
  `car_type` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `hire_cost` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Available',
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_no` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `mpesa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  KEY `fk_car_id` (`car_id`),
  FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `hire` (
  `hire_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`hire_id`),
  KEY `fk_client_id` (`client_id`),
  KEY `fk_hire_car_id` (`car_id`),
  FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE,
  FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `message` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `message` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Unread',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert default admin user (password should be changed in production)
INSERT IGNORE INTO `admin` (`admin_id`, `uname`, `pass`) VALUES (1, 'admin', 'admin123');

-- Insert sample cars if table is empty
INSERT IGNORE INTO `cars` (`car_id`, `car_name`, `car_type`, `image`, `hire_cost`, `capacity`, `status`) VALUES
(1, 'Mercedes Benz', 'Mercedes Benz', 'car1.jpg', 20000, 5, 'Available'),
(2, 'Range Rover', 'LandRover', 'car2.jpg', 30000, 6, 'Available'),
(3, 'Harrier', 'Toyota', 'car3.jpg', 20000, 6, 'Available'),
(4, 'LandCruiser V8', 'LandCruiser', 'images (2).jpg', 20000, 5, 'Available'),
(5, 'Security Vehicles', 'Hammar Cars', 'sonkort2.png', 30000, 8, 'Available'),
(6, 'Wedding Limousine', 'Wedding Limousine', 'images (3).jpg', 50000, 10, 'Available');
