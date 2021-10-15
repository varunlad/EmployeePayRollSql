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
--UC3Insert into the table
INSERT INTO employee_payRoll VALUES ('VARUN LAD',12343.12,'2021-05-19'),
('SAKSHI',123424.12,'2011-08-13'),('LEO MESSI',123124213.12,'2019-06-10'),
('PIYU',1322343.12,'2016-09-13'),('NEYMAR',1221343.12,'2021-04-19');
INSERT INTO employee_payRoll VALUES ('SURAJ SAHU',1213343.12,'2021-07-5');
--Inserting into perticular Column
INSERT INTO employee_payRoll (Name,Salary,StartDate,Gender,Emp_phone_no,Department,Address,BasicPay,Deduction,TaxablePAY)
 VALUES ('Terissa','123424.12','2011-08-13','F','8908765456','Marketing','Pune','812213','90000','1600');
 --Does not delete Metadata 
Delete from employee_payRoll where name='XAVI';
Delete from employee_payRoll where ID=9;
--UC4 Display Entire table
select * from employee_payRoll;













