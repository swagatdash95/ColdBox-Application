<cfcomponent displayname = "Database">
	<cffunction name="validateAddFeedbackDetails" access="public" returntype="Array" >
			<cfset errorMessageArray = [] />
			<cfif FORM.feedBack EQ "" OR len(FORM.feedBack) GT 500>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter the feedback between 1-500 characters')/>
			</cfif>		
		<cfreturn errorMessageArray />
	</cffunction>
	<cffunction name="addUserFeedbacks" access="public" returntype="boolean" >
	<cfargument name="ID" type="numeric">
	   	<cfQuery datasource="ColdBoxDemoProject">
			INSERT INTO FEEDBACKS
			(companyId,userId,feedBack,feedBackTime)
			VALUES
		    (<cfqueryparam value="#ARGUMENTS.ID#" cfsqltype=“cf_sql_integer” >,
		     <cfqueryparam value="#SESSION.validUserId#" cfsqltype=“cf_sql_integer” >,
		     <cfqueryparam value="#FORM.feedBack#" cfsqltype=“CF_SQL_LONGVARCHAR”>,
		     <cfqueryparam value="#TimeFormat(Now())#" cfsqltype=“CF_SQL_TIME” >
		     )
		</cfQuery>
		<cfset returnmessage = true>
		<cfreturn returnmessage>
	</cffunction>
</cfcomponent>