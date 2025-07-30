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
