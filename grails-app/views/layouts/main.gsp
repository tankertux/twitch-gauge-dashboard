<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
  	<!-- start: Meta -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta charset="utf-8">
		<meta name="description" content="Its got what bots crave...">
		<meta name="author" content="Jordan Grant">
		<meta name="keyword" content="Twitch, Broadcaster, Bot, /acme, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->

        <title><g:layoutTitle default="Bot Dashboard"/></title>
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- Page Specific CSS -->
	<g:pageProperty name="page.css"/>
	<!-- /Page Specific CSS -->
	
	<!-- start: CSS -->
	<link href="/acme/css/bootstrap.min.css" rel="stylesheet">
	<link href="/acme/css/style.min.css" rel="stylesheet">
	<link href="/acme/css/retina.min.css" rel="stylesheet">
	<!-- end: CSS -->

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<script src="/acme/js/respond.min.js"></script>
		<link href="/acme/css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="/acme/css/ie9.css" rel="stylesheet">
	<![endif]-->
	
	<!-- start: Favicon and Touch Icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/acme/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/acme/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/acme/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="57x57" href="/acme/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="/acme/ico/favicon.png">
	<!-- end: Favicon and Touch Icons -->
	
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:javascript src="application.js"/>
    <asset:javascript src="ZeroClipboard.js"/>
    <g:layoutHead/>
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

			
    
        <g:layoutBody/>
        			
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
	
	        <!-- start: JavaScript-->
	<!--[if !IE]>-->

			<script src="/acme/js/jquery-2.1.0.min.js"></script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script src="/acme/js/jquery-1.11.0.min.js"></script>
	
	<![endif]-->

	<!--[if !IE]>-->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='/acme/js/jquery-2.1.0.min.js'>"+"<"+"/script>");
		</script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script type="text/javascript">
	 	window.jQuery || document.write("<script src='/acme/js/jquery-1.11.0.min.js'>"+"<"+"/script>");
		</script>
		
	<![endif]-->
	<script src="/acme/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="/acme/js/bootstrap.min.js"></script>
	
	
	<!-- page scripts -->
	<script src="/acme/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="/acme/js/jquery.sparkline.min.js"></script>
	<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/acme/js/excanvas.min.js"></script><![endif]-->
	<script src="/acme/js/jquery.flot.min.js"></script>
	<script src="/acme/js/jquery.flot.pie.min.js"></script>
	<script src="/acme/js/jquery.flot.stack.min.js"></script>
	<script src="/acme/js/jquery.flot.resize.min.js"></script>
	<script src="/acme/js/jquery.flot.time.min.js"></script>
	<script src="/acme/js/retina.min.js"></script>
	<script src="/acme/js/raphael.min.js"></script>
	<script src="/acme/js/justgage.1.0.1.min.js"></script>
	
	<!-- theme scripts -->
	<script src="/acme/js/custom.min.js"></script>
	<script src="/acme/js/core.min.js"></script>
	
	<!-- inline scripts related to this page -->
	<g:pageProperty name="page.javascript"/>
	<!-- end: JavaScript-->
	
    </body>
</html>
