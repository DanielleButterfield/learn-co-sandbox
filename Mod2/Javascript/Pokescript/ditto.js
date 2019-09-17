const url = "https://pokeapi.co/api/v2/pokemon/ditto"

fetch(url)
.then(response => response.json())
.then(ditto => {
    showDitto(ditto.sprites.front_default)
})

async function getAndShowDitto(){
    const response = await fetch(url)
    const ditto = await response.json
}

function showDitto(url){
    $img = document.querySelector("img")
    $img.src = url
}

function parseResponse(response){
    return response.json()
}

getAndShowDitto()