<!DOCTYPE html>
<html lang="en">
<head>
	<!-- start: Meta -->
	<meta name="layout" content="main" />
	<!-- end: Meta -->
</head>

<body>
	<!-- start: Content -->
	<div id="content" class="col-sm-12 full-radius">
	    <g:each var="gauge" in="${gauges}">
			<!--row-->
			<div class="row">
				<div class="col-sm-2"><span class="switch-label" data-on="On" data-off="Off"></span></div>
			</div>
			<!--/row-->
		</g:each>
		<!--row-->
		<div class="row">
			<div class="col-sm-2">
				<button type="button" class="btn btn-default" onclick="location.href='${createLink(controller: 'twitchGauge', action: 'create')}'">
					<span class="glyphicons circle_plus text-center" style="vertical-align: 18px;"></span> Add Gauge
				</button>
			</div>
		</div>
		<!--/row-->

		<hr>
		<hr>
	</div>
	<!-- end: Content -->



</body>
</html>