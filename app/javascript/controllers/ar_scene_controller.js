import {Controller} from "stimulus";

export default class extends Controller {
   doubleTap() {
      let overlay = document.querySelector('#ar-overlay');
      overlay.classList.toggle('hidden');
   }
}