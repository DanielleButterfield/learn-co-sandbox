class Pokemon {
  constructor(name, imageURL, abilities) {
    this.name = name;
    this.imageURL = imageURL;
    this.abilities = abilities;
  }

  static fetch(name){
    return fetch(`https://pokeapi.co/api/v2/pokemon/${name}`)
  }

  createCard(){
    const $div = document.createElement("div")
      $div.innerHTML = `
      <p>${this.name}</p>
      <img src="${this.imageURL}" alt="${this.name}" />
      <ul class="abilities">
      </ul>
      `
      const $ul = $div.querySelector("ul")
      this.abilities.forEach(ability => {
        const $li = document.createElement("li")
        $li.textContent = ability.ability.name
        $ul.append($li)
      })

      return $div
  }
}

document.querySelector("#poke").addEventListener('submit', () => {
  event.preventDefault();
  $poke = document.querySelector("#input").value.toLowerCase();
  Pokemon.fetch($poke)
    .then(response => response.json())
    .then(pkmn => {
      const pokemon = new Pokemon(
        pkmn.name,
        pkmn.sprites.front_default,
        pkmn.abilities
      )
      const $pokemon = pokemon.createCard()

      const $body = document.querySelector("body")
      $body.append($pokemon)
    })
})