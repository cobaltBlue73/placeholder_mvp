// const collapseCameraViewElements = () => {
//   const hideBtn = document.querySelector('#collapse-viewfinder-elements');
//   const cameraShutter = document.querySelector('#display-viewfinder-elements');

//     hideBtn.addEventListener('dblclick', (e) => {
//     console.log('Hidden elements and hideBtn');
//     hideBtn.classList.toggle('hidden');
//   })

//   cameraShutter.addEventListener('dblclick', (e) => {
//     console.log('Show elements and hideBtn');
//     // cameraShutter.classList.toggle('hidden');
//     hideBtn.classList.toggle('hidden');
//   })
// }


  const singleTap = () => {
    console.log('I tapped once');
  }


  const doubleTap = () => {
    console.log("I tapped twice");
  }

const collapseCameraViewElements = () => {
  const hideBtn = document.querySelector('#collapse-viewfinder-elements');


  let tapped = false;

  hideBtn.addEventListener("touchstart", (e) => {
      if(!tapped){
        tapped = setTimeout(function(){
            singleTap()
            tapped = null
        }, 300); //wait 300ms
      } else {
        clearTimeout(tapped);
        tapped = null
        doubleTap()
      }
      e.preventDefault()
  });
}
export { collapseCameraViewElements as collapseCameraViewElements}

