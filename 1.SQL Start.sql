--DDL
CREATE DATABASE P119Db

DROP DATABASE P119Db

USE P119db


CREATE TABLE Students(
	Id int,
	Name nvarchar(50),
	Surname nvarchar(100)
)

DROP TABLE Students

ALTER TABLE Students 
ADD Age int,City nvarchar(50)

ALTER TABLE Students
DROP COLUMN Age

EXEC sp_rename Stu,Students

EXEC sp_rename 'Students.Surname',Lastname

--DML 
INSERT INTO Students
VALUES(1,'Orkhan','Abdullayev',24,'Sumqayit'),
	   (2,'Test','Testov',24,'Baki'),
	   (4,'Orkhan','Abdullayev',24,'Sumqayit')


INSERT INTO Students (Id,Name,Lastname)
VALUES(2,'Agha','Dadash')

SELECT * FROM Students
--WHERE Id=2
--WHERE Age>20
--WHERE Age is Null
--WHERE Age is not Null
--WHERE Id BETWEEN 2 AND 4
--WHERE Id>=2 AND Id<=4
--WHERE Id In(1,4,2)
WHERE Lastname LIKE '%la%'


SELECT Id 'Number',Name 'Firstname' FROM Students

UPDATE Students SET Lastname='Main Hesenli'
Where Id=2

DELETE FROM Students
WHERE Id=2
