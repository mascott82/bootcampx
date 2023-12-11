SELECT a.id, a.name, a.day, a.chapter, count(ar.id) as total_requests
FROM assignments AS a
INNER JOIN assistance_requests AS ar ON a.id = ar.assignment_id
GROUP BY a.id
ORDER BY total_requests DESC;