import { Controller } from "stimulus";

export default class extends Controller {
    sceneLoaded() {
        // $('.collapse').collapse();
    }
    onARStart() {
        $('.collapse').collapse('show');
    }
    togglePhotoMode(ev) {
        if (ev.detail.inPhotoMode) {
            $('.collapse').collapse('hide');
        } else {
            $('.collapse').collapse('show');
        }
    }
}