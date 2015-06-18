<!DOCTYPE html>
<html lang="en">
<head>
<!-- start: Meta -->
<meta name="layout" content="main" />
<!-- end: Meta -->

<content tag="css">
	<asset:stylesheet src="index.css" />
</content>

</head>

<body>
	<!-- start: Content -->
	<div id="content" class="col-sm-12 full-radius">
		<!-- Gauge Headers -->
		<g:if test="${gauges?.size() > 0}">
		<div class="row">
			<div class="controls row">
				<div class="col-md-1 col-sm-2 col-xs-3 text-center">
					<h2 class="toggle-header">Toggle</h2>
				</div>
				<div class="col-md-1 col-sm-2">
					<h2 class="toggle-header">Label</h2>
				</div>
				<div class="col-md-1 col-sm-2">
					<h2 class="toggle-header">Reading</h2>
				</div>
			</div>

		</div>
		</g:if>
		<!-- /Gauge Headers -->

		<!-- Gauge Rows -->
		<g:each var="gauge" in="${gauges}">
			<!--row-->
			<div class="row">
				<div class="form-group">
					<div class="controls row">
						<div class="col-md-1 col-sm-2 text-center">
							<label class="switch switch-success"> <input
								type="checkbox" class="switch-input"
								name="toggle-${gauge.label.replaceAll('\\s+', '')}" /> <span
								class="switch-label" data-on="On" data-off="Off"></span> <span
								class="switch-handle"></span>
							</label>
						</div>
						<div class="col-md-1 col-sm-2">
							<div class="toggle-title">
								${gauge.label}
							</div>
						</div>
						<div class="col-md-1 col-sm-2">
							<div class="toggle-title">
								${gauge.invocations}
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/row-->
		</g:each>
		<!--/Gauge Rows -->

		<!--Add Gauge-->
		<div class="row">
			<div class="col-sm-2">
				<button type="button" class="btn btn-default"
					onclick="location.href='${createLink(controller: 'twitchGauge', action: 'create')}'">
					<span class="glyphicons circle_plus text-center"
						style="vertical-align: 18px;"></span> Add Gauge
				</button>
			</div>
		</div>
		<!--/Add Gauge-->

		<hr>
		<hr>
	</div>
	<!-- end: Content -->



</body>
</html>