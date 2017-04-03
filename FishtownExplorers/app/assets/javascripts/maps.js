   function initMap(lat, lng) {
      if(lat == undefined) {
        lat = 39.968895
      }
      if(lng == undefined) {
        lng = -75.136252
      }
      var location = {lat: lat, lng: lng};
      var map = new google.maps.Map(document.getElementById('map'), {
      center: location,
      zoom: 15
    });

    var content = "<h1 class = info_header>Girard Station</h1>"

    var infowindow = new google.maps.InfoWindow({
    	content: content
    });

    var marker = new google.maps.Marker({
      position: location,
      map: map
    });
    
    marker.addListener("click", function() {
    	infowindow.open(map, marker);
    });
  } // concludes the initMap function

//   function initMap() {
//   map = new google.maps.Map(document.getElementById('map'), {
//     center: {lat: -34.397, lng: 150.644},
//     zoom: 8
//   });
//   var marker = new google.maps.Marker({
//     position: uluru,
//     map: map
//   });
// } // concludes the initMap function
