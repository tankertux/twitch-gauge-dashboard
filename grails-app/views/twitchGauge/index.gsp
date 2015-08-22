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
		
		<!-- Gauge Rows -->
		<g:each var="gauge" in="${gauges}">
			<!--row-->
			<div class="row">
				<div class="form-group">
					<div class="controls row">
						<div class="col-md-3">
							<div class="row">
								<div class="col-sm-3">
									<label class="switch switch-success"> 
										<input type="checkbox" class="switch-input"	name="toggle-${gauge.webSafeLabel}" onclick="toggle(${gauge.id})" ${gauge.isActive ? "checked" : ""}/> 
										<span class="switch-label" data-on="On" data-off="Off"></span>
										<span class="switch-handle"></span>
									</label>
								</div>												
								<div class="col-sm-9">
									<div id="gauge-${gauge.id}"></div>
								</div>
							</div>
						</div>
						<div class="col-md-9">
							<div class="row">
						<div class="col-sm-2 text-center">
							<div id="gauge-${gauge.id}-incrementer">
								<button type="button" class="btn btn-default" onclick="increment(${gauge.id})">
									<span class="glyphicons circle_plus text-center" style="vertical-align: 18px;"></span> Increment
								</button>
							</div>
						</div>
						<div class="col-sm-2 text-center">
							<div class="row">
								<div class="col-sm-12">
									<div id="gauge-${gauge.id}-drainer">
										<button type="button" class="btn btn-default" onclick="drain(${gauge.id}, 0)">
											<span class="glyphicons circle_minus text-center" style="vertical-align: 18px;"></span> Drain
										</button>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 col-xs-6 text-center">
										<div class="slider drain-${gauge.id}-slider sliderLightOrange ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" aria-disabled="false"><div class="ui-slider-range ui-widget-header ui-corner-all ui-slider-range-min"></div><a class="ui-slider-handle ui-state-default ui-corner-all" href="#"></a></div>
										<div class="drain-${gauge.id}-value"><input type="hidden" name="drain-${gauge.id}-value-input" value="1" /></div>
								</div>
							</div>
						</div>
						<div class="col-sm-2 text-center">
							<div id="gauge-${gauge.id}-copy-url-link">
								<button type="button" class="btn btn-default gauge-${gauge.id}-url-copy-btn" id="copy-gauge-${gauge.id}-url" data-clipboard-text="${createLink(controller: 'twitchGauge', action: 'show', id: gauge.id, absolute: true)}">
									<span class="glyphicons notes_2 text-center" style="vertical-align: 18px;"></span> Copy URL
								</button>
								<input type="hidden" class="gauge-${gauge.id}-url" name="gauge-${gauge.id}-url" value="${createLink(controller: 'twitchGauge', action: 'show', id: gauge.id)}" />
							</div>
						</div>
						<div class="col-sm-2 text-center">
							<div id="gauge-${gauge.id}-view-link">
								<button type="button" class="btn btn-default" onclick="window.open('${createLink(controller: 'twitchGauge', action: 'show', id: gauge.id)}', 'name', 'width=250, height=200, location=no, scrollbars=no, status=no, toolbar=no, resizable=yes')">
									<span class="glyphicons film text-center" style="vertical-align: 18px;"></span> View
								</button>
							</div>
						</div>
						<div class="col-md-1 col-sm-2 text-center">
							<div id="gauge-${gauge.id}-remove">
								<button type="button" class="btn btn-default" onclick="location.href='${createLink(controller: 'twitchGauge', action: 'remove', id: gauge.id)}'">
									<span class="glyphicons circle_remove text-center" style="vertical-align: 18px;"></span> Delete
								</button>
							</div>
						</div>
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