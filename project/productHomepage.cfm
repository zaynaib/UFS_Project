<!DOCTYPE  html>
<html>
 <head lang="en">
      <meta charset = "utf-8">
      <meta http-equiv = "X-UA-Compatible" content = "IE = edge">
      <meta name = "viewport" content = "width = device-width, initial-scale = 1">
      
      <title>UFS Wood Sector Study Project</title>
      
      <!-- Bootstrap -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
      
      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      
      <!--[if lt IE 9]>
      <script src = "https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src = "https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
      
   </head>
   <body >
   		<cfinclude template="header.cfm" >
   	<div class="container">
   		<!---<cfinclude template="brandHeader.cfm" >--->
   <div class="row">
<p>This page lets users navigate through the list of various commercially available wood
burning appliances along with their completed specification and manufacturer details
available in the market today. This user interactive site allows user to view the 
results based on the type of fuel they are interested in.
 </p>
 </div>
 
<div class="row">
 <p>
 	So, Which fuel are you interested in?
 </p>
 </div>
 
<div class="row">
 <div class="col-lg-3 ">
 	
 	<!--- begin form --->
 	
 	
 	<form  method = "post" action ="outputCordwood.cfm">
 		<button type="submit" class="btn btn-info btn-block">Cordwood</button> 
 	</form>
 	
 	<form  method = "post" action ="outputWoodPellets.cfm">
 	 	<button type="submit" class="btn btn-info btn-block">Wood Pellets</button>
	</form> 
 	
 	<form  method = "post" action ="outputWoodChips.cfm">
 		<button type="submit" class="btn btn-info btn-block">Wood Chips</button> 
 	</form>
 	
 	<form method="post" action="outputSawDust.cfm">
 	<button type="submit" class="btn btn-info btn-block">Saw Dust</button> 
 	</form>
 	
   <!--- end form --->
 	
 </div>
 
 <div class="col-lg-6 ">
 	<p>
 		If you are interested in having your product featured here,
 		contact N. Rajagopalan: nrajagop@illinois.edu; (217) 244-8905
 	</p>
 	
 </div>
 
 </div>
 
 </div>
    	 <!---jQuery for bootstrap--->
   		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
 
 </body>
</html>