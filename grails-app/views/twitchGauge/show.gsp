<!DOCTYPE html>
<html lang="en">
<head>
<!-- start: Meta -->
<!-- end: Meta -->
</head>

<body>
	<!-- start: Content -->
	<div id="gauge-${gauges[0].id}"></div>
	<!-- end: Content -->
		
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
	<%@ page import="com.google.gson.Gson" %>
	<!--  Gauges: ${raw(new Gson().toJson(gauges))} -->
	<g:javascript>
	var gauges = ${raw(new Gson().toJson(gauges))}
	</g:javascript>
	<g:script />
	<!-- end: JavaScript-->
		
	</body>
</html>