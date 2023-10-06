--Create Health Table
Create Table Health_Data
(
Person_ID int,
Gender varchar,
Age int,
Occupation varchar,
Sleep_Duration double precision,
Quality_of_Sleep int,
Physical_Activity_Level int,
Stress_Level int,
BMI_Category varchar,
Blood_Pressure varchar,
Heart_Rate int,
Daily_Steps int,
Sleep_Disorder varchar
);

--Import Health Data
COPY Health_Data
FROM 'C:\Users\Darian\Desktop\Sleep_health_and_lifestyle_dataset.csv'
WITH (FORMAT CSV, HEADER);

--Count number of participants in the dataset
select count(person_id) as total_participants
from health_data;

--Calculate average age of participants (round to nearest whole number)
select round(avg(age),0) as average_age
from health_data;

--Calculate Average Sleep Time (Round to nearest hour)
select round(avg(sleep_duration)::numeric, 0) as Average_Sleep_Time
from health_data;

--Calculate Average Exercise Time (Round to nearest minute)
select round(avg(physical_activity_level),0)
from health_data;

--Count the number of participants by weight (obese, overweight, normal weight)
select bmi_category, count(bmi_category) as count
from health_data
group by bmi_category;

--Let's combine Normal Weight and Normal Together
update health_data
set bmi_category = 'Normal Weight'
where bmi_category = 'Normal';

--Let's count the number of participants by weight again after cleaning the data
select bmi_category, count(bmi_category) as count
from health_data
group by bmi_category;

--Let's count the number of participants by the sleep disorder they have
select sleep_disorder, count(sleep_disorder) 
from health_data 
group by sleep_disorder;

--Let's count the number of participants by Gender
select gender, count(gender)
from health_data
group by gender;

--Get Systolic Blood Pressure
SELECT LEFT(blood_pressure, POSITION('/' in blood_pressure)-1) as Systolic_Blood_Pressure
from health_data;

--Add Systolic Blood Pressure as a column
alter table health_data 
add column Systolic_Blood_Pressure int;
update health_data
set Systolic_Blood_Pressure = LEFT(blood_pressure, POSITION('/' in blood_pressure)-1)::int;

--Add Dystolic Blood Pressure as a column
select RIGHT(blood_pressure, LENGTH(blood_pressure) - STRPOS(blood_pressure,'/')) as Dystolic_Blood_Pressure
from health_data;

alter table health_data 
add column Dystolic_Blood_Pressure int;
update health_data
set Dystolic_Blood_Pressure = RIGHT(blood_pressure, LENGTH(blood_pressure) - STRPOS(blood_pressure,'/'))::int;

--Now calculate average Systolic and Dystolic Blood Pressure (Round to nearest whole number)
select round(avg(systolic_blood_pressure),0) as average_Systolic_Blood_Pressure, round(avg(dystolic_blood_pressure),0) as Average_Dystolic_Blood_Pressure
from health_data;

--Identify the type of blood pressure each participant has
select 
case when systolic_blood_pressure < 120 AND dystolic_blood_pressure < 80 then 'Normal Blood Pressure'
when systolic_blood_pressure between 120 and 129 AND dystolic_blood_pressure <80 then 'Elevated Blood Pressure'
when systolic_blood_pressure between 130 and 139 OR dystolic_blood_pressure between 80 and 89 then 'High Blood Pressure Stage 1'
when systolic_blood_pressure >= 140 or dystolic_blood_pressure >=90 then 'High Blood Pressure Stage 2'
else 'Hypertensive Crisis' end as blood_pressure_type
from health_data;
alter table health_data
add blood_pressure_type varchar;
update health_data
set blood_pressure_type = case when systolic_blood_pressure < 120 AND dystolic_blood_pressure < 80 then 'Normal Blood Pressure'
when systolic_blood_pressure between 120 and 129 AND dystolic_blood_pressure <80 then 'Elevated Blood Pressure'
when systolic_blood_pressure between 130 and 139 OR dystolic_blood_pressure between 80 and 89 then 'High Blood Pressure Stage 1'
when systolic_blood_pressure >= 140 or dystolic_blood_pressure >=90 then 'High Blood Pressure Stage 2'
else 'Hypertensive Crisis' end;
select blood_pressure_type, count(blood_pressure_type) from health_data
group by blood_pressure_type;

--Calculate Average Sleep Quality and Average Stress Level (Out of 5) (round to 2 decimal places)
select round(avg(quality_of_sleep)/2,2) as average_sleep_quality, round(avg(stress_level)/2,2) as average_stress_level from health_data;

--Rescale sleep quality and stress level columns to be out of 5 instead of 10
alter table health_data
alter column quality_of_sleep type double precision using quality_of_sleep::double precision,
alter column stress_level type double precision using stress_level::double precision
;
update health_data
set quality_of_sleep = quality_of_sleep/2
stress_level = stress_level/2;

--Now let's recalculate Average Sleep Quality and Average Stress Level without having to divide by 2 this time (round to 2 decimal places)
select round((avg(quality_of_sleep)/2)::numeric,2) as average_sleep_quality, round((avg(stress_level)/2)::numeric,2) as average_stress_level 
from health_data;

