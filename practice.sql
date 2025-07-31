create database employee;
use employee;
create table employeetable(EMPLOYEE_ID int primary key,FIRST_NAME varchar(255),LAST_NAME varchar(255),SALARY double,JOINING_DATE date,DEPATMENT varchar(255));
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPATMENT) value (1,"venkatesh","s",100000,"2015/08/28","Banking");
insert into employeetable(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPATMENT) value(2,"ragavi","p",75000,"2015/08/28","Business"),
(3,"gopinath","c",50000,"2016/03/02","Pharma"),
(4,"dinesh","g",50000,"2016/03/02","Insurance"),
(5,"saibabu","e",40000,"2017/07/08","Software"),
(6,"hasan","s",29000,"2017/07/08","Manfacturing"),
(7,"divya","p",33000,"2017/07/08","Healthcare"),
(8,"aravindan","r",40000,"2017/07/08","Healthcare"),
(9,"satish","md",45000,"2016/03/02","automobiles"),
(10,"prasanth","pkp",34000,"2016/03/02","insurance"),
(11,"vijay","r",25684,"2016/03/02","business"),
(12,"sivakumar","k",54789,"2016/03/02","software");
SELECT * from employeetable;
-- Get First_Name,Last_Name from employee table
select FIRST_NAME,LAST_NAME from employeetable;
-- Get First_Name from employee table using alias name “Employee Name”
select FIRST_NAME as Employee_Name from employeetable;
-- Get First_Name from employee table in upper case
select upper(FIRST_NAME) from employeetable;
--  Get First_Name from employee table in lower case
select lower(FIRST_NAME) from employeetable;
-- Get unique DEPARTMENT from employee table
select distinct DEPATMENT from employeetable;
-- Select first 3 characters of FIRST_NAME from EMPLOYEE
select substring(FIRST_NAME,1,3) from employeetable;
-- Get position of 'a' in name 'ragavi' from employee table
select position("a" in "ragavi") from  employeetable;
select FIRST_NAME,position("a" in FIRST_NAME) from  employeetable;
select ltrim(FIRST_NAME),rtrim(FIRST_NAME) from employeetable;
select length(FIRST_NAME) from employeetable;
select replace(FIRST_NAME,"a","$") from employeetable;
select concat(FIRST_NAME, "_",LAST_NAME) from employeetable;
select year(JOINING_DATE),month(JOINING_DATE),day(JOINING_DATE) from employeetable;

select * from employeetable order by FIRST_NAME asc;
select * from employeetable order by FIRST_NAME desc;
select * from employeetable order by FIRST_NAME ASC,SALARY desc;
select * from employeetable where SALARY>=50000 and SALARY<=70000;
select * from employeetable where FIRST_NAME="Dinesh";
select * from employeetable where FIRST_NAME="Dinesh" or FIRST_NAME="Roy";
select * from employeetable where not FIRST_NAME="Dinesh" and not FIRST_NAME="Roy";
select * from employeetable where SALARY>60000;
select * from employeetable where SALARY>50000 and SALARY<70000;
select concat(FIRST_NAME, " ",LAST_NAME)  from employeetable where SALARY<50000;
select  FIRST_NAME,SALARY from employeetable order by SALARY asc;
select * from employeetable where SALARY between 50000 and 70000 order by FIRST_NAME asc;
 -- find the names which starting with s
 select FIRST_NAME from employeetable where FIRST_NAME like "s%";
 select FIRST_NAME from employeetable where FIRST_NAME like "%h";
 select FIRST_NAME from employeetable where FIRST_NAME like "%e%";
 -- pattern matching use "_".
 select FIRST_NAME from employeetable where FIRST_NAME like "_i%";
 select FIRST_NAME from employeetable where FIRST_NAME like "__i%";
 select FIRST_NAME from employeetable where FIRST_NAME like "h____";
--  Get employee details from employee table whose first name ends with 'n' and name contains 4 letters
 select * from employeetable where FIRST_NAME like "___n";
 -- Get employee details from employee table whose first name starts with 'J' and name contains 4 letters
select * from employeetable where FIRST_NAME like "j___";
--  Get employee details from employee table who’s Salary greater than 60000
select * from employeetable where SALARY>60000;
-- Get employee details from employee table who’s Salary less than 80000
select * from employeetable where SALARY<80000;
-- Get employee details from employee table who’s Salary between 50000 and 80000
select * from employeetable where SALARY between 50000 and 80000;
-- Get employee details from employee table whose name is venkatesh and ragavi
select * from employeetable where FIRST_NAME="venkatesh" or FIRST_NAME="ragavi";
-- Get employee details from employee table whose joining year is “2015”
select *from employeetable where year(joining_date) = 2015;
-- Get employee details from employee table whose joining month is “January”
select *from employeetable where month(joining_date) = "january";
-- Get employee details from employee table who joined before January 1st 2017
select *from employeetable where year(joining_date) <"2017-01-01";
--  Get employee details from employee table who joined after January 31st 2016
select *from employeetable where year(joining_date)>"2016-01-31";
-- sum()
-- avg()
-- count()
-- max()
-- min()
select sum(SALARY) from employeetable;
select avg(SALARY) from employeetable;
select count(SALARY) from employeetable;
select max(SALARY) from employeetable;
select min(SALARY) from employeetable;
-- get number of employees in each department 
select DEPATMENT,count(FIRST_NAME) from employeetable group by DEPATMENT;
select DEPATMENT,count(SALARY) from employeetable group by DEPATMENT having count(SALARY)=2;
--  Get department,total salary with respect to a department from employee table.
select DEPATMENT, sum(SALARY) from employeetable group by DEPATMENT;
-- Get department,total salary with respect to a department from employee table order by total salary descending
select DEPATMENT,sum(SALARY) from employeetable group by DEPATMENT  order by sum(SALARY) desc;
-- Get department,no of employees in a department,total salary with respect to a department from employee table order by total salary descending
select DEPATMENT,count(EMPLOYEE_ID and DEPATMENT), sum(SALARY) from employeetable group by DEPATMENT order by sum(SALARY) desc;
-- Get department wise average salary from employee table order by salary ascending
select DEPATMENT, avg(SALARY) from employeetable group by DEPATMENT order by avg(SALARY) asc;
-- Get department wise maximum salary from employee table order by salary ascending
select DEPATMENT, max(SALARY) from employeetable group by DEPATMENT order by max(SALARY) asc;
-- Get department wise minimum salary from employee table order by salary ascending
select DEPATMENT, min(SALARY) from employeetable group by DEPATMENT order by min(SALARY) asc;
-- Select no of employees joined with respect to year and month from employee table
select year(JOINING_DATE),month(JOINING_DATE), count(EMPLOYEE_ID) from employeetable group by year(JOINING_DATE),month(JOINING_DATE) ;
--  Select department,total salary with respect to a department from employee table where total salary greater than 800000 order by Total_Salary descending
select DEPATMENT, sum(SALARY) from employeetable group by DEPATMENT having sum(SALARY)>80000 order by sum(SALARY) desc;
select * from employeetable;
update employeetable set FIRST_NAME="SIVAKIRAN",LAST_NAME="CH" where FIRST_NAME="gopinath";
delete from employeetable where EMPLOYEE_ID=3;



 

