<cfcomponent>
	<cffunction name="trackLocations" access="public" returntype="Query" >
	<cfargument name="cid" type="numeric">
		<cfquery name = "allLocations" datasource = "ColdBoxDemoProject">
			SELECT * FROM BRANCHLOCATION WHERE companyId = #ARGUMENTS.cid#
		</cfquery>
		<cfreturn allLocations> 
	</cffunction>
</cfcomponent>