# Health and Wellness Analysis and Dashboard

### Project Overview

![360_F_448597606_hRQwFbCRv91kHfQ6T3ovd7E4TiZBxDma (1) (2)](https://github.com/darianlee555/Portfolio-Projects/assets/145151765/f224b787-a371-4012-a6e9-4bbe61d02d5e)

This is an **SQL** and **Excel** project analyzing **Sleep Health and Lifestyle** made from data obtained from Kaggle involving fictional participants. The point of this project is to answer crucial questions with regards to how the participants' health/wellness is affected by their sleep habits and lifestyle using insights from the data and then offer recommendations on how these participants can improve their health.

### Data Source

**Sleep Health and Lifestyle Dataset**:https://www.kaggle.com/datasets/uom190346a/sleep-health-and-lifestyle-dataset

**Dataset Overview:**

The **Sleep Health and Lifestyle Dataset** comprises around 400 rows and 13 columns, covering a wide range of variables related to sleep and daily habits. It includes details such as gender, age, occupation, sleep duration, quality of sleep, physical activity level, stress levels, BMI category, blood pressure, heart rate, daily steps, and the presence or absence of sleep disorders. 

For additional information and a description of each column, please refer to the data source link above.


### Objectives

I aim to answer the following questions using the dataset:

1. How many individuals/participants are included in this dataset?
2. What is the average age of the participants?
3. What is the average heart rate of the participants?
4. What is the average amount of sleep they receive?
5. How many participants are male, and how many are female?
6. What is the daily exercise level of the participants?
7. What weight category do they fall into (Obese, overweight, normal weight)?
8. What are the average systolic and diastolic blood pressure readings?
9. What blood pressure category do they belong to (Normal, Elevated, Stage 1 High Blood Pressure, etc.)?
10. What are their average stress levels and sleep quality (rated out of 5)?
11. Is there a presence of sleep disorders among the participants?

### Tools Used

**PostgreSQL** for Data Exploration, Cleaning, and Analysis

**Excel** for Visualizations

### Skills/Concepts Demonstrated

The following **SQL** skills were used: Aggregate Functions, Cases, Adding Data, Updating Data, Cleaning/Transforming/Reformatting Data.

If interested here is the code: https://github.com/darianlee555/Health-and-Wellness-Project/blob/main/Health%20Data%20Queries.sql

The following **Excel** features were incorporated: Formulas/Functions, Pivot Tables/Charts, Power Query, Filters.

### Data Visualization/Dashboard


![afa](https://github.com/darianlee555/Health-and-Wellness-Project/assets/145151765/898a8047-0b93-4986-83ad-15992761c174)



### Features:
- The filters "Occupation", "Weight", "Gender", and "Sleep Disorder" allow users to filter the data to view information associated with specific occupations, weight categories, genders, and/or sleep disorders. This functionality aligns with the primary objective of this project, which is to present data based on individuals' lifestyles.

### Analysis/Results/Insights
Here is the code used to analyze the data and obtain the following results/insights: https://github.com/darianlee555/Health-and-Wellness-Project/blob/main/Health%20Data%20Queries.sql
- There were 374 Total Participants.
- The average age of the participants is 42.
- Their average heart rate is 70 BPM.
- The average amount of sleep they got was 7 hours.
- There were 189 participants that were male and 185 participants that were female.
- On average, they exercised for about 59 minutes a day.
- 10 participants were classified as Obese, 148 were classified as Overweight, and 216 were classified as a Normal Weight.
- Their average systolic blood pressure was 129 mmHg. Their average disatolic blood pressure was 85 mmHg.
- 41 Participants had Normal Blood Pressure (Systolic < 120 and Disatolic < 80)
- 1 Participant had Elevated Blood Pressure (Systolic between 120 and 129 and Disatolic < 80)
- 261 Participants had Stage 1 High Blood Pressure (Systolic betweeen 130 and 139 or Disatolic between 80 and 89)
- 71 Participants had Stage 2 High Blood Pressure (Systolic >=140 OR Disatolic >= 90)
- 0 Participants Had a hypertensive crisis (Systolic > 180 and/or Disatolic > 120)
- Their average stress levels were 2.69/5 and their average sleep quality was 3.66/5
- 77 Participants had Insomnia, 78 had Sleep Apnea, and 219 had no sleep disorder.
- The above can be filtered in the dashboard to obtain the same insights for certain categories such as gender, weight, occupation, and/or sleep disorder as mentioned earlier to show all of the insights above for one or more sub-categories.

### Conclusions/Recommendations
Based on the data, It's clear that a significant portion of participants exhibit high blood pressure (Stage 1/Stage 2). To enhance overall health, participants are advised to focus on lowering their systolic and diastolic blood pressure levels. The averages of 129 mmHg for systolic and 85 mmHg for diastolic are considered unhealthy since normal blood pressure is typically below 120 mmHg for systolic and below 80 mmHg for diastolic. It's also clear that a lot of participants (155 participants) also have some sort of sleep disorder (either sleep apnea or insomnia). I recommend either treatment for these disorders or more time sleeping and more time exercising in order to hopefully cure these ailments. The participants have an about an even ratio of males to females so there shouldn't be much selection bias. The 70 BPM heart rate on average is also relatively normal (60 to 100 BPM is considered normal). Since most participants have an average age of 42 and a significant number are overweight (148) or obese (10), it is advisable for individuals in these categories to focus on regular exercise and adopting healthier dietary habits to achieve a healthier BMI. To increase average sleep quality and reduce average stress levels, participants are encouraged to prioritize both exercise and sufficient sleep as these lifestyle changes can naturally lead to lower stress and improved sleep quality. If any/all of these recommendations are followed by the participants, there should be a positive change in their health.

### More Screenshots showing interactivity/filters
![Media1](https://github.com/darianlee555/Health-and-Wellness-Project/assets/145151765/71b04ac4-ea49-46d7-b2de-ca93494452d6)
![kjhhkjhk](https://github.com/darianlee555/Health-and-Wellness-Project/assets/145151765/6c302647-1f17-4dcc-a768-0b29cd4ded06)


