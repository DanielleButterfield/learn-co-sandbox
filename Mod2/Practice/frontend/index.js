fetch("http://localhost:3000/ships")
  .then(response => response.json())
  .then(ships => shipList(ships))

function shipList(ships) {
  const list = document.querySelector(".list-ships");
  list.innerHTML = "";
  ships.forEach(ship => {
    const item = document.createElement("li");
    item.innerText = ship.name;
    ship.pirates.forEach(pirate => {
      const pitem = document.createElement("p");
      pitem.innerText = pirate.name;
      item.appendChild(pitem);
    })
    list.appendChild(item);
    const form = document.createElement("form");
    const plab = document.createElement("label");
    plab.for="pirate";
    plab.innerText="Join the crew!";
    const pinp = document.createElement("input");
    pinp.id="pirate";
    pinp.type="text";
    pinp.name="pirate";
    const sub = document.createElement("input");
    sub.id="submit";
    sub.type="submit";
    sub.value="Join Crew";
    sub.addEventListener('click', (event) => {
      event.preventDefault();
      fetch('http://localhost:3000/pirates', {
        method: 'POST',
        headers: {
          'content-type': 'application/json'
        },
        body: JSON.stringify({
          name: pinp.value,
          ship_id: ship.id,
        })
      })
    })
    const br = document.createElement("br");
    form.append(plab, br, pinp, sub);
    optimism = document.createElement("p");
    optimism.innerText = pinp.value;
    list.append(optimism)
    list.appendChild(form);
  })
}
