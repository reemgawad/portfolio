import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["navbar"]

  connect() {
    // console.log("hello");
  }


  updateNavbar() {
    const pageHeight = (window.innerHeight - this.navbarTarget.clientHeight)

    if (window.scrollY >= pageHeight) {
      this.element.classList.add("navbar-transparent")
    } else {
      this.element.classList.remove("navbar-transparent")
    }
  }

}
