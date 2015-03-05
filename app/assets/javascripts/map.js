// L.mapbox.accessToken = 'pk.eyJ1IjoiY2x1aHJpbmciLCJhIjoiNWF2Z1l6ZyJ9.8peAq7kTQyvXShlVv1K82w';
// L.mapbox.accessToken = '<%= Rails.application.secrets.mapbox_token %>';
L.mapbox.accessToken = "ENV['mapbox_token']";
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
  if (feature.properties && feature.properties.popupContent) {
    layer.bindPopup(feature.properties.popupContent);
  }
}

var myLayer = L.mapbox.featureLayer().addTo(map);

var geojsonFeatures = [{
  "type": "Feature",
  "fuel_type_code": "E85",
  "properties": {
    "stationName": "Propel Fuels",
    "streetAddress": "39707 Paseo Padre Pkwy",
    "city": "Fremont",
    "state": "CA",
    "zip": "94538",
    "popupContent": "Propel Fuels<br>39707 Paseo Padre Pkwy, Fremont, CA 94538",
    "icon": {
      "iconUrl": 'https://pbs.twimg.com/profile_images/444146105312243712/EHdy1GyV_400x400.png',
      "iconSize": [64, 64]
    }
  },
  "geometry": {
    "type": "Point",
    "coordinates": [-121.9717542, 37.5486034]
  }
}, {
  "type": "Feature",
  "fuel_type_code": "E85",
  "properties": {
    "stationName": "Pacific Pride - Boyett Petroleum",
    "streetAddress": "401 9th St",
    "city": "Modesto",
    "state": "CA",
    "zip": "95350",
    "popupContent": "Pacific Pride - Boyett Petroleum<br>401 9th St, Modesto, CA 95350",
    "icon": {
      "iconUrl": 'https://pbs.twimg.com/profile_images/444146105312243712/EHdy1GyV_400x400.png',
      "iconSize": [64, 64]
    }
  },
  "geometry": {
    "type": "Point",
    "coordinates": [-120.9944148, 37.634028]
  }
}, {
  "type": "Feature",
  "fuel_type_code": "CNG",
  "properties": {
    "stationName": "Clean Energy - Valero #4086",
    "streetAddress": "1001 Broadway St",
    "city": "Denver",
    "state": "CO",
    "zip": "80204",
    "popupContent": "Clean Energy - Valero #4086<br>1001 Broadway St, Denver, CO 80204",
    "icon": {
      "iconUrl": 'https://pbs.twimg.com/profile_images/444146105312243712/EHdy1GyV_400x400.png',
      "iconSize": [64, 64]
    }
  },
  "geometry": {
    "type": "Point",
    "coordinates": [-104.988, 39.73233]
  }
}, {
  "type": "Feature",
  "fuel_type_code": "ELEC",
  "geometry": {
    "type": "Point",
    "coordinates": [-105.168527, 39.7408399]
  },
  "properties": {
    "stationName": "National Renewable Energy Laboratory - Denver West",
    "streetAddress": "15013 Denver West Pkwy",
    "city": "Golden",
    "state": "CO",
    "zip": "80401",
    "popupContent": "National Renewable Energy Laboratory - Denver West<br>15013 Denver West Pkwy, Golden, CO 80401",
    "icon": {
      "iconUrl": 'https://pbs.twimg.com/profile_images/444146105312243712/EHdy1GyV_400x400.png',
      "iconSize": [64, 64]
    }
  },
}];

myLayer.on('layeradd', function(e) {
  var marker = e.layer,
  feature = marker.feature;

  marker.setIcon(L.icon(feature.properties.icon));
});

myLayer.setGeoJSON(geojsonFeatures);

L.geoJson(geojsonFeatures, {
  onEachFeature: onEachFeature,
}).addTo(map);

var alls = new L.LayerGroup();
var bds = new L.LayerGroup();
var cngs = new L.LayerGroup();
var e85s = new L.LayerGroup();
var elecs = new L.LayerGroup();
var hys = new L.LayerGroup();
var lngs = new L.LayerGroup();
var lpgs = new L.LayerGroup();

var overlays = {
  "ALL": alls,
  "BD": bds,
  "CNG": cngs,
  "E85": e85s,
  "ELEC": elecs,
  "HY": hys,
  "LNG": lngs,
  "LPG": lpgs,
};
L.control.layers(overlays).addTo(map);

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
