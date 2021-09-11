CREATE DATABASE  IF NOT EXISTS `mmp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mmp`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mmp
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `A_id` int(11) NOT NULL AUTO_INCREMENT,
  `A_name` varchar(45) NOT NULL,
  `A_username` varchar(45) NOT NULL,
  `A_email` varchar(45) NOT NULL,
  `A_password` varchar(45) NOT NULL,
  PRIMARY KEY (`A_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'vivek','vivek123','vivekpatil340440@gmail.com','1234');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `A_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `C_name` varchar(20) NOT NULL,
  `A_heading` varchar(100) NOT NULL,
  `A_description` mediumtext NOT NULL,
  `A_main` longtext NOT NULL,
  `A_syntax` mediumtext,
  `A_eg` longtext,
  `A_output` mediumtext,
  `A_like` int(11) DEFAULT NULL,
  `A_dislike` int(11) DEFAULT NULL,
  PRIMARY KEY (`A_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'cpp','C++ if Statement','In this article, you will learn to create decision making statements in a C++ program using different forms of if..else statement.','The if statement evaluates the test expression inside parenthesis.<br/>If test expression is evaluated to true, statements inside the body of if is executed.<br/>If test expression is evaluated to false, statements inside the body of if is skipped.','<h1>SYNTAX of IF statement</h1><p class=\"lead\"><br/>if(condition){<br/>//code<br/>}</p>','<h1>EXAMPLE of IF statement</h1><p class=\"lead\">// Program to print positive number entered by the user<br/>#include <iostream.h>;<br/>int number=5;<br/>void main(){<br/>int number;<br/>cout<<\"enter number:\"<<endl;<br/>cin>>number;<br/>if(number>0){<br/>cout<<\"entered number is positive.\"<<endl;<br/>}cout<<\"this statement always executed because it is outside of if statement\";<br/>}</p>','<h1>OUTPUT</h1><p class=\"lead\"><br/>enter number:16<br/>entered number is positive.<br/>this statement always executed because it is outside of if statement</p>',7,1),(2,'cpp','C++ switch..case Statement','In this article, you will learn to create a switch statement in C++ programming (with an example).','The ladder if..else..if statement allows you to execute a block code among many alternatives. <br/>If you are checking on the value of a single variable in ladder if..else..if, <br/>it is better to use switch statement.  <br/>The switch statement is often faster than if...else (not always). Also, the syntax of switch statement is cleaner and easier to understand.<br/><br/>When a case constant is found that matches the switch expression, control of the program passes to the block of code associated with that case.<br/>In the above pseudocode, suppose the value of n is equal to constant2. The compiler will execute the block of code associated with the case statement until the end of switch block, or until the break statement is encountered.<br/>The break statement is used to prevent the code running into the next case.','<h1>C++ switch...case syntax</h1>switch (n) ​{<br/> case constant1:<br/>// code to be executed if n is equal to constant1;<br/>break;<br/><br/>case constant2:<br/>// code to be executed if n is equal to constant2;<br/>break;<br/>.<br/>.<br/>default:<br/>//code to be executed if n does not match any constant<br/>}','<h1>Example: C++ switch Statement</h1>// Program to built a simple calculator using switch Statement<br/>#include <iostream.h><br/>void main(){<br/>int i;<br/>cout<<\"enter number eg 1 or 2\";<br/> cin>>i;<br/>switch(i){<br/>case 1:<br/> cout<<\"number 1 entered\";<br/> break;<br/>case 2:<br/> cout<<\"number 2 entered\";<br/> break;<br/>default:<br/> cout<<\"error:\";<br/> break;<br/>}<br/> }','<h1>Output</h1>enter number eg 1 or 2 <br/> 1 <br/>number 1 entered',7,1),(5,'cpp','C++ for Loop','Loops are used in programming to repeat a specific block of code. In this tutorial, you will learn to create a for loop in C++ programming (with examples).','Loops are used in programming to repeat a specific block until some end condition is met. There are three type of loops in C++ programming:<br/>for Loop<br/>while Loop<br/>do while loop<br/>','<h1>C++ for loop syntax</h1>​for(initializationStatement; testExpression; updateStatement) {\n    // codes \n}','<h1>Example: for loop</h1>#include <iostream>\nusing namespace std;\n\nint main() \n{\n    int i, n, factorial = 1;\n\n    cout << \"Enter a positive integer: \";\n    cin >> n;\n\n    for (i = 1; i <= n; ++i) {\n        factorial *= i;   // factorial = factorial * i;\n    }\n\n    cout<< \"Factorial of \"<<n<<\" = \"<<factorial;\n    return 0;\n}','<h1>output</h1>Enter a positive integer: 5\nFactorial of 5 = 120',7,1),(6,'cpp','Data type','In this article, you will learn about data type in c++','The set of values that data of that type can have\n(e.g. integer, real, character, Boolean, colour,\nGreek letter, city, etc.)\n<br/>The type of operations that can be performed\nwith the data. For example, two integer numbers\ncan be added, the population of a city can be\ncalculated, etc.<br>Basic data types in C++ (int)<br/>Integer (int). Represent the set of integer\nnumbers.<br/>double<br/>Real (double). Represent the set of real numbers.\n– In practice, computers can only represent real\nnumbers in a certain interval and with a certain\naccuracy.<br/>\nbool<br>Boolean (bool). Represent logic values.<br/>char<br/>Character (char). Represent letters, digits, punctuation\nmarks and control characters.\n','<h3>declearing variable type of int</h3><datatype> <variable name>;','int a;',NULL,1,1),(7,'cpp','History','In this article, you will read about history of c++','The C++ programming language has a history going back to 1979, when Bjarne Stroustrup was doing work for his Ph.D. thesis. One of the languages Stroustrup had the opportunity to work with was a language called Simula, which as the name implies is a language primarily designed for simulations. The Simula 67 language - which was the variant that Stroustrup worked with - is regarded as the first language to support the object-oriented programming paradigm. Stroustrup found that this paradigm was very useful for software development, however the Simula language was far too slow for practical use.\nShortly thereafter, he began work on \"C with Classes\", which as the name implies was meant to be a superset of the C language. His goal was to add object-oriented programming into the C language, which was and still is a language well-respected for its portability without sacrificing speed or low-level functionality. His language included classes, basic inheritance, inlining, default function arguments, and strong type checking in addition to all the features of the C language\nThe first C with Classes compiler was called Cfront, which was derived from a C compiler called CPre. It was a program designed to translate C with Classes code to ordinary C. A rather interesting point worth noting is that Cfront was written mostly in C with Classes, making it a self-hosting compiler (a compiler that can compile itself). Cfront would later be abandoned in 1993 after it became difficult to integrate new features into it, namely C++ exceptions. Nonetheless, Cfront made a huge impact on the implementations of future compilers and on the Unix operating system.\nIn 1983, the name of the language was changed from C with Classes to C++. The ++ operator in the C language is an operator for incrementing a variable, which gives some insight into how Stroustrup regarded the language. Many new features were added around this time, the most notable of which are virtual functions, function overloading, references with the & symbol, the const keyword, and single-line comments using two forward slashes (which is a feature taken from the language BCPL)\nIn 1985, Stroustrups reference to the language entitled The C++ Programming Language was published. That same year, C++ was implemented as a commercial product. The language was not officially standardized yet, making the book a very important reference. The language was updated again in 1989 to include protected and static members, as well as inheritance from several classes.\nIn 1990, The Annotated C++ Reference Manual was released. The same year, Borlands Turbo C++ compiler would be released as a commercial product. Turbo C++ added a plethora of additional libraries which would have a considerable impact on C++ s development. Although Turbo C++ s last stable release was in 2006, the compiler is still widely used.\nIn 1998, the C++ standards committee published the first international standard for C++ ISO/IEC 14882:1998, which would be informally known as C++98. The Annotated C++ Reference Manual was said to be a large influence in the development of the standard. The Standard Template Library, which began its conceptual development in 1979, was also included. In 2003, the committee responded to multiple problems that were reported with their 1998 standard, and revised it accordingly. The changed language was dubbed C++03.\nIn 2005, the C++ standards committee released a technical report (dubbed TR1) detailing various features they were planning to add to the latest C++ standard. The new standard was informally dubbed C++0x as it was expected to be released sometime before the end of the first decade. Ironically, however, the new standard would not be released until mid-2011. Several technical reports were released up until then, and some compilers began adding experimental support for the new features.\nIn mid-2011, the new C++ standard (dubbed C++11) was finished. The Boost library project made a considerable impact on the new standard, and some of the new modules were derived directly from the corresponding Boost libraries. Some of the new features included regular expression support (details on regular expressions may be found here), a comprehensive randomization library, a new C++ time library, atomics support, a standard threading library (which up until 2011 both C and C++ were lacking), a new for loop syntax providing functionality similar to foreach loops in certain other languages, the auto keyword, new container classes, better support for unions and array-initialization lists, and variadic templates.\nWritten by Albatross.\n',NULL,NULL,NULL,1,1),(8,'cpp','Object Oriented Programing','this artical include opps concept','<h3>Class</h3>\n <h3>Object</h3>\n <h3>Encapsulation</h3>\n<h3> Abstraction</h3>\n <h3>Inheritance</h3>\n <h3>Polymorphism</h3>\n<h3> Reusability</h3><br/>C++ as an OOP language:<br/>C++ : C with classes\nMulti-paradigm language\nAs Object oriented language, it offers bottom to top approach\nAs Procedural language, it offers top to bottom approach<br/><br/><h3>Classes and objects</h3>\nClass- user defined data type. Fundamental packaging unit of\nOOP technology\nClass declaration is similar to struct declaration<br/>\nKeyword ‘class’ followed by class name.<br/>\nObject combines data and functions<br/>\nObject is created as a variable of class type using class name<br/>\nMembers of class<br/>\nData members / attributes\nMember functions / methods <br/>\n<h3>Data members</h3><br/>\nData members can be any of the following types\nPrimary data types : int, float, char, double, bool\nSecondary data types : arrays, pointers, class objects etc.\nData members classified into two groups\n Regular : every object gets its own copy of data members\nStatic: all objects share the same copy of data member<br/>\n<h3>Static Data Members</h3><br/>\nVariable declaration preceded by keyword ‘static’\n Only one copy of static variable is created. All the objects share the same\ncopy\nInitialized to zero when first object is created. No other initialization\npermitted.\n Should be defined outside the class definition after declaring them\ninside the class in this way – datatype classname :: varname\n They are normally used to maintain values that are common to the\nentire class, e.g., to keep a count of number of objects created.<br/>\n<h3>Methods,</h3><br/>\nTypes of functions in a class<br/>\n Regular functions<br/>\n Overloaded functions<br/>\n Inline functions<br/>\n Friend functions<br/>\n Static functions<br/>\nConstructors<br/>\n Destructors<br/>\nVirtual function<br/><h3>Constructors</h3><br/>\n Special member function to initialize the objects of its class\n Automatically called when an object is created\n Data members can be initialized through constructors\nHave the same name of the class\n They can have any number of parameters\n Do not have return types, because they are called\nautomatically by system\nA constructor can only be called by a constructor',NULL,NULL,NULL,1,1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `createdBy` varchar(45) NOT NULL,
  `introduction` varchar(300) NOT NULL,
  `description` mediumtext NOT NULL,
  `postTime` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'yui','gfhu','uygi','hjikuyik','2018-04-23 22:18:45'),(2,'hiiii','vivek','i am vivek','hi there','2018-04-23 23:03:32');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `pid` int(5) NOT NULL,
  `comment` varchar(45) NOT NULL,
  `postedBy` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,'dsfgg','asdgfte'),(2,1,'tioyop','vivek'),(3,1,'gyi','vivek'),(4,1,'lhoih','vivek'),(5,1,'241','vivek'),(6,1,';klpk','vivek'),(7,1,';klpk','vivek'),(8,2,'ghjk','vivek'),(9,2,'hiii','vivek');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `C_id` int(5) NOT NULL,
  `C_name` varchar(45) NOT NULL,
  `C_intro` longtext NOT NULL,
  `C_about` longtext,
  `C_topics` longtext,
  PRIMARY KEY (`C_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'c++','C++ is used by programmers to create computer software. It is used to create general systems software, <br/> drivers for various computer devices, software for servers and software for specific applications and also widely used in the creation of video games.<br/>\nC++ is used by many programmers of different types and coming from different fields. C++ is mostly used to write device driver programs, system software, and applications that depend on direct hardware manipulation under real-time constraints.<br/> It is also used to teach the basics of object-oriented features because it is simple and is also used in the fields of research.<br/> Also, many primary user interfaces and system files of Windows and Macintosh are written using C++. So, C++ is really a popular, strong and frequently used programming language of this modern programming era.','In this course of c++ you will learn about funcnality of c++ language and much more','flow control,Declaration & Assignments,Arrays & Strings,C++ Object Oriented');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloads`
--

DROP TABLE IF EXISTS `downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `downloads` (
  `id` int(5) NOT NULL,
  `c_id` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `source` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloads`
--

LOCK TABLES `downloads` WRITE;
/*!40000 ALTER TABLE `downloads` DISABLE KEYS */;
INSERT INTO `downloads` VALUES (1,'1','c++ library','PDF','you can learn from here','D:eclipsMMPWebContentsourceDS286.AUG2016.Lab2_.cpp_tutorial.pdf');
/*!40000 ALTER TABLE `downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobNo` varchar(45) DEFAULT NULL,
  `message` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'vivekpatil340440@gmail.com','vivek','','fjfhj'),(2,'vivekpatil340440@gmail.com','vivek','','hiiii');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `progress` (
  `P_id` int(5) NOT NULL AUTO_INCREMENT,
  `U_id` int(5) unsigned zerofill NOT NULL,
  `cpp` varchar(500) DEFAULT NULL,
  `java` varchar(500) DEFAULT NULL,
  `phython` varchar(500) DEFAULT NULL,
  `js` varchar(500) DEFAULT NULL,
  `cs` varchar(500) DEFAULT NULL,
  `php` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`P_id`),
  UNIQUE KEY `U_id_UNIQUE` (`U_id`),
  KEY `fk1_idx` (`U_id`),
  CONSTRAINT `fkuser` FOREIGN KEY (`U_id`) REFERENCES `users` (`U_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progress`
--

LOCK TABLES `progress` WRITE;
/*!40000 ALTER TABLE `progress` DISABLE KEYS */;
INSERT INTO `progress` VALUES (17,00001,'111',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `C_id` int(5) NOT NULL,
  `question` varchar(200) DEFAULT NULL,
  `optionA` varchar(100) DEFAULT NULL,
  `optionB` varchar(100) DEFAULT NULL,
  `optionC` varchar(100) DEFAULT NULL,
  `optionD` varchar(100) DEFAULT NULL,
  `answer` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articalid_idx` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (00002,1,'what is the right syntax of if statement?','if{//statements }','if{//statement }(condition)','if(condition){//statement}','none of these','C'),(00007,1,'Choose the pure virtual function definition from the following.','virtual void f()=0 { }','void virtual f()=0 { }','virtual void f() {} = 0;',' None of the above.','D'),(00008,1,'Which data type can be used to hold a wide character in C++?','unsigned char;','int','wchar_t','none of above','C'),(00009,1,'Choose the Object oriented programming language from below.','c++','Small talk','simula','All the above','D'),(00010,1,'Which feature of the OOPS gives the concept of reusability?','Abstraction',' Encapsulation','Inheritance','None of the above.','C'),(00011,1,' HAS-A relationship between the classes is shown through.','Inheritance','Container classes','Polymorphism','None of the above.','B'),(00012,1,' What is the output of the following program?<br/>main() { }','No output','Garbage','Compile error','Runtime error','A'),(00013,1,'Which is the storage specifier used to modify the member variable even though the class object is a constant object?','auto','register','static','mutable','D');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `U_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `U_name` varchar(45) NOT NULL,
  `U_username` varchar(45) DEFAULT NULL,
  `U_email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `reg_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`U_id`),
  UNIQUE KEY `U_email_UNIQUE` (`U_email`),
  UNIQUE KEY `U_username_UNIQUE` (`U_username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (00001,'vivek','vivek123','vivekpatil340440@gmail.com','1234','2018-02-19 19:06:25'),(00002,'HEMANT','hemant123','hemantgawand123@gmail.com','1234','2018-02-19 19:37:22'),(00003,'dhiraj','dhiraj123','dhirajbhoir5@gmail.com','1234','2018-03-05 21:34:03'),(00004,'kunal','kunal123','kunalpatil211997@gmail.com','1234','2018-03-07 22:03:42'),(00005,'samadhan','sama123','sama@gmail.com','1234','2018-03-08 20:51:24'),(00006,'mrigesh','migya123','mrigeshsingh@gmail.com','1234','2018-03-10 01:32:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-24  1:59:54
