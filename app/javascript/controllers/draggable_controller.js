import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="draggable"
export default class extends Controller {
  static targets = [ "form" ]

  connect() {
    console.log('draggable connected')

    this.element.addEventListener('dragstart', (event) => {
      event.dataTransfer.setData('text/plain', this.formTarget.id)
    })
  }

  disconnect() {
    console.log('draggable disconnected')
  }
}
