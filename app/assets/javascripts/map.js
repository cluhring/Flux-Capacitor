L.mapbox.accessToken = 'pk.eyJ1IjoiY2x1aHJpbmciLCJhIjoiNWF2Z1l6ZyJ9.8peAq7kTQyvXShlVv1K82w';
// L.mapbox.accessToken = '<%= Rails.application.secrets.mapbox_token %>';
var map = L.mapbox.map('map', 'cluhring.lc04leg6')

// map.locate({setView: true, maxZoom: 11});
//
// function onLocationFound(e) {
//   var radius = e.accuracy / 2;
//
//   L.marker(e.latlng).addTo(map)
//   .bindPopup("You are within " + radius + " meters from this point").openPopup();
//
//   L.circle(e.latlng, radius).addTo(map);
// }
//
// map.on('locationfound', onLocationFound);





function onEachFeature(feature, layer) {
  // does this feature have a property named popupContent?
  if (feature.properties && feature.properties.popupContent) {
    layer.bindPopup(feature.properties.popupContent);
  }
}

var geojsonFeatures = [{
  "type": "Feature",
  "properties": {
    "stationName": "Propel Fuels",
    "streetAddress": "39707 Paseo Padre Pkwy",
    "city": "Fremont",
    "state": "CA",
    "zip": "94538",
    "popupContent": "Propel Fuels<br>39707 Paseo Padre Pkwy, Fremont, CA 94538"
  },
  "geometry": {
    "type": "Point",
    "coordinates": [-104.988, 39.73233]
  }
}, {
  "type": "Feature",
  "properties": {
    "name": "l2",
    "popupContent": "Denver Love Shack"
  },
  "geometry": {
    "type": "Point",
    "coordinates": [-105.107292, 39.6710978]
  }
}, {
  "type": "Feature",
  "properties": {
    "name": "l3",
    "popupContent": "Denver Mountain Retreat"
  },
  "geometry": {
    "type": "Point",
    "coordinates": [-104.988, 39.73233]
  }
}, {
  "type": "Feature",
  "properties": {
    "name": "l4",
    "popupContent": "Brooklyn, Brooklyn, we go hard"
  },
  "geometry": {
    "type": "Point",
    "coordinates": [-74.131798, 40.624944]
  }
}];

L.geoJson(geojsonFeatures, {
  onEachFeature: onEachFeature,
  // fitBounds: true
}).addTo(map);

// L.geoJson(geojsonFeatures, {
//   filter: function(feature, layer) {
//     return feature.properties.show_on_map;
//   }
// }).addTo(map);






























// <div><%=escape_javascript @stations.each do |station| %></div>
// var '<div><%=escape_javascript station.fuel_type_code %></div>' = new L.LayerGroup();
// L.marker([<div><%=escape_javascript station.latitude %></div>, <div><%=escape_javascript station.longitude %>])
// .bindPopup(<div><%=escape_javascript station.station_name<br>station.street_address, station.city, station.state station.zip station.latitude %></div>)
// <div><% end %></div>
//
// var overlays = {
//   "<%=station.fuel_type_code%>": <%station.fuel_type_code%>,
// };
// L.control.layers(overlays).addTo(map);
