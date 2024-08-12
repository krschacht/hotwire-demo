import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

console.log('Document: refresh')
document.addEventListener('turbo:visit', (event) => console.log(`Document: visit ${event.detail.action}, path = ${window.location.pathname} vs ${event.detail.url}`))
document.addEventListener('turbo:morph', () => console.log('Document: morph render'))
document.addEventListener('turbo:frame-render', () => console.log('Document: frame render'))
document.addEventListener('turbo:before-stream-render', (event) => console.log(`Document: stream render (${event.target.getAttribute('action')} event)`, event.target))
