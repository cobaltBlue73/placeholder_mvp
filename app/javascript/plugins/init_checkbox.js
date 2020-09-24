const markAsChecked = () => {
  const checkbox = document.querySelectorAll('.checkbox');
  checkbox.forEach(element => {
    element.addEventListener('click', () => {
    element.classList.toggle("active");
    })
  })
}

export { markAsChecked }
