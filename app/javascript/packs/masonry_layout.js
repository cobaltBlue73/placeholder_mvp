// RESIZE ONE
const resizeCard = (card) => {
  const cardContainer = document.querySelector('.memories-container');
  console.log(cardContainer);
  const rowHeight = parseInt(window.getComputedStyle(cardContainer).getPropertyValue('grid-auto-rows'), 10);
  console.log(rowHeight);
  const rowGap = parseInt(window.getComputedStyle(cardContainer).getPropertyValue('grid-row-gap'), 10);
  console.log(rowGap);
  const rowSpan = Math.ceil((card.querySelector('.content').getBoundingClientRect().height+rowGap)/(rowHeight+rowGap)) - 1;
  console.log(rowSpan)
  card.style.gridRowEnd = "span "+rowSpan;
  console.log(card.style.gridRowEnd);
}

// RESIZE ALL
const resizeAllCards = () => {
  const allMemoryCards = document.querySelectorAll('.memories-card');
  console.log('Complete getting all memory cards');
  let i = 1;
  allMemoryCards.forEach((card) => {
    console.log(`Starting card no. ${i}`);
    resizeCard(card);
    i++;
  })
}

