SELECT sum(duration) AS total_duration
FROM assignment_submissions as ass_sub
INNER JOIN students as stu
  ON ass_sub.student_id = stu.id
    AND stu.name = 'Ibrahim Schimmel';