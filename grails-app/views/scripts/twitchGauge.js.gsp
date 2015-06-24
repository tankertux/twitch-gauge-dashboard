<%@ page contentType="text/javascript"%>

$(function() {
	if(gauges){
	   console.log('Gauges: ' + JSON.stringify(gauges));
		$.each(gauges, function(index, gauge){
			console.log('Gauge: ' + JSON.stringify(gauge))
		
			var g1 = new JustGage({
					id : "gauge-" + gauge.id,
					value : gauge.invocations,
					min : 0,
					max : gauge.threshold,
					title : gauge.label,
					label : gauge.keyphrase + 's',
					refreshAnimationType : 'bounce'
				});
			
			setInterval(function() {
				$.ajax({
					method: "GET",
					url: "invocations/" + gauge.id
				}).done(function(invocations){
					g1.refresh(invocations);
				});
			
			}, 2500);
		});
	}
  });
  
function increment(id) {
	$.ajax({
		method: "GET",
		url: "increment/" + id
	})
}