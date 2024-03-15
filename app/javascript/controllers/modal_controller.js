import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  connect() {
    this.element.dataset.action = "modal#show";
  }

  show(event) {
    // ...
  }
}
