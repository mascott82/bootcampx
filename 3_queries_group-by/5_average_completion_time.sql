SELECT stu.name as student, avg(ass_sub.duration) as average_assignment_duration
FROM assignment_submissions as ass_sub
INNER JOIN students as stu ON stu.id = ass_sub.student_id
WHERE stu.end_date IS NULL
GROUP BY stu.name
ORDER BY avg(ass_sub.duration) DESC;