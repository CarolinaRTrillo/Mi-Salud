import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log("probando map controller")
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkersToMap()
  }

  #addMarkersToMap() {
    console.log(this.markersValues)
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }

}
