Create Table CompanyTable(
ID int Foreign key(ID) References employee_payRoll,
Name varchar(50));
EXEC sp_rename 'CompanyTable.ID', 'Employee_ID', 'COLUMN';
select * from CompanyTable;
ALTER TABLE CompanyTable
ADD PRIMARY KEY (Name);
alter table CompanyTable add Company_Registration_No int not null default '12345' ;
INSERT INTO CompanyTable VALUES ('5','Varuna');
alter table CompanyTable add Name_Of_Company varchar(50) not null Default 'BridgeLabz';