CREATE DATABASE  IF NOT EXISTS College;

SELECT name, database_id, create_date  FROM sys.databases;  

USE College;

CREATE TABLE Students(
 StudentID INT,
 FirstName VARCHAR(50),
 LastName VARCHAR(50),
 Branch VARCHAR(25),
 Semester INT
);

INSERT INTO Students VALUES(100,'Atul','Gupta','CSE',3);
INSERT INTO Students VALUES(101,'Ajay','Panchal','CSE',3);
INSERT INTO Students VALUES(102,'Rohan','Kadam','CSE',3);
INSERT INTO Students VALUES(103,'Rohit','Kadam','CSE',3);
INSERT INTO Students VALUES(104,'Musab','Khan','CSE',3);

INSERT INTO Students(StudentID,LastName) VALUES(105,'Sharma');

SELECT *FROM Students;

ALTER TABLE Students ADD email VARCHAR(50);

ALTER TABLE Students DROP COLUMN Semester;

ALTER TABLE Students MODIFY COLUMN Branch VARCHAR(40);

UPDATE Students SET email='rohan102@gmail.com' WHERE StudentID=102;

UPDATE Students SET email='rohit103@gmail.com' WHERE StudentID=103;

CREATE TABLE Branch
(
  BranchID INT,
  CONSTRAINT pkBranchID PRIMARY KEY (BranchID),
  BranchName VARCHAR(10),
  Capacity INT  DEFAULT 200
);

INSERT INTO Branch VALUES(100,'EE',200);
INSERT INTO Branch VALUES(101,'CSE',200);
INSERT INTO Branch VALUES(102,'BCE',150);
INSERT INTO Branch VALUES(103,'ME',150);

INSERT INTO Branch(BranchID,BranchName) VALUES(104,'IT');

ALTER TABLE Branch ADD CONSTRAINT chkBranchName CHECK(BranchName IN('EE','CSE','BCE','ME','IT'));
-- INSERT INTO Branch VALUES(105,'DATE',160);

SELECT *FROM Branch;

CREATE TABLE Student
(
 StudentID INT,
 CONSTRAINT pkStudentID PRIMARY KEY(StudentID),
 FirstName VARCHAR(50) NOT NULL,
 LastName VARCHAR(50),
 BranchID INT,
 CONSTRAINT fkBranchID FOREIGN KEY (BranchID) REFERENCES Branch(BranchID),
 Email VARCHAR(50),
 CONSTRAINT unqEamil UNIQUE (Email)
);

INSERT INTO Student VALUES(1,'Manav','Sharma',100,'manav@test.com');
INSERT INTO Student VALUES(2,'Manish','Mehta',101,'manish@test.com');
INSERT INTO Student VALUES(3,'Bobby','Pal',102,'bobby@test.com');
-- INSERT INTO Student VALUES(4,'Manav','Sharma',103,'manav@test.com');
INSERT INTO Student(StudentID,FirstName,BranchID) VALUES(4,'Mohan',103);
INSERT INTO Student(StudentID,FirstName,BranchID,Email) VALUES(5,'Amit',104,'amit@test.com');

SELECT *FROM Student;
SHOW COLUMNS FROM Student;

-- SCHEMA
CREATE SCHEMA Engineering;

CREATE SCHEMA Management;

CREATE TABLE Engineering.test
(
 testID INT
);

CREATE TABLE Management.test1
(
 testID INT
);

-- ALTER SCHEMA Management
-- TRANSFER dbo.Engineering;

CREATE TABLE Sports
(
SportsID INT NOT NULL AUTO_INCREMENT,
SportsNAme VARCHAR(50) NOT NULL,
EnrolledStudentID INT,
PRIMARY KEY(SportsID)
);

ALTER TABLE Sports AUTO_INCREMENT=100;

INSERT INTO Sports(SportsName,EnrolledStudentID) VALUES ('Hockey',1);
INSERT INTO Sports(SportsName,EnrolledStudentID) VALUES ('Cricket',2);
INSERT INTO Sports(SportsName,EnrolledStudentID) VALUES ('BasketBall',3);

SELECT *FROM Sports;

DELETE FROM Sports
WHERE SportsID = 102;

INSERT INTO Sports(SportsName,EnrolledStudentID) VALUES ('Volly Ball',4);
SELECT *FROM Sports;
 
-- TRUNCATE
TRUNCATE TABLE Sports;
SELECT *FROM Sports;

 -- DROP
DROP TABLE Sports;
SELECT *FROM Sports;

