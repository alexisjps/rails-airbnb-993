import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js'
// Connects to data-controller="typed"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Le site n°1 de location", "de maison de vacances", "en France"],
      typeSpeed: 50,
      loop: true
    })
  }
}
