<cfcomponent>
	<cffunction name="validateDelUserDetails" access="public" returntype="Array" >
			<cfset errorMessageArray = [] />
			<cfif FORM.userid EQ "">
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter a UserId')/>
			</cfif>
		<cfreturn errorMessageArray />
	</cffunction>
	<cffunction name="delUserDetails" access="public" returntype="boolean" >
		<cfQuery datasource="ColdBoxDemoProject">
			DELETE FROM USERSINFO
			WHERE userId = #FORM.userid#
		</cfQuery>
		<cfreturn true>
	</cffunction>
</cfcomponent>