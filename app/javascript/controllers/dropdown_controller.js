import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"]

  connect() {
    console.log("Dropdown controller connected")
  }

  toggle() {
    this.menuTarget.classList.toggle("hidden")
  }

  hide(event) {
    // Close the dropdown if the click happens outside of the dropdown element
    if (!this.element.contains(event.target)) {
      this.menuTarget.classList.add("hidden")
    }
  }
}
