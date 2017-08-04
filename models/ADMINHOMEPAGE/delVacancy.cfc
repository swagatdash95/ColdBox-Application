<cfcomponent>
	<cffunction name="validateDelVacancyDetails" access="public" returntype="Array" >
			<cfset errorMessageArray = [] />
			<cfif FORM.jobId EQ "">
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter a JobId')/>
			</cfif>
		<cfreturn errorMessageArray />
	</cffunction>
	<cffunction name="delVacancyDetails" access="public" returntype="boolean" >
		<cfQuery name = "checkList" datasource="ColdBoxDemoProject">
			SELECT * FROM VACANCIES
			WHERE jobId = #FORM.jobid#
		</cfQuery>
		<cfif checkList.RecordCount NEQ 0>
			<cfQuery datasource="ColdBoxDemoProject">
				DELETE FROM VACANCIES
				WHERE jobId = #FORM.jobid#
			</cfQuery>
			<cfreturn true>
		<cfelse>
			<cfreturn false>
		</cfif>
	</cffunction>
</cfcomponent>