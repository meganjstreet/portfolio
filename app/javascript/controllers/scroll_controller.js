import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll"
export default class extends Controller {

  static targets = ["section"]

  scrollTo(){
    if (this.hasSectionTarget){
      this.sectionTarget.scrollIntoView({behaviour: "smooth"});
    } else {
      window.scrollBy(0, window.innerHeight);
    }
  }
}
