import { Controller } from "stimulus";

export default class extends Controller {

  getIndex(event) {
    const scene = document.querySelector('a-scene');
    scene.systems['avatar'].selectAvatar(event.currentTarget.dataset.avatarId);
  }

  resetAvatars() {
    const scene = document.querySelector('a-scene');
    scene.systems['avatar'].resetAllAvatars();
  }

  takePhoto(){

  }

  exitCamera(){
    // const scene = document.querySelector('a-scene');
    // scene.renderer.xr.getSession().end();
    window.location.href = '/friends';
  }
}
