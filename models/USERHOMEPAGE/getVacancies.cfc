<cfcomponent>
	<cffunction name="getVacancydetails" access="public" returntype="Query" >
	<cfargument name="cid" type="numeric">
		<cfquery name = "allVacancies" datasource = "ColdBoxDemoProject">
			SELECT * FROM VACANCIES WHERE companyId = #ARGUMENTS.cid#
		</cfquery>
		<cfreturn allVacancies> 
	</cffunction>
</cfcomponent>