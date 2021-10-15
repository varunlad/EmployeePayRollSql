Create Table Department(
ID int Foreign key(ID) References employee_payRoll,
Department_ID int IDENTITY(1,1) Primary Key,Name varchar(50));
alter table Department add Department_Name varchar(50) not null;
select * from Department;
INSERT INTO Department VALUES ('2','Terissa','Testing');
INSERT INTO Department VALUES ('2','Terissa','Marketing');
update Department set Department_Name='Marketing' where Department_ID=2;
INSERT INTO Department VALUES ('4','Anuraj','IT');
delete from Department where Department_ID='6';
alter table Department add Gender char(1) not null default 'M';
update Department set Gender='F' where ID=2;
INSERT INTO Department VALUES ('5','Varuna','Design','F');
alter table Department add Salary bigint not null default '12434235';
update Department set Salary='464353' where ID='5';

select SUM(Salary) as TotalSalary,Gender from Department group by Gender;
select AVG(Salary) as AverageSalary,Gender from Department group by Gender;
select MAX(Salary) as MaximumSalary,Gender from Department group by Gender;
select MIN(Salary) as MinimumSalary,Gender from Department group by Gender;
select * from Department;

alter table Department add Start_Date varchar(50);
update Department set Start_Date='2020-01-29' where ID=5;
select * from Department where Start_Date between ('2011-01-01') and GETDATE();





