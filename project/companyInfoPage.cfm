 <cfquery datasource="woody" name="qCompanyInfo">
       SELECT CompanyID, CompanyName, Address,State,City,ZipCode, ContactName,PhoneNumber,Website
       FROM WoodBoilerCompany
       WHERE CompanyID = #url.INFOID#
       
 </cfquery>
 

<!--- Display Product info on all of the WoodPellets --->
   <div id="infoTable"> <!---opening div for table --->
     	<h1>Displaying a Query in a Table</h1>
       	<table width="100%" border="1" cellspacing="0">
       		<cfoutput query=qWoodDust>
			  <tr>
				    <td>ModelName</td>
				    <td>Manufacturer</td>
				    <td>Output</td>
				     <td>ProductID</td>
			  </tr>
			 
             	 <tr>
					    <td>#qWoodDust.ModelName#</td>
					    <td>#qWoodDust.Manufacturer#</td>
					    <td>#qWoodDust.Output#</td>
					    <!---Dynamic URL refer to video Creating Tours interface --->
					    
					    <td><a href="productDetails.cfm?WOODID=#qWoodDust.ProductID#">More Details #qWoodDust.ProductID#</a></td>
				  </tr>
				  
				  
				  <tr>
				  </tr>
				  
				  <tr>
				  </tr>
				  
				  <tr>
				  </tr>
				  
				  <tr>
				  	
				  </tr>
             </cfoutput>
		</table>
</div> <!---closing div for table --->