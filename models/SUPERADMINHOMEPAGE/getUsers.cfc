<cfcomponent>
	<cffunction name="getUserDetails" access="public" returntype="Query" >
		<cfquery name = "allUsers" datasource = "ColdBoxDemoProject">
			SELECT * FROM USERSINFO
		</cfquery>
		<cfreturn allUsers>
	</cffunction>
</cfcomponent>