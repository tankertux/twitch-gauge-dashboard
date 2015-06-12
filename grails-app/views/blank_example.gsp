<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>ACME Dashboard - Perfect Bootstrap Admin Template</title>
	<meta name="description" content="ACME Dashboard Bootstrap Admin Template.">
	<meta name="author" content="Łukasz Holeczek">
	<meta name="keyword" content="ACME, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link href="acme/css/bootstrap.min.css" rel="stylesheet">
	<link href="acme/css/style.min.css" rel="stylesheet">
	<link href="acme/css/retina.min.css" rel="stylesheet">
	<!-- end: CSS -->

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<script src="acme/js/respond.min.js"></script>
		<link href="acme/css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="acme/css/ie9.css" rel="stylesheet">
	<![endif]-->
	
	<!-- start: Favicon and Touch Icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="acme/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="acme/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="acme/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="57x57" href="acme/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="acme/ico/favicon.png">
	<!-- end: Favicon and Touch Icons -->
	
		
		
		
</head>

<body>
		<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".sidebar-nav.nav-collapse">
				      <span class="icon-bar"></span>
				      <span class="icon-bar"></span>
				      <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/"><span>Turing's Beaverboard</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<!-- start: Settings menu -->
						<li>
							<a class="btn" href="/">
								<i class="halflings cog white"></i>
							</a>
						</li>
						<!-- end: Settings menu -->
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="index.html#">
								<i class="halflings user white"></i> Beaver
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="/"><i class="halflings off white"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- end: Header -->
	
		<div class="container">
		<div class="row">

				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="col-sm-1" style="display: none;">
				<div class="nav-collapse sidebar-nav collapse navbar-collapse bs-navbar-collapse">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="/"><i class="fa fa-bar-chart-o"></i><span class="hidden-sm"> Dashboard</span></a></li>	
					</ul>
				</div>
			</div>
			<a id="main-menu-toggle" class="hidden-xs close"><i class="fa fa-bars"></i></a>
			<!-- end: Main Menu -->

			
			<!-- start: Content -->
			<div id="content" class="col-sm-12 full-radius">
			
			
			<div class="row">
				
				<div class="stats-date col-md-3">
					<div>Monthly Statistics</div>
					<div class="range">02/10/2012 - 02/11/2012</div>
				</div><!--/col-->
				
				<div class="stats col-md-9">
					
					<div class="stat">
						<div class="left">
							<div class="number green">1.324.996</div>
							<div class="title"><span class="color green"></span> Visits</div>
						</div>
						<div class="right">	
							<div class="arrow">
								<img src="acme/img/uparrow.png">
							</div>
							<div class="percent">+13%</div>
						</div>
					</div>
					
					<div class="stat">
						<div class="left">
							<div class="number yellow">12.894.765</div>
							<div class="title"><span class="color yellow"></span> Pageviews</div>
						</div>
						<div class="right">	
							<div class="arrow">
								<img src="acme/img/uparrow.png">
							</div>
							<div class="percent">+17%</div>
						</div>
					</div>
					
					<div class="stat">
						<div class="left">
							<div class="number blue">432.980</div>
							<div class="title"><span class="color blue"></span>Visitors</div>
						</div>
						<div class="right">	
							<div class="arrow">
								<img src="acme/img/downarrow.png">
							</div>
							<div class="percent">-33%</div>
						</div>
					</div>
					
					<div class="stat">
						<div class="left">
							<div class="number red">11.324</div>
							<div class="title"><span class="color red"></span>New Visitors</div>
						</div>
						<div class="right">	
							<div class="arrow">
								<img src="acme/img/uparrow.png">
							</div>
							<div class="percent">+3%</div>
						</div>
					</div>
						
				</div><!--/col-->
			
			</div><!--/row-->	

			<div class="row">
				
				<div class="col-xs-12 overflow:hidden">
				
					<div id="stats-chart2" style="height:300px;" ></div>
				
				</div><!--/col-->	
			
			</div><!--/row-->
			
			<hr>
			
			
			<hr>
       
					
			</div>
			<!-- end: Content -->
			
				<!-- start: Widgets Area -->
				<!-- end: Widgets Area -->
				</div><!--/row-->
		
		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">Modal title</h4>
					</div>
					<div class="modal-body">
						<p>Here settings can be configured...</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
	</div><!--/container-->
	
		
		
	
	<div class="clearfix"></div>
	
	<footer>
		
		<div class="row">
			
			<div class="col-sm-5">
				&copy; 2014 creativeLabs. <a href="http://bootstrapmaster.com">Admin Templates</a> by BootstrapMaster
			</div><!--/.col-->
			
			<div class="col-sm-7 text-right">
				Powered by: <a href="http://bootstrapmaster.com/demo/acme/" alt="Bootstrap Admin Templates">ACME Dashboard</a> | Based on Bootstrap 3.1.1 | Built with brix.io <a href="http://brix.io" alt="Brix.io - Interface Builder">Interface Builder</a>
			</div><!--/.col-->	
			
		</div><!--/.row-->
		
	</footer>
	
	<!-- start: JavaScript-->
	<!--[if !IE]>-->

			<script src="acme/js/jquery-2.1.0.min.js"></script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script src="acme/js/jquery-1.11.0.min.js"></script>
	
	<![endif]-->

	<!--[if !IE]>-->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='acme/js/jquery-2.1.0.min.js'>"+"<"+"/script>");
		</script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script type="text/javascript">
	 	window.jQuery || document.write("<script src='acme/js/jquery-1.11.0.min.js'>"+"<"+"/script>");
		</script>
		
	<![endif]-->
	<script src="acme/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="acme/js/bootstrap.min.js"></script>
	
	
	<!-- page scripts -->
	<script src="acme/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="acme/js/jquery.sparkline.min.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="acme/js/excanvas.min.js"></script><![endif]-->
	<script src="acme/js/jquery.flot.min.js"></script>
	<script src="acme/js/jquery.flot.pie.min.js"></script>
	<script src="acme/js/jquery.flot.stack.min.js"></script>
	<script src="acme/js/jquery.flot.resize.min.js"></script>
	<script src="acme/js/jquery.flot.time.min.js"></script>
	<script src="acme/js/retina.min.js"></script>
	<script src="acme/js/raphael.min.js"></script>
	<script src="acme/js/justgage.1.0.1.min.js"></script>
	
	<!-- theme scripts -->
	<script src="acme/js/custom.min.js"></script>
	<script src="acme/js/core.min.js"></script>
	
	<!-- inline scripts related to this page -->
	<script src="acme/js/pages/index.js"></script>
	
	<!-- end: JavaScript-->
	
</body>
</html>