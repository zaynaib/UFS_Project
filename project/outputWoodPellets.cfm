 <cfquery datasource="woody" name="qPellets">
       SELECT ModelName, Manufacturer,Output, ProductID
        FROM ProductInfo
        WHERE FuelCompatibleWoodPellets ='Y'
        
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
			 <cfoutput query=qPellets>
             	 <tr>
					    <td>#qPellets.ModelName#</td>
					    <td>#qPellets.Manufacturer#</td>
					    <td>#qPellets.Output#</td>
					    <!---Dynamic URL refer to video Creating Tours interface --->
					    
					    <td><a href="productDetails.cfm?WOODID=#qPellets.ProductID#">More Details #qPellets.ProductID#</a></td>
				  </tr>
             </cfoutput>
		</table>
</div> <!---closing div for table --->
