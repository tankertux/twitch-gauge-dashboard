<%@ page contentType="text/javascript"%>

// Initialize JustGage gauges
$(function() {
	if(gauges){
	   console.log('Gauges: ' + JSON.stringify(gauges));
		$.each(gauges, initializeGaugeObject);
	}
  });
  
function initializeGaugeObject(index, gauge){
	var gaugeRefresh = initializeRefreshingGauge(index, gauge);
	var drainRefresh = initializeDrainSlider(index, gauge);
	
	setInterval(getInvocations, 1000, gauge.id, [gaugeRefresh, drainRefresh]);
	
	// Initialize URL copy-to-clipboard buttons
	$('.gauge-' + gauge.id + '-url-copy-btn').click(function(event) {
	  	var copyTextarea = document.querySelector('.gauge-' + gauge.id + '-url');
	  	var range = document.createRange();
	  	range.selectNode(copyTextarea);
	  	window.getSelection().addRange(range);
	  	copyTextarea.select();
	
		try {
			var successful = document.execCommand('copy');
			var msg = successful ? 'successful' : 'unsuccessful';
			console.log('Copying text command was ' + msg);
		} catch (err) {
			console.log('Oops, unable to copy');
		}
		window.getSelection().removeAllRanges();
	});
	// END Initialize URL copy-to-clipboard buttons
}
  
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
	
// Execute an async call to check a gauge current value and execute a callback with the given value
function getInvocations(id, callbacks) {
	$.ajax({
		method: "GET",
		url: "invocations/" + id
	}).done(function(invocations){
	    $.each(callbacks, function(index, callback){
								callback(invocations); 
							});
	});
}	

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
	
	return function(invocations){
			g1.refresh(invocations);
		}
}

function initializeDrainSlider(index, gauge){
	// JQuery for operating the drain sliders on twitchGauge/index.gsp
	function createDrainSlider(invocations){
		var currentDrainValue = $(".drain-" + gauge.id + "-value input").val();
	
		$(".drain-" + gauge.id + "-slider").slider({
				range: "min",
				value: invocations >= currentDrainValue ? currentDrainValue : invocations,
				min: 0,
				max: invocations,
				slide: function( event, ui ) {
					$( ".drain-" + gauge.id + "-value input").val(ui.value);
				}
			});
	};
	createDrainSlider(gauge.invocations);
	return createDrainSlider;
}

function increment(id) {
	$.ajax({
		mimeType:  "text/html",
		method: "GET",
		url: "increment/" + id
	})
}

function toggle(id) {
	$.ajax({
	    mimeType:  "text/html",
		method: "GET",
		url: "toggle/" + id
	})
}

function drain(id) {
	$.ajax({
	    mimeType:  "text/html",
		method: "GET",
		url: "drain/" + id,
		data: {"drainTotal" : $( ".drain-" + id + "-value input").val()}
	})
}



