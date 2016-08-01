// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// console.log("hi");


$(document).on("turbolinks:load", function(){

	var coords;

	function success(position) {
  
	  // variable to store the coordinates
		  var location = position.coords.latitude + ',' + position.coords.longitude;

		  coords = {
		  	lat: position.coords.latitude, lng: position.coords.longitude
		  };
		  
		  // setup the map using user location
		  var mapOptions = {
		    center: new google.maps.LatLng( position.coords.latitude, position.coords.longitude ),
		    zoom: 16,
		    zoomControl: true,
		    mapTypeId: google.maps.MapTypeId.ROADMAP
		  };
		  
		  // add map to the html
		  map = new google.maps.Map( document.getElementById("map-canvas"), mapOptions );
		  
		  // setup the marker
		  var markers = new google.maps.Marker( {
		    position:mapOptions.center
		  });

		  var icon={
		        	url: "/assets/homer_1.png",
		        	scaledSize: new google.maps.Size(60,50), 
		        	origin:new google.maps.Point(0,0), 
		        	anchor: new google.maps.Point(0,0)
		        };
		  
		  // add market to the map
		  markers.setMap(map);

		  markers.setIcon(icon);
		  
		  // select the span with id status
		  var s = $('#status');
		   
		  // update the status message
		  s.html('Found you!');
		}
		 
		function error(msg) {
		  // select the span with id status
		  var s = $('#status');
		  
		  // set the error message
		  s.html(typeof msg == 'string' ? msg : "failed");
		}
		 
		if (navigator.geolocation) {
		  navigator.geolocation.getCurrentPosition(success, error);
		} else {
	  error('not supported');
	}



	// console.log("hello");

	$('#b1').click(function(e){
		e.preventDefault();




		$.ajax({
			type: "GET",
			url: `/api/places/lodging`,
			data: coords, 
			success: postResults,
			error: handleError
		});


	});

	$('#b2').click(function(e){
		e.preventDefault();
		
		$.ajax({
			type: "GET",
			url: `/api/places/recreation`,
			data: coords, 
			success: postResults,
			error: handleError
		});
	});

	$('#b3').click(function(e){
		e.preventDefault();
		
		$.ajax({
			type: "GET",
			url: `/api/places/supplies`,
			data: coords, 
			success: postResults,
			error: handleError
		});
	});

	$('#b4').click(function(e){
		e.preventDefault();
		
		$.ajax({
			type: "GET",
			url: `/api/places/services`, 
			data: coords,
			success: postResults,
			error: handleError
		});
	});

	$('#b5').click(function(e){
		e.preventDefault();
		$.ajax({
			type: "GET",
			url: `/api/places/medical`,
			data: coords, 
			success: postResults,
			error: handleError
		});
	});


 	function postResults (results) {

 		$("#inner_results").empty();
 		var map = new google.maps.Map(document.getElementById('map'), {
 		  zoom: 12
 		  // center: {lat: 25.766672, lng: -80.1951166}
 		});

 		var bounds = new google.maps.LatLngBounds();




	 	results.forEach(function (place) {
	 			console.log(place);
		        var myLatLng = new google.maps.LatLng(place.lat, place.lng);

		        bounds.extend(myLatLng);

		        var icon={
		        	url: "/assets/homer_1.png",
		        	scaledSize: new google.maps.Size(54,45), 
		        	origin:new google.maps.Point(0,0), 
		        	anchor: new google.maps.Point(0,0)
		        };

		        
		        var marker = new google.maps.Marker({
		          position: myLatLng,
		          map: map,
		          title: place.name
		          // icon: icon
        		});
		        	
        		 marker.setIcon(icon);


    //     		 var icon = {
				//     url: "../res/sit_marron.png", // url
				//     scaledSize: new google.maps.Size(50, 50), // scaled size
				//     origin: new google.maps.Point(0,0), // origin
				//     anchor: new google.maps.Point(0, 0) // anchor
				// };

				// var marker = new google.maps.Marker({
				//     position: new google.maps.LatLng(lat, lng),
				//     map: map,
				//     icon: icon
				// });
		      

			var html = ` 
				<div class="clearfix r">
					<div class="r_left">
						<p class="r_name">${place.name}</p>
						<p class="r_address">${place.address}</p>
					</div>
					<div class="r_right">
						<p class="r_phone">
							<a href="tel:${place.phone}">${place.phone}</a>
						</p>
						<p class="r_website">
							<a href="${place.website}" target="_blank">visit website</a>
						</p>
					</div>
				</div> 		  
			`;

			$("#inner_results").append(html);
 		});

 		$('#home_view').addClass('hide');
		$('#clicked_view').removeClass('hide');
		google.maps.event.trigger(document.getElementById('map'),'resize');
		// map.setCenter({lat: 25.766672, lng: -80.1951166});
		map.fitBounds(bounds);
 	}



	function handleError (error) {
  		console.log("Try again");
  		console.log(error.responseText);
	}


	




});