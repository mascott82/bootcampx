SELECT count(ar.id) AS total_assistances, stu.name AS name
FROM assistance_requests AS ar
INNER JOIN students AS stu ON ar.student_id = stu.id
WHERE stu.name = 'Elliot Dickinson'
GROUP BY stu.name;