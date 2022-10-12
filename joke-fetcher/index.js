// Fetch our jokes in the database with node-postgress

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

// Make a query, console log it, end the connection
// Show all from jokes, limit 2 rows
// pool.query("SELECT * FROM jokes LIMIT 2", (err, res) => {
//   console.log(err, res);
//   pool.end();
// }); 

// We get too much info. we just want the array of objects.
// Sample of the query above. Notice our sample data is called "rows"
// rows: [
//   {
//     id: 1,
//     question: 'Knock knock, whos there, to who',
//     answer: 'no, to whom',
//     rating: 3,
//     author_id: 1
//   },

// Create a function to show one joke
const showJokeInConsole = (jokeObj) => {
  console.log("🔥-----------------------------🔥")
  console.log(jokeObj.question)
  console.log(jokeObj.answer)
  console.log("Hahaha that was funny!")
  console.log("🔥-----------------------------🔥\n\n")
}


// Create a function that shows all jokes by looping
const showAllJokes = (jokeObj) => {
  for (let joke in jokeObj) {
    showJokeInConsole(jokeObj[joke]);  
  }
}

// Create Promise Pool to return JUST the rows
pool 
  .query("SELECT * FROM jokes")
  .then(dbRes => dbRes.rows)
  .then(showAllJokes)
  .catch((err) => console.log(err))
  .finally(() => pool.end())

