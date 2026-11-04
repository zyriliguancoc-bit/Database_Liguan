-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2026 at 01:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barangay_health_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `LogID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Action` varchar(100) DEFAULT NULL,
  `TableName` varchar(100) DEFAULT NULL,
  `RecordID` varchar(100) DEFAULT NULL,
  `IPAddress` varchar(45) DEFAULT NULL,
  `Timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`LogID`, `UserID`, `Action`, `TableName`, `RecordID`, `IPAddress`, `Timestamp`) VALUES
(1, 1, 'CREATE', 'patients', '1', '192.168.1.11', '2026-01-01 08:00:00'),
(2, 2, 'UPDATE', 'consultations', '2', '192.168.1.12', '2026-02-02 09:15:00'),
(3, 3, 'VIEW', 'medicines', '3', '192.168.1.13', '2026-03-03 10:30:00'),
(4, 4, 'LOGIN', 'vaccines', '4', '192.168.1.14', '2026-04-04 11:45:00'),
(5, 5, 'LOGOUT', 'supplies', '5', '192.168.1.15', '2026-05-05 12:00:00'),
(6, 6, 'CREATE', 'patients', '6', '192.168.1.16', '2026-06-06 13:15:00'),
(7, 7, 'UPDATE', 'consultations', '7', '192.168.1.17', '2026-07-07 14:30:00'),
(8, 8, 'VIEW', 'medicines', '8', '192.168.1.18', '2026-08-08 15:45:00'),
(9, 9, 'LOGIN', 'vaccines', '9', '192.168.1.19', '2026-09-09 16:00:00'),
(10, 10, 'LOGOUT', 'supplies', '10', '192.168.1.20', '2026-10-10 08:15:00'),
(11, 11, 'CREATE', 'patients', '11', '192.168.1.21', '2026-11-11 09:30:00'),
(12, 12, 'UPDATE', 'consultations', '12', '192.168.1.22', '2026-12-12 10:45:00'),
(13, 13, 'VIEW', 'medicines', '13', '192.168.1.23', '2026-01-13 11:00:00'),
(14, 14, 'LOGIN', 'vaccines', '14', '192.168.1.24', '2026-02-14 12:15:00'),
(15, 15, 'LOGOUT', 'supplies', '15', '192.168.1.25', '2026-03-15 13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `ConsultationID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ConsultDate` datetime DEFAULT NULL,
  `ChiefComplaint` text DEFAULT NULL,
  `Diagnosis` text DEFAULT NULL,
  `TreatmentPlan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultations`
--

INSERT INTO `consultations` (`ConsultationID`, `PatientID`, `UserID`, `ConsultDate`, `ChiefComplaint`, `Diagnosis`, `TreatmentPlan`) VALUES
(1, 1, 1, '2026-01-01 08:00:00', 'Fever', 'Viral infection', 'Rest and fluids; follow-up if symptoms worsen'),
(2, 2, 2, '2026-02-02 09:15:00', 'Cough', 'Upper respiratory infection', 'Symptomatic care and monitoring'),
(3, 3, 3, '2026-03-03 10:30:00', 'Headache', 'Tension headache', 'Hydration and observation'),
(4, 4, 4, '2026-04-04 11:45:00', 'Routine checkup', 'No acute illness', 'Routine health advice'),
(5, 5, 5, '2026-05-05 12:00:00', 'Stomach pain', 'Gastritis', 'Diet advice and follow-up'),
(6, 6, 6, '2026-06-06 13:15:00', 'Fever', 'Viral infection', 'Rest and fluids; follow-up if symptoms worsen'),
(7, 7, 7, '2026-07-07 14:30:00', 'Cough', 'Upper respiratory infection', 'Symptomatic care and monitoring'),
(8, 8, 8, '2026-08-08 15:45:00', 'Headache', 'Tension headache', 'Hydration and observation'),
(9, 9, 9, '2026-09-09 16:00:00', 'Routine checkup', 'No acute illness', 'Routine health advice'),
(10, 10, 10, '2026-10-10 08:15:00', 'Stomach pain', 'Gastritis', 'Diet advice and follow-up'),
(11, 11, 11, '2026-11-11 09:30:00', 'Fever', 'Viral infection', 'Rest and fluids; follow-up if symptoms worsen'),
(12, 12, 12, '2026-12-12 10:45:00', 'Cough', 'Upper respiratory infection', 'Symptomatic care and monitoring'),
(13, 13, 13, '2026-01-13 11:00:00', 'Headache', 'Tension headache', 'Hydration and observation'),
(14, 14, 14, '2026-02-14 12:15:00', 'Routine checkup', 'No acute illness', 'Routine health advice'),
(15, 15, 15, '2026-03-15 13:30:00', 'Stomach pain', 'Gastritis', 'Diet advice and follow-up');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `DeliveryID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `DeliveryOutcome` varchar(100) DEFAULT NULL,
  `AttendantName` varchar(150) DEFAULT NULL,
  `Facility` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_histories`
--

INSERT INTO `delivery_histories` (`DeliveryID`, `PatientID`, `DeliveryDate`, `DeliveryOutcome`, `AttendantName`, `Facility`) VALUES
(1, 1, '2021-01-01', 'Live birth', 'Maria Santos, Midwife', 'Barangay Health Center'),
(2, 2, '2022-02-02', 'Live birth', 'Ana Reyes, Midwife', 'City Health Center'),
(3, 3, '2023-03-03', 'Live birth', 'Liza Cruz, Nurse', 'Provincial Hospital'),
(4, 4, '2024-04-04', 'Referred', 'Maria Santos, Midwife', 'Barangay Health Center'),
(5, 5, '2025-05-05', 'Live birth', 'Ana Reyes, Midwife', 'City Health Center'),
(6, 6, '2021-06-06', 'Live birth', 'Liza Cruz, Nurse', 'Provincial Hospital'),
(7, 7, '2022-07-07', 'Live birth', 'Maria Santos, Midwife', 'Barangay Health Center'),
(8, 8, '2023-08-08', 'Live birth', 'Ana Reyes, Midwife', 'City Health Center'),
(9, 9, '2024-09-09', 'Referred', 'Liza Cruz, Nurse', 'Provincial Hospital'),
(10, 10, '2025-10-10', 'Live birth', 'Maria Santos, Midwife', 'Barangay Health Center'),
(11, 11, '2021-11-11', 'Live birth', 'Ana Reyes, Midwife', 'City Health Center'),
(12, 12, '2022-12-12', 'Live birth', 'Liza Cruz, Nurse', 'Provincial Hospital'),
(13, 13, '2023-01-13', 'Live birth', 'Maria Santos, Midwife', 'Barangay Health Center'),
(14, 14, '2024-02-14', 'Referred', 'Ana Reyes, Midwife', 'City Health Center'),
(15, 15, '2025-03-15', 'Live birth', 'Liza Cruz, Nurse', 'Provincial Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contacts`
--

CREATE TABLE `emergency_contacts` (
  `ContactID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `ContactName` varchar(200) DEFAULT NULL,
  `Relationship` varchar(100) DEFAULT NULL,
  `ContactNumber` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emergency_contacts`
--

INSERT INTO `emergency_contacts` (`ContactID`, `PatientID`, `ContactName`, `Relationship`, `ContactNumber`) VALUES
(1, 1, 'Juan Dela Cruz 1', 'Spouse', '090112340001'),
(2, 2, 'Maria Reyes 2', 'Parent', '090212340002'),
(3, 3, 'Jose Santos 3', 'Sibling', '090312340003'),
(4, 4, 'Ana Garcia 4', 'Child', '090412340004'),
(5, 5, 'Pedro Ramos 5', 'Guardian', '090512340005'),
(6, 6, 'Juan Dela Cruz 6', 'Spouse', '090612340006'),
(7, 7, 'Maria Reyes 7', 'Parent', '090712340007'),
(8, 8, 'Jose Santos 8', 'Sibling', '090812340008'),
(9, 9, 'Ana Garcia 9', 'Child', '090912340009'),
(10, 10, 'Pedro Ramos 10', 'Guardian', '091012340010'),
(11, 11, 'Juan Dela Cruz 11', 'Spouse', '091112340011'),
(12, 12, 'Maria Reyes 12', 'Parent', '091212340012'),
(13, 13, 'Jose Santos 13', 'Sibling', '091312340013'),
(14, 14, 'Ana Garcia 14', 'Child', '091412340014'),
(15, 15, 'Pedro Ramos 15', 'Guardian', '091512340015');

-- --------------------------------------------------------

--
-- Table structure for table `immunization_schedules`
--

CREATE TABLE `immunization_schedules` (
  `ScheduleID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `DoseID` int(11) NOT NULL,
  `ScheduledDate` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT 'Scheduled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `immunization_schedules`
--

INSERT INTO `immunization_schedules` (`ScheduleID`, `PatientID`, `DoseID`, `ScheduledDate`, `Status`) VALUES
(1, 1, 1, '2026-01-01', 'Scheduled'),
(2, 2, 2, '2026-02-02', 'Completed'),
(3, 3, 3, '2026-03-03', 'Scheduled'),
(4, 4, 4, '2026-04-04', 'Missed'),
(5, 5, 5, '2026-05-05', 'Completed'),
(6, 6, 6, '2026-06-06', 'Scheduled'),
(7, 7, 7, '2026-07-07', 'Completed'),
(8, 8, 8, '2026-08-08', 'Scheduled'),
(9, 9, 9, '2026-09-09', 'Missed'),
(10, 10, 10, '2026-10-10', 'Completed'),
(11, 11, 11, '2026-11-11', 'Scheduled'),
(12, 12, 12, '2026-12-12', 'Completed'),
(13, 13, 13, '2026-01-13', 'Scheduled'),
(14, 14, 14, '2026-02-14', 'Missed'),
(15, 15, 15, '2026-03-15', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `ManufacturerID` int(11) NOT NULL,
  `ManufacturerName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`ManufacturerID`, `ManufacturerName`) VALUES
(1, 'United Laboratories 1'),
(2, 'Pascual Laboratories 2'),
(3, 'Lloyd Laboratories 3'),
(4, 'RiteMED Philippines 4'),
(5, 'Unilab 5'),
(6, 'United Laboratories 6'),
(7, 'Pascual Laboratories 7'),
(8, 'Lloyd Laboratories 8'),
(9, 'RiteMED Philippines 9'),
(10, 'Unilab 10'),
(11, 'United Laboratories 11'),
(12, 'Pascual Laboratories 12'),
(13, 'Lloyd Laboratories 13'),
(14, 'RiteMED Philippines 14'),
(15, 'Unilab 15');

-- --------------------------------------------------------

--
-- Table structure for table `medical_conditions`
--

CREATE TABLE `medical_conditions` (
  `ConditionID` int(11) NOT NULL,
  `ConditionName` varchar(150) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medical_conditions`
--

INSERT INTO `medical_conditions` (`ConditionID`, `ConditionName`, `Description`) VALUES
(1, 'Hypertension', 'Recorded medical condition for demonstration purposes.'),
(2, 'Type 2 diabetes', 'Recorded medical condition for demonstration purposes.'),
(3, 'Asthma', 'Recorded medical condition for demonstration purposes.'),
(4, 'Allergic rhinitis', 'Recorded medical condition for demonstration purposes.'),
(5, 'Anemia', 'Recorded medical condition for demonstration purposes.'),
(6, 'Dyslipidemia', 'Recorded medical condition for demonstration purposes.'),
(7, 'Arthritis', 'Recorded medical condition for demonstration purposes.'),
(8, 'Migraine', 'Recorded medical condition for demonstration purposes.'),
(9, 'Gastritis', 'Recorded medical condition for demonstration purposes.'),
(10, 'Eczema', 'Recorded medical condition for demonstration purposes.'),
(11, 'Heart disease', 'Recorded medical condition for demonstration purposes.'),
(12, 'Kidney disease', 'Recorded medical condition for demonstration purposes.'),
(13, 'Thyroid disorder', 'Recorded medical condition for demonstration purposes.'),
(14, 'Pneumonia', 'Recorded medical condition for demonstration purposes.'),
(15, 'Tuberculosis', 'Recorded medical condition for demonstration purposes.');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `MedicineID` int(11) NOT NULL,
  `ManufacturerID` int(11) DEFAULT NULL,
  `GenericName` varchar(200) NOT NULL,
  `BrandName` varchar(200) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `DosageForm` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`MedicineID`, `ManufacturerID`, `GenericName`, `BrandName`, `Category`, `DosageForm`) VALUES
(1, 1, 'Paracetamol', 'Biogesic', 'Analgesic/antipyretic', 'Tablet'),
(2, 2, 'Amoxicillin', 'Amoxil', 'Antibiotic', 'Capsule'),
(3, 3, 'Cetirizine', 'Zyrtec', 'Antihistamine', 'Tablet'),
(4, 4, 'Ibuprofen', 'Advil', 'NSAID', 'Tablet'),
(5, 5, 'Oral rehydration salts', 'Hydrite', 'Rehydration', 'Powder'),
(6, 6, 'Paracetamol', 'Biogesic', 'Analgesic/antipyretic', 'Tablet'),
(7, 7, 'Amoxicillin', 'Amoxil', 'Antibiotic', 'Capsule'),
(8, 8, 'Cetirizine', 'Zyrtec', 'Antihistamine', 'Tablet'),
(9, 9, 'Ibuprofen', 'Advil', 'NSAID', 'Tablet'),
(10, 10, 'Oral rehydration salts', 'Hydrite', 'Rehydration', 'Powder'),
(11, 11, 'Paracetamol', 'Biogesic', 'Analgesic/antipyretic', 'Tablet'),
(12, 12, 'Amoxicillin', 'Amoxil', 'Antibiotic', 'Capsule'),
(13, 13, 'Cetirizine', 'Zyrtec', 'Antihistamine', 'Tablet'),
(14, 14, 'Ibuprofen', 'Advil', 'NSAID', 'Tablet'),
(15, 15, 'Oral rehydration salts', 'Hydrite', 'Rehydration', 'Powder');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_alerts`
--

CREATE TABLE `medicine_alerts` (
  `MedAlertID` int(11) NOT NULL,
  `MedBatchID` int(11) NOT NULL,
  `AlertType` varchar(100) DEFAULT NULL,
  `AlertDate` datetime DEFAULT NULL,
  `Status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_alerts`
--

INSERT INTO `medicine_alerts` (`MedAlertID`, `MedBatchID`, `AlertType`, `AlertDate`, `Status`) VALUES
(1, 1, 'Near expiry', '2026-01-01 08:00:00', 'Pending'),
(2, 2, 'Low stock', '2026-02-02 09:15:00', 'Reviewed'),
(3, 3, 'Expired batch', '2026-03-03 10:30:00', 'Resolved'),
(4, 4, 'Near expiry', '2026-04-04 11:45:00', 'Pending'),
(5, 5, 'Low stock', '2026-05-05 12:00:00', 'Reviewed'),
(6, 6, 'Expired batch', '2026-06-06 13:15:00', 'Resolved'),
(7, 7, 'Near expiry', '2026-07-07 14:30:00', 'Pending'),
(8, 8, 'Low stock', '2026-08-08 15:45:00', 'Reviewed'),
(9, 9, 'Expired batch', '2026-09-09 16:00:00', 'Resolved'),
(10, 10, 'Near expiry', '2026-10-10 08:15:00', 'Pending'),
(11, 11, 'Low stock', '2026-11-11 09:30:00', 'Reviewed'),
(12, 12, 'Expired batch', '2026-12-12 10:45:00', 'Resolved'),
(13, 13, 'Near expiry', '2026-01-13 11:00:00', 'Pending'),
(14, 14, 'Low stock', '2026-02-14 12:15:00', 'Reviewed'),
(15, 15, 'Expired batch', '2026-03-15 13:30:00', 'Resolved');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_batches`
--

CREATE TABLE `medicine_batches` (
  `MedBatchID` int(11) NOT NULL,
  `MedicineID` int(11) NOT NULL,
  `BatchNumber` varchar(100) DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `CurrentStock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_batches`
--

INSERT INTO `medicine_batches` (`MedBatchID`, `MedicineID`, `BatchNumber`, `ExpirationDate`, `CurrentStock`) VALUES
(1, 1, 'MED-2026-0001', '2027-01-01', 100),
(2, 2, 'MED-2026-0002', '2028-02-02', 97),
(3, 3, 'MED-2026-0003', '2029-03-03', 94),
(4, 4, 'MED-2026-0004', '2027-04-04', 91),
(5, 5, 'MED-2026-0005', '2027-05-05', 88),
(6, 6, 'MED-2026-0006', '2028-06-06', 85),
(7, 7, 'MED-2026-0007', '2029-07-07', 82),
(8, 8, 'MED-2026-0008', '2027-08-08', 79),
(9, 9, 'MED-2026-0009', '2027-09-09', 76),
(10, 10, 'MED-2026-0010', '2028-10-10', 73),
(11, 11, 'MED-2026-0011', '2029-11-11', 70),
(12, 12, 'MED-2026-0012', '2027-12-12', 67),
(13, 13, 'MED-2026-0013', '2027-01-13', 64),
(14, 14, 'MED-2026-0014', '2028-02-14', 61),
(15, 15, 'MED-2026-0015', '2029-03-15', 58);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_dispensations`
--

CREATE TABLE `medicine_dispensations` (
  `MedDispensationID` int(11) NOT NULL,
  `MedTransactionID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `DosageInstructions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_dispensations`
--

INSERT INTO `medicine_dispensations` (`MedDispensationID`, `MedTransactionID`, `PatientID`, `DosageInstructions`) VALUES
(1, 1, 1, 'Take as directed by the health worker.'),
(2, 2, 2, 'Use only according to the prescription.'),
(3, 3, 3, 'Follow the label and clinician instructions.'),
(4, 4, 4, 'Take as directed by the health worker.'),
(5, 5, 5, 'Use only according to the prescription.'),
(6, 6, 6, 'Follow the label and clinician instructions.'),
(7, 7, 7, 'Take as directed by the health worker.'),
(8, 8, 8, 'Use only according to the prescription.'),
(9, 9, 9, 'Follow the label and clinician instructions.'),
(10, 10, 10, 'Take as directed by the health worker.'),
(11, 11, 11, 'Use only according to the prescription.'),
(12, 12, 12, 'Follow the label and clinician instructions.'),
(13, 13, 13, 'Take as directed by the health worker.'),
(14, 14, 14, 'Use only according to the prescription.'),
(15, 15, 15, 'Follow the label and clinician instructions.');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_transactions`
--

CREATE TABLE `medicine_transactions` (
  `MedTransactionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `MedBatchID` int(11) NOT NULL,
  `TransactionType` varchar(50) DEFAULT NULL,
  `QuantityMoved` int(11) NOT NULL,
  `TransactionDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_transactions`
--

INSERT INTO `medicine_transactions` (`MedTransactionID`, `UserID`, `SupplierID`, `MedBatchID`, `TransactionType`, `QuantityMoved`, `TransactionDate`) VALUES
(1, 1, 1, 1, 'Stock In', 11, '2026-01-01 08:00:00'),
(2, 2, 2, 2, 'Dispensed', 12, '2026-02-02 09:15:00'),
(3, 3, 3, 3, 'Adjustment', 13, '2026-03-03 10:30:00'),
(4, 4, 4, 4, 'Stock In', 14, '2026-04-04 11:45:00'),
(5, 5, 5, 5, 'Dispensed', 15, '2026-05-05 12:00:00'),
(6, 6, 6, 6, 'Adjustment', 16, '2026-06-06 13:15:00'),
(7, 7, 7, 7, 'Stock In', 17, '2026-07-07 14:30:00'),
(8, 8, 8, 8, 'Dispensed', 18, '2026-08-08 15:45:00'),
(9, 9, 9, 9, 'Adjustment', 19, '2026-09-09 16:00:00'),
(10, 10, 10, 10, 'Stock In', 20, '2026-10-10 08:15:00'),
(11, 11, 11, 11, 'Dispensed', 21, '2026-11-11 09:30:00'),
(12, 12, 12, 12, 'Adjustment', 22, '2026-12-12 10:45:00'),
(13, 13, 13, 13, 'Stock In', 23, '2026-01-13 11:00:00'),
(14, 14, 14, 14, 'Dispensed', 24, '2026-02-14 12:15:00'),
(15, 15, 15, 15, 'Adjustment', 25, '2026-03-15 13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `ModuleID` int(11) NOT NULL,
  `ModuleName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`ModuleID`, `ModuleName`) VALUES
(1, 'Patients'),
(2, 'Appointments'),
(3, 'Consultations'),
(4, 'Immunization'),
(5, 'Prenatal Care'),
(6, 'Nutrition'),
(7, 'Medicines'),
(8, 'Supplies'),
(9, 'Vaccines'),
(10, 'Vitamins'),
(11, 'Reports'),
(12, 'Users'),
(13, 'Roles'),
(14, 'Permissions'),
(15, 'Audit Logs');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition_assessments`
--

CREATE TABLE `nutrition_assessments` (
  `AssessmentID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AssessmentDate` date DEFAULT NULL,
  `Height_cm` decimal(6,2) DEFAULT NULL,
  `Weight_kg` decimal(6,2) DEFAULT NULL,
  `ComputedBMI` decimal(6,2) DEFAULT NULL,
  `NutritionalStatus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nutrition_assessments`
--

INSERT INTO `nutrition_assessments` (`AssessmentID`, `PatientID`, `UserID`, `AssessmentDate`, `Height_cm`, `Weight_kg`, `ComputedBMI`, `NutritionalStatus`) VALUES
(1, 1, 1, '2026-01-01', 145.00, 42.00, 20.00, 'Normal'),
(2, 2, 2, '2026-02-02', 146.00, 43.00, 21.30, 'Underweight'),
(3, 3, 3, '2026-03-03', 147.00, 44.00, 22.60, 'Normal'),
(4, 4, 4, '2026-04-04', 148.00, 45.00, 23.90, 'Overweight'),
(5, 5, 5, '2026-05-05', 149.00, 46.00, 25.20, 'Normal'),
(6, 6, 6, '2026-06-06', 150.00, 47.00, 26.50, 'Normal'),
(7, 7, 7, '2026-07-07', 151.00, 48.00, 27.80, 'Underweight'),
(8, 8, 8, '2026-08-08', 152.00, 49.00, 29.10, 'Normal'),
(9, 9, 9, '2026-09-09', 153.00, 50.00, 30.40, 'Overweight'),
(10, 10, 10, '2026-10-10', 154.00, 51.00, 20.00, 'Normal'),
(11, 11, 11, '2026-11-11', 155.00, 52.00, 21.30, 'Normal'),
(12, 12, 12, '2026-12-12', 156.00, 53.00, 22.60, 'Underweight'),
(13, 13, 13, '2026-01-13', 157.00, 54.00, 23.90, 'Normal'),
(14, 14, 14, '2026-02-14', 158.00, 55.00, 25.20, 'Overweight'),
(15, 15, 15, '2026-03-15', 159.00, 56.00, 26.50, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `PatientID` int(11) NOT NULL,
  `PurokID` int(11) DEFAULT NULL,
  `FirstName` varchar(100) NOT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Sex` varchar(20) DEFAULT NULL,
  `CivilStatus` varchar(30) DEFAULT NULL,
  `ContactNumber` varchar(30) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`PatientID`, `PurokID`, `FirstName`, `MiddleName`, `LastName`, `DateOfBirth`, `Sex`, `CivilStatus`, `ContactNumber`, `Address`) VALUES
(1, 1, 'Maria', 'Santos', 'Dela Cruz', '1980-01-01', 'Female', 'Single', '09015550001', 'Purok 1, Barangay San Isidro, Philippines'),
(2, 2, 'Juan', 'Reyes', 'Santos', '1981-02-02', 'Male', 'Married', '09025550002', 'Purok 2, Barangay San Isidro, Philippines'),
(3, 3, 'Ana', 'Cruz', 'Reyes', '1982-03-03', 'Female', 'Married', '09035550003', 'Purok 3, Barangay San Isidro, Philippines'),
(4, 4, 'Jose', 'Garcia', 'Garcia', '1983-04-04', 'Male', 'Single', '09045550004', 'Purok 4, Barangay San Isidro, Philippines'),
(5, 5, 'Liza', 'Ramos', 'Mendoza', '1984-05-05', 'Female', 'Widowed', '09055550005', 'Purok 5, Barangay San Isidro, Philippines'),
(6, 6, 'Pedro', 'Santos', 'Dela Cruz', '1985-06-06', 'Male', 'Single', '09065550006', 'Purok 6, Barangay San Isidro, Philippines'),
(7, 7, 'Rosa', 'Reyes', 'Santos', '1986-07-07', 'Female', 'Married', '09075550007', 'Purok 7, Barangay San Isidro, Philippines'),
(8, 8, 'Miguel', 'Cruz', 'Reyes', '1987-08-08', 'Male', 'Married', '09085550008', 'Purok 8, Barangay San Isidro, Philippines'),
(9, 9, 'Carmen', 'Garcia', 'Garcia', '1988-09-09', 'Female', 'Single', '09095550009', 'Purok 9, Barangay San Isidro, Philippines'),
(10, 10, 'Ramon', 'Ramos', 'Mendoza', '1989-10-10', 'Male', 'Widowed', '09105550010', 'Purok 10, Barangay San Isidro, Philippines'),
(11, 11, 'Elena', 'Santos', 'Dela Cruz', '1990-11-11', 'Female', 'Single', '09115550011', 'Purok 11, Barangay San Isidro, Philippines'),
(12, 12, 'Paolo', 'Reyes', 'Santos', '1991-12-12', 'Male', 'Married', '09125550012', 'Purok 12, Barangay San Isidro, Philippines'),
(13, 13, 'Grace', 'Cruz', 'Reyes', '1992-01-13', 'Female', 'Married', '09135550013', 'Purok 13, Barangay San Isidro, Philippines'),
(14, 14, 'Mark', 'Garcia', 'Garcia', '1993-02-14', 'Male', 'Single', '09145550014', 'Purok 14, Barangay San Isidro, Philippines'),
(15, 15, 'Angela', 'Ramos', 'Mendoza', '1994-03-15', 'Female', 'Widowed', '09155550015', 'Purok 15, Barangay San Isidro, Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `patient_immunizations`
--

CREATE TABLE `patient_immunizations` (
  `ImmunizationID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `DoseID` int(11) NOT NULL,
  `VacBatchID` int(11) DEFAULT NULL,
  `UserID` int(11) NOT NULL,
  `AdministeredDate` datetime DEFAULT NULL,
  `Remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_immunizations`
--

INSERT INTO `patient_immunizations` (`ImmunizationID`, `PatientID`, `DoseID`, `VacBatchID`, `UserID`, `AdministeredDate`, `Remarks`) VALUES
(1, 1, 1, 1, 1, '2026-01-01 08:00:00', 'Administered; no immediate reaction noted.'),
(2, 2, 2, 2, 2, '2026-02-02 09:15:00', 'Routine immunization recorded.'),
(3, 3, 3, 3, 3, '2026-03-03 10:30:00', 'Follow-up according to schedule.'),
(4, 4, 4, 4, 4, '2026-04-04 11:45:00', 'Administered; no immediate reaction noted.'),
(5, 5, 5, 5, 5, '2026-05-05 12:00:00', 'Routine immunization recorded.'),
(6, 6, 6, 6, 6, '2026-06-06 13:15:00', 'Follow-up according to schedule.'),
(7, 7, 7, 7, 7, '2026-07-07 14:30:00', 'Administered; no immediate reaction noted.'),
(8, 8, 8, 8, 8, '2026-08-08 15:45:00', 'Routine immunization recorded.'),
(9, 9, 9, 9, 9, '2026-09-09 16:00:00', 'Follow-up according to schedule.'),
(10, 10, 10, 10, 10, '2026-10-10 08:15:00', 'Administered; no immediate reaction noted.'),
(11, 11, 11, 11, 11, '2026-11-11 09:30:00', 'Routine immunization recorded.'),
(12, 12, 12, 12, 12, '2026-12-12 10:45:00', 'Follow-up according to schedule.'),
(13, 13, 13, 13, 13, '2026-01-13 11:00:00', 'Administered; no immediate reaction noted.'),
(14, 14, 14, 14, 14, '2026-02-14 12:15:00', 'Routine immunization recorded.'),
(15, 15, 15, 15, 15, '2026-03-15 13:30:00', 'Follow-up according to schedule.');

-- --------------------------------------------------------

--
-- Table structure for table `patient_medical_history`
--

CREATE TABLE `patient_medical_history` (
  `HistoryID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `ConditionID` int(11) NOT NULL,
  `DiagnosisDate` date DEFAULT NULL,
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_medical_history`
--

INSERT INTO `patient_medical_history` (`HistoryID`, `PatientID`, `ConditionID`, `DiagnosisDate`, `Notes`) VALUES
(1, 1, 1, '2021-01-01', 'Fictional sample medical history for software testing.'),
(2, 2, 2, '2022-02-02', 'Fictional sample medical history for software testing.'),
(3, 3, 3, '2023-03-03', 'Fictional sample medical history for software testing.'),
(4, 4, 4, '2024-04-04', 'Fictional sample medical history for software testing.'),
(5, 5, 5, '2025-05-05', 'Fictional sample medical history for software testing.'),
(6, 6, 6, '2021-06-06', 'Fictional sample medical history for software testing.'),
(7, 7, 7, '2022-07-07', 'Fictional sample medical history for software testing.'),
(8, 8, 8, '2023-08-08', 'Fictional sample medical history for software testing.'),
(9, 9, 9, '2024-09-09', 'Fictional sample medical history for software testing.'),
(10, 10, 10, '2025-10-10', 'Fictional sample medical history for software testing.'),
(11, 11, 11, '2021-11-11', 'Fictional sample medical history for software testing.'),
(12, 12, 12, '2022-12-12', 'Fictional sample medical history for software testing.'),
(13, 13, 13, '2023-01-13', 'Fictional sample medical history for software testing.'),
(14, 14, 14, '2024-02-14', 'Fictional sample medical history for software testing.'),
(15, 15, 15, '2025-03-15', 'Fictional sample medical history for software testing.');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `PermissionID` int(11) NOT NULL,
  `PermissionName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`PermissionID`, `PermissionName`) VALUES
(1, 'View'),
(2, 'Create'),
(3, 'Update'),
(4, 'Delete'),
(5, 'Manage Users'),
(6, 'Manage Roles'),
(7, 'Manage Patients'),
(8, 'Manage Inventory'),
(9, 'Manage Immunization'),
(10, 'Manage Prenatal'),
(11, 'Manage Nutrition'),
(12, 'View Reports'),
(13, 'Export Reports'),
(14, 'Manage Suppliers'),
(15, 'View Audit Logs');

-- --------------------------------------------------------

--
-- Table structure for table `prenatal_visits`
--

CREATE TABLE `prenatal_visits` (
  `VisitID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `VisitDate` date DEFAULT NULL,
  `GestationalAgeWeeks` int(11) DEFAULT NULL,
  `BloodPressure` varchar(20) DEFAULT NULL,
  `Weight_kg` decimal(6,2) DEFAULT NULL,
  `Notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prenatal_visits`
--

INSERT INTO `prenatal_visits` (`VisitID`, `PatientID`, `UserID`, `VisitDate`, `GestationalAgeWeeks`, `BloodPressure`, `Weight_kg`, `Notes`) VALUES
(1, 1, 1, '2026-01-01', 12, '110/70', 48.00, 'Routine prenatal assessment.'),
(2, 2, 2, '2026-02-02', 14, '120/80', 49.00, 'Fetal movement and maternal symptoms reviewed.'),
(3, 3, 3, '2026-03-03', 16, '115/75', 50.00, 'Nutrition and prenatal care advice provided.'),
(4, 4, 4, '2026-04-04', 18, '118/78', 51.00, 'Routine prenatal assessment.'),
(5, 5, 5, '2026-05-05', 20, '110/80', 52.00, 'Fetal movement and maternal symptoms reviewed.'),
(6, 6, 6, '2026-06-06', 22, '110/70', 53.00, 'Nutrition and prenatal care advice provided.'),
(7, 7, 7, '2026-07-07', 24, '120/80', 54.00, 'Routine prenatal assessment.'),
(8, 8, 8, '2026-08-08', 26, '115/75', 55.00, 'Fetal movement and maternal symptoms reviewed.'),
(9, 9, 9, '2026-09-09', 28, '118/78', 56.00, 'Nutrition and prenatal care advice provided.'),
(10, 10, 10, '2026-10-10', 30, '110/80', 57.00, 'Routine prenatal assessment.'),
(11, 11, 11, '2026-11-11', 32, '110/70', 58.00, 'Fetal movement and maternal symptoms reviewed.'),
(12, 12, 12, '2026-12-12', 34, '120/80', 59.00, 'Nutrition and prenatal care advice provided.'),
(13, 13, 13, '2026-01-13', 36, '115/75', 60.00, 'Routine prenatal assessment.'),
(14, 14, 14, '2026-02-14', 38, '118/78', 61.00, 'Fetal movement and maternal symptoms reviewed.'),
(15, 15, 15, '2026-03-15', 40, '110/80', 62.00, 'Nutrition and prenatal care advice provided.');

-- --------------------------------------------------------

--
-- Table structure for table `puroks`
--

CREATE TABLE `puroks` (
  `PurokID` int(11) NOT NULL,
  `PurokName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `puroks`
--

INSERT INTO `puroks` (`PurokID`, `PurokName`) VALUES
(1, 'Purok 1'),
(2, 'Purok 2'),
(3, 'Purok 3'),
(4, 'Purok 4'),
(5, 'Purok 5'),
(6, 'Purok 6'),
(7, 'Purok 7'),
(8, 'Purok 8'),
(9, 'Purok 9'),
(10, 'Purok 10'),
(11, 'Purok 11'),
(12, 'Purok 12'),
(13, 'Purok 13'),
(14, 'Purok 14'),
(15, 'Purok 15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`RoleID`, `RoleName`) VALUES
(1, 'Administrator'),
(2, 'Doctor'),
(3, 'Nurse'),
(4, 'Midwife'),
(5, 'Barangay Health Worker'),
(6, 'Encoder'),
(7, 'Pharmacist'),
(8, 'Inventory Officer'),
(9, 'Nutritionist'),
(10, 'Immunization Staff'),
(11, 'Records Officer'),
(12, 'Auditor'),
(13, 'Supervisor'),
(14, 'Read Only'),
(15, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `RoleID` int(11) NOT NULL,
  `ModuleID` int(11) NOT NULL,
  `PermissionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`RoleID`, `ModuleID`, `PermissionID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(200) NOT NULL,
  `ContactPerson` varchar(150) DEFAULT NULL,
  `ContactNumber` varchar(30) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactPerson`, `ContactNumber`, `Address`) VALUES
(1, 'MedSource Philippines 1', 'Ana Reyes', '09016780001', '1 Main Street, Philippines'),
(2, 'HealthFirst Supplies 2', 'Jose Santos', '09026780002', '2 Main Street, Philippines'),
(3, 'Community Medical Trading 3', 'Maria Cruz', '09036780003', '3 Main Street, Philippines'),
(4, 'PrimeCare Distribution 4', 'Pedro Garcia', '09046780004', '4 Main Street, Philippines'),
(5, 'Wellness Pharma Supply 5', 'Liza Ramos', '09056780005', '5 Main Street, Philippines'),
(6, 'MedSource Philippines 6', 'Ana Reyes', '09066780006', '6 Main Street, Philippines'),
(7, 'HealthFirst Supplies 7', 'Jose Santos', '09076780007', '7 Main Street, Philippines'),
(8, 'Community Medical Trading 8', 'Maria Cruz', '09086780008', '8 Main Street, Philippines'),
(9, 'PrimeCare Distribution 9', 'Pedro Garcia', '09096780009', '9 Main Street, Philippines'),
(10, 'Wellness Pharma Supply 10', 'Liza Ramos', '09106780010', '10 Main Street, Philippines'),
(11, 'MedSource Philippines 11', 'Ana Reyes', '09116780011', '11 Main Street, Philippines'),
(12, 'HealthFirst Supplies 12', 'Jose Santos', '09126780012', '12 Main Street, Philippines'),
(13, 'Community Medical Trading 13', 'Maria Cruz', '09136780013', '13 Main Street, Philippines'),
(14, 'PrimeCare Distribution 14', 'Pedro Garcia', '09146780014', '14 Main Street, Philippines'),
(15, 'Wellness Pharma Supply 15', 'Liza Ramos', '09156780015', '15 Main Street, Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `SupplyID` int(11) NOT NULL,
  `ManufacturerID` int(11) DEFAULT NULL,
  `SupplyName` varchar(200) NOT NULL,
  `Category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`SupplyID`, `ManufacturerID`, `SupplyName`, `Category`) VALUES
(1, 1, 'Disposable gloves', 'PPE'),
(2, 2, 'Surgical masks', 'PPE'),
(3, 3, 'Gauze pads', 'Dressing'),
(4, 4, 'Syringes', 'Medical equipment'),
(5, 5, 'Cotton balls', 'Consumables'),
(6, 6, 'Disposable gloves', 'PPE'),
(7, 7, 'Surgical masks', 'PPE'),
(8, 8, 'Gauze pads', 'Dressing'),
(9, 9, 'Syringes', 'Medical equipment'),
(10, 10, 'Cotton balls', 'Consumables'),
(11, 11, 'Disposable gloves', 'PPE'),
(12, 12, 'Surgical masks', 'PPE'),
(13, 13, 'Gauze pads', 'Dressing'),
(14, 14, 'Syringes', 'Medical equipment'),
(15, 15, 'Cotton balls', 'Consumables');

-- --------------------------------------------------------

--
-- Table structure for table `supply_alerts`
--

CREATE TABLE `supply_alerts` (
  `SupAlertID` int(11) NOT NULL,
  `SupBatchID` int(11) NOT NULL,
  `AlertType` varchar(100) DEFAULT NULL,
  `AlertDate` datetime DEFAULT NULL,
  `Status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supply_alerts`
--

INSERT INTO `supply_alerts` (`SupAlertID`, `SupBatchID`, `AlertType`, `AlertDate`, `Status`) VALUES
(1, 1, 'Low stock', '2026-01-01 08:00:00', 'Pending'),
(2, 2, 'Near expiry', '2026-02-02 09:15:00', 'Reviewed'),
(3, 3, 'Expired batch', '2026-03-03 10:30:00', 'Resolved'),
(4, 4, 'Low stock', '2026-04-04 11:45:00', 'Pending'),
(5, 5, 'Near expiry', '2026-05-05 12:00:00', 'Reviewed'),
(6, 6, 'Expired batch', '2026-06-06 13:15:00', 'Resolved'),
(7, 7, 'Low stock', '2026-07-07 14:30:00', 'Pending'),
(8, 8, 'Near expiry', '2026-08-08 15:45:00', 'Reviewed'),
(9, 9, 'Expired batch', '2026-09-09 16:00:00', 'Resolved'),
(10, 10, 'Low stock', '2026-10-10 08:15:00', 'Pending'),
(11, 11, 'Near expiry', '2026-11-11 09:30:00', 'Reviewed'),
(12, 12, 'Expired batch', '2026-12-12 10:45:00', 'Resolved'),
(13, 13, 'Low stock', '2026-01-13 11:00:00', 'Pending'),
(14, 14, 'Near expiry', '2026-02-14 12:15:00', 'Reviewed'),
(15, 15, 'Expired batch', '2026-03-15 13:30:00', 'Resolved');

-- --------------------------------------------------------

--
-- Table structure for table `supply_batches`
--

CREATE TABLE `supply_batches` (
  `SupBatchID` int(11) NOT NULL,
  `SupplyID` int(11) NOT NULL,
  `BatchNumber` varchar(100) DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `CurrentStock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supply_batches`
--

INSERT INTO `supply_batches` (`SupBatchID`, `SupplyID`, `BatchNumber`, `ExpirationDate`, `CurrentStock`) VALUES
(1, 1, 'SUP-2026-0001', '2027-01-01', 200),
(2, 2, 'SUP-2026-0002', '2028-02-02', 195),
(3, 3, 'SUP-2026-0003', '2029-03-03', 190),
(4, 4, 'SUP-2026-0004', '0000-00-00', 185),
(5, 5, 'SUP-2026-0005', '2027-05-05', 180),
(6, 6, 'SUP-2026-0006', '2028-06-06', 175),
(7, 7, 'SUP-2026-0007', '2029-07-07', 170),
(8, 8, 'SUP-2026-0008', '0000-00-00', 165),
(9, 9, 'SUP-2026-0009', '2027-09-09', 160),
(10, 10, 'SUP-2026-0010', '2028-10-10', 155),
(11, 11, 'SUP-2026-0011', '2029-11-11', 150),
(12, 12, 'SUP-2026-0012', '0000-00-00', 145),
(13, 13, 'SUP-2026-0013', '2027-01-13', 140),
(14, 14, 'SUP-2026-0014', '2028-02-14', 135),
(15, 15, 'SUP-2026-0015', '2029-03-15', 130);

-- --------------------------------------------------------

--
-- Table structure for table `supply_transactions`
--

CREATE TABLE `supply_transactions` (
  `SupTransactionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `SupBatchID` int(11) NOT NULL,
  `TransactionType` varchar(50) DEFAULT NULL,
  `QuantityMoved` int(11) NOT NULL,
  `TransactionDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supply_transactions`
--

INSERT INTO `supply_transactions` (`SupTransactionID`, `UserID`, `SupplierID`, `SupBatchID`, `TransactionType`, `QuantityMoved`, `TransactionDate`) VALUES
(1, 1, 1, 1, 'Stock In', 21, '2026-01-01 08:00:00'),
(2, 2, 2, 2, 'Issued', 22, '2026-02-02 09:15:00'),
(3, 3, 3, 3, 'Adjustment', 23, '2026-03-03 10:30:00'),
(4, 4, 4, 4, 'Stock In', 24, '2026-04-04 11:45:00'),
(5, 5, 5, 5, 'Issued', 25, '2026-05-05 12:00:00'),
(6, 6, 6, 6, 'Adjustment', 26, '2026-06-06 13:15:00'),
(7, 7, 7, 7, 'Stock In', 27, '2026-07-07 14:30:00'),
(8, 8, 8, 8, 'Issued', 28, '2026-08-08 15:45:00'),
(9, 9, 9, 9, 'Adjustment', 29, '2026-09-09 16:00:00'),
(10, 10, 10, 10, 'Stock In', 30, '2026-10-10 08:15:00'),
(11, 11, 11, 11, 'Issued', 31, '2026-11-11 09:30:00'),
(12, 12, 12, 12, 'Adjustment', 32, '2026-12-12 10:45:00'),
(13, 13, 13, 13, 'Stock In', 33, '2026-01-13 11:00:00'),
(14, 14, 14, 14, 'Issued', 34, '2026-02-14 12:15:00'),
(15, 15, 15, 15, 'Adjustment', 35, '2026-03-15 13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Status` varchar(50) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `RoleID`, `Username`, `PasswordHash`, `Status`) VALUES
(1, 1, 'healthuser01', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(2, 2, 'healthuser02', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(3, 3, 'healthuser03', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(4, 4, 'healthuser04', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Inactive'),
(5, 5, 'healthuser05', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(6, 6, 'healthuser06', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(7, 7, 'healthuser07', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(8, 8, 'healthuser08', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(9, 9, 'healthuser09', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Inactive'),
(10, 10, 'healthuser10', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(11, 11, 'healthuser11', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(12, 12, 'healthuser12', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(13, 13, 'healthuser13', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active'),
(14, 14, 'healthuser14', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Inactive'),
(15, 15, 'healthuser15', 'DEMO_HASH_REPLACE_BEFORE_PRODUCTION', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vaccines`
--

CREATE TABLE `vaccines` (
  `VaccineID` int(11) NOT NULL,
  `ManufacturerID` int(11) DEFAULT NULL,
  `VaccineName` varchar(200) NOT NULL,
  `TargetDisease` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccines`
--

INSERT INTO `vaccines` (`VaccineID`, `ManufacturerID`, `VaccineName`, `TargetDisease`) VALUES
(1, 1, 'BCG', 'Tuberculosis'),
(2, 2, 'Hepatitis B', 'Hepatitis B'),
(3, 3, 'Pentavalent', 'Diphtheria, tetanus, pertussis, hepatitis B, Hib'),
(4, 4, 'Oral Polio Vaccine', 'Poliomyelitis'),
(5, 5, 'Inactivated Polio Vaccine', 'Poliomyelitis'),
(6, 6, 'Pneumococcal', 'Pneumococcal disease'),
(7, 7, 'Rotavirus', 'Rotavirus infection'),
(8, 8, 'Measles-containing vaccine', 'Measles'),
(9, 9, 'MMR', 'Measles, mumps, rubella'),
(10, 10, 'Tetanus-diphtheria', 'Tetanus and diphtheria'),
(11, 11, 'Influenza', 'Influenza'),
(12, 12, 'HPV', 'Human papillomavirus infection'),
(13, 13, 'Japanese encephalitis', 'Japanese encephalitis'),
(14, 14, 'COVID-19 vaccine', 'COVID-19'),
(15, 15, 'Varicella', 'Varicella');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_alerts`
--

CREATE TABLE `vaccine_alerts` (
  `VacAlertID` int(11) NOT NULL,
  `VacBatchID` int(11) NOT NULL,
  `AlertType` varchar(100) DEFAULT NULL,
  `AlertDate` datetime DEFAULT NULL,
  `Status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccine_alerts`
--

INSERT INTO `vaccine_alerts` (`VacAlertID`, `VacBatchID`, `AlertType`, `AlertDate`, `Status`) VALUES
(1, 1, 'Near expiry', '2026-01-01 08:00:00', 'Pending'),
(2, 2, 'Low stock', '2026-02-02 09:15:00', 'Reviewed'),
(3, 3, 'Cold-chain review', '2026-03-03 10:30:00', 'Resolved'),
(4, 4, 'Near expiry', '2026-04-04 11:45:00', 'Pending'),
(5, 5, 'Low stock', '2026-05-05 12:00:00', 'Reviewed'),
(6, 6, 'Cold-chain review', '2026-06-06 13:15:00', 'Resolved'),
(7, 7, 'Near expiry', '2026-07-07 14:30:00', 'Pending'),
(8, 8, 'Low stock', '2026-08-08 15:45:00', 'Reviewed'),
(9, 9, 'Cold-chain review', '2026-09-09 16:00:00', 'Resolved'),
(10, 10, 'Near expiry', '2026-10-10 08:15:00', 'Pending'),
(11, 11, 'Low stock', '2026-11-11 09:30:00', 'Reviewed'),
(12, 12, 'Cold-chain review', '2026-12-12 10:45:00', 'Resolved'),
(13, 13, 'Near expiry', '2026-01-13 11:00:00', 'Pending'),
(14, 14, 'Low stock', '2026-02-14 12:15:00', 'Reviewed'),
(15, 15, 'Cold-chain review', '2026-03-15 13:30:00', 'Resolved');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_batches`
--

CREATE TABLE `vaccine_batches` (
  `VacBatchID` int(11) NOT NULL,
  `VaccineID` int(11) NOT NULL,
  `BatchNumber` varchar(100) DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `CurrentStock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccine_batches`
--

INSERT INTO `vaccine_batches` (`VacBatchID`, `VaccineID`, `BatchNumber`, `ExpirationDate`, `CurrentStock`) VALUES
(1, 1, 'VAC-2026-0001', '2027-01-01', 80),
(2, 2, 'VAC-2026-0002', '2028-02-02', 78),
(3, 3, 'VAC-2026-0003', '2029-03-03', 76),
(4, 4, 'VAC-2026-0004', '2027-04-04', 74),
(5, 5, 'VAC-2026-0005', '2027-05-05', 72),
(6, 6, 'VAC-2026-0006', '2028-06-06', 70),
(7, 7, 'VAC-2026-0007', '2029-07-07', 68),
(8, 8, 'VAC-2026-0008', '2027-08-08', 66),
(9, 9, 'VAC-2026-0009', '2027-09-09', 64),
(10, 10, 'VAC-2026-0010', '2028-10-10', 62),
(11, 11, 'VAC-2026-0011', '2029-11-11', 60),
(12, 12, 'VAC-2026-0012', '2027-12-12', 58),
(13, 13, 'VAC-2026-0013', '2027-01-13', 56),
(14, 14, 'VAC-2026-0014', '2028-02-14', 54),
(15, 15, 'VAC-2026-0015', '2029-03-15', 52);

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_doses`
--

CREATE TABLE `vaccine_doses` (
  `DoseID` int(11) NOT NULL,
  `VaccineID` int(11) NOT NULL,
  `DoseNumber` int(11) DEFAULT NULL,
  `RecommendedAgeMonths` int(11) DEFAULT NULL,
  `MinIntervalDays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccine_doses`
--

INSERT INTO `vaccine_doses` (`DoseID`, `VaccineID`, `DoseNumber`, `RecommendedAgeMonths`, `MinIntervalDays`) VALUES
(1, 1, 1, 0, 0),
(2, 2, 2, 1, 28),
(3, 3, 3, 2, 28),
(4, 4, 1, 4, 28),
(5, 5, 2, 6, 28),
(6, 6, 3, 9, 30),
(7, 7, 1, 12, 30),
(8, 8, 2, 15, 30),
(9, 9, 3, 18, 30),
(10, 10, 1, 24, 30),
(11, 11, 2, 36, 30),
(12, 12, 3, 48, 30),
(13, 13, 1, 60, 30),
(14, 14, 2, 72, 30),
(15, 15, 3, 84, 30);

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_transactions`
--

CREATE TABLE `vaccine_transactions` (
  `VacTransactionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `VacBatchID` int(11) NOT NULL,
  `TransactionType` varchar(50) DEFAULT NULL,
  `QuantityMoved` int(11) NOT NULL,
  `TransactionDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccine_transactions`
--

INSERT INTO `vaccine_transactions` (`VacTransactionID`, `UserID`, `SupplierID`, `VacBatchID`, `TransactionType`, `QuantityMoved`, `TransactionDate`) VALUES
(1, 1, 1, 1, 'Stock In', 16, '2026-01-01 08:00:00'),
(2, 2, 2, 2, 'Administered', 17, '2026-02-02 09:15:00'),
(3, 3, 3, 3, 'Adjustment', 18, '2026-03-03 10:30:00'),
(4, 4, 4, 4, 'Stock In', 19, '2026-04-04 11:45:00'),
(5, 5, 5, 5, 'Administered', 20, '2026-05-05 12:00:00'),
(6, 6, 6, 6, 'Adjustment', 21, '2026-06-06 13:15:00'),
(7, 7, 7, 7, 'Stock In', 22, '2026-07-07 14:30:00'),
(8, 8, 8, 8, 'Administered', 23, '2026-08-08 15:45:00'),
(9, 9, 9, 9, 'Adjustment', 24, '2026-09-09 16:00:00'),
(10, 10, 10, 10, 'Stock In', 25, '2026-10-10 08:15:00'),
(11, 11, 11, 11, 'Administered', 26, '2026-11-11 09:30:00'),
(12, 12, 12, 12, 'Adjustment', 27, '2026-12-12 10:45:00'),
(13, 13, 13, 13, 'Stock In', 28, '2026-01-13 11:00:00'),
(14, 14, 14, 14, 'Administered', 29, '2026-02-14 12:15:00'),
(15, 15, 15, 15, 'Adjustment', 30, '2026-03-15 13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `vitamins`
--

CREATE TABLE `vitamins` (
  `VitaminID` int(11) NOT NULL,
  `ManufacturerID` int(11) DEFAULT NULL,
  `VitaminName` varchar(200) NOT NULL,
  `DosageForm` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vitamins`
--

INSERT INTO `vitamins` (`VitaminID`, `ManufacturerID`, `VitaminName`, `DosageForm`) VALUES
(1, 1, 'Vitamin A', 'Capsule'),
(2, 2, 'Iron supplement', 'Tablet'),
(3, 3, 'Folic acid', 'Tablet'),
(4, 4, 'Vitamin D', 'Drops'),
(5, 5, 'Multivitamin', 'Tablet'),
(6, 6, 'Vitamin A', 'Capsule'),
(7, 7, 'Iron supplement', 'Tablet'),
(8, 8, 'Folic acid', 'Tablet'),
(9, 9, 'Vitamin D', 'Drops'),
(10, 10, 'Multivitamin', 'Tablet'),
(11, 11, 'Vitamin A', 'Capsule'),
(12, 12, 'Iron supplement', 'Tablet'),
(13, 13, 'Folic acid', 'Tablet'),
(14, 14, 'Vitamin D', 'Drops'),
(15, 15, 'Multivitamin', 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `vitamin_alerts`
--

CREATE TABLE `vitamin_alerts` (
  `VitAlertID` int(11) NOT NULL,
  `VitBatchID` int(11) NOT NULL,
  `AlertType` varchar(100) DEFAULT NULL,
  `AlertDate` datetime DEFAULT NULL,
  `Status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vitamin_alerts`
--

INSERT INTO `vitamin_alerts` (`VitAlertID`, `VitBatchID`, `AlertType`, `AlertDate`, `Status`) VALUES
(1, 1, 'Near expiry', '2026-01-01 08:00:00', 'Pending'),
(2, 2, 'Low stock', '2026-02-02 09:15:00', 'Reviewed'),
(3, 3, 'Expired batch', '2026-03-03 10:30:00', 'Resolved'),
(4, 4, 'Near expiry', '2026-04-04 11:45:00', 'Pending'),
(5, 5, 'Low stock', '2026-05-05 12:00:00', 'Reviewed'),
(6, 6, 'Expired batch', '2026-06-06 13:15:00', 'Resolved'),
(7, 7, 'Near expiry', '2026-07-07 14:30:00', 'Pending'),
(8, 8, 'Low stock', '2026-08-08 15:45:00', 'Reviewed'),
(9, 9, 'Expired batch', '2026-09-09 16:00:00', 'Resolved'),
(10, 10, 'Near expiry', '2026-10-10 08:15:00', 'Pending'),
(11, 11, 'Low stock', '2026-11-11 09:30:00', 'Reviewed'),
(12, 12, 'Expired batch', '2026-12-12 10:45:00', 'Resolved'),
(13, 13, 'Near expiry', '2026-01-13 11:00:00', 'Pending'),
(14, 14, 'Low stock', '2026-02-14 12:15:00', 'Reviewed'),
(15, 15, 'Expired batch', '2026-03-15 13:30:00', 'Resolved');

-- --------------------------------------------------------

--
-- Table structure for table `vitamin_batches`
--

CREATE TABLE `vitamin_batches` (
  `VitBatchID` int(11) NOT NULL,
  `VitaminID` int(11) NOT NULL,
  `BatchNumber` varchar(100) DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `CurrentStock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vitamin_batches`
--

INSERT INTO `vitamin_batches` (`VitBatchID`, `VitaminID`, `BatchNumber`, `ExpirationDate`, `CurrentStock`) VALUES
(1, 1, 'VIT-2026-0001', '2027-01-01', 150),
(2, 2, 'VIT-2026-0002', '2028-02-02', 146),
(3, 3, 'VIT-2026-0003', '2029-03-03', 142),
(4, 4, 'VIT-2026-0004', '2027-04-04', 138),
(5, 5, 'VIT-2026-0005', '2027-05-05', 134),
(6, 6, 'VIT-2026-0006', '2028-06-06', 130),
(7, 7, 'VIT-2026-0007', '2029-07-07', 126),
(8, 8, 'VIT-2026-0008', '2027-08-08', 122),
(9, 9, 'VIT-2026-0009', '2027-09-09', 118),
(10, 10, 'VIT-2026-0010', '2028-10-10', 114),
(11, 11, 'VIT-2026-0011', '2029-11-11', 110),
(12, 12, 'VIT-2026-0012', '2027-12-12', 106),
(13, 13, 'VIT-2026-0013', '2027-01-13', 102),
(14, 14, 'VIT-2026-0014', '2028-02-14', 98),
(15, 15, 'VIT-2026-0015', '2029-03-15', 94);

-- --------------------------------------------------------

--
-- Table structure for table `vitamin_dispensations`
--

CREATE TABLE `vitamin_dispensations` (
  `VitDispensationID` int(11) NOT NULL,
  `VitTransactionID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `DosageInstructions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vitamin_dispensations`
--

INSERT INTO `vitamin_dispensations` (`VitDispensationID`, `VitTransactionID`, `PatientID`, `DosageInstructions`) VALUES
(1, 1, 1, 'Administer according to the health worker instructions.'),
(2, 2, 2, 'Follow the approved dosage schedule.'),
(3, 3, 3, 'Record administration in the patient record.'),
(4, 4, 4, 'Administer according to the health worker instructions.'),
(5, 5, 5, 'Follow the approved dosage schedule.'),
(6, 6, 6, 'Record administration in the patient record.'),
(7, 7, 7, 'Administer according to the health worker instructions.'),
(8, 8, 8, 'Follow the approved dosage schedule.'),
(9, 9, 9, 'Record administration in the patient record.'),
(10, 10, 10, 'Administer according to the health worker instructions.'),
(11, 11, 11, 'Follow the approved dosage schedule.'),
(12, 12, 12, 'Record administration in the patient record.'),
(13, 13, 13, 'Administer according to the health worker instructions.'),
(14, 14, 14, 'Follow the approved dosage schedule.'),
(15, 15, 15, 'Record administration in the patient record.');

-- --------------------------------------------------------

--
-- Table structure for table `vitamin_transactions`
--

CREATE TABLE `vitamin_transactions` (
  `VitTransactionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `VitBatchID` int(11) NOT NULL,
  `TransactionType` varchar(50) DEFAULT NULL,
  `QuantityMoved` int(11) NOT NULL,
  `TransactionDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vitamin_transactions`
--

INSERT INTO `vitamin_transactions` (`VitTransactionID`, `UserID`, `SupplierID`, `VitBatchID`, `TransactionType`, `QuantityMoved`, `TransactionDate`) VALUES
(1, 1, 1, 1, 'Stock In', 13, '2026-01-01 08:00:00'),
(2, 2, 2, 2, 'Dispensed', 14, '2026-02-02 09:15:00'),
(3, 3, 3, 3, 'Adjustment', 15, '2026-03-03 10:30:00'),
(4, 4, 4, 4, 'Stock In', 16, '2026-04-04 11:45:00'),
(5, 5, 5, 5, 'Dispensed', 17, '2026-05-05 12:00:00'),
(6, 6, 6, 6, 'Adjustment', 18, '2026-06-06 13:15:00'),
(7, 7, 7, 7, 'Stock In', 19, '2026-07-07 14:30:00'),
(8, 8, 8, 8, 'Dispensed', 20, '2026-08-08 15:45:00'),
(9, 9, 9, 9, 'Adjustment', 21, '2026-09-09 16:00:00'),
(10, 10, 10, 10, 'Stock In', 22, '2026-10-10 08:15:00'),
(11, 11, 11, 11, 'Dispensed', 23, '2026-11-11 09:30:00'),
(12, 12, 12, 12, 'Adjustment', 24, '2026-12-12 10:45:00'),
(13, 13, 13, 13, 'Stock In', 25, '2026-01-13 11:00:00'),
(14, 14, 14, 14, 'Dispensed', 26, '2026-02-14 12:15:00'),
(15, 15, 15, 15, 'Adjustment', 27, '2026-03-15 13:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`LogID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`ConsultationID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`DeliveryID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD PRIMARY KEY (`ContactID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `immunization_schedules`
--
ALTER TABLE `immunization_schedules`
  ADD PRIMARY KEY (`ScheduleID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `DoseID` (`DoseID`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`ManufacturerID`);

--
-- Indexes for table `medical_conditions`
--
ALTER TABLE `medical_conditions`
  ADD PRIMARY KEY (`ConditionID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`MedicineID`),
  ADD KEY `ManufacturerID` (`ManufacturerID`);

--
-- Indexes for table `medicine_alerts`
--
ALTER TABLE `medicine_alerts`
  ADD PRIMARY KEY (`MedAlertID`),
  ADD KEY `MedBatchID` (`MedBatchID`);

--
-- Indexes for table `medicine_batches`
--
ALTER TABLE `medicine_batches`
  ADD PRIMARY KEY (`MedBatchID`),
  ADD KEY `MedicineID` (`MedicineID`);

--
-- Indexes for table `medicine_dispensations`
--
ALTER TABLE `medicine_dispensations`
  ADD PRIMARY KEY (`MedDispensationID`),
  ADD KEY `MedTransactionID` (`MedTransactionID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `medicine_transactions`
--
ALTER TABLE `medicine_transactions`
  ADD PRIMARY KEY (`MedTransactionID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `SupplierID` (`SupplierID`),
  ADD KEY `MedBatchID` (`MedBatchID`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`ModuleID`);

--
-- Indexes for table `nutrition_assessments`
--
ALTER TABLE `nutrition_assessments`
  ADD PRIMARY KEY (`AssessmentID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`PatientID`),
  ADD KEY `PurokID` (`PurokID`);

--
-- Indexes for table `patient_immunizations`
--
ALTER TABLE `patient_immunizations`
  ADD PRIMARY KEY (`ImmunizationID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `DoseID` (`DoseID`),
  ADD KEY `VacBatchID` (`VacBatchID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `patient_medical_history`
--
ALTER TABLE `patient_medical_history`
  ADD PRIMARY KEY (`HistoryID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `ConditionID` (`ConditionID`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`PermissionID`);

--
-- Indexes for table `prenatal_visits`
--
ALTER TABLE `prenatal_visits`
  ADD PRIMARY KEY (`VisitID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `puroks`
--
ALTER TABLE `puroks`
  ADD PRIMARY KEY (`PurokID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`RoleID`,`ModuleID`,`PermissionID`),
  ADD KEY `ModuleID` (`ModuleID`),
  ADD KEY `PermissionID` (`PermissionID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`SupplyID`),
  ADD KEY `ManufacturerID` (`ManufacturerID`);

--
-- Indexes for table `supply_alerts`
--
ALTER TABLE `supply_alerts`
  ADD PRIMARY KEY (`SupAlertID`),
  ADD KEY `SupBatchID` (`SupBatchID`);

--
-- Indexes for table `supply_batches`
--
ALTER TABLE `supply_batches`
  ADD PRIMARY KEY (`SupBatchID`),
  ADD KEY `SupplyID` (`SupplyID`);

--
-- Indexes for table `supply_transactions`
--
ALTER TABLE `supply_transactions`
  ADD PRIMARY KEY (`SupTransactionID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `SupplierID` (`SupplierID`),
  ADD KEY `SupBatchID` (`SupBatchID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indexes for table `vaccines`
--
ALTER TABLE `vaccines`
  ADD PRIMARY KEY (`VaccineID`),
  ADD KEY `ManufacturerID` (`ManufacturerID`);

--
-- Indexes for table `vaccine_alerts`
--
ALTER TABLE `vaccine_alerts`
  ADD PRIMARY KEY (`VacAlertID`),
  ADD KEY `VacBatchID` (`VacBatchID`);

--
-- Indexes for table `vaccine_batches`
--
ALTER TABLE `vaccine_batches`
  ADD PRIMARY KEY (`VacBatchID`),
  ADD KEY `VaccineID` (`VaccineID`);

--
-- Indexes for table `vaccine_doses`
--
ALTER TABLE `vaccine_doses`
  ADD PRIMARY KEY (`DoseID`),
  ADD KEY `VaccineID` (`VaccineID`);

--
-- Indexes for table `vaccine_transactions`
--
ALTER TABLE `vaccine_transactions`
  ADD PRIMARY KEY (`VacTransactionID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `SupplierID` (`SupplierID`),
  ADD KEY `VacBatchID` (`VacBatchID`);

--
-- Indexes for table `vitamins`
--
ALTER TABLE `vitamins`
  ADD PRIMARY KEY (`VitaminID`),
  ADD KEY `ManufacturerID` (`ManufacturerID`);

--
-- Indexes for table `vitamin_alerts`
--
ALTER TABLE `vitamin_alerts`
  ADD PRIMARY KEY (`VitAlertID`),
  ADD KEY `VitBatchID` (`VitBatchID`);

--
-- Indexes for table `vitamin_batches`
--
ALTER TABLE `vitamin_batches`
  ADD PRIMARY KEY (`VitBatchID`),
  ADD KEY `VitaminID` (`VitaminID`);

--
-- Indexes for table `vitamin_dispensations`
--
ALTER TABLE `vitamin_dispensations`
  ADD PRIMARY KEY (`VitDispensationID`),
  ADD KEY `VitTransactionID` (`VitTransactionID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `vitamin_transactions`
--
ALTER TABLE `vitamin_transactions`
  ADD PRIMARY KEY (`VitTransactionID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `SupplierID` (`SupplierID`),
  ADD KEY `VitBatchID` (`VitBatchID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `ConsultationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `DeliveryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  MODIFY `ContactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `immunization_schedules`
--
ALTER TABLE `immunization_schedules`
  MODIFY `ScheduleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `ManufacturerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `medical_conditions`
--
ALTER TABLE `medical_conditions`
  MODIFY `ConditionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `MedicineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `medicine_alerts`
--
ALTER TABLE `medicine_alerts`
  MODIFY `MedAlertID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `medicine_batches`
--
ALTER TABLE `medicine_batches`
  MODIFY `MedBatchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `medicine_dispensations`
--
ALTER TABLE `medicine_dispensations`
  MODIFY `MedDispensationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `medicine_transactions`
--
ALTER TABLE `medicine_transactions`
  MODIFY `MedTransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `ModuleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nutrition_assessments`
--
ALTER TABLE `nutrition_assessments`
  MODIFY `AssessmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patient_immunizations`
--
ALTER TABLE `patient_immunizations`
  MODIFY `ImmunizationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `patient_medical_history`
--
ALTER TABLE `patient_medical_history`
  MODIFY `HistoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `PermissionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `prenatal_visits`
--
ALTER TABLE `prenatal_visits`
  MODIFY `VisitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `puroks`
--
ALTER TABLE `puroks`
  MODIFY `PurokID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `SupplyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `supply_alerts`
--
ALTER TABLE `supply_alerts`
  MODIFY `SupAlertID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `supply_batches`
--
ALTER TABLE `supply_batches`
  MODIFY `SupBatchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `supply_transactions`
--
ALTER TABLE `supply_transactions`
  MODIFY `SupTransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vaccines`
--
ALTER TABLE `vaccines`
  MODIFY `VaccineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vaccine_alerts`
--
ALTER TABLE `vaccine_alerts`
  MODIFY `VacAlertID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vaccine_batches`
--
ALTER TABLE `vaccine_batches`
  MODIFY `VacBatchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vaccine_doses`
--
ALTER TABLE `vaccine_doses`
  MODIFY `DoseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vaccine_transactions`
--
ALTER TABLE `vaccine_transactions`
  MODIFY `VacTransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vitamins`
--
ALTER TABLE `vitamins`
  MODIFY `VitaminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vitamin_alerts`
--
ALTER TABLE `vitamin_alerts`
  MODIFY `VitAlertID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vitamin_batches`
--
ALTER TABLE `vitamin_batches`
  MODIFY `VitBatchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vitamin_dispensations`
--
ALTER TABLE `vitamin_dispensations`
  MODIFY `VitDispensationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vitamin_transactions`
--
ALTER TABLE `vitamin_transactions`
  MODIFY `VitTransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `consultations`
--
ALTER TABLE `consultations`
  ADD CONSTRAINT `consultations_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  ADD CONSTRAINT `consultations_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD CONSTRAINT `delivery_histories_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`);

--
-- Constraints for table `emergency_contacts`
--
ALTER TABLE `emergency_contacts`
  ADD CONSTRAINT `emergency_contacts_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`);

--
-- Constraints for table `immunization_schedules`
--
ALTER TABLE `immunization_schedules`
  ADD CONSTRAINT `immunization_schedules_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  ADD CONSTRAINT `immunization_schedules_ibfk_2` FOREIGN KEY (`DoseID`) REFERENCES `vaccine_doses` (`DoseID`);

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_ibfk_1` FOREIGN KEY (`ManufacturerID`) REFERENCES `manufacturers` (`ManufacturerID`);

--
-- Constraints for table `medicine_alerts`
--
ALTER TABLE `medicine_alerts`
  ADD CONSTRAINT `medicine_alerts_ibfk_1` FOREIGN KEY (`MedBatchID`) REFERENCES `medicine_batches` (`MedBatchID`);

--
-- Constraints for table `medicine_batches`
--
ALTER TABLE `medicine_batches`
  ADD CONSTRAINT `medicine_batches_ibfk_1` FOREIGN KEY (`MedicineID`) REFERENCES `medicines` (`MedicineID`);

--
-- Constraints for table `medicine_dispensations`
--
ALTER TABLE `medicine_dispensations`
  ADD CONSTRAINT `medicine_dispensations_ibfk_1` FOREIGN KEY (`MedTransactionID`) REFERENCES `medicine_transactions` (`MedTransactionID`),
  ADD CONSTRAINT `medicine_dispensations_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`);

--
-- Constraints for table `medicine_transactions`
--
ALTER TABLE `medicine_transactions`
  ADD CONSTRAINT `medicine_transactions_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `medicine_transactions_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`),
  ADD CONSTRAINT `medicine_transactions_ibfk_3` FOREIGN KEY (`MedBatchID`) REFERENCES `medicine_batches` (`MedBatchID`);

--
-- Constraints for table `nutrition_assessments`
--
ALTER TABLE `nutrition_assessments`
  ADD CONSTRAINT `nutrition_assessments_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  ADD CONSTRAINT `nutrition_assessments_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`PurokID`) REFERENCES `puroks` (`PurokID`);

--
-- Constraints for table `patient_immunizations`
--
ALTER TABLE `patient_immunizations`
  ADD CONSTRAINT `patient_immunizations_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  ADD CONSTRAINT `patient_immunizations_ibfk_2` FOREIGN KEY (`DoseID`) REFERENCES `vaccine_doses` (`DoseID`),
  ADD CONSTRAINT `patient_immunizations_ibfk_3` FOREIGN KEY (`VacBatchID`) REFERENCES `vaccine_batches` (`VacBatchID`),
  ADD CONSTRAINT `patient_immunizations_ibfk_4` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `patient_medical_history`
--
ALTER TABLE `patient_medical_history`
  ADD CONSTRAINT `patient_medical_history_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  ADD CONSTRAINT `patient_medical_history_ibfk_2` FOREIGN KEY (`ConditionID`) REFERENCES `medical_conditions` (`ConditionID`);

--
-- Constraints for table `prenatal_visits`
--
ALTER TABLE `prenatal_visits`
  ADD CONSTRAINT `prenatal_visits_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  ADD CONSTRAINT `prenatal_visits_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`),
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`ModuleID`) REFERENCES `modules` (`ModuleID`),
  ADD CONSTRAINT `role_permissions_ibfk_3` FOREIGN KEY (`PermissionID`) REFERENCES `permissions` (`PermissionID`);

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`ManufacturerID`) REFERENCES `manufacturers` (`ManufacturerID`);

--
-- Constraints for table `supply_alerts`
--
ALTER TABLE `supply_alerts`
  ADD CONSTRAINT `supply_alerts_ibfk_1` FOREIGN KEY (`SupBatchID`) REFERENCES `supply_batches` (`SupBatchID`);

--
-- Constraints for table `supply_batches`
--
ALTER TABLE `supply_batches`
  ADD CONSTRAINT `supply_batches_ibfk_1` FOREIGN KEY (`SupplyID`) REFERENCES `supplies` (`SupplyID`);

--
-- Constraints for table `supply_transactions`
--
ALTER TABLE `supply_transactions`
  ADD CONSTRAINT `supply_transactions_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `supply_transactions_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`),
  ADD CONSTRAINT `supply_transactions_ibfk_3` FOREIGN KEY (`SupBatchID`) REFERENCES `supply_batches` (`SupBatchID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`);

--
-- Constraints for table `vaccines`
--
ALTER TABLE `vaccines`
  ADD CONSTRAINT `vaccines_ibfk_1` FOREIGN KEY (`ManufacturerID`) REFERENCES `manufacturers` (`ManufacturerID`);

--
-- Constraints for table `vaccine_alerts`
--
ALTER TABLE `vaccine_alerts`
  ADD CONSTRAINT `vaccine_alerts_ibfk_1` FOREIGN KEY (`VacBatchID`) REFERENCES `vaccine_batches` (`VacBatchID`);

--
-- Constraints for table `vaccine_batches`
--
ALTER TABLE `vaccine_batches`
  ADD CONSTRAINT `vaccine_batches_ibfk_1` FOREIGN KEY (`VaccineID`) REFERENCES `vaccines` (`VaccineID`);

--
-- Constraints for table `vaccine_doses`
--
ALTER TABLE `vaccine_doses`
  ADD CONSTRAINT `vaccine_doses_ibfk_1` FOREIGN KEY (`VaccineID`) REFERENCES `vaccines` (`VaccineID`);

--
-- Constraints for table `vaccine_transactions`
--
ALTER TABLE `vaccine_transactions`
  ADD CONSTRAINT `vaccine_transactions_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `vaccine_transactions_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`),
  ADD CONSTRAINT `vaccine_transactions_ibfk_3` FOREIGN KEY (`VacBatchID`) REFERENCES `vaccine_batches` (`VacBatchID`);

--
-- Constraints for table `vitamins`
--
ALTER TABLE `vitamins`
  ADD CONSTRAINT `vitamins_ibfk_1` FOREIGN KEY (`ManufacturerID`) REFERENCES `manufacturers` (`ManufacturerID`);

--
-- Constraints for table `vitamin_alerts`
--
ALTER TABLE `vitamin_alerts`
  ADD CONSTRAINT `vitamin_alerts_ibfk_1` FOREIGN KEY (`VitBatchID`) REFERENCES `vitamin_batches` (`VitBatchID`);

--
-- Constraints for table `vitamin_batches`
--
ALTER TABLE `vitamin_batches`
  ADD CONSTRAINT `vitamin_batches_ibfk_1` FOREIGN KEY (`VitaminID`) REFERENCES `vitamins` (`VitaminID`);

--
-- Constraints for table `vitamin_dispensations`
--
ALTER TABLE `vitamin_dispensations`
  ADD CONSTRAINT `vitamin_dispensations_ibfk_1` FOREIGN KEY (`VitTransactionID`) REFERENCES `vitamin_transactions` (`VitTransactionID`),
  ADD CONSTRAINT `vitamin_dispensations_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`);

--
-- Constraints for table `vitamin_transactions`
--
ALTER TABLE `vitamin_transactions`
  ADD CONSTRAINT `vitamin_transactions_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `vitamin_transactions_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`),
  ADD CONSTRAINT `vitamin_transactions_ibfk_3` FOREIGN KEY (`VitBatchID`) REFERENCES `vitamin_batches` (`VitBatchID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
