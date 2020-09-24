const markAsChecked = () => {
  const cards = document.querySelectorAll('.card');
  cards.forEach(element => {
    element.addEventListener('click', (event) => {
    event.currentTarget.querySelector('.checkbox').classList.toggle("active");
    })
  })
}

export { markAsChecked }
