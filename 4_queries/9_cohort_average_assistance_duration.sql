SELECT avg(total_duration)
FROM (SELECT c.name AS cohort, 
      sum(ar.completed_at - ar.started_at) AS total_duration
FROM assistance_requests AS ar
INNER JOIN students AS s ON s.id = ar.student_id
INNER JOIN cohorts AS c ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY total_duration
) as total_duration;