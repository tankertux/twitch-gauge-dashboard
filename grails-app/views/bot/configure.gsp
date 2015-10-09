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
		<div class="col-sm-4"><h1>Bot Configuration:</h1>
		</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<g:form role="form" method="get" action="save">
								<div class="form-group">
								  <label class="control-label" for="botName"> Bot Name
								  </label>
								  <div class="controls">
									<div class="input-group col-sm-3">
										<g:textField class="form-control" name="botName" />
									</div>
								  </div>
								</div>
                                <div class="form-group">
								  <label class="control-label" for="oauthKey"> OAuth Key
								  </label>
								  <div class="controls">
									<div class="input-group col-sm-3">
										<g:textField class="form-control" name="oauthKey" />
									</div>
								  </div>
								</div>
								<div class="form-group">
								  <label class="control-label" for="channel"> Channel (e.g. #beaversaresmart)
								  </label>
								  <div class="controls">
									<div class="input-group col-sm-3">
										<g:textField class="form-control" name="channel" />
									</div>
								  </div>
								</div>
								<div class="form-actions">
								  <g:actionSubmit class="btn btn-primary" value="Save changes" action="save"/>
								  <g:actionSubmit class="btn" value="Cancel" action="index"/>
								</div>
							</g:form>
			</div>
			<hr>
			<hr>
		</div>
		<!--/row-->
		<!-- end: Content -->

<content tag="javascript">
	<script src="/gauge/create.js"></script>
</content>

	</body>
</html>