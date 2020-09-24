import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'select' ];

  getIndex(event) {
    const scene = document.querySelector('a-scene');
    console.log(event.currentTarget.dataset.avatarId);
    scene.systems['ar-hit-test'].setSelectedAvatar(event.currentTarget.dataset.avatarId);
  }
}
