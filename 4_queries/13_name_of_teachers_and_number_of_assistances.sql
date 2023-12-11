SELECT t.name AS teacher, c.name AS cohort, count(ar.id) AS total_assistances
FROM assistance_requests AS ar
INNER JOIN teachers AS t ON t.id = ar.teacher_id
INNER JOIN students AS s ON s.id = ar.student_id
INNER JOIN cohorts AS c ON c.id = s.cohort_id
GROUP BY t.name, c.name
ORDER BY cohort;