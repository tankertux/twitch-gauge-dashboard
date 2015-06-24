<!DOCTYPE html>
<html lang="en">
<head>
<!-- start: Meta -->
<meta name="layout" content="main" />
<!-- end: Meta -->

<content tag="css"> <asset:stylesheet src="index.css" /> </content>

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
					<div class="col-md-3 col-sm-4">
						<div class="toggle-title"></div>
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
								name="toggle-${gauge.webSafeLabel}" /> <span
								class="switch-label" data-on="On" data-off="Off"></span> <span
								class="switch-handle"></span>
							</label>
						</div>
						<div class="col-md-3 col-sm-4 text-center">
							<div id="gauge-${gauge.id}"></div>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<div id="gauge-${gauge.id}-incrementer">
								<button type="button" class="btn btn-default" onclick="increment(${gauge.id})">
									<span class="glyphicons circle_plus text-center" style="vertical-align: 18px;"></span> Increment
								</button>
							</div>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<div id="gauge-${gauge.id}-drainer">
								<button type="button" class="btn btn-default" onclick="drain(${gauge.id}, 0)">
									<span class="glyphicons circle_minus text-center" style="vertical-align: 18px;"></span> Drain
								</button>
							</div>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<div id="gauge-${gauge.id}-view-link">
								<button type="button" class="btn btn-default" onclick="drain(${gauge.id}, 0)">
									<span class="glyphicons film text-center" style="vertical-align: 18px;"></span> View
								</button>
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
	
<%@ page import="com.google.gson.Gson" %>
<content tag="javascript">
	<!--  Gauges: ${raw(new Gson().toJson(gauges))} -->
	<g:javascript>
	var gauges = ${raw(new Gson().toJson(gauges))}
	</g:javascript>
	<g:script />
</content>

</body>
</html>