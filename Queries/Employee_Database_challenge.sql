-- Deliverable #1 - Retirement Titles Table
SELECT e.emp_no,
    e.first_name,
    e.last_name,
	t.title,
	t.from_date,
	t.to_date	
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

-- Deliverable #1 - Unique Titles Table (removing duplicate rows)
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

-- Deliverable #1 - Retiring Titles Table
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Deliverable #2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_employee as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY e.emp_no;

-- Deliverable #3 : additional query #1, eligible by dept_no, title
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.dept_no,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility_dept
FROM employees as e
INNER JOIN dept_employee as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
ORDER BY e.emp_no;

SELECT COUNT(dept_no), dept_no, title
FROM mentorship_eligibility_dept
GROUP BY dept_no, title
ORDER BY dept_no, title;

-- Deliverable #3 : additional query #2, expanded eligible pool
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.dept_no,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility_expanded
FROM employees as e
INNER JOIN dept_employee as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1963-01-01' AND '1965-12-31') 
ORDER BY e.emp_no;

SELECT COUNT(dept_no), dept_no, title
FROM mentorship_eligibility_expanded
GROUP BY dept_no, title
ORDER BY dept_no, title;
