SELECT co.name, count(ass_sub.id) as total_submissions 
FROM assignment_submissions as ass_sub
INNER JOIN students as stu ON ass_sub.student_id = stu.id
INNER JOIN cohorts as co ON stu.cohort_id = co.id
GROUP BY co.name, stu.cohort_id
ORDER BY count(ass_sub.id) DESC;