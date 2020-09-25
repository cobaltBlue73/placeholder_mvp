import { Controller } from "stimulus";

export default class extends Controller {

  getIndex(event) {
    const scene = document.querySelector('a-scene');
    console.log(event.currentTarget.dataset.avatarId)
    scene.systems['ar-hit-test'].setSelectedAvatar(event.currentTarget.dataset.avatarId);
  }

  takePhoto(){
    const scene = document.querySelector('a-scene');
    scene.components.screenshot.capture('perspective');
    scene.components.screenshot.getCanvas('perspective');
  }

  exitCamera(){
    const scene = document.querySelector('a-scene');
    scene.renderer.xr.getSession().end();
    window.location.href = '/';
  }
}
