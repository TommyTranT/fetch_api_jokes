// Playing with sample data (hard coded)

const sampleData = [
  {
    id: 1,
    question: 'Knock knock, whos there, to who',
    answer: 'no, to whom',
    rating: 3,
    author_id: 1
  },
  {
    id: 2,
    question: 'How is a bouncer at a club like a dish soap?',
    answer: 'They both DETER GENTS',
    rating: 5,
    author_id: 2
  }
]

// Create a function to show one joke
const showJokeInConsole = (jokeObj) => {
  console.log("🔥-----------------------------🔥")
  console.log(jokeObj.question)
  console.log(jokeObj.answer)
  console.log("Hahaha that was funny!")
  console.log("🔥-----------------------------🔥\n\n")
}
// showJokeInConsole(sampleData[0]);  


// Create a function that shows all jokes by looping
const showAllJokes = (jokeObj) => {
  for (let joke in jokeObj) {
    showJokeInConsole(jokeObj[joke]);  
  }
}
showAllJokes(sampleData);
