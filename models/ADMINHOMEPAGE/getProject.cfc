<cfcomponent>
	<cffunction name="getProjectDetails" access="public" returntype="Query" >
		<cfquery name = "allProjects" datasource = "ColdBoxDemoProject">
			SELECT projectId, projectName, about, projectStatus FROM PROJECTS
			WHERE companyId = #SESSION.validCompanyId#
		</cfquery>
		<cfreturn allProjects>
	</cffunction>
</cfcomponent>