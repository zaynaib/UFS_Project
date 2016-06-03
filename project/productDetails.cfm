

 <cfquery datasource="woody" name="qDets">
       SELECT ProductID, ModelName, CompanyName,Manufacturer, 
       Distributor, BrandName, TypeOfFurnace, FuelStorageBin, Output,
       Dimensions, FuelSize, Efficiency, FeedSystem, ignition, AshHandling, EmissionsTested,
       FireSafety, RemoteMonitoring, PowerUsage, Waterusage, Price, CompanyID, AirUsage
        FROM ProductInfo
        WHERE ProductID = #url.WOODID#
        
 </cfquery>
 
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

 <div id="infoTable">
     	<h1>Displaying a Query in a Table</h1>
       	<table width="100%" border="1" cellspacing="0">
       		 <cfoutput query=qDets>
			  <tr>
				    <td>ProductID</td>
				    <td>#qDets.ProductID#</td>
			  </tr>
			
             	 <tr>
					    <td>Model Name</td>
					    <td>#qDets.ModelName#</td>
					    
				  </tr>
				  
				  <tr>
				  	<td>Company Name</td>
				  	<td>#qDets.CompanyName#</td>
				  </tr>
				  
				  <tr>
				  	<td>Manufacturer</td>
				  	<td>#qDets.Manufacturer#</td>
				  	
				  </tr>
				  
				  <tr>
				  	<td>Distributor</td>
				  	<td>#qDets.Distributor#</td>
				  </tr>
				  
				  <tr>
				  	<td>BrandName</td>
				  	<td>#qDets.BrandName#</td>
				  </tr>
				  
				  <tr>
				  	<td>Type of Furnace</td>
				  	<td>#qDets.TypeOfFurnace#</td>
				  </tr>
				  
				  <tr>
				  	<td>Fuel Size</td>
				  	<td>#qDets.FuelSize#</td>
				  </tr>
				  
				  <tr>
				  	<td>Output</td>
				  	<td>#qDets.Output#</td>
				  </tr>
				  
				  <tr>
				  	<td>Dimensions</td>
				  	<td>#qDets.Dimensions#</td>
				  </tr>
				  
				  <tr>
				  	<td>Fuel Storage Bin</td>
				  	<td>#qDets.FuelStorageBin#</td>
				  </tr>
				  
				  <tr>
				  	<td>Efficiency</td>
				  	<td>#qDets.Efficiency#</td>
				  </tr>
				  
				  <tr>
				  	<td>Feed System</td>
				  	<td>#qDets.FeedSystem#</td>
				  </tr>
				  
				  <tr>
				  	<td>Ignition</td>
				  	<td>#qDets.ignition#</td>
				  </tr>
				  
				  <tr>
				  	<td>Ash Handling</td>
				  	<td>#qDets.AshHandling#</td>
				  </tr>
				  
				  <tr>
				  	<td>Emissions Tested</td>
				  	<td>#qDets.EmissionsTested#</td>
				  </tr>
				  
				  <tr>
				  	<td>Fire Safety</td>
				  	<td>#qDets.FireSafety#</td>
				  </tr>
			
				  
				  <tr>
				  	<td>Remote Modeling</td>
				  	<td>#qDets.RemoteMonitoring#</td>
				  </tr>
				  
				  <tr>
				  	<td>Power Usage</td>
				  	<td>#qDets.PowerUsage#</td>
				  </tr>
				  
				  <tr>
				  	<td>Water Usage</td>
				  	<td>#qDets.WaterUsage#</td>
				  </tr>
				  
				   <tr>
				  	<td>Air Usage</td>
				  	<td>#qDets.AirUsage#</td>
				  </tr>
				  
				  <tr>
				  	<td>Price</td>
				  	<td>#qDets.Price#</td>
				  </tr>
				  
				  
				  <tr>
				  	<td>Company ID</td>
				  	<td>#qDets.CompanyID#</td>
				  </tr>
				  
				  
             </cfoutput>
		</table>
		
		<cfoutput>
        	<form  method = "post" action ="companyInfoPage.cfm?INFOID=#qDets.CompanyID#">
	 	 		<button type="submit" class="btn btn-info btn-block">Manufacturer and Contact Info</button>
			</form> 
        </cfoutput>
		
		
		<a href="home.cfm"> Return to Home Page</a>
</div>

 </div>
    	 <!---jQuery for bootstrap--->
   		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
 
 </body>
</html>