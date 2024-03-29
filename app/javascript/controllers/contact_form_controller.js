import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="contact-form"
export default class extends Controller {

  static targets = ["form", "thanks"]

  connect() {
    console.log("hello");
  }

  send(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        this.formTarget.outerHTML = data
      })
  }

}
