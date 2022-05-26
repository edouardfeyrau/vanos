import { Controller } from "@hotwired/stimulus"

// import Flatpickr
import flatpickr from "flatpickr";

// // Import style for flatpickr
// require("flatpickr/dist/flatpickr.css")

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    console.log("hello flatpickr");
    flatpickr(".datepickr",
    {
      enableTime: true,
      minDate: new Date(),
      // dateFormat:"Y-m-d H:i"
    });
  }
}
