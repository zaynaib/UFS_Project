 <cfquery datasource="woody" name="qWoodDust">
       SELECT ModelName, Manufacturer, Output,ProductID
       FROM ProductInfo
       WHERE FuelCompatibleSawDust = 'Y'
 </cfquery>
 
<!--- Display Product info on all of the WoodPellets --->
   <div id="infoTable"> <!---opening div for table --->
     	<h1>Displaying a Query in a Table</h1>
       	<table width="100%" border="1" cellspacing="0">
			  <tr>
				    <td>ModelName</td>
				    <td>Manufacturer</td>
				    <td>Output</td>
				     <td>ProductID</td>
			  </tr>
			 <cfoutput query=qWoodDust>
             	 <tr>
					    <td>#qWoodDust.ModelName#</td>
					    <td>#qWoodDust.Manufacturer#</td>
					    <td>#qWoodDust.Output#</td>
					    <!---Dynamic URL refer to video Creating Tours interface --->
					    
					    <td><a href="productDetails.cfm?WOODID=#qWoodDust.ProductID#">More Details #qWoodDust.ProductID#</a></td>
				  </tr>
             </cfoutput>
		</table>
</div> <!---closing div for table --->