const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const args = process.argv.slice(2);

pool.query(
  `
    SELECT t.name AS teacher, c.name AS cohort, count(ar.id) AS total_assistances
    FROM assistance_requests AS ar
    INNER JOIN teachers AS t ON t.id = ar.teacher_id
    INNER JOIN students AS s ON s.id = ar.student_id
    INNER JOIN cohorts AS c ON c.id = s.cohort_id
    WHERE c.name = $1
    GROUP BY t.name, c.name
    ORDER BY cohort;
  `,
  [args[0]]
)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.cohort}: ${user.teacher}`);
    });
  })
  .catch(err => console.error('query error', err.stack));