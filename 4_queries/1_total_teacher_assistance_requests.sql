SELECT count(ar.id) as total_assistances, t.name as name
FROM teachers AS t
INNER JOIN assistance_requests AS ar ON t.id = ar.teacher_id
GROUP BY t.name HAVING t.name = 'Waylon Boehm';