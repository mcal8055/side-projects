//players player1/player2
const player1 = 
{
    name: 'Player One',
    value: 'X'
}
const player2 = 
{
    name: 'Player Two',
    value: 'O'
}

//current player

let currentPlayer;

let playerOneGrid
let scoreGrid = []
let clickedButtons = []

// // function checkForWinner()
// {
//     let a1, a2, a3, b1, b2, b3, c1, c2, c3;
//     a1 = document.getElementById("a1").value;
//     a2 = document.getElementById("a2").value;
//     a3 = document.getElementById("a3").value;
//     b1 = document.getElementById("b1").value;
//     b2 = document.getElementById("b2").value;
//     b3 = document.getElementById("b3").value;
//     c1 = document.getElementById("c1").value;
//     c2 = document.getElementById("c2").value;
//     c3 = document.getElementById("c3").value;


//     // const playerOneScore = scoreGrid.filter(score =>
//     //     {
//     //         score.player === player1
//     //     })
        
//     // const playerTwoScore = scoreGrid.filter(score =>
//     //     {
//     //         score.player === player2
//     //     })

//         //did player1 win?
//     if((a1 == 'X' && a2 == 'X' && a3 == 'X') || (b1 == 'X' && b2 == 'X' && b3 == 'X') || (c1 == 'X' && c2 == 'X' && c3 == 'X')
//     {
//         window.alert('Player 1 Won!')
//     }
//     else 
//     {
//         window.alert('Player 2 Won!')
//     }
//         //did player2 win?

// }


function setNextPlayer()
{
    currentPlayer = (currentPlayer === player1) ? player2: player1

    document.getElementById('playerName').innerText = currentPlayer.name
}

function init()
{
    setNextPlayer()

    currentPlayer = player1
    const buttons = document.querySelectorAll('.game-button')

    buttons.forEach(button =>
        {
            button.addEventListener('click', () =>
            {
                if(!clickedButtons.includes(button))
                {
                button.innerText = currentPlayer.value
                clickedButtons.push(button)
                score = 
                {
                    player: currentPlayer,
                    cell: button.id
                }
                scoreGrid.push(score)
                // checkForWinner()
                setNextPlayer()
                }
            })
        })

        const reset = document.getElementById('resetButton')
        reset.addEventListener('click', () =>
        {
            clickedButtons = []
            buttons.forEach(button => button.innerText = '')
            currentPlayer = null
            setNextPlayer()
        })
}



document.addEventListener('DOMContentLoaded', () =>
{
    init()
}
)


//reset