SELECT co.name, count(stu.id) AS student_count
FROM cohorts AS co
JOIN students AS stu
  ON stu.cohort_id = co.id
GROUP BY co.name, stu.cohort_id
  HAVING count(stu.id) >= 18
ORDER BY count(stu.id);