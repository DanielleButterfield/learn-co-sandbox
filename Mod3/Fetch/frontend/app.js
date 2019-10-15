const snack_form = document.getElementById('snack_form')

snack_form.addEventListener('submit', event => {
  event.preventDefault()
  let formData = new FormData(snack_form)
  let name = formData.get('name')
  let price = formData.get('price')

  body = {
    name,
    price
  }
  
  fetch('http://localhost:3000/snacks', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(body)
  })
})

const createCards = (snacks) => {
  snacks.forEach(snack => {
    let card = document.createElement('div')
    let h1 = document.createElement('h1')
    let p = document.createElement('p')
    let button = document.createElement('button')
    let editButton = document.createElement('button')

    h1.innerText = snack.name
    p.innerText = snack.price
    button.innerText = "DELETE"
    exitVVBj

    card.append(h1, p)
    document.body.appendChild(card)
  })
}


fetch('http://localhost:3000/snacks')
  .then(response => response.json())
  .then(response => (createCards))