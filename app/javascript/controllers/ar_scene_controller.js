import {Controller} from "stimulus";

export default class extends Controller {
   sceneLoaded () {
      $('.collapse').collapse();
   }
   onARStart () {
      //$('.collapse').collapse('show');
   }
   doubleTap() {
      $('.collapse').collapse('toggle');
   }
}