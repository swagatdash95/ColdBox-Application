<cfcomponent>
	<cffunction name="getVacancyDetails" access="public" returntype="Query" >
		<cfquery name = "allVacancies" datasource = "ColdBoxDemoProject">
			SELECT jobId, jobName, details, companyLink FROM VACANCIES 
			WHERE companyId = #SESSION.validCompanyId#
		</cfquery>
		<cfreturn allVacancies>
	</cffunction>
</cfcomponent>