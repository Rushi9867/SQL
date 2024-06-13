--Show Databases; FOR MYSQL

SELECT name, database_id, create_date  
FROM sys.databases;  
GO

CREATE DATABASE iNeuron;
USE iNeuron;

SELECT table_name, table_schema, table_type FROM information_schema.tables ORDER BY table_name ASC;

--SHOW TABLES; MYSQL

create table Courses(Course_id char(5), Course_name Varchar(25), Duration int, Faculty Varchar(30));

select * from Courses;

--DESCRIBE Courses; MYSQL

insert into courses values(1257,'Data_Analytics',9,'Vikrant');
insert into courses values(1258,'Data_Science',11,'Saurabh');
insert into courses values(1259,'Machine_Learning',12,'Saurabh');
insert into courses (Course_id,Course_name,Faculty) values(1260,'Artificial_Intelligence','Saurabh');

--Alter table Courses Add COLUMN Experience int; MYSQL

Alter table Courses Add Experience int;

Alter table Courses drop column Experience;

--Alter table Courses modify column Course_id char(5) not null; MYSQL

Alter table Courses ALTER column Course_id char(5) not null;

Alter table Courses ALTER column Duration int;

USE iNeuron;

delete from courses where course_id = 1257;

Delete from Courses;

DROP TABLE Courses;

USE master ;  

--DROP DATABASE iNeuron; 

USE iNeuron;
select * from Courses;

ALTER TABLE Courses ALTER COLUMN Course_id CHAR(5) NOT NULL;

insert into Courses(Course_id,Course_name,Faculty) values(1261,'Generative AI','Sunny');

ALTER TABLE Courses ALTER COLUMN Faculty Varchar(30) NOT NULL;

insert into Courses(Course_id,Course_name,Faculty) values(1262,'Deep Learning','Krish Naik');

ALTER TABLE Courses ADD CONSTRAINT df_duration DEFAULT(12) FOR DURATION;

insert into Courses(Course_id,Course_name,Faculty) values(1263,'BIGDATA','SAURBH');

--ALTER TABLE ALTER COLUMN DURATION INT CHECK(DEFAULT>0); MYSQL

ALTER TABLE Courses ADD CONSTRAINT CHK_duration CHECK (DURATION>0);

insert into Courses(Course_id,Course_name,DURATION,Faculty) values(1264,'SQL',3,'SAURBH');

DROP TABLE COURSES;

CREATE TABLE COURSES(Course_id char(5) NOT NULL,Course_Name VARCHAR(25) UNIQUE,DURATION INT CHECK(DURATION>0),Faculty Varchar(30) DEFAULT('SAURABH'));
SELECT *FROM COURSES;

insert into courses values(1257,'Data_Analytics',9,'Vikrant');
insert into courses values(1258,'Data_Science',11,'Saurabh');
insert into courses values(1259,'Machine_Learning',12,'Saurabh');
insert into courses (Course_id,Course_name,Faculty) values(1260,'Artificial_Intelligence','Saurabh');

ALTER TABLE Courses ADD CONSTRAINT df_duration DEFAULT(12) FOR DURATION;

insert into Courses(Course_id,Course_name,Faculty) values(1261,'Generative AI','Sunny');
insert into Courses(Course_id,Course_name,Faculty) values(1262,'Deep Learning','Krish Naik');
insert into Courses(Course_id,Course_name,Faculty) values(1263,'BIGDATA','SAURBH');

EXEC sp_help Courses;
