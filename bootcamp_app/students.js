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
    SELECT s.id AS id, s.name AS name, s.cohort_id AS cohort_id, c.name AS cohort
    FROM students AS s
    INNER JOIN cohorts AS c ON s.cohort_id = c.id
    WHERE c.name like $1
    LIMIT $2;
    `,
  [`%${args[0]}%`, args[1]]
)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort} cohort`);
    });
  })
  .catch(err => console.error('query error', err.stack));