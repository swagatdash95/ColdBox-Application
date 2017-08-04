<cfcomponent>
	<cffunction name="getCompanyDetails" access="public" returntype="Query" >
		<cfquery name = "companyDetails" datasource = "ColdBoxDemoProject">
			SELECT * FROM COMPANYINFO WHERE companyId = #SESSION.validCompanyId#
		</cfquery>
		<cfreturn companyDetails>
	</cffunction>
</cfcomponent>