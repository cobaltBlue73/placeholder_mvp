const singleTap = () => {
  console.log('Single Tap');
}

const doubleTap = () => {
  console.log('Double Tap');
}

const collapseCameraViewElements = () => {
  const cameraView = document.querySelector('.take-photo');
  const avatarPane = document.querySelector('.avatar-pane');
  const exitBtn = document.querySelector('.exit-camera');
  const uploadBtn = document.querySelector('.upload-btn');
  const resetBtn = document.querySelector('.reset-btn');
  let tapped = false;
  if (cameraView) {
    const avatarPane = document.querySelector('.avatar-pane');
    let tapped = false;
    // cameraView.addEventListener("touchstart", (e) => {
    //   if(!tapped){
    //     tapped = setTimeout(function(){
    //       singleTap()
    //       tapped = null
    //     }, 300); //wait 300ms
    //   } else {
    //     clearTimeout(tapped);
    //     tapped = null
    //     doubleTap()
    //     avatarPane.classList.toggle('hidden');
    //     exitBtn.classList.toggle('hidden');
    //     uploadBtn.classList.toggle('hidden');
    //     resetBtn.classList.toggle('hidden');
    //   }
    // });

    // const scene = document.querySelector('a-scene');
    // if (!scene) return;
    // scene.systems['xr-double-tap'].el.addEventListener('doubleTap', () => console.log('in callback'))
  }
}

export { collapseCameraViewElements as collapseCameraViewElements}

