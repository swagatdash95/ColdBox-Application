<cfcomponent>
	<cffunction name="validateDelProjectDetails" access="public" returntype="Array" >
			<cfset errorMessageArray = [] />
			<cfif FORM.projectId EQ "">
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter a ProjectId')/>
			</cfif>
		<cfreturn errorMessageArray />
	</cffunction>
	<cffunction name="delProjectDetails" access="public" returntype="boolean" >
		<cfQuery name = "checkList" datasource="ColdBoxDemoProject">
			SELECT * FROM PROJECTS
			WHERE projectId = #FORM.projectid#
		</cfQuery>
		<cfif checkList.RecordCount NEQ 0>
			<cfQuery datasource="ColdBoxDemoProject">
				DELETE FROM PROJECTS
				WHERE projectId = #FORM.projectid#
			</cfQuery>
			<cfreturn true>
		<cfelse>
			<cfreturn false>
		</cfif>
	</cffunction>
</cfcomponent>