

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

