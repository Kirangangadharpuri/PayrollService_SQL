

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

/* insert new records in table */
insert into employee_payroll values ('Siddique', 30000.00, '2020-03-24'),
                                    ('Radha', 35000.00, '2021-06-20'),
									('Mahek', 25000.00, '2020-10-16'),
									('Ayesha', 37000.00, '2022-09-30'),
									('Roman', 42000.00, '2019-01-07')

/*  retrieve all data from table */
select * from employee_payroll    

/* retrieve salary for givan name */
select Salary from employee_payroll where Name='Ayesha'

select Name,Salary from employee_payroll where StartDate between cast('2020-03-01' as date) and getdate()


/* Add new column in table */
alter table employee_payroll add Gender varchar(1)

update employee_payroll set Gender='F' where Name='Radha' or Name='Mahek' or Name='Ayesha'    
update employee_payroll set Gender='M' where Name='Siddique' or Name='Roman'

/* retrive data from table using Agreegate Operators group by Gender */

select Gender,SUM(Salary) from employee_payroll group by Gender /*sum of salary*/
select Gender,MAX(Salary) from employee_payroll group by Gender /*Maximum salary*/
select Gender,MIN(Salary) from employee_payroll group by Gender /*Minimum salary*/
select Gender,AVG(Salary) from employee_payroll group by Gender /*Average of salary*/

/* Extend table with new columns like phone number, address and department UC8 */

Alter table employee_payroll 
add PhoneNumber varchar(250) 

Alter table employee_payroll 
add Address varchar(255)


Alter table employee_payroll 
add Department varchar(255)

Alter table employee_payroll 
add constraint df_Department
default 'not known' for Department; 

update employee_payroll set PhoneNumber='1234567890', Address='Jintur', Department='Sales' where ID=1
update employee_payroll set PhoneNumber='2222567890', Address='Parbhani', Department='Management' where ID=2
update employee_payroll set PhoneNumber='1234567890', Address='Jintur', Department='Quality Check' where ID=3
update employee_payroll set PhoneNumber='1236667891', Address='Jalna', Department='Sales' where ID=4
update employee_payroll set PhoneNumber='1234567333', Address='Aurangabad', Department='Developer' where ID=5
 
