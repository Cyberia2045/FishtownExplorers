window.addEventListener("load", function(event){ 
  
    var itinerary = document.getElementsByClassName("itinerary_items")
    var locations = []
    for(i = 0; i < itinerary.length; i++){
        var lat = itinerary[i].dataset.lat
        var lng = itinerary[i].dataset.lng
        var location = [lat, lng]
        locations.push(location)
      }
      
      //   var content_array = []    
      
      // for(i = 0; i < itinerary.length; i++) {
      //   var content = itinerary[i].dataset.description
      //   content_array.push(content)
      //     }

       initMap(locations)

}); // closes window.onload

    function initMap(locations) {

      // var bounds = new google.maps.LatLngBounds();
      var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 15,
      center: {lat: 39.968895, lng: -75.136252}
    });

    // var infowindow = new google.maps.InfoWindow({
    // 	content: content_array
    // });

    for (i = 0; i < locations.length; i++) {
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(parseFloat(locations[i][0]), parseFloat(locations[i][1])),
        map: map
      });
    }

    // marker.addListener("click", function() {
    // 	infowindow.open(map, marker);
    // });

  } // concludes the initMap function



