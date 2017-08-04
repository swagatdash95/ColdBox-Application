<cfcomponent>
	<cffunction name="validateAddProjectDetails" access="public" returntype="Array" >
			<cfset errorMessageArray = [] />
			<cfif FORM.projectname EQ "" OR len(FORM.projectname) GT 30>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter a Name between 1-30 characters')/>
			</cfif>
			<cfif FORM.about EQ "" OR len(FORM.about) GT 500>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' The about field must be between 1-500 characters')/>
			</cfif>
			<cfif FORM.projectStatus NEQ 1 AND FORM.projectStatus NEQ 2 AND FORM.projectStatus NEQ 0>
				<cfset arrayAppend(VARIABLES.errorMessageArray,'The Project Status Can only be 0/1/2')/>
			</cfif>
			
		
		<cfreturn errorMessageArray />
	</cffunction>
	<cffunction name="addProjectDetails" access="public" returntype="boolean" >
		<cfQuery datasource="ColdBoxDemoProject">
			INSERT INTO PROJECTS
			(companyId,projectName,about,projectStatus)
			VALUES
		    (
		     <cfqueryparam value="#SESSION.validCompanyId#" cfsqltype=“cf_sql_integer” >,
		     <cfqueryparam value="#trim(FORM.projectName)#" cfsqltype=“cf_sql_varchar” >,
		     <cfqueryparam value="#trim(FORM.about)#" cfsqltype=“CF_SQL_LONGVARCHAR”>,
		     <cfqueryparam value=#trim(FORM.projectStatus)# cfsqltype=“cf_sql_integer” >
		    )
		</cfQuery>
		<cfreturn true>
	</cffunction>
</cfcomponent>