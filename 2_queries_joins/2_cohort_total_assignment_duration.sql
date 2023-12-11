SELECT sum(duration) AS total_duration
FROM assignment_submissions AS ass_sub
INNER JOIN students AS stu ON ass_sub.student_id = stu.id
INNER JOIN cohorts AS co ON stu.cohort_id = co.id
WHERE co.name = 'FEB12';
