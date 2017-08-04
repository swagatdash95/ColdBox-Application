<cfcomponent>
	<cffunction name="viewCompanyDetails" access="public" returntype="Query" >
		<cfargument name="cid" type="string" required="true">
		<cfset id = LSParseNumber(cid)>
		<cfquery name = "companyDetails" datasource = "ColdBoxDemoProject">
			SELECT * FROM COMPANYINFO where companyId = <cfoutput>#id#</cfoutput> 
		</cfquery>
		<cfreturn companyDetails>
	</cffunction>
</cfcomponent>