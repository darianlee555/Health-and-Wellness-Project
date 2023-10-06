--Create HR_Data Table
Create Table HR_Data
(
Employee_Name varchar,
Emp_ID int,
Married_ID int,
Marital_Status_ID int,
Gender_ID int,
Emp_Status_ID int,
Dept_ID int,
PerfScoreID int,
From_Diversity_Job_Fair int,
Salary int,
Terminated int,
PositionID int,
Position varchar,
State varchar(2),
Date_of_Birth date,
Zip varchar,
Sex varchar,
Marital_Desc varchar,
Citizen_Desc varchar,
Hispanic_Latino varchar,
Race_Desc varchar,
Date_of_Hire date,
Date_of_Termination date,
Term_reason varchar,
Employment_Status varchar,
Department varchar,
Manager_Name varchar,
Manager_ID int,
Recruitment_Source varchar,
Performance_Score varchar,
Engagement_Survey double precision,
Emp_Satisfaction int,
Special_Projects_Count int,
Last_Performance_Review_Date date,
Days_Late_Last_30 int,
Absences int
);
--Import HR Data
COPY HR_Data
FROM 'C:\Users\Darian\Desktop\HRDataset_v14.csv'
WITH (FORMAT CSV, HEADER);

--Count Number of Total Employees
select count(employee_name) from HR_Data;

--Count Number of Active Employees
select count(employee_name) from HR_Data
where terminated = 0;

--Count Number of Ex-Employees
select count(employee_name) from HR_data 
where terminated !=0;

--Calculate the ages of the employees from Date of Birth
alter table HR_Data
add column Age int;
update HR_Data
set age = EXTRACT(year FROM age(current_date,date_of_birth));
update HR_Data 
set age = EXTRACT(year FROM age(date_of_termination,date_of_birth))
where terminated = 1;

--Calculate the average age of total employees (round to nearest whole number)
select round(avg(age),0) as average_age from HR_Data;

--Calculate the average age of current employees (round to nearest whole number)
select round(avg(age),0) as average_age from HR_Data
where terminated = 0;

--Calculate the average age of ex-employees (round to nearest whole number)
select round(avg(EXTRACT(year FROM age(date_of_termination,date_of_birth))),0) as average_age
from HR_data
where terminated = 1
;

--Calculate the attrition rate (round to nearest percent)
select round((sum(terminated)::numeric / count(employee_name)) * 100,0) || '%' as attrition_rate
from HR_Data;

--Calculate the average amount of absences for total employees (round to nearest whole number)
select round(avg(absences),0) as average_absences
from HR_data;

--Calculate the average amount of absences for current employees (round to nearest whole number)
select round(avg(absences),0) as average_absences
from HR_data
where terminated = 0;

--Calculate the average amount of absences for ex-employees (round to nearest whole number)
select round(avg(absences),0) as average_absences
from HR_data
where terminated = 1;

--Calculate average salary for total employees (round to nearest whole number)
select round(avg(salary),0) as average_salary from HR_data;

--Calculate average salary for current employees (round to nearest whole number)
select round(avg(salary),0) as average_salary from HR_data
where terminated = 0;

--Calculate average salary for ex-employees (round to nearest whole number)
select round(avg(salary),0) as average_salary from HR_data
where terminated = 1;

--Count and Group the total employees by their marital status
select marital_desc, count(*) from hr_data
group by marital_desc
order by count desc;

--Count and Group the current employees by their marital status
select marital_desc, count(*) from hr_data
where terminated = 0
group by marital_desc
order by count desc;

--Count and group the total employees by gender
update HR_data
set sex = 'Female'
where sex = 'F';

update HR_data
set sex = 'Male'
where sex = 'M ';

select sex, count(employee_name)
from hr_data
group by sex
order by count desc;

--Count and group the current employees by gender
select sex, count(employee_name)
from hr_data
where terminated = 0
group by sex
order by count desc;

--Count and group the ex employees by gender
select sex, count(employee_name)
from hr_data
where terminated = 1
group by sex
order by count desc;

--count and group the total employees by department 
select count(*), department from hr_data
group by department;

--count and group the current employees by department 
select count(*), department from hr_data
where terminated = 0
group by department;

--count and group the ex employees by department 
select count(*), department from hr_data
where terminated = 1
group by department;

--Find the top 5 reasons why employees get terminated
select term_reason, count(*) from HR_data
where terminated = 1
group by 1
order by count desc
limit 5;

--Count and group the total employees by salary
select salary, case when salary < 50000 then 'Less than 50k' 
when salary between 50000 and 59999 then '50k - 59k'
when salary between 60000 and 69999 then '60k - 69k'
when salary between 70000 and 79999 then '70k - 79k'
when salary between 80000 and 89999 then '80k - 89k'
when salary between 90000 and 99999 then '90k - 99k'
else '100k or more' end as salary_ranges
from HR_data;

alter table hr_data 
add column salary_ranges varchar;

update hr_data
set salary_ranges = case when salary < 50000 then 'Less than 50k' 
when salary between 50000 and 59999 then '50k - 59k'
when salary between 60000 and 69999 then '60k - 69k'
when salary between 70000 and 79999 then '70k - 79k'
when salary between 80000 and 89999 then '80k - 89k'
when salary between 90000 and 99999 then '90k - 99k'
else '100k or more' end;

select salary_ranges, count(*)
from hr_data 
group by 1;

--Count and group the ex-employees by salary
select salary_ranges, count(*)
from hr_data 
where terminated = 1 
group by 1;

--Count and group the current employees by salary
select salary_ranges, count(*)
from hr_data 
where terminated = 0
group by 1;

--count and group the total employees by race
select race_desc, count(*)
from hr_data
group by race_desc
order by 2 desc;

--count and group the current employees by race
select race_desc, count(*)
from hr_data
where terminated = 0
group by race_desc
order by 2 desc;

--count and group the ex-employees by race
select race_desc, count(*)
from hr_data
where terminated = 1
group by race_desc
order by 2 desc;

--Count and group the total employees by performance
select count(*), performance_score
from hr_data
group by 2
order by 1 desc;

--Count and group the current employees by performance
select count(*), performance_score
from hr_data
where terminated = 0
group by 2
order by 1 desc;

--Count and group the ex-employees by performance
select count(*), performance_score
from hr_data
where terminated = 1
group by 2
order by 1 desc;

--Find the average amount of days that terminated employees were employed (round to nearest day)
select date_of_hire, date_of_termination, date_of_termination - date_of_hire as days_employed from hr_Data
where terminated = 1;
alter table hr_data 
add column days_employed int;
update hr_data
set days_employed = date_of_termination - date_of_hire
where terminated = 1;
select round(avg(days_employed),0) as average_days_employed from hr_data;
