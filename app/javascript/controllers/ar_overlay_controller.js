import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'select' ];

  getIndex(event) {
    console.log(event.currentTarget.id);
  }
}
