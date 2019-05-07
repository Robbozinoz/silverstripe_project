<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
	<!--To ensure relative path for all pages to public files -->
	<% base_tag %>

	<!--Silverstripe helper methos to install standard meta tags-->
	$MetaTags

	<!--Removed to be replaced by the helper method
	<meta charset="utf-8" />
	
	Page Title
	<title>One Ring Rentals - Home</title>-->
	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

	
	<!-- IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> 
	<![endif]-->
	
	<!-- Google Web Font -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:300,500,900%7COpen+Sans:400,700,400italic" rel="stylesheet" type="text/css" />
	
	<!-- Bootstrap CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet" />
	
	<!-- Template CSS -->
	<link href="css/style.css" rel="stylesheet" />
	
	<!-- Modernizr -->
	<script src="js/common/modernizr.js"></script>
</head>
<body>
	<!-- BEGIN WRAPPER -->
	<div id="wrapper">
	
		<!-- BEGIN HEADER -->
		<header id="header">
			<!--Top Bar now in includes as standard site template-->
			<% include TopBar %>

			<!--Nav Section in includes as standard site template-->
			<% include MainNav %>
		</header>
		<!-- END HEADER -->
		
		<!--Connects layout to default page-->
		$Layout
		
		<!-- BEGIN FOOTER -->
		<!--Footer Section in includes as standard site template-->
		<% include Footer %>

		<!-- END FOOTER -->
	
	</div>
	<!-- END WRAPPER -->

	<!--Script Removed to controller in PageController as standard dependancies-->
</body>
</html>