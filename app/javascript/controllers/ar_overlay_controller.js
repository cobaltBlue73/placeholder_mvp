import { Controller } from "stimulus";

export default class extends Controller {

  getIndex(event) {
    const scene = document.querySelector('a-scene');
    console.log(event.currentTarget.dataset.avatarId)
    scene.systems['ar-hit-test'].setSelectedAvatar(event.currentTarget.dataset.avatarId);
  }

  takePhoto(){
    const scene = document.querySelector('a-scene');
    $('#photo-preview').modal('show');
    scene.systems['ar-snapshot'].takeSnapShot(snapShot => {
      let img = document.querySelector('.modal-image');
      img.setAttribute('src', snapShot);
    });

  }

  exitCamera(){
    const scene = document.querySelector('a-scene');
    // scene.renderer.xr.getSession().end();
    window.location.href = '/friends';
  }
}
