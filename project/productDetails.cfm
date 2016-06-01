

 <cfquery datasource="woody" name="qDets">
       SELECT ProductID, ModelName, CompanyName,Manufacturer, 
       Distributor, BrandName, TypeOfFurnace, FuelStorageBin, Output,
       Dimensions, FuelSize, Efficiency, FeedSystem, ignition, AshHandling, EmissionsTested,
       FireSafety, RemoteMonitoring, PowerUsage, Waterusage, Price, CompanyID, AirUsage
        FROM ProductInfo
        WHERE ProductID = #url.WOODID#
        
 </cfquery>
 

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