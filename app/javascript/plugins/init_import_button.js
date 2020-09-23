const importButton = () => {
  const checkboxes = document.querySelectorAll(".checkbox");
  const counter = document.querySelector(".import-button .counter");

  checkboxes.forEach((element) => {
    element.addEventListener('click', () => {
      let activeCheckboxes = document.querySelectorAll(".checkbox.active").length;
      if (activeCheckboxes > 0) {
        counter.classList.add("active")
        counter.innerHTML = activeCheckboxes;
      } else {
        counter.classList.remove("active")
        counter.innerHTML = "";
      }
    })
  })
}

export { importButton }
