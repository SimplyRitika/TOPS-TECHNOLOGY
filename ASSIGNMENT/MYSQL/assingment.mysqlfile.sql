create database Mysqll ; 
use Mysqll ; 
/*  1	Statement to create the Contact table */
CREATE DATABASE COMPANY; 
USE COMPANY;
CREATE TABLE CONTACT ##PARENT TABLE 
(
CONTACT_ID INT primary key ,
COMPANY_ID INT,
FIRST_NAME varchar (45),
LAST_NAME varchar (45),
STREET varchar (45),
CITY varchar (45),
STATE VARCHAR (2),
ZIP varchar (10),
IS_MAIN Boolean,
EMAIL VARCHAR (45),
PHONE INT 
);
-- CONTACT TABLE WAS CREATED which contains the PRIMARY KEY --

/*  2	Statement to create the Employee table */

CREATE TABLE EMPLOYEE -- CHILD TABLE 
(
EMPLOYEE_ID INT PRIMARY KEY ,
FIRST_NAME VARCHAR (45),
LAST_NAME varchar (45),
SALARY decimal (10,2),
HIRE_DATE date,
JOB_TITLE VARCHAR (25),
EMAIL varchar (45),
PHONE INT
);
-- CONTACT TABLE WAS CREATED WHICH CONTAINS THE PRIMARY KEY AND THE FOREINGN KEY --
 
/* 	3 Statement to create the ContactEmployee table*/ 
CREATE TABLE CONTACT_EMPLOYEE
(
CONTACT_EMPLOYEE_ID INT PRIMARY KEY ,
CONTACT_ID INT,
EMPLOYEE_ID INT,
CONTACT_DATE DATE,
DESCRIPTION varchar (100),
FOREIGN KEY (CONTACT_ID) REFERENCES CONTACT(CONTACT_ID),
FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID )
);
-- CONTACT_EMPLOYEE TABLE WAS CREATED ALSO FOREIGN KEY IS APPLIED -- 

/* 4	In the Employee table, the statement that changes Lesley Bland’s phone number to 215-555-8800.
*/
 UPDATE EMPLOYEE 
SET PHONE= ' 215-555-8800 '
WHERE EMPLOYEE_ID = 1 ; 
-- PHONE NUMBER OF THE LESLEY BLAND'S WAS UPDATED-- 

/* 	5  In the Company table, the statement that changes the name 
of “Urban Outfitters, Inc.” to “Urban Outfitters”.*/ 

UPDATE COMPANY_1
SET COMPANY_NAME = 'Urban Outfitters'
WHERE COMPANYID = 1 ; 
-- COMPANY_NAME WAS UPDATED -- 

/*  6	What is the significance of “%” and “_” operators in the LIKE statement?
ANS : 
In the like LIKE  operator statement

% (percent): Represents zero, one, or multiple characters.
For example : select * from titanic where name LIKE “A%” ;
                        And 
_ (underscore): Represents a single character.
For example : select*from  titanic where  name LIKE 'A_r_';
*/
 
/*  7	Explain normalization in the context of databases.
ANS: 
Normalization is the process used to organize data in a Database to reduce the redundancy and improve data integrity. It involves dividing large tables into smaller related tables. 
-1NF: No repeating groups.
-2NF ; No partial dependency.
-3NF; No transitive dependency.
*/ 

/*  8	What does a JOIN in MySQL mean?
ANS
JOIN in MySQL used to combine the rows from more 
than one table with the help of the foreign key.
*/ 

/* 9  What do you understand about DDL, DCL, and DML in MySQL? 
   ANS: 
   DDL(Data defination language) : DDL commands are used to define or 
   change the structure of the database (like tables, schemas, indexes).
   
DCL (Data control language ) : DCL commands are used to control access 
and permissions in the database.

DML (Data Manipulation Language): DML commands are used to manipulate the data stored in tables.

*/

/* What is the role of the MySQL JOIN clause in a query, and what are some
common types of joins? 
JOIN in MySQL used to combine the rows from more than 
one table with the help of the foreign key.
Common types of join are as follows:
INNER JOIN	Returns only matching rows from both tables
LEFT JOIN	Returns all rows from the left table + matching rows from the right table (if any)
RIGHT JOIN	Returns all rows from the right table + matching rows from the left table (if any)
FULL JOIN	Returns all rows when there is a match in one of the tables (not directly supported in MySQL, but can be emulated with UNION)
CROSS JOIN	Returns the Cartesian product of both tables (all combinations)
*/ 




