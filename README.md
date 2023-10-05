# Health and Wellness Analysis and Dashboard

### Project Overview

This is an **SQL** and **Excel** project analysing **Sleep Health and Lifestyle** made from data from Kaggle containing fictional participants. The point of this project is to answer crucial questions with regards to how the participants' health/wellness is affected by their sleep habits and lifestyle using insights from the data.

### Data Source

https://www.kaggle.com/datasets/uom190346a/sleep-health-and-lifestyle-dataset

**Dataset Overview:**

The **Sleep Health and Lifestyle Dataset** comprises around 400 rows and 13 columns, covering a wide range of variables related to sleep and daily habits. It includes details such as gender, age, occupation, sleep duration, quality of sleep, physical activity level, stress levels, BMI category, blood pressure, heart rate, daily steps, and the presence or absence of sleep disorders. 

More further info and a description of each column can be found in the data source link above.


### Objectives

I wanted to answer the following questions using the data:

* What were the total number of individuals/participants in this dataset?
* What was the average age of the participants?
* What was the average heartrate?
* What was the average amount of sleep they got?
* How many participants were males? How many were females?
* How much exercise did they get daily?
* What weight type were they? (Obese, overweight, normal weight?)
* What was their average systolic and diastolic blood pressure?
* What type of blood pressure did they have? (Normal, Elevated, Stage 1 High Blood Pressure, etc.) 
* What was their average stress levels and sleep quality? 

### Tools Used

**PostgreSQL** for Data Exploration, Cleaning, and Analysis

**Excel** for Visualizations

### Skills/Concepts Demonstrated

The following **SQL** skills were used: Joins, Subqueries/CTEs, Windows Functions, Aggregate Functions, Unions, Creating Views, Cases, Adding Data, Updating Data, 
Cleaning/Transforming/Reformatting Data.

If interested here is the code: [https://github.com/darianlee555/Portfolio-Projects/blob/main/SQL%20Motor%20Vehicle%20Crashes%20Code.sql](https://github.com/darianlee555/Health-and-Wellness-Project/blob/main/Health%20Data%20Queries.sql)

The following **Excel** features were incorporated: Page Navigation/Buttons, Filters.

### Data Visualization/Dashboard


![health screenshot](https://github.com/darianlee555/Health-and-Wellness-Project/assets/145151765/0e086f32-6844-4067-8cd7-f66acb9a3661)


### Features:
- "More Info" and "Previous Info" are navigational buttons that allow the user to navigate easily through the two pages of the dashboard.
- The filters "Borough" and "Year" allow users to filter through the data to see data associated with a certain year and/or borough.
- The "Key Insights" from analyzing the data are put on the left-hand side to make them more obvious to users.
- A zoomable map is included with locations of fatalities for each borough so that the info about those particular collisions can be investigated further. 

### Analysis
Here is the code used to obtain the following results: https://github.com/darianlee555/Portfolio-Projects/blob/main/SQL%20Motor%20Vehicle%20Crashes%20Code.sql
- Driver Inattention/Distracted Driving was the most likely reason for a crash.
- People aged 21 to 40 were most likely to get into car crashes.
- Brooklyn has the most injuries and fatalies of any borough.
- July has the most crashes of any month.
- Males are more likely to get into a crash then females.
- Back injuries were the most common injury in a crash.
- Crashes involving two vehicles (double vehicle crash) were the most common type of crash with 1,502,012 total collisions.
- Friday has the most accidents of any day.
- Most accidents occur in the afternoon.
- The number of total crashes is 2,016,265.
- The number of total injuries is 609,150.
- The number of total fatalities is 2,913.

### Recommendations
Based on the data, in order to prevent future vehicle collisions in NYC, I would encourage more advertisements about the dangers of distracted driving. I would have these ads target the demographic of males that are aged 21 to 40 as they tend to get into the most accidents. I would encourage more ads in Brooklyn specifically, as well as have more traffic directors or officers in Brooklyn since Brooklyn is the most dangerous borough with the most injuries and fatalies. I would also have more officers patrol traffic in all boroughs on Friday afternoons since that's the most likely timeframe that an accident will occur. Also, even though July is the month with the most crashes, it's clear that after April, there is a clear increase in the number of crashes as seen in the line chart graph. Therefore, I would focus more on increasing traffic safety measures from May onwards, as January through April have a somewhat low amount of crashes in comparison to other months. If all/any of these steps are taken, perhaps they will reduce the amount of future collisions NYC has. 

### More Screenshots showing interactivity/filters/navigation
![](Media3.gif)
![](Media4.gif)
![Media5 (4)](https://github.com/darianlee555/Portfolio-Projects/assets/145151765/c724bed6-9265-4e71-9f03-65f8764e4f46)
