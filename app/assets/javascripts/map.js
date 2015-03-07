// L.mapbox.accessToken = 'pk.eyJ1IjoiY2x1aHJpbmciLCJhIjoiNWF2Z1l6ZyJ9.8peAq7kTQyvXShlVv1K82w';
// // L.mapbox.accessToken = '<%= Rails.application.secrets.mapbox_token %>';
// // L.mapbox.accessToken = "ENV['facebook_secret']";
// var map = L.mapbox.map('map', 'cluhring.lc04leg6')
//
// // map.locate({setView: true, maxZoom: 11});
// //
// // function onLocationFound(e) {
// //   var radius = e.accuracy / 2;
// //
// //   L.marker(e.latlng).addTo(map)
// //   .bindPopup("You are within " + radius + " meters from this point").openPopup();
// //
// //   L.circle(e.latlng, radius).addTo(map);
// // }
// //
// // map.on('locationfound', onLocationFound);
//
// var myLayer = L.mapbox.featureLayer().addTo(map);
//
// var geojsonFeatures = [{
//   "type": "Feature",
//   "properties": {
//     "popupContent": "Propel Fuels<br>39707 Paseo Padre Pkwy, Fremont, CA 94538",
//     "icon": {
//       "iconUrl": 'https://pbs.twimg.com/profile_images/444146105312243712/EHdy1GyV_400x400.png',
//       "iconSize": [48, 48]
//     }
//   },
//   "geometry": {
//     "type": "Point",
//     "coordinates": [-121.9717542, 37.5486034]
//   }
// }, {
//   "type": "Feature",
//   "properties": {
//     "popupContent": "Pacific Pride - Boyett Petroleum<br>401 9th St, Modesto, CA 95350",
//     "icon": {
//       "iconUrl": 'https://pbs.twimg.com/profile_images/444146105312243712/EHdy1GyV_400x400.png',
//       "iconSize": [48, 48]
//     }
//   },
//   "geometry": {
//     "type": "Point",
//     "coordinates": [-120.9944148, 37.634028]
//   }
// }, {
//   "type": "Feature",
//   "properties": {
//     "popupContent": "Clean Energy - Valero #4086<br>1001 Broadway St, Denver, CO 80204",
//     "icon": {
//       "iconUrl": 'https://pbs.twimg.com/profile_images/444146105312243712/EHdy1GyV_400x400.png',
//       "iconSize": [48, 48]
//     }
//   },
//   "geometry": {
//     "type": "Point",
//     "coordinates": [-104.988, 39.73233]
//   }
// }, {
//   "type": "Feature",
//   "properties": {
//     "popupContent": "National Renewable Energy Laboratory - Denver West<br>15013 Denver West Pkwy, Golden, CO 80401",
//     "icon": {
//       "iconUrl": 'https://pbs.twimg.com/profile_images/444146105312243712/EHdy1GyV_400x400.png',
//       // "iconUrl": 'http://flux-capacitor.herokuapp.com/assets/images/EV.jpg',
//       "iconSize": [48, 48]
//       }
//     },
//   "geometry": {
//     "type": "Point",
//     "coordinates": [-105.168527, 39.7408399]
//   },
// }];
//
// myLayer.on('layeradd', function(e) {
//   var marker = e.layer,
//   feature = marker.feature;
//   if (feature.properties && feature.properties.popupContent) {
//   marker.bindPopup(feature.properties.popupContent);
//   marker.setIcon(L.icon(feature.properties.icon));
//   }
// });
//
// myLayer.setGeoJSON(geojsonFeatures);
//
// var ALL = new L.LayerGroup();
// var BD = new L.LayerGroup();
// var CNG = new L.LayerGroup();
// var E85 = new L.LayerGroup();
// var ELEC = new L.LayerGroup();
// var HY = new L.LayerGroup();
// var LNG = new L.LayerGroup();
// var LPG = new L.LayerGroup();
//
// var overlays = {
//   "ALL": ALL,
//   "BD": BD,
//   "CNG": CNG,
//   "E85": E85,
//   "ELEC": ELEC,
//   "HY": HY,
//   "LNG": LNG,
//   "LPG": LPG,
// };
// L.control.layers(overlays).addTo(map);
//
// // L.geoJson(geojsonFeatures, {
// //   filter: function(feature, layer) {
// //     return feature.properties.show_on_map;
// //   }
// // }).addTo(map);
