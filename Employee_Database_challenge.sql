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
WHERE to_date = '9999-01-01'
ORDER BY emp_no,
    to_date DESC;

-- A query is written and executed to create a Retiring Titles table that 
-- contains the number of titles filled by employees who are retiring:
SELECT COUNT(ut.emp_no),
    ut.title INTO retiring_titles
FROM unique_titles as ut
GROUP BY Title
ORDER BY COUNT(title) DESC;

-- Deliverable 2: The Employees Eligible for the Mentorship Program (30 points)

-- A query is written and executed to create a Mentorship Eligibility table for 
-- current employees who were born between January 1, 1965 and December 31, 1965:
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title INTO mentorship_eligibilty
FROM employees as e
    LEFT JOIN dept_emp as de ON (e.emp_no = de.emp_no)
    LEFT JOIN titles as t ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
    AND (
        e.birth_date BETWEEN '1965-01-01'
        AND '1965-12-31'
    )
ORDER BY emp_no;

-- Count of employees eligible for mentorship program by title
SELECT COUNT(ut.emp_no),
    ut.title INTO mentorship_eligibilty_titles
FROM mentorship_eligibilty as ut
GROUP BY Title
ORDER BY COUNT(title) DESC

-- New Mentorship Eligibility table for current employees 
-- who were born between January 1, 1960 and December 31, 1965:
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    ti.title INTO mentorship_eligibilty_new
FROM employees as e
    INNER JOIN dept_emp as de ON (e.emp_no = de.emp_no)
    INNER JOIN titles as ti ON (e.emp_no = ti.emp_no)
WHERE (
        e.birth_date BETWEEN '1960-01-01' AND '1965-12-31'
    )
    AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no DESC
-- Count of employees eligible for mentorship program by title - new criteria
SELECT COUNT(ut.emp_no),
    ut.title INTO mentorship_eligibilty_titles_new
FROM mentorship_eligibilty_new as ut
GROUP BY Title
ORDER BY COUNT(title) DESC