const importButton = () => {
  const checkboxes = document.querySelectorAll(".checkbox");
  const counter = document.querySelector(".import-button .counter");

  checkboxes.forEach((element) => {
    element.addEventListener('click', (e) => {
      const avatarKey = e.currentTarget.dataset.key;
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
      if (e.currentTarget.classList.contains('active')) {
          cameraCart.setAttribute('href', cameraLink + avatarKey + ',' );
      } else {
          cameraCart.setAttribute('href', cameraLink.replace(avatarKey + ',', ''));
      }

    })
  })
}

export { importButton }
