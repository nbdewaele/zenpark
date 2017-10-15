$(function(){

	var lat = $("#room_lat").val(),
			lng = $("#room_lng").val();


	var location = {lat: Number(lat), lng: Number(lng) };

	var map = new google.maps.Map(document.getElementById('map'), {
		center: location,
		zoom: 14
	});

	var marker = new google.maps.Marker({
		position: location,
		map: map
	});

	var infoWindow = new google.maps.InfoWindow({
		content: '<div id="content"><img src="'+$("#room_image").val()+'"></div>'
	});

	infoWindow.open(map, marker);

	google.maps.event.addDomListener(window, 'load');
})
