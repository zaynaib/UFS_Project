<!---product info query --->
<cfquery datasource="woody" name="qStores">
       SELECT CompanyID,CompanyName,ModelName FROM ProductInfo
 </cfquery>
       		
<cfquery datasource="woody" name="qCordwood">
       SELECT ModelName, Manufacturer,Output
        FROM ProductInfo
        WHERE FuelCompatiblecordwood ='Y'
 </cfquery>

 <cfquery datasource="woody" name="qWoodPellets">
       SELECT ModelName, Manufacturer,Output
        FROM ProductInfo
        WHERE FuelComaptibleWoodPellets = 'Y'
 </cfquery>
 
 <cfquery datasource="woody" name="qWoodChips">
       SELECT ModelName, Manufacturer, Output
       FROM ProductInfo
       WHERE FuelCompatibleWoodChips = 'Y'
 </cfquery>
 
 <cfquery datasource="woody" name="qWoodDust">
       SELECT ModelName, Manufacturer, Output
       FROM ProductInfo
       WHERE FuelCompatibleSawDust = 'Y'
 </cfquery>
 

<!---product details --->
<cfquery>
	
</cfquery>


<!---product info query --->