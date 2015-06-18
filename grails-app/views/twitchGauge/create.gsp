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
		
		<!--row-->
		<div class="row">
		<div class="col-sm-4"><h1>Create a twitch chat gauge:</h1>
		</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<g:form role="form" method="get" action="save">	
								<div class="form-group">
								  <label class="control-label" for="label"> Gauge Label
								  </label>
								  <div class="controls">
									<div class="input-group col-sm-3">
										<g:textField class="form-control" name="label" />
									</div>	
								  </div>
								</div>
								<div class="form-group">
								  <label class="control-label" for="capacity"> Capacity
								  </label>
								  <div class="controls">
									<div class="input-group col-sm-11">
										<div>
											<div class="slider sliderThreshold sliderGreen ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all col-sm-10" aria-disabled="false"><div class="ui-slider-range ui-widget-header ui-corner-all ui-slider-range-min"></div><a class="ui-slider-handle ui-state-default ui-corner-all" href="#"></a></div>
											<div class="gaugeThreshold col-sm-2"><g:textField class="form-control col-sm-1" name="capacity" value="100"/></div>
										</div>
									</div>
								  </div>
								</div>
								<div class="form-group">
								  <label class="control-label" for="keyphrase"> Monitored Phrase (exact)
								  </label>
								  <div class="controls">
									<div class="input-group col-sm-11">
										<g:textField class="form-control" name="keyphrase" />
									</div>	
								  </div>
								</div>
								<div class="form-actions">
								  <g:actionSubmit class="btn btn-primary" value="Save changes" action="save"/>
								  <button type="reset" class="btn">Cancel</button>
								</div>
							</g:form>
			</div>
			<hr>
			<hr>
		</div>
		<!--/row-->
		<!-- end: Content -->
		
<content tag="javascript">
	<asset:javascript src="gauge/create.js" />
</content>
		
	</body>
</html>