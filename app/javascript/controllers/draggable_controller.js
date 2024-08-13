import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="draggable"
export default class extends Controller {
  static targets = [ "form" ]

  connect() {
    this.element.addEventListener('dragstart', (event) => {
      event.dataTransfer.setData('text/plain', this.formTarget.id)
    })
  }
}
