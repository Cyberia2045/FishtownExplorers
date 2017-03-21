$(document).ready (function() {

	$(".primary_background").waypoint(function() {
		$(".header").css("animation-name", "something")
		$(".header").css("animation-duration", "3s")
		$(".header").css("opacity", "1")
	}) // End of primary background waypoint

	$(".secondary_background").waypoint(function() {
		$(".main_content").css("animation-name", "something")
		$(".main_content").css("animation-duration", "5s")
		$(".main_content").css("opacity", "1")
		$('.header2').css("animation-name", "something")
		$('.header2').css("animation-duration", "5s")
		$(".header2").css("opacity", "1")
		},
		{ offset: "40%"}) // End of secondary background waypoint

	$('.tertiary_background').waypoint(function(direction) {
		$('#mateo-container').css("animation-name", "something")
		$("#mateo-container").css("animation-duration", "5s")
		$("#mateo-container").css("opacity", "1")
		$('.header3').css("animation-name", "something")
		$('.header3').css("animation-duration", "3s")
		$(".header3").css("opacity", "1")
		$("#mateo").css("animation-name", "something")
		$("#mateo").css("animation-duration", "5s")
		$("#mateo").css("opacity", "1")
		$(".bio_content").css("animation-name", "something")
		$(".bio_content").css("animation-duration", "3s")
		$(".bio_content").css("opacity", "1")
		}, 
		{ offset: "40%"}
		); //End of tertiary background waypoint

}) // End of Document.Ready