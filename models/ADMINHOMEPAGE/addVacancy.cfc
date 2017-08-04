<cfcomponent>
	<cffunction name="validateAddVacancyDetails" access="public" returntype="Array" >
			<cfset errorMessageArray = [] />
			<cfif FORM.jobname EQ "" OR len(FORM.jobname) GT 30>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter a Name between 1-30 characters')/>
			</cfif>
			<cfif FORM.details EQ "" OR len(FORM.details) GT 500>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' The details field must be between 1-500 characters')/>
			</cfif>
			<cfif FORM.companyLink  EQ "">
				<cfset arrayAppend(VARIABLES.errorMessageArray,'Enter a Link to the Job Application')/>
			</cfif>
		<cfreturn errorMessageArray />
	</cffunction>
	<cffunction name="addVacancyDetails" access="public" returntype="boolean" >
		<cfQuery datasource="ColdBoxDemoProject">
			INSERT INTO VACANCIES
			(companyId,jobName,details,companyLink)
			VALUES
		    (
		     <cfqueryparam value="#SESSION.validCompanyId#" cfsqltype=“cf_sql_integer” >,
		     <cfqueryparam value="#trim(FORM.jobName)#" cfsqltype=“cf_sql_varchar” >,
		     <cfqueryparam value="#trim(FORM.details)#" cfsqltype=“CF_SQL_LONGVARCHAR”>,
		     <cfqueryparam value="#trim(FORM.companyLink)#" cfsqltype=“cf_sql_varchar”>
		    )
		</cfQuery>
		<cfreturn true>
	</cffunction>
</cfcomponent>