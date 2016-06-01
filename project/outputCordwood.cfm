<cfquery datasource="woody" name="qCordwood">
       SELECT ModelName, Manufacturer,Output,ProductID
        FROM ProductInfo
        WHERE FuelCompatiblecordwood ='Y'
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
			 <cfoutput query=qCordwood>
             	 <tr>
					    <td>#qCordwood.ModelName#</td>
					    <td>#qCordwood.Manufacturer#</td>
					    <td>#qCordwood.Output#</td>
					    <!---Dynamic URL refer to video Creating Tours interface --->
					    
					    <td><a href="productDetails.cfm?WOODID=#qCordwood.ProductID#">More Details #qCordwood.ProductID#</a></td>
				  </tr>
             </cfoutput>
		</table>
</div> <!---closing div for table --->
