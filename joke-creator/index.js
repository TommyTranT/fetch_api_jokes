// Create our jokes in the database with node-postgress

// Require node-postgress  (Pool or Client)
const { Pool } = require('pg')

// Setting up our connection. We could connect to a remote host (elephant psql)
const pool = new Pool({
  user:"tommytran",
  password:"",
  host:"localhost",
  port:5432,
  database:"jokes_yeah"
}) 


// Insert joke template
// INSERT INTO
//   jokes (question, answer, rating, author_id)
// VALUES
//   ('Knock knock, whos there, to who', 'no, to whom',3, 1)
//   ;