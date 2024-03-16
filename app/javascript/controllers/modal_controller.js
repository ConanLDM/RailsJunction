import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ['submitButton']

  connect() {
    document.documentElement.classList.add('is-clipped')
  }

  deactivate() {
    this.close()
  }

  beginSubmit() {
    this.submitButtonTarget.classList.add('is-loading')
    this.submitButtonTarget.disabled = true
  }

  handleSubmit(event) {
    this.submitButtonTarget.classList.remove('is-loading')
    this.submitButtonTarget.disabled = false

    if (event.detail.success) { this.close() }
  }

  close() {
    document.documentElement.classList.remove('is-clipped')
    this.element.remove()
  }
}
