<cfcomponent>
	<cffunction name="getLocationDetails" access="public" returntype="Query" >
		<cfquery name = "getLocations" datasource = "ColdBoxDemoProject">
			SELECT branchId, addr FROM BRANCHLOCATION
			WHERE companyId = #SESSION.validCompanyId#
		</cfquery>
		<cfreturn getLocations>
	</cffunction>
</cfcomponent>