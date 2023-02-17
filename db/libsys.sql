/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : libsys

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-10-29 13:31:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `activation_code` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `admin_image` blob NOT NULL,
  `admin_added` datetime NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'Admin', '', 'Admin', '', 'admin123@gmail.com', 'admin', '$2y$10$ZGx.xqzOQYtcWtT/bptiY.5wBCtbkWO9Qc30A2CFddIDEsUyjzpAy', '$2y$10$Wr7ZZcE6/kDoQM7LklDVSemD3rA/c6huDwS0wTibYkVe4iV.o7DAu', 0x433A78616D7070096D70706870313730312E746D70, '2022-10-28 11:43:43');

-- ----------------------------
-- Table structure for `allowed_book`
-- ----------------------------
DROP TABLE IF EXISTS `allowed_book`;
CREATE TABLE `allowed_book` (
  `allowed_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `qntty_books` int(11) NOT NULL,
  PRIMARY KEY (`allowed_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allowed_book
-- ----------------------------
INSERT INTO `allowed_book` VALUES ('1', '20');

-- ----------------------------
-- Table structure for `allowed_days`
-- ----------------------------
DROP TABLE IF EXISTS `allowed_days`;
CREATE TABLE `allowed_days` (
  `allowed_days_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_days` int(11) NOT NULL,
  PRIMARY KEY (`allowed_days_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allowed_days
-- ----------------------------
INSERT INTO `allowed_days` VALUES ('1', '5');

-- ----------------------------
-- Table structure for `archive`
-- ----------------------------
DROP TABLE IF EXISTS `archive`;
CREATE TABLE `archive` (
  `archive_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(10) unsigned DEFAULT NULL,
  `book_img` blob DEFAULT NULL,
  `call_no` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `pop_id` varchar(255) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_of_publ` varchar(255) DEFAULT NULL,
  `series` varchar(255) DEFAULT NULL,
  `isbn_no` varchar(255) DEFAULT NULL,
  `accession_no` int(11) DEFAULT NULL,
  `moa_id` int(11) DEFAULT NULL,
  `book_barcode` varchar(255) DEFAULT NULL,
  `issn_no` varchar(255) DEFAULT NULL,
  `notation1` varchar(255) DEFAULT NULL,
  `notation2` varchar(255) DEFAULT NULL,
  `abstract` text DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `page_no` varchar(100) DEFAULT NULL,
  `deyt` date NOT NULL,
  PRIMARY KEY (`archive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of archive
-- ----------------------------

-- ----------------------------
-- Table structure for `arc_special_collection`
-- ----------------------------
DROP TABLE IF EXISTS `arc_special_collection`;
CREATE TABLE `arc_special_collection` (
  `thesis_id` int(11) NOT NULL AUTO_INCREMENT,
  `accession_no` varchar(255) DEFAULT NULL,
  `nameofstudent` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `deyt` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `oras` date DEFAULT NULL,
  PRIMARY KEY (`thesis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arc_special_collection
-- ----------------------------

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_img` blob DEFAULT NULL,
  `call_no` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `pop_id` varchar(255) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_of_publ` varchar(100) DEFAULT NULL,
  `series` varchar(100) DEFAULT NULL,
  `isbn_no` varchar(100) DEFAULT NULL,
  `accession_no` int(11) DEFAULT NULL,
  `moa_id` int(11) DEFAULT NULL,
  `issn_no` varchar(255) DEFAULT NULL,
  `notation1` varchar(255) DEFAULT NULL,
  `notation2` varchar(255) DEFAULT NULL,
  `abstract` text DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `page_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------

-- ----------------------------
-- Table structure for `borrow_book`
-- ----------------------------
DROP TABLE IF EXISTS `borrow_book`;
CREATE TABLE `borrow_book` (
  `borrow_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `date_borrowed` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `date_returned` datetime DEFAULT NULL,
  `borrowed_status` varchar(100) DEFAULT NULL,
  `book_penalty` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`borrow_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow_book
-- ----------------------------

-- ----------------------------
-- Table structure for `borrow_collection`
-- ----------------------------
DROP TABLE IF EXISTS `borrow_collection`;
CREATE TABLE `borrow_collection` (
  `borrow_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `thesis_id` int(11) NOT NULL,
  `date_borrowed` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `date_returned` datetime DEFAULT NULL,
  `borrowed_status` varchar(100) DEFAULT NULL,
  `book_penalty` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`borrow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow_collection
-- ----------------------------

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories` varchar(200) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Narrative Report');
INSERT INTO `categories` VALUES ('2', 'Project/Research Paper');
INSERT INTO `categories` VALUES ('3', 'Graduate Thesis');
INSERT INTO `categories` VALUES ('4', 'Undergraduate Thesis');
INSERT INTO `categories` VALUES ('5', 'Practice Teaching');

-- ----------------------------
-- Table structure for `courses`
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('1', 'BSCS');
INSERT INTO `courses` VALUES ('2', 'BSBA');
INSERT INTO `courses` VALUES ('3', 'BSHRM');
INSERT INTO `courses` VALUES ('4', 'BSED');

-- ----------------------------
-- Table structure for `ebooks`
-- ----------------------------
DROP TABLE IF EXISTS `ebooks`;
CREATE TABLE `ebooks` (
  `ebook_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ebook_img` mediumblob DEFAULT NULL,
  `call_no` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `author` varchar(150) DEFAULT NULL,
  `editor` varchar(100) DEFAULT NULL,
  `edition` varchar(100) DEFAULT NULL,
  `pop_id` varchar(100) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_of_publ` varchar(100) DEFAULT NULL,
  `series` varchar(100) DEFAULT NULL,
  `isbn_no` varchar(50) DEFAULT NULL,
  `accession_no` int(11) DEFAULT NULL,
  `moa_id` int(11) DEFAULT NULL,
  `issn_no` varchar(100) DEFAULT NULL,
  `notation1` varchar(100) DEFAULT NULL,
  `notation2` varchar(100) DEFAULT NULL,
  `abstract` text DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `page_no` varchar(100) DEFAULT NULL,
  `fileName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ebook_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ebooks
-- ----------------------------

-- ----------------------------
-- Table structure for `ebook_archive`
-- ----------------------------
DROP TABLE IF EXISTS `ebook_archive`;
CREATE TABLE `ebook_archive` (
  `ebook_archive_id` int(11) NOT NULL AUTO_INCREMENT,
  `ebook_id` int(10) unsigned DEFAULT NULL,
  `book_img` blob DEFAULT NULL,
  `call_no` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `author` varchar(150) DEFAULT NULL,
  `editor` varchar(100) DEFAULT NULL,
  `edition` varchar(100) DEFAULT NULL,
  `pop_id` varchar(100) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_of_publ` varchar(100) DEFAULT NULL,
  `series` varchar(100) DEFAULT NULL,
  `isbn_no` varchar(50) DEFAULT NULL,
  `accession_no` int(11) DEFAULT NULL,
  `moa_id` int(11) DEFAULT NULL,
  `book_barcode` varchar(100) DEFAULT NULL,
  `issn_no` varchar(100) DEFAULT NULL,
  `notation1` varchar(100) DEFAULT NULL,
  `notation2` varchar(100) DEFAULT NULL,
  `abstract` text DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `page_no` varchar(100) DEFAULT NULL,
  `deyt` date NOT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ebook_archive_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ebook_archive
-- ----------------------------

-- ----------------------------
-- Table structure for `penalty`
-- ----------------------------
DROP TABLE IF EXISTS `penalty`;
CREATE TABLE `penalty` (
  `penalty_id` int(11) NOT NULL AUTO_INCREMENT,
  `penalty_amount` int(11) NOT NULL,
  PRIMARY KEY (`penalty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penalty
-- ----------------------------
INSERT INTO `penalty` VALUES ('1', '5');

-- ----------------------------
-- Table structure for `report`
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES ('1', '3', '2', '  ', 'Borrowed Book', '2022-10-29 09:38:47');
INSERT INTO `report` VALUES ('2', '2', '2', '  ', 'Borrowed Book', '2022-10-29 09:49:52');
INSERT INTO `report` VALUES ('3', '3', '2', '  ', 'Returned Book', '2022-10-29 11:39:10');
INSERT INTO `report` VALUES ('4', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:56:52');
INSERT INTO `report` VALUES ('5', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:56:53');
INSERT INTO `report` VALUES ('6', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:56:53');
INSERT INTO `report` VALUES ('7', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:56:54');
INSERT INTO `report` VALUES ('8', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:56:55');
INSERT INTO `report` VALUES ('9', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:57:01');
INSERT INTO `report` VALUES ('10', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:57:01');
INSERT INTO `report` VALUES ('11', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:57:01');
INSERT INTO `report` VALUES ('12', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:57:01');
INSERT INTO `report` VALUES ('13', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:57:02');
INSERT INTO `report` VALUES ('14', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:57:02');
INSERT INTO `report` VALUES ('15', '0', '2', 'Admin  Admin', 'Returned Book', '2022-10-29 12:57:03');

-- ----------------------------
-- Table structure for `return_book`
-- ----------------------------
DROP TABLE IF EXISTS `return_book`;
CREATE TABLE `return_book` (
  `return_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `book_penalty` varchar(100) NOT NULL,
  PRIMARY KEY (`return_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_book
-- ----------------------------

-- ----------------------------
-- Table structure for `return_collection`
-- ----------------------------
DROP TABLE IF EXISTS `return_collection`;
CREATE TABLE `return_collection` (
  `return_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `thesis_id` int(11) DEFAULT NULL,
  `date_borrowed` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `date_returned` datetime DEFAULT NULL,
  `book_penalty` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`return_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_collection
-- ----------------------------

-- ----------------------------
-- Table structure for `special_collection`
-- ----------------------------
DROP TABLE IF EXISTS `special_collection`;
CREATE TABLE `special_collection` (
  `thesis_id` int(11) NOT NULL AUTO_INCREMENT,
  `accession_no` varchar(100) DEFAULT NULL,
  `nameofstudent` varchar(255) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `deyt` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`thesis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of special_collection
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_authors`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_authors`;
CREATE TABLE `tbl_authors` (
  `author_id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(200) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_authors
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_moa`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_moa`;
CREATE TABLE `tbl_moa` (
  `moa_id` int(11) NOT NULL AUTO_INCREMENT,
  `moa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`moa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_moa
-- ----------------------------
INSERT INTO `tbl_moa` VALUES ('1', 'Donation');
INSERT INTO `tbl_moa` VALUES ('2', 'Transfer');
INSERT INTO `tbl_moa` VALUES ('3', 'Purchase');

-- ----------------------------
-- Table structure for `tbl_placeofpublications`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_placeofpublications`;
CREATE TABLE `tbl_placeofpublications` (
  `pop_id` int(11) NOT NULL AUTO_INCREMENT,
  `placeofpublication` text NOT NULL,
  PRIMARY KEY (`pop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_placeofpublications
-- ----------------------------
INSERT INTO `tbl_placeofpublications` VALUES ('1', 'Metro Manila');
INSERT INTO `tbl_placeofpublications` VALUES ('2', 'Cavite');
INSERT INTO `tbl_placeofpublications` VALUES ('3', 'Baguio City');

-- ----------------------------
-- Table structure for `tbl_publishers`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_publishers`;
CREATE TABLE `tbl_publishers` (
  `publisher_id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_publishers
-- ----------------------------
INSERT INTO `tbl_publishers` VALUES ('1', 'The Authors');

-- ----------------------------
-- Table structure for `tbl_subjects`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subjects`;
CREATE TABLE `tbl_subjects` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(50) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_subjects
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_super_admins`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_super_admins`;
CREATE TABLE `tbl_super_admins` (
  `sa_id` int(11) NOT NULL AUTO_INCREMENT,
  `super_admin` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`sa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_super_admins
-- ----------------------------
INSERT INTO `tbl_super_admins` VALUES ('1', 'Super Admin', 'super_admin123@gmail.com', 'super_admin', '$2y$10$C6bWJl6Er1rRNwv4KLx6guZZdXsmw54FCnJ.zpdrb2l0/giSpx4Ni');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_number` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_added` datetime NOT NULL,
  `activation_code` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'CD12345', 'User', '', 'User', '09876543211', 'user123@gmail.com', 'Female', 'Laspinas', 'Student', 'College', 'BSCS', '', 'Active', '2022-10-28 11:44:37', '', 'user', '$2y$10$.HyLjuUZvdQJsMmLc1ytbO7fwhxU8FW8CGGYfE/lrVSzgxzB3XU3.');
INSERT INTO `user` VALUES ('2', 'CD190123', 'Mary Ann', 'P.', 'Dantes', '09123456789', 'maryann080298@gmail.com', 'Female', 'Cavite', 'Student', 'College', 'BSCS', '', 'Active', '2022-10-29 09:23:31', '', 'dantes', '$2y$10$/OuuOU/bquaJGF/juX2ayuQKYnjim0uLQlpR7JMWYP/fiHQP1nJBW');
