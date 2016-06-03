 <cfquery datasource="woody" name="qCompanyInfo">
       SELECT CompanyID, CompanyName, Address,State,City,ZipCode, ContactName,PhoneNumber,Website
       FROM WoodBoilerCompany
       WHERE CompanyID = #url.INFOID#
       
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
 

<!--- Display Product info on all of the WoodPellets --->
   <div id="infoTable"> <!---opening div for table --->
     	<h1>Manufacturer Information</h1>
       	<table width="100%" border="1" cellspacing="0">
       		<cfoutput query=qCompanyInfo>
			  <tr>
				    <td>Company ID</td>
				    <td>#qCompanyInfo.CompanyID#</td>
			  </tr>
			 
             	 <tr>
					    <td>Company Name</td>
					    <td>#qCompanyInfo.CompanyName#</td>
					    
					    <!---Dynamic URL refer to video Creating Tours interface --->
				  </tr>
				  
				  
				  <tr>
				  	<td>Address</td>
				  	<td>#qCompanyInfo.Address#</td>
				  </tr>
				  
				  <tr>
				  	<td>State</td>
				  	<td>#qCompanyInfo.State#</td>
				  </tr>
				  
				  <tr>
				  	<td>City</td>
				  	<td>#qCompanyInfo.City#</td>
				  </tr>
				  
				  <tr>
				  	<td>Zip Code</td>
				  	<td>#qCompanyInfo.ZipCode#</td>
				  </tr>
				  
				  <tr>
				  	<td>Contact Name</td>
				  	<td>#qCompanyInfo.ContactName#</td>
				  </tr>
				  
				  
				  <tr>
				  	<td>Phone Number</td>
				  	<td>#qCompanyInfo.PhoneNumber#</td>
				  </tr>
				  
				  <tr>
				  	<td>Website</td>
				  	<td>#qCompanyInfo.Website#</td>
				  </tr>
				  
				  
             </cfoutput>
		</table>
</div> <!---closing div for table --->
<a href="#">Return to Home</a>


 </div>
    	 <!---jQuery for bootstrap--->
   		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
 
 </body>
</html>


  