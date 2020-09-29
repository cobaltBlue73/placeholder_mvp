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
  console.log('Single Tap');
}

const doubleTap = () => {
  console.log('Double Tap');
}

const collapseCameraViewElements = () => {
  const cameraView = document.querySelector('.take-photo');
  const avatarPane = document.querySelector('.avatar-pane');
  let tapped = false;

  cameraView.addEventListener("touchstart", (e) => {
      if(!tapped){
        tapped = setTimeout(function(){
            singleTap()
            tapped = null
        }, 300); //wait 300ms
      } else {
        clearTimeout(tapped);
        tapped = null
        doubleTap()
        avatarPane.classList.toggle('hidden');
      }
      e.preventDefault()
  });
}

export { collapseCameraViewElements as collapseCameraViewElements}

