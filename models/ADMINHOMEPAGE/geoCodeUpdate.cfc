<cfcomponent>
	<cffunction name="convertToLatLong" access="public" returntype="boolean" >
		<cfquery name="locations">
		    SELECT id,address
		    FROM BRANCHLOCATION
		    WHERE 
		</cfquery>
		<cfloop query="locations">
		    <cfset api = "http://maps.googleapis.com/maps/api/geocode/json?address=#URLEncodedFormat(address)#&sensor=false">   
		    <cfhttp url="#api#"></cfhttp>
		    <cfset response = DeserializeJSON(cfhttp.FileContent)>
		    <cftry>
		        <cfset point = response["results"][1]["geometry"]["location"]>
		        <cfoutput>#SerializeJSON(point)#</cfoutput>
		        <cfquery>
		            UPDATE BRANCHLOCATION
		            SET latitude = <cfqueryparam value="#point.lat#">,
		                longitude = <cfqueryparam value="#point.lng#">
		            WHERE id = <cfqueryparam value="#locations.id#">
		        </cfquery>
			    <cfcatch>
			    	
			    </cfcatch>    
		    </cftry>
		</cfloop>
	</cffunction>
</cfcomponent>

