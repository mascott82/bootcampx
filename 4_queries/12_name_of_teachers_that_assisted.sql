SELECT DISTINCT(t.name) AS teacher, c.name AS cohort
FROM assistance_requests AS ar
INNER JOIN teachers AS t ON t.id = ar.teacher_id
INNER JOIN students AS s ON s.id = ar.student_id
INNER JOIN cohorts AS c ON c.id = s.cohort_id
WHERE c.name = 'JUL02'
ORDER BY teacher;