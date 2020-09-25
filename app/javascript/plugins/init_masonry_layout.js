// RESIZE ONE
const resizeCard = async (card) => {
    const cardContainer = document.querySelector('.memories-container');
    const img = card.querySelector('.content img')
    const rowHeight = parseInt(window.getComputedStyle(cardContainer).getPropertyValue('grid-auto-rows'), 10);
    const rowGap = parseInt(window.getComputedStyle(cardContainer).getPropertyValue('grid-row-gap'), 10);

    const imageLoaded = new Promise((res, rej) => {
      img.onload = function(){
        const rowSpan = Math.ceil((img.getBoundingClientRect().height+rowGap)/(rowHeight+rowGap)) - 1;
        card.style.gridRowEnd = "span "+rowSpan;
      }
    });

    const promise = await imageLoaded;
}
// RESIZE ALL
const resizeAllCards = () => {
  const allMemoryCards = document.querySelectorAll('.memories-card');

  if (allMemoryCards) {
    console.log('Complete getting all memory cards');
    let i = 1;
    allMemoryCards.forEach((card) => {
      resizeCard(card);
      i++;
    })
  }
};

export { resizeAllCards };
