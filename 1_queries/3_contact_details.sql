SELECT name, id
FROM students
WHERE email IS NULL 
  OR phone is NULL;