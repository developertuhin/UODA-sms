-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 08:02 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `std_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `index_number`, `name`, `gender`, `address`, `phone`, `email`, `image`, `reg_date`) VALUES
(13, 123, 'Tuhin Khan', 'Male', 'Dhanmondi', '1767050183', 'admin@gmail.com', 'uploads/20211223052316.png', '2021-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `student_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`id`, `name`, `student_count`) VALUES
(114, '701', 25),
(115, '801', 33),
(116, '1001', 65);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admission_fee` double(11,2) NOT NULL,
  `institute_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `name`, `admission_fee`, `institute_fee`) VALUES
(18, 'CSE', 25000.00, 5000),
(19, 'PHARMACY', 23000.00, 4500),
(20, 'BBA', 20000.00, 4000),
(21, 'LLB', 1500.00, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `reg_date` date NOT NULL,
  `reg_year` year(4) NOT NULL,
  `reg_month` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `index_number`, `name`, `gender`, `address`, `phone`, `email`, `image`, `reg_date`, `reg_year`, `reg_month`) VALUES
(52, 202201, 'Jannat Bonna', 'Female', 'Dinajpur,Bangladesh', '1348383743', 'bonna@gmail.com', 'uploads/20211223052613.png', '2021-12-23', 2021, 'December'),
(54, 2021001, 'Tasfia Kabir', 'Female', 'Gazipur,Bangladesh', '1204495564', 'prova@gmail.com', 'uploads/20211229052508.png', '2021-12-29', 2021, 'December'),
(55, 2021004, 'Tuhin Khan', 'Male', 'Madaripur,Dhaka', '1028475854', 'tuhin@gmail.com', 'uploads/20211229053010.png', '2021-12-29', 2021, 'December'),
(56, 2021005, 'Sumaya Binte ', 'Female', 'Noakhali,Bangladesh', '1255354543', 'sumaya@gmail.com', 'uploads/20211229053205.png', '2021-12-29', 2021, 'December'),
(57, 2021006, 'Ridana Akhter', 'Female', 'Narayanganj, Bangladesh', '1534355345', 'ridana@gmail.com', 'uploads/20211229054456.png', '2021-12-29', 2021, 'December'),
(58, 2021008, 'Pijush Kanti paul', 'Male', 'Panchagar, Bangladesh', '1134354455', 'pijush@gmail.com', 'uploads/20211229022030.png', '2021-12-29', 2021, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

CREATE TABLE `student_grade` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_grade`
--

INSERT INTO `student_grade` (`id`, `student_id`, `grade_id`, `year`) VALUES
(292, 54, 18, 2021),
(293, 55, 18, 2021),
(294, 56, 18, 2021),
(295, 57, 18, 2021),
(296, 58, 18, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_payment`
--

INSERT INTO `student_payment` (`id`, `student_id`, `year`, `month`, `date`, `paid`, `_status`) VALUES
(394, 54, 2021, 'December', '2021-12-29', 25000.00, 'Admission Fee'),
(395, 54, 2021, 'December', '2021-12-29', 300.00, 'Monthly Fee1'),
(396, 55, 2021, 'December', '2021-12-29', 25000.00, 'Admission Fee'),
(397, 55, 2021, 'December', '2021-12-29', 300.00, 'Monthly Fee1'),
(398, 56, 2021, 'December', '2021-12-29', 25000.00, 'Admission Fee'),
(399, 56, 2021, 'December', '2021-12-29', 300.00, 'Monthly Fee1'),
(400, 57, 2021, 'December', '2021-12-29', 25000.00, 'Admission Fee'),
(401, 57, 2021, 'December', '2021-12-29', 500.00, 'Monthly Fee1'),
(402, 58, 2021, 'December', '2021-12-29', 25000.00, 'Admission Fee'),
(403, 58, 2021, 'December', '2021-12-29', 500.00, 'Monthly Fee1');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `sr_id` int(11) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`id`, `student_id`, `sr_id`, `year`) VALUES
(253, 55, 20, 2021),
(254, 56, 20, 2021),
(255, 57, 20, 2021),
(256, 57, 21, 2021),
(259, 54, 20, 2021),
(260, 54, 21, 2021),
(261, 54, 22, 2021),
(262, 58, 20, 2021),
(263, 58, 21, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(23, 'CSE-01'),
(24, 'CSE-02'),
(25, 'CSE-03'),
(26, 'CSE-04'),
(27, 'CSE-05'),
(28, 'CSE-06');

-- --------------------------------------------------------

--
-- Table structure for table `subject_routing`
--

CREATE TABLE `subject_routing` (
  `id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fee` double(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_routing`
--

INSERT INTO `subject_routing` (`id`, `grade_id`, `subject_id`, `teacher_id`, `fee`) VALUES
(20, 18, 23, 17, 300.00),
(21, 18, 24, 18, 200.00),
(22, 18, 26, 18, 100.00),
(24, 18, 28, 17, 333.00);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `index_number` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `index_number`, `name`, `gender`, `address`, `phone`, `email`, `image`, `reg_date`) VALUES
(17, 202201, 'MD Mujib Khan', 'Male', 'Barishal, Bangladesh', '0175943655', 'teacher@gmail.com', 'uploads/20211224011008.png', '2021-12-24'),
(18, 2021003, 'Faqrul Islam', 'Male', 'Mohammadpur,Dhaka', '0142332344', 'faqrulislam@gmail.com', 'uploads/20211229052105.jpg', '2021-12-29'),
(19, 2021005, 'Tarek Hasan ', 'Male', 'Mohammadpur, DHka', '1498274832', 'tarek@gmail.com', 'uploads/20211229021731.jpg', '2021-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary`
--

CREATE TABLE `teacher_salary` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `paid` double(11,2) NOT NULL,
  `_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary`
--

INSERT INTO `teacher_salary` (`id`, `teacher_id`, `year`, `month`, `date`, `paid`, `_status`) VALUES
(68, 17, 2021, 'December', '2021-12-24', 0.00, 'Monthly Salary'),
(69, 18, 2021, 'December', '2021-12-29', 0.00, 'Monthly Salary');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`) VALUES
(89, 'admin@gmail.com', '$2y$10$U6V5Pjxu4SocLhJBVdvTGOfyJNpg3TAbTv.zqEozo5J5peMEnnSAC', 'Admin'),
(91, 'teacher@gmail.com', '$2y$10$xwo1EfeNNmy1K.FUTQ8obuUjWzWXXVvdUoGGr6HeVnFCLSLFQCWuS', 'Teacher'),
(92, 'bayzid@gmail.com', '$2y$10$nWLai9Em4gtMp95rVCQjC.Yj94iePWvYi2pt5djrsJKcpb08EGo3y', 'Student'),
(93, 'faqrulislam@gmail.com', '$2y$10$1ksIEK3wysR6nO2Bp8BG.uE8gB2K65CgReKvw8mPMzXX8v1c8Hy4C', 'Teacher'),
(94, 'prova@gmail.com', '$2y$10$c7HRspFEZdAP9IAzTF6W1utA.e52T55g1lrm4cEdfcxaUPqalVYuG', 'Student'),
(95, 'tuhin@gmail.com', '$2y$10$44IQCu6I9ag.YumiLnOWm.T1txK42TT1SAVGlmETtdeQPr6bgMkW6', 'Student'),
(96, 'sumaya@gmail.com', '$2y$10$cSIieOhM8WONzIHN6AFZuO6FdphH9Y1EQLkC8KWsC3P76N1e3E3oa', 'Student'),
(97, 'ridana@gmail.com', '$2y$10$PBv8LjJDiLr/QBkgkZFAwupwkdhHFAbBv.4dHeIgScBHFiSG0TtPq', 'Student'),
(98, 'tarek@gmail.com', '$2y$10$ADDdQHKa4xPKjGuBO.zN4uyfsAMaNIPShRQwa1JEYl3BicPSI5/K2', 'Teacher'),
(99, 'pijush@gmail.com', '$2y$10$4Y5YU.1Hgex0NTAMexHKKOLL9J4yK20T7OAgDYalQ2xLZ4coCkazy', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_grade`
--
ALTER TABLE `student_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_routing`
--
ALTER TABLE `subject_routing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_salary`
--
ALTER TABLE `teacher_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `student_grade`
--
ALTER TABLE `student_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `student_subject`
--
ALTER TABLE `student_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `subject_routing`
--
ALTER TABLE `subject_routing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teacher_salary`
--
ALTER TABLE `teacher_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
