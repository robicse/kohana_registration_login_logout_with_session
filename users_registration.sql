-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2016 at 02:59 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `users_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `classes` varchar(128) DEFAULT 'menu'
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `parent_id`, `url`, `title`, `classes`) VALUES
(1, 0, '', 'Dashboard', 'dashboard'),
(2, 0, '', 'Settings', 'dashboard'),
(3, 0, '', 'Employee Profile', 'dashboard'),
(4, 0, '', 'Attendance', 'dashboard'),
(5, 0, '', 'Leave', 'dashboard'),
(6, 0, '', 'Report', 'dashboard'),
(7, 0, '', 'Salary', 'dashboard'),
(8, 2, 'hr_settings/addcompany', 'Add Company', ''),
(9, 2, 'hr_settings/adddepartment', 'Add Department', ''),
(10, 2, 'hr_settings/addsection', 'Add Section', ''),
(11, 2, 'hr_settings/addtype', 'Add Type', ''),
(12, 2, 'hr_settings/adddesignation', 'Add Designation', ''),
(13, 2, 'hr_settings/addcategory', 'Add Category', ''),
(14, 2, 'hr_settings/addbank', 'Add Bank', ''),
(15, 2, 'hr_settings/addbranch', 'Add Branch', ''),
(16, 2, 'hr_settings/addweekend', 'Add Weekend', ''),
(17, 2, 'hr_settings/addholiday', 'Add Holiday', ''),
(18, 4, 'hr_attendance/createattendancerule', 'Create Attendance Rule', ''),
(19, 4, 'hr_attendance/viewattendancerequest', 'View Attendance Request', ''),
(20, 4, 'hr_attendance/viewattendance', 'View Attendance', ''),
(21, 4, 'hr_attendance/attendancesummary', 'Attendance Summary', ''),
(22, 5, 'hr_leave/createleavepackage', 'Create Leave Package', ''),
(23, 5, 'hr_leave/leaveapplicationrequest', 'Leave Application Request', ''),
(24, 5, 'hr_leave/leavesummary', 'Lerave Summary', ''),
(25, 5, 'hr_leave/datewiseleave', 'Date Wise Leave', ''),
(26, 5, 'hr_leave/leavereport', 'Leave Report', ''),
(27, 5, 'hr_leave/leavereportall', 'Leave Report All', ''),
(28, 3, 'hr_employeeinfo/createemployeegeneralinfo', 'Create Employee Information', ''),
(29, 3, 'hr_employeeinfo/viewemployeelist', 'Employee List', ''),
(30, 3, 'hr_employeeinfo/createemployeedocument', 'Employee Document', ''),
(31, 6, 'hr_employeeinfo/employeereport', 'Employee Report', ''),
(32, 6, 'hr_employeeinfo/employeewisepf', 'Provident Fund Report', ''),
(33, 7, 'accounts_salary/createsalary', 'Create Salary', ''),
(34, 7, 'accounts_salary/salarysheet', 'Salary Sheet', ''),
(35, 7, 'accounts_salary/banksheet', 'Bank Sheet', ''),
(36, 7, 'accounts_salary/cashsheet', 'Cash Sheet', ''),
(37, 7, 'accounts_salary/viewpayslip', 'View Payslip', ''),
(38, 7, 'accounts_salary/arrear', 'Arrear', ''),
(39, 7, 'accounts_salary/kpi', 'KPI', ''),
(40, 7, 'accounts_salary/kpideduction', 'KPI Deduction', ''),
(41, 7, 'accounts_salary/addloan', 'Add Loan', ''),
(42, 7, 'accounts_salary/viewloanreport', 'View Loan Report', ''),
(43, 7, 'accounts_salary/advance', 'Advance', ''),
(44, 7, 'accounts_salary/otsheet', 'OT Sheet', ''),
(45, 3, 'hr_employeeinfo/createappraisal', 'Create Appraisal', ''),
(46, 3, 'hr_employeeinfo/createemployeeotherinfo', 'Create Employee Other Info', ''),
(47, 2, 'user_settings/viewholiday', 'View Holiday', ''),
(48, 2, 'user_settings/viewweekend', 'View Weekend', ''),
(49, 4, 'user_attendance/viewattendancerequest', 'View Attendance Request', ''),
(50, 4, 'user_attendance/viewownattendance', 'View Own Attendance', ''),
(51, 7, 'user_salary/viewownpayslip', 'View Own Payslip', ''),
(52, 7, 'user_salary/viewownpf', 'View Own PF', ''),
(53, 5, 'user_leave/leaveschedule', 'Leave Schedule', ''),
(54, 5, 'user_leave/ownleavesummary', 'Own Leave Summary', ''),
(55, 5, 'user_leave/leaveapplication', 'Leave Application', ''),
(56, 5, 'user_leave/leaveapplicationrequest', 'Leave Application Request', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'robicse', 'robicse8@gmail.com', '123456'),
(2, 'robi', 'robeul@windmillbd.net', '123456'),
(11, 'robeul', 'robeulcse8@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
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
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
