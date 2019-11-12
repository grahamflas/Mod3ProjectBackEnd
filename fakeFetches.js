// CREATE NEW USER
fetch('http://localhost:3000/users', {
  method: "POST",
  headers: {
    "Content-Type" : "application/json"
  }, 
  body: JSON.stringify(
    {username: "Mary"}
    )
})
  .then( resp => resp.json() )
  .then( newUser => console.log(newUser) )




// CREATE NEW GAME
fetch('http://localhost:3000/games', {
  method: "POST", 
  headers: {
    "Content-Type" : "application/json"
  }, 
  body: JSON.stringify({
    score: 32,
    user_id: 7
  }
  )
})
  .then( response => response.json() )
  .then( newGame => console.log(newGame) )




//GET A USER
fetch()


//UPDATE SCORE
var game_id = 2

fetch(`http://localhost:3000/games/${game_id}`, {
  method: "PATCH", 
  headers: {
    "Content-Type" : "application/json"
  }, 
  body: JSON.stringify({
    score: 55
  }
  )
})
  .then( response => response.json() )
  .then( updatedGame => console.log(updatedGame) )


  //add a column on the game table for game mode (add, sub, mult)
  //add a column on game table for game difficulties    