L.mapbox.accessToken = 'pk.eyJ1IjoiY2x1aHJpbmciLCJhIjoiNWF2Z1l6ZyJ9.8peAq7kTQyvXShlVv1K82w';
// L.mapbox.accessToken = '<%= Rails.application.secrets.mapbox_token %>';
var map = L.mapbox.map('map', 'cluhring.lc04leg6')

map.locate({setView: true, maxZoom: 11});

function onLocationFound(e) {
  var radius = e.accuracy / 2;

  L.marker(e.latlng).addTo(map)
  .bindPopup("You are within " + radius + " meters from this point").openPopup();

  L.circle(e.latlng, radius).addTo(map);
}

map.on('locationfound', onLocationFound);
