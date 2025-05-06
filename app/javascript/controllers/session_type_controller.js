import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  change(event) {
    const type = event.target.value
    const url = `/admin/sessions/form?type=${type}`
    Turbo.visit(url, { frame: "session_form" })
  }
}
