-- Deliverable 1: The Number of Retiring Employees by Title (50 points)

-- A query is written and executed to create a Retirement Titles table for 
-- employees who are born between January 1, 1952 and December 31, 1955:
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    t.title,
    t.from_date,
    t.to_date INTO retirement_titles
FROM employees as e
    INNER JOIN titles as t ON (e.emp_no = t.emp_no)
WHERE (
        e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
    )
ORDER BY e.emp_no;

-- A query is written and executed to create a Unique Titles table that 
-- contains the employee number, first and last name, and most recent title:
SELECT DISTINCT ON (emp_no) emp_no,
    first_name,
    last_name,
    title INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no,
    to_date DESC;

-- A query is written and executed to create a Retiring Titles table that 
-- contains the number of titles filled by employees who are retiring:
SELECT COUNT(ut.emp_no),
    ut.title INTO retiring_titles
FROM unique_titles as ut
GROUP BY Title
ORDER BY COUNT(title) DESC;
