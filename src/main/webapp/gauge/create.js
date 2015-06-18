$(".sliderThreshold").slider({
		range: "min",
		value: 100,
		min: 1,
		max: 1000,
		slide: function( event, ui ) {
			$( ".gaugeThreshold input").val(ui.value);
		}
	});
