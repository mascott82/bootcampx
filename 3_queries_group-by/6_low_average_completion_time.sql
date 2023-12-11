SELECT stu.name AS student, 
  avg(ass_sub.duration) AS average_assignment_duration,
  avg(ass.duration) AS average_estimated_duration
FROM students AS stu
INNER JOIN assignment_submissions AS ass_sub ON ass_sub.student_id = stu.id
INNER JOIN assignments AS ass ON ass_sub.assignment_id = ass.id
WHERE stu.end_date IS NULL
GROUP BY stu.name HAVING avg(ass_sub.duration) < avg(ass.duration)
ORDER BY avg(ass_sub.duration);