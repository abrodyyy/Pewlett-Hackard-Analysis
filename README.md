# Pewlett-Hackard-Analysis
## Project Overview
We've been tasked with assisting an HR-analyst in creating an employee data base using SQL. The company he works for is expecting a large number of retirements in the near future and it's essential they plan accordingly to avoid a labor shortage within the company. We've taken several .csv files containing employee records and utilized PostgreSQL to create an employee data base to provide the information on employees eligible for retirement by title, and employees who are eligable to participate in a mentorship program. It's important to include the titles in our data base so that the company can estimate hiring needs as employees begin to reitre. 

This new assignment consists of two technical analysis deliverables and a written report. You will submit the following:
- Deliverable 1: The Number of Retiring Employees by Title
- Deliverable 2: The Employees Eligible for the Mentorship Program
- Deliverable 3: A written report on the employee database analysis (README.md)

## Resources
- Data Source: [departments.csv](https://github.com/abrodyyy/Pewlett-Hackard-Analysis/blob/main/Resources/departments.csv), [dept_emp.csv](https://github.com/abrodyyy/Pewlett-Hackard-Analysis/blob/main/Resources/dept_emp.csv), [dept_manager.csv](https://github.com/abrodyyy/Pewlett-Hackard-Analysis/blob/main/Resources/dept_manager.csv), [employees.csv](https://github.com/abrodyyy/Pewlett-Hackard-Analysis/blob/main/Resources/employees.csv), [salaries.csv](https://github.com/abrodyyy/Pewlett-Hackard-Analysis/blob/main/Resources/salaries.csv), [titles.csv](https://github.com/abrodyyy/Pewlett-Hackard-Analysis/blob/main/Resources/titles.csv)
- Software: [PostgreSQL 15.1](https://www.postgresql.org/docs/current/release-15-1.html), [pgAdmin 4](https://www.pgadmin.org/download/), [Visual Studio Code, 1.70.2](https://code.visualstudio.com/updates/v1_70), [Quick DBD, 1.70.2](https://www.quickdatabasediagrams.com)

## Results

Number of Employees Retiring | Most Recent Job Title
---------------------------- | ---------------------
25,916                       | Senior Engineer
24,926                       | Senior Staff
9,285                        | Engineer
7,636                        | Staff
3,603                        | Technique Leader
1,090                        | Assistant Engineer
2                            | Manager

- A total of 72,458 employees, spanning across 7 different job titles are eligible for retirement. 
- Around 70% of the employees eligable for retirement are senior engineers and senior staff. 

Employees eligible for mentorship program | Most Recent Job Title
------------------------------------------| ---------------------
169                                       | Senior Engineer
569                                       | Senior Staff
501                                       | Engineer
155                                       | Staff
77                                        | Technique Leader
78                                        | Assistant Engineer
0                                         | Manager

- There are a total of 1,549 eligible for the mentorship program.
- Around 70% of the employees eligable for the mentorship program are senior engineers and senior staff. 
- There are no managers eligible for the mentorship program, yet two are elible to retire at any time. 

## Summary
Pewett-Hackard needs to start hiring new employees immediatley if they are to survive 72,458 employees exiting the company. With the paramaters originally set - there were only 1,549 employees eligible for the mentorship program. That would leave the mentorship to new hire ratio at about 47 new hires. I ran an additional query to  per 1 mentor which is not an efficient or effective way to train new hires. I ran an additional query to list out those mentors by job title as well. The number of mentors available by job title vastly outnumber hiring needs. For example - there are 25,916 senior engineers leaving, and 169 eligible for the mentorship program. That would leave the ratio for senior staff engineers at 154 employees per mentor. I widened the parameters for mentor eligibility and re-ran both queries. 

Employees eligible for mentorship program | Most Recent Job Title
------------------------------------------| ---------------------
24,648                                    | Senior Engineer
16,433                                    | Senior Staff
19,973                                    | Engineer
25,521                                    | Staff
4,621                                     | Technique Leader
2,560                                     | Assistant Engineer
0                                         | Manager

Widening the paramaters for mentorship would allow 1 on 1 mentor / new hire relationships. It would also allow for the company to ask for volunteers to mentor rather than reqirring all current employees to train the new hires. All of the queries ran above could also be re-ran to include the department information to provide a broader view of the upcoming retirements and hiring needs by department. 

