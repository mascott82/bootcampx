SELECT c.name AS name, 
      avg(ar.completed_at - ar.started_at) AS average_assistance_time
FROM assistance_requests AS ar
INNER JOIN students AS s ON ar.student_id = s.id
INNER JOIN cohorts AS c ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY avg(ar.completed_at - ar.started_at) DESC 
LIMIT 1;
