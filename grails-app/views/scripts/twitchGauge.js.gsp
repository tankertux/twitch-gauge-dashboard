<%@ page contentType="text/javascript"%>

// Initialize JustGage gauges
$(function() {
	if(gauges){
	   console.log('Gauges: ' + JSON.stringify(gauges));
		$.each(gauges, initializeRefreshingGauge);
	}
  });


// JQuery for operating the threshold slider on twitchGauge/create.gsp
$(".sliderThreshold").slider({
		range: "min",
		value: 100,
		min: 1,
		max: 1000,
		slide: function( event, ui ) {
			$( ".gaugeThreshold input").val(ui.value);
		}
	});


// Functions for buttons and elements
function initializeRefreshingGauge(index, gauge){
	console.log('Gauge: ' + JSON.stringify(gauge))

	var g1 = new JustGage({
			id : "gauge-" + gauge.id,
			value : gauge.invocations,
			min : 0,
			max : gauge.threshold,
			title : gauge.label,
			label : gauge.keyphrase + 's',
			refreshAnimationType : 'bounce',
			levelColors: ["FF0000","FF9900","FFFF00","CCFF66","00CC00"]
		});
	
	setInterval(function() {
		$.ajax({
			method: "GET",
			url: "invocations/" + gauge.id
		}).done(function(invocations){
			g1.refresh(invocations);
		});
	
	}, 2500);
}


function increment(id) {
	$.ajax({
		method: "GET",
		url: "increment/" + id
	})
}