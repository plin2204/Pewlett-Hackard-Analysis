-- module 7  challenge
-- Part 1
-- 1 Number of [titles] Retiring
SELECT e.emp_no, e.first_name, e.last_name,
		ti.title, ti.from_date, s.salary
INTO titles_retiring
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
INNER JOIN salaries AS s
ON (e.emp_no = s.emp_no);

-- 2 Most Recent Titles
--- delect repeated names per descend from_date
SELECT * 
INTO most_recent_titles
FROM (
	SELECT *, ROW_NUMBER() OVER(
		PARTITION BY (first_name, last_name)
			ORDER BY from_date DESC) rn
	FROM titles_retiring)
tmp WHERE rn = 1;

--- dispaly in from_date DESC and title COUNT
SELECT * 
INTO recent_title_count
FROM (SELECT *, COUNT(*)
		OVER
		(PARTITION BY title)AS COUNT
		FROM most_recent_titles) tablewzCount
ORDER BY from_date DESC;

-- 3 Who’s Ready for a Mentor?
SELECT e.emp_no, e.first_name, e.last_name,
		ti.title, ti.from_date,ti.to_date
INTO ready_mentors
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (ti.to_date = '9999-01-01')
ORDER BY from_date ASC;