
$(document).ready(function() {

		var directionsDisplay;
		var directionsService = new google.maps.DirectionsService();


function initialize() {
	directionsDisplay = new google.maps.DirectionsRenderer();
	var mapOptions = {
		zoom: 13,
		center: new google.maps.LatLng(18.4894841,-69.9216593)
	};
	var map = new google.maps.Map(document.getElementById('map'),
			mapOptions);
	directionsDisplay.setMap(map);
	directionsDisplay.setPanel(document.getElementById('directions-panel'));

}

function calcRoute() {

	    var waypts = [];


			stop = new google.maps.LatLng(18.4894841,-69.9216593)
        waypts.push({
            location:stop,
            stopover:true});


        start  = new google.maps.LatLng(-40.321, 175.54);
        end = new google.maps.LatLng(-38.942, 175.76);

	var request = {
						origin: start,
            destination: end,
            waypoints: waypts,
            optimizeWaypoints: true,
		travelMode: google.maps.TravelMode.DRIVING
	};
	directionsService.route(request, function(response, status) {
		if (status == google.maps.DirectionsStatus.OK) {
			directionsDisplay.setDirections(response);
		}
	});
}

google.maps.event.addDomListener(window, 'load', initialize);



	  $("#map-zoom-out").click(function() {
		 map.zoomOut(1);
	  });

	  $("#map-zoom-in").click(function() {
		map.zoomIn(1);
	  });

});
