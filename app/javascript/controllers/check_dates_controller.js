import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="check-dates"
export default class extends Controller {
  connect() {
    console.log("Hello from check-dates-controller");
  }
}
