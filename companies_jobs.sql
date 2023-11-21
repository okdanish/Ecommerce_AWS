USE `companies_jobs`;
DROP TABLE IF EXISTS `test`;
DROP TABLE IF EXISTS `jobs`;
DROP TABLE IF EXISTS `companies`;
--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `logo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contactno` varchar(8) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Pinnacle Singapore','Pinnacle Singapore connects talents to earnest employers who are serious about taking steps to grow together. Working closely with esteemed organizations, we unearth potential gems for each client’s recruitment needs.','pinnacle.png','1 Hill Street #01-05 Singapore 059001','63441234','pinnacle@gmail.com','123456'),(2,'Datagenix','Datagenix is a leading one-stop solution house for IT solutions. We provide complete solutions in the wide areas of fields. We design and deliver customised solutions to suit your needs.','datagenix.png','23 Ang Mo Kio Indutrial Park #02-35 Singapore 560023','67508765','datagenix@gmail.com','123456'),(3,'Ace Consulting','Being the rising leader in staffing solutions, we have built our systems, operating procedures and our attitude around providing the highest level of services to our clients from a wide spectrum of industries include government agencies, MNC as well as SME. We focus on facilitating our client business success and helping professionals take their careers to new levels.','ace.png','5 Tai Seng Avenue, Singapore 534405','68305462','ace@gmail.com','123456'),(4,'J & F Concepts','Our commitment to attract and retain talent is ongoing. We offer attractive benefits and welfare, competitive compensation packages, and generous professional development opportunities – all to meet the work-life needs of our staff','jf.png','1 Paya Lebar Link #22-04. PLQ 1, Paya Lebar Quarter Singapore 408522','65401254','jf@gmail.com','123456');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `type` enum('Permanent','Temporary','Contract','Part-time') DEFAULT NULL,
  `sector` varchar(45) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `role_description` text,
  `qualification` enum('Postgraduate','Degree','Diploma','HNitec/ Nitec','A Levels','O Levels','N Levels','Others') DEFAULT NULL,
  `experience` text,
  `date_posted` datetime DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_job_idx` (`company_id`),
  CONSTRAINT `company_job` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Accounts Assistant','Part-time','Finance','15 SGD/Hour','Recording and posting of transactions, Preparation of payments and issuance of cheques, Process all petty cash claims and reimbursements','HNitec/ Nitec','Minimum 1 - 2 years experience in Accounts duties','2022-10-03 00:00:00',1),(2,'Sales Coordinator','Permanent','Sales','2,000 SGD - 2,800 SGD/Month','You will be based in Singapore, and will be responsible for coordinating information (as in enquiries, questions or issues) between the customers and the relevant internal stake holders and also for coordinating information (as in pricing and product availability) between the company and suppliers/partners. Your role’s main focus is to maintain the effectiveness of our communications to ensure that the sales of the company is maintained by responding in a timely and accurate manner to customers and suppliers alike.','Diploma','Not required','2022-10-03 00:00:00',2),(3,'Sales Engineer','Permanent','Sales','3,000 SGD - 3,500 SGD/Month','You will be based in Singapore, and will be responsible for acquiring new customer accounts. Your role’s main focus is to grow the sales of the company. In addition, you will perform secondary functions such as communicating the obtained market information internally, assisting the business development and marketing activities, and providing technical support to the customers. You are part of the Business Development and Sales Team and will report to the Managing Director and the General Manager.','Degree','Minimum 1 - 2 years experience in Sales','2022-10-03 00:00:00',3),(4,'Sales Associate','Part-time','Sales','12 SGD/Hour','Plan, create and maintain all digital contents for socials to drive brand engagement and to improve overall brand presence in the social media sphere (E.g. Facebook, Instagram)','HNitec/ Nitec','Not required','2022-10-03 00:00:00',4),(5,'Sales Associate','Permanent','Sales','2,900 SGD - 4,060 SGD/Month','Maintain commercial relationships with existing customers, Actively seek out new sales and business opportunities for all our services, Develop and maintain professional and technical knowledge related to all our services, Work with colleagues from the HR department to manage staff assigned on your sales projects','Diploma','Minimum 1 year experience in Sales','2022-10-03 00:00:00',1),(6,'Senior IT Security Assessor','Permanent','IT','4,900 SGD - 7,060 SGD/Month','The candidate will be responsible for assessing the security performance of sites and facilities, tracking security programs and operations for the SEA region.','Degree','Minimum 3 years experience in IT','2022-10-03 00:00:00',2),(7,'Android Mobile Developer','Permanent','IT','2,900 SGD - 3,560 SGD/Month','Participate in design, implementation, and validation of mobile SDK and application within the R&D project team structure in accordance with institutionalized processes and delivery standards','Diploma','Not required','2022-10-03 00:00:00',3),(8,'Project Manager ','Permanent','IT','4,900 SGD - 8,000 SGD/Month','Work with the project team to develop project plans that are profitable to the organisation and determine the time frame and procedures in accomplishing the projects, Estimate budgetary needs based on the project scope and anticipate future budget challenges','Degree','Minimum 5 years experience','2022-10-03 00:00:00',2),(9,'IT Project Manager','Permanent','IT','4,000 SGD - 5,800 SGD/Month','Responsible for the delivering of system enhancements in the form of Service Requests for an existing Enterprise Application in a turnkey IT project. Have in-depth understanding of the Client business and assist to them to fulfill their business needs via the delivery of system enhancements. Apply industry best-practices in IT Project/Program Management to the execution of day-to-day activities in the project and the management of Service Requests.','Degree','Minimum 3 years experience in IT','2022-10-03 00:00:00',2),(10,'.NET Application Developer','Permanent','IT','2,000 SGD - 2,800 SGD/Month','.NET application development, maintenance and support work.','Diploma','Not required','2022-10-03 00:00:00',1),(11,'Business Development Executive','Permanent','Business','4,800 SGD - 5,500 SGD/Month','- Identify new business opportunities (products/services) and evaluate its business potential within Singapore - Perform market intelligence and competitor analysis for potential products/service','Degree','Minimum 5 years experience in business development','2022-10-03 00:00:00',4),(12,'HR Admin','Temporary','Business','12 SGD/Hour','Supporting on all HR duties and administrative duties, including recruitment, key in payroll items, doing payroll journal, answering phone calls, filing and admin duties. Perform other duties as assigned by supervisor. PC literate (Excel and Words).','HNitec/ Nitec','Not required','2022-10-03 00:00:00',3),(13,'HR Executive','Permanent','Business','2,000 SGD - 2,800 SGD/Month','Support recruitment process, including interview arrangement, phone interviews, document collection for Singapore and Middle East candidates.','Diploma','Not required','2022-10-03 00:00:00',2),(14,'Product Specialist','Permanent','Business','3,800 SGD - 4,200 SGD/Month','Responsible for supporting the development and execution of HCP marketing plans and tactics to maximize profitability, HCP recommendation and sales. The Product specialist is fully responsible for delivering assigned initiatives with flawless execution, such as marketing materials for HCP communication, patient leaflets, and educational programs within Emerging Asia.','Degree','Minimum 1 - 2 years experience','2022-10-03 00:00:00',1);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
