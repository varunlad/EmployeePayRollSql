Create Table PayrollTable(
ID int Foreign key(ID) References employee_payRoll,
name varchar(50),salary bigint,Deduction bigint,TaxablePay bigint, NetPay bigint);
select * from PayrollTable;
EXEC sp_rename 'PayrollTable.ID', 'Employee_ID', 'COLUMN';
INSERT INTO PayrollTable (ID,Name,Salary,Deduction,TaxablePay,NetPay)
 VALUES (5,'Varuna',203445.12,9000,800,192123);
 update PayrollTable set NetPay=(salary-Deduction-TaxablePay);
SELECT name,salary, Deduction, TaxablePay,NetPay
FROM PayrollTable 
WHERE(salary-Deduction-TaxablePay)=NetPay;
alter table PayrollTable add Gender char(1) not null default 'M';
update PayrollTable set Gender='F' where ID=5;
select SUM(NetPay) as TotalSalary,Gender from PayrollTable group by Gender;
select AVG(NetPay) as AverageSalary,Gender from PayrollTable group by Gender;
select MAX(NetPay) as MaximumSalary,Gender from PayrollTable group by Gender;
select MIN(NetPay) as MinimumSalary,Gender from PayrollTable group by Gender;
select * from PayrollTable;