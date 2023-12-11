SELECT t.name AS teacher, 
        s.name AS student, 
        a.name AS assignment, 
        (ar.completed_at - ar.started_at) AS duration
FROM assistance_requests AS ar
INNER JOIN students AS s ON s.id = ar.student_id
INNER JOIN teachers AS t ON t.id = ar.teacher_id
INNER JOIN assignments AS a ON a.id = ar.assignment_id
ORDER BY (ar.completed_at - ar.started_at);