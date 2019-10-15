const body = document.body

function createCards(heroes) {
  heroes.forEach(hero => {
    let div = document.createElement('div')
    let br = document.createElement('br')
    let superName = document.createElement('a')
    let realName = document.createElement('p')
    let superPower = document.createElement('a')

    superName.href = `hero.html?id=${hero.id}`
    superName.innerText = `${hero.super_name}`

    realName.innerText = `${hero.name}`

    superPower.href = `power.html?id=${hero.power_id}`
    superPower.innerText = `${hero.power.name}`

    div.append(superName, realName, superPower)

    body.append(div, br)
  })
}

function createOptions(powers) {
  let powerDropdown = document.getElementById("hero-power")
  power.forEach()
}

fetch("http://localhost:3000/heroes")
  .then(response => response.json())
  .then(createCards)

fetch("http://localhost:3000/powers")
  .then(response => response.json())
  .then(createOptions)