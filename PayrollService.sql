

/* Welcome to the PayRoll Service Problem */
 /*UC11*/
 create table Employees 
 (
 EmployeeID int, 
 EmployeeName varchar(255), 
 ComponyId int, 
 PhoneNumber varchar(20), 
 Address varchar(50), 
 Gender varchar(1)
 ) 

 alter table Employees add StartDate Date
insert into Employees values (101,'Mahesh Patil',422,'9090909090','Aurangabad','M','2022-04-21')
insert into Employees values (102,'Sakshi Mehta',422,'9090922222','Pune','F','2018-06-13')
insert into Employees values (103,'Swati Bulakhe',422,'7777909090','Sangamner','F','2016-12-02')
insert into Employees values (104,'Saurabh Jain',422,'7933309090','Mumbai','M','2021-11-24')
insert into Employees values (105,'Manoj Chormare',422,'9082345590','Nashik','M','2020-10-29')
insert into Employees values (106,'Sharad Kale',422,'9044449090','Verul','M','2021-10-12')
select * from Employees

create table EmployeeDepartment( EmployeeID int, DepartmentName varchar(50))
insert into EmployeeDepartment values(101,'Hr')
insert into EmployeeDepartment values(102,'Sales')
insert into EmployeeDepartment values(103,'Marketing')
insert into EmployeeDepartment values(104,'QulityCheck')
insert into EmployeeDepartment values(105,'Sales')
insert into EmployeeDepartment values(106,'Marketing')
select * from EmployeeDepartment

create table PayRoll
(EmployeeId int,
 BasicPay float, 
 Deduction float, 
 TaxablePay float, 
 IncomeTax float, 
 NetPay float)

 insert into PayRoll values(101,55000.00,1500.00,150.00,300,3000.00)
 insert into PayRoll values(102,25000.00,1400.00,100.00,400,2000.00)
 insert into PayRoll values(103,45000.00,1200.00,120.00,200,3200.00)
 insert into PayRoll values(104,25000.00,1800.00,110.00,100,4100.00)
 insert into PayRoll values(105,50000.00,1500.00,140.00,600,5900.00)
 insert into PayRoll values(106,80000.00,1200.00,150.00,320,3100.00)
 select * from PayRoll

 /*UC7*/
select Employees.Gender,SUM(BasicPay) from Employees INNER JOIN PayRoll on Employees.EmployeeID=PayRoll.EmployeeID group by Gender /*sum of salary*/
select Employees.Gender,MIN(BasicPay) from Employees INNER JOIN PayRoll on Employees.EmployeeID=PayRoll.EmployeeID group by Gender /*sum of salary*/
select Employees.Gender,AVG(BasicPay) from Employees INNER JOIN PayRoll on Employees.EmployeeID=PayRoll.EmployeeID group by Gender /*sum of salary*/

/*UC4*/
select Employees.*,EmployeeDepartment.*,PayRoll.* 
from ((Employees INNER JOIN EmployeeDepartment 
on Employees.EmployeeID=EmployeeDepartment.EmployeeID) 
INNER JOIN PayRoll on Employees.EmployeeID=PayRoll.EmployeeID)

/*UC5*/
select Employees.EmployeeName, PayRoll.BasicPay 
from PayRoll INNER JOIN Employees 
on PayRoll.EmployeeId=Employees.EmployeeID 
where EmployeeName='Sakshi Mehta'



