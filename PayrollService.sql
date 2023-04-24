

/* Welcome to the PayRoll Service Problem */

create database payroll_service /*create database*/

select name from sys.databases /*show database */

use payroll_service /* use database */

/* create table with fields */
create table employee_payroll
(
ID int Primary key identity, 
Name varchar(255), Salary float, 
StartDate Date
)          

select * from employee_payroll    

insert into employee_payroll values ('Siddique', 30000.00, '2020-03-24'),
                                    ('Radha', 35000.00, '2021-06-20'),
									('Mahek', 25000.00, '2020-10-16'),
									('Ayesha', 37000.00, '2022-09-30'),
									('Roman', 42000.00, '2019-01-07')