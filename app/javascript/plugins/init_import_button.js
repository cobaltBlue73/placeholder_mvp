const importButton = () => {
  const cards = document.querySelectorAll(".card");
  const counter = document.querySelector(".import-button .counter");

  cards.forEach((element) => {
    element.addEventListener('click', (e) => {
      const avatarKey = e.currentTarget.querySelector('.checkbox').dataset.key;
      const cameraCart = document.querySelector('.camera-cart a');
      const cameraLink = cameraCart.getAttribute('href');
      let activeCheckboxes = document.querySelectorAll(".checkbox.active").length;
      if (activeCheckboxes > 0) {
        counter.classList.add("active")
        counter.innerHTML = activeCheckboxes;
      } else {
        counter.classList.remove("active")
        counter.innerHTML = "";
      }
      if (e.currentTarget.querySelector(".checkbox").classList.contains("active")) {
          cameraCart.setAttribute('href', cameraLink + avatarKey + ',' );
      } else {
          cameraCart.setAttribute('href', cameraLink.replace(avatarKey + ',', ''));
      }

    })
  })
}

export { importButton }
