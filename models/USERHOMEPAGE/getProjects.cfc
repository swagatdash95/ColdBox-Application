<cfcomponent>
	<cffunction name="getCompanyProjects" access="public" returntype="Query" >
	<cfargument name="cid" type="numeric">
		<cfquery name = "allProjects" datasource = "ColdBoxDemoProject">
			SELECT * FROM PROJECTS WHERE companyId = #ARGUMENTS.cid#
		</cfquery>
		<cfreturn allProjects> 
	</cffunction>
</cfcomponent>