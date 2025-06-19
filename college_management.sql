-- MySQL dump 10.13  Distrib 5.5.30, for Win32 (x86)
--
-- Host: localhost    Database: college_management
-- ------------------------------------------------------
-- Server version	5.5.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_details` (
  `firstname` varchar(15) DEFAULT NULL,
  `lastname` varchar(15) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `mailid` varchar(30) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES ('Abhi','Anand','abhi','0wpEgCvXon','abhi@gmail.com','9988122244'),('Ishu','Anand','abhi','5RLcSIZLsV','abhianand@yahoo.com','8976567698'),('Diksha','Anand','diksha','nfegHazeJF','diksha@gmail.com','9988667845'),('Dinesh','Sharma','dinesh','gWafePUiCB','dinesh@gmail.com','7788778877'),('Harpinder','Singh','happy','12345','happy123@gmail.com','9809809809'),('Jashandeep','Kaur','jashan','lBOePmK8uA','jashan@gmail.com','9988998880'),('rahul','anand','rishu','anand','rishuanand@yahoo.in','9845983543'),('Robin','Singh','robin','W9Wd8hV4sP','robin1@gmail.com','7878787878'),('Priya','Shoker','priya','maninder','shokerp@yahoo.in','8976453201'),('Yogesh','Sharma','sharma','oYJgCn2Mwt','ysh1990@gmail.com','8447894534');
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquiry` (
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mailid` varchar(30) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `phno` varchar(20) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
/*!40000 ALTER TABLE `enquiry` DISABLE KEYS */;
INSERT INTO `enquiry` VALUES ('Mandeep','Dhindsa','MCA','mandy@gmail.com','9078761234','Sangrur'),('Manpreet','Atwal','B.Pharmacy','atwal@gmail.com','7890676776','Jalandhar'),('Hardeep','Dhindsa','B.Teach(EC)','harry@gmail.com','9041123560','Moga'),('Sangeet','Ghorpade','BCA','sangeet@gmail.con','9988122502','Bombay'),('Sonu','Bawa','MCA','bawas@gmail.com','9988122402','Barnala'),('Prince','Brar','MCA','pbrar@gmail.com','9988122405','Bathinda');
/*!40000 ALTER TABLE `enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_ques`
--

DROP TABLE IF EXISTS `exam_ques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_ques` (
  `sub_code` varchar(80) DEFAULT NULL,
  `exam_ques` varchar(200) DEFAULT NULL,
  `ans1` varchar(100) DEFAULT NULL,
  `ans2` varchar(100) DEFAULT NULL,
  `ans3` varchar(100) DEFAULT NULL,
  `ans4` varchar(100) DEFAULT NULL,
  `right_ans` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_ques`
--

LOCK TABLES `exam_ques` WRITE;
/*!40000 ALTER TABLE `exam_ques` DISABLE KEYS */;
INSERT INTO `exam_ques` VALUES ('MCA-102','Which of the following relationship is known as inheritance relationship?','?has-a? relationship','?is-a? relationship','association relationship','none of the above','?has-a? relationship'),('MCA-102','Originally ?C? was developed as:','System programming language','General purpose language','Data processing language','None of above','Data processing language'),('MCA-102','Which of the following is not a file operation:','Repositioning','Truncating','Appending','None of above','Repositioning'),('MCA-102','Which looping process checks the test condition at the end of the loop?','for','while','do-while','no looping process checks the test condition at the end','for'),('MCA-102','The default access level assigned to members of a class is ___________','Private','Public','Protected','Needs to be assigned','Protected'),('MCA-504','CSS is an acronym for','Cascading Style Sheet','Costume Style Sheet','Cascading System Style','None of the Above','Cascading Style Sheet'),('MCA-504','What is the use of Forms in HTML?','to display contents of email.','to display animation effect.','to collect user?s input.','None of the Above.','to collect user?s input.'),('MCA-504','Which of the following is correct character entities for ?Copyright? symbol?','A. &#149;','B. &#159;','C. &#169;','D. &#179;','C. &#169;'),('MCA-504','HTML was first proposed in year ___.','1980','1990','1995','2000','1990'),('101','HTML tags are surrounded by ___ brackets','a','b','c','r','a');
/*!40000 ALTER TABLE `exam_ques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library` (
  `sub_code` varchar(30) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `book` varchar(80) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `course` varchar(30) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES ('MCA-102','Object Oriented Programming in C++','C++ - The Complete Reference','Herbert Schildt','MCA',1,'http://www.uml.org.cn/c++/pdf/C%2B%2BComplete%20Reference%20(3rd%20Ed.).pdf'),('MCA-102','Object Oriented Programming in C++','Let Us C','Yashwant kanetkar ','MCA',1,'http://www.cluster2.hostgator.co.in/files/writeable/uploads/hostgator99706/file/letusc-yashwantkanetkar.pdf'),('MCA 204','Data Communication and Networks','Data Communication And Networking ','William Stallings','MCA',2,'http://www.cluster2.hostgator.co.in/files/writeable/uploads/hostgator99706/file/letusc-yashwantkanetkar.pdf'),('MCA 304','Java Programming','Java2 - The Complete Reference','Hertbert Schildt','MCA',3,'http://www.psgtuts.com/Online%20form/java%202%20complete%20reference%205th%20ed%20Herbert%20Schildt.pdf'),('MCA 403','Interactive Computer Graphics','Computer Graphics','Donald Hearn','MCA',4,'http://www.ddegjust.ac.in/studymaterial/mca-3/ms-13.pdf');
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_admission`
--

DROP TABLE IF EXISTS `student_admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_admission` (
  `reg_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(15) DEFAULT NULL,
  `lastname` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `course` varchar(15) DEFAULT NULL,
  `prev_qual` varchar(15) DEFAULT NULL,
  `prev_marks` float DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `mailid` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`reg_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_admission`
--

LOCK TABLES `student_admission` WRITE;
/*!40000 ALTER TABLE `student_admission` DISABLE KEYS */;
INSERT INTO `student_admission` VALUES (1,'Robin','Malhotra','Male',2015,'MCA','BCA',85,'9089987812','robin@gmail.com','KPIFGLljmQ'),(2,'Ishu','Anand','Male',2015,'MCA','BCA',75,'9872539567','ishu@gmail.com','KPx1MSBmJ4'),(3,'khjklhkl','jkljkl','Male',2010,'B.Tech (CSE)','+2 Arts',13,'13','hjgtygh','GdEZKQYrgS'),(4,'Vidhi','Sharma','Female',2009,'B.Tech (ECE)','+2 Non.Med',80,'9977688619','vidhisharma@yahoo.in','BZYN6HcAJU');
/*!40000 ALTER TABLE `student_admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_hosdetails`
--

DROP TABLE IF EXISTS `student_hosdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_hosdetails` (
  `wname` varchar(20) DEFAULT NULL,
  `troom` int(11) DEFAULT NULL,
  `sname` varchar(25) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `rollno` int(11) DEFAULT NULL,
  `roomno` int(11) DEFAULT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `mailid` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `fees` varchar(20) DEFAULT NULL,
  `admfees` varchar(25) DEFAULT NULL,
  `balance` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_hosdetails`
--

LOCK TABLES `student_hosdetails` WRITE;
/*!40000 ALTER TABLE `student_hosdetails` DISABLE KEYS */;
INSERT INTO `student_hosdetails` VALUES ('Sushma',500,'Ritesh','B.Tech(ECE)',1001,1,'Ground','9089909090','ritesh@gmail.com','male','Amritsar','30000','5000','25000'),('Sushma',500,'Hitesh','B.Tech(ECE)',1002,1,'Ground','9056188654','hitesh@gmail.com','male','jalandhar','30000','10000','20000');
/*!40000 ALTER TABLE `student_hosdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_profile`
--

DROP TABLE IF EXISTS `student_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_profile` (
  `reg_no` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(25) DEFAULT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `prev_qual` varchar(25) DEFAULT NULL,
  `prev_marks` float DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `mailid` varchar(40) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `father_name` varchar(25) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`reg_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_profile`
--

LOCK TABLES `student_profile` WRITE;
/*!40000 ALTER TABLE `student_profile` DISABLE KEYS */;
INSERT INTO `student_profile` VALUES (1,'Robin','Malhotra','Male',2015,'MCA','BCA',85,'9089987812','robin@gmail.com','anand','Jaswinder Malhotra','Phagwara','6/8/1990','What is name of your best friend?','Deepika'),(2,'Ishu','Anand','Male',2015,'MCA','BCA',75,'9872539567','ishu@gmail.com','ishu','Ganesh Anand','Banga','22/4/1990','What is name of your best friend?','rahul'),(3,'Abhi','Anand','Male',2010,'B.Tech (CSE)','+2 Arts',72,'9456789012','abhi@live.com','divya','Hitesh','Amritsar','4/6/1988','Who is your favorite person?','dad'),(4,'Vidhi','Sharma','Female',2009,'B.Tech (ECE)','+2 Non.Med',80,'9977688619','vidhisharma@yahoo.in','BZYN6HcAJU',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `student_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_result`
--

DROP TABLE IF EXISTS `student_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_result` (
  `reg_no` mediumtext,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `course` varchar(30) DEFAULT NULL,
  `sub_code` varchar(30) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `result_percentage` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_result`
--

LOCK TABLES `student_result` WRITE;
/*!40000 ALTER TABLE `student_result` DISABLE KEYS */;
INSERT INTO `student_result` VALUES ('1','Robin','Malhotra',2009,'B.Tech (ECE)','101','os',100),('1','Robin','Malhotra',2009,'B.Tech (ECE)','101','os',100),('1','Robin','Malhotra',2009,'B.Tech (ECE)','101','os',-40),('1','Robin','Malhotra',2009,'B.Tech (ECE)','101','os',-40),('1','Robin','Malhotra',2009,'B.Tech (ECE)','101','os',-40),('1','Robin','Malhotra',2009,'B.Tech (ECE)','101','os',-40),('1','Robin','Malhotra',2009,'B.Tech (ECE)','101','os',-40),('1','Robin','Malhotra',2009,'B.Tech (ECE)','101','os',-40),('1','Robin','Malhotra',2009,'B.Tech (ECE)','101','os',100),('3','Ishu','Anand',2015,'MCA','MCA-102','Object Oriented Programming in C++',100),('3','Ishu','Anand',2015,'MCA','MCA-102','Object Oriented Programming in C++',100),('3','Ishu','Anand',2015,'MCA','MCA-102','Object Oriented Programming in C++',100),('3','Ishu','Anand',2015,'MCA','MCA-102','Object Oriented Programming in C++',100),('3','Ishu','Anand',2015,'MCA','MCA-102','Object Oriented Programming in C++',100),('3','Ishu','Anand',2015,'MCA','MCA-102','Object Oriented Programming in C++',100),('3','Ishu','Anand',2015,'MCA','MCA-102','Object Oriented Programming in C++',100),('3','Ishu','Anand',2015,'MCA','MCA-504','Object Oriented Analysis & Design with UML',30),('3','Ishu','Anand',2015,'MCA','MCA-102','Object Oriented Programming in C++',24),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',4),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',16),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',44),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',50),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',50),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',12),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',50),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',75),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',80),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',160),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',160),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',160),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',80),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',60),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',52),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',55),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',25),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',0),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',25),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',-25),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',50),('1','Robin','Malhotra',2015,'MCA','MCA-102','Object Oriented Programming in C++',75);
/*!40000 ALTER TABLE `student_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `subject` varchar(50) DEFAULT NULL,
  `sub_code` varchar(20) DEFAULT NULL,
  `paper_id` varchar(20) DEFAULT NULL,
  `course` varchar(25) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `max_mrks` int(11) DEFAULT NULL,
  `min_mrks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('Operating System','MCA-404','M404','MCA',4,100,40),('Object Oriented Programming in C++','MCA-102','M102','MCA',1,100,40),('Object Oriented Analysis & Design with UML','MCA-504','M504','MCA',5,100,40),('Data Communication and Networks','MCA 204','M204','MCA',2,100,40),('Java Programming','MCA 304','M304','MCA',3,100,40),('Interactive Computer Graphics','MCA 403','M403','MCA',4,100,40),('Java','1','j1','B.Tech (ECE)',1,100,40);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updates` (
  `event_date` varchar(20) DEFAULT NULL,
  `news` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updates`
--

LOCK TABLES `updates` WRITE;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
INSERT INTO `updates` VALUES ('15/4/2015','Admission Open(Batch 2015)'),('16/4/2015','Monster Instict@CGC Landran for B.tech(All),BBA,MCA and MBA (HR& marketing) for 2015 batch. Job Location Mumbai.'),('29/4/2015','Solphys@CGC Landran for B.Tech(Electronics,Electrical & ME)2015 Batch. Eligibility 60%. Reprting Time 10:30 a.m. Venue-CBS Seminar Hall'),('13-May-2015 14:42:40','qwerty'),('13-May-2015 14:42:40','qwerty'),('13-May-2015 14:42:40','qwerty'),('13-May-2015 14:42:40','qwerty'),('13-May-2015 14:42:40','qwerty'),('13-May-2015 14:42:40','qwerty'),('13-May-2015 14:42:40','qwerty'),('13-May-2015 14:42:40','qwerty');
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warden_details`
--

DROP TABLE IF EXISTS `warden_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warden_details` (
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mailid` varchar(30) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warden_details`
--

LOCK TABLES `warden_details` WRITE;
/*!40000 ALTER TABLE `warden_details` DISABLE KEYS */;
INSERT INTO `warden_details` VALUES ('Sushma','Anand','sushma','anand','sushmaanand34@gmail.com','9872539555'),('Ganesh','Anand','ganesh','anand','ganeshanand40@gmail.com','9872539555');
/*!40000 ALTER TABLE `warden_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-21  0:59:05
