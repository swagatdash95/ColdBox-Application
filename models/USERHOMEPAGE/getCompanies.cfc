<cfcomponent>
	<cffunction name="getCompanyDetails" access="public" returntype="Query" >
		<cfquery name = "allCompanies" datasource = "ColdBoxDemoProject">
			SELECT * FROM COMPANYINFO
		</cfquery>
		<cfreturn allCompanies>
	</cffunction>
</cfcomponent>