# Pewlett-Hackard-Analysis
On Pewlett Hackard employee database, to create **ERD (entity relationship diagrams)**, perform data modeling, and complete analysis using **SQL** techniques.

## Steps
•	Design an **ERD** that will apply to the data. <br />
•	Create and use a **SQL** database. <br />
•	Import and export large **CSV** datasets into **pgAdmin**. <br />
•	Practice using different `joins` to create new tables in **pgAdmin**. <br />
•	Write basic- to intermediate-level **SQL** statements. 

## Discussion
Find out the new list of potential mentors, who are eligible for retirement. The final query should return the potential mentor’s employee number, first and last name, their title, birth date and employment dates.

The goals are to: <br />
<br />
•	Use an **ERD** to understand relationships between SQL tables.
![](EmployeeDB.PNG) <br />
<br />
•	Create new tables in **pgAdmin** by using different `joins`.
  1. Number of titles Retiring: to contain employee number, first and last name, title, from date, and salary. 
  2. Only the Most Recent Titles: to exclude the rows of data containing duplicate names.
  3. Who’s Ready for a Mentor: for only birth date in 1965, and only current employees being included.

•	Write basic- to intermediate-level **SQL** statements.
  1. `INNER JOIN`: to combine employees, titles, salaries for needed information. 
  2. `PARTITION BY`: to distinguish first and last name.
  3. `WHERE`: for specific birth date, and to date for current employees

•	Export new tables to a CSV file.
  1. *titles_retiring.csv*
  2. *recent_title_count.csv*
  3. *ready_mentors.csv*
---
The codes are in [`challenge.sql`](https://github.com/plin2204/Pewlett-Hackard-Analysis_SQL/blob/master/challenge.sql), [`queries.sql`](https://github.com/plin2204/Pewlett-Hackard-Analysis_SQL/blob/master/queries.sql), and [`schema.sql`](https://github.com/plin2204/Pewlett-Hackard-Analysis_SQL/blob/master/schema.sql).
