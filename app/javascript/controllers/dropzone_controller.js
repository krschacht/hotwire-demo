import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropzone"
export default class extends Controller {
  static targets = [ "dropzone" ]
  static classes = [ "hover" ]
  static values = { stage: String }

  connect() {
    console.log('dropzone connected')
  }

  dropzoneTargetConnected(element) {
    element.addEventListener('dragover', (event) => {
      event.preventDefault()
      element.classList.add(this.hoverClass)
    })

    element.addEventListener('dragleave', (event) => {
      event.preventDefault()
      element.classList.remove(this.hoverClass)
    })

    element.addEventListener('drop', (event) => {
      event.preventDefault()
      element.classList.remove(this.hoverClass)
      const id = event.dataTransfer.getData('text/plain')
      const moveForm = document.getElementById(id)
      const currentStage = moveForm.querySelector('input[name="person[stage]"]')
      if (currentStage.value != this.stageValue) {
        currentStage.value = this.stageValue
        moveForm.requestSubmit()
      } else console.log('value didnt change')
    })
  }

  disconnect() {
    console.log('dropzone disconnected')
  }
}
