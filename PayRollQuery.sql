--UC1 Create a database
CREATE DATABASE payRollService058;
--UC2 Create a Table
use payRollService058
CREATE TABLE employee_payRoll(
ID int IDENTITY (1,1) PRIMARY KEY,
Name varchar(100),
Salary float,
StartDate date);
 EXEC sp_rename 'employee_payRoll.ID', 'Employee_ID', 'COLUMN';













