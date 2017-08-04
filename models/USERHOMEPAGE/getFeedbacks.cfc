<cfcomponent>
	<cffunction name="getUserFeedbacks" access="public" returntype="Query" >
	<cfargument name="cid" type="numeric">
		<cfquery name = "allFeedbacks" datasource = "ColdBoxDemoProject">
			SELECT f.feedBack, u.userName FROM FEEDBACKS f 
			JOIN USERSINFO u ON f.userId = u.userId
			WHERE f.companyId = #ARGUMENTS.cid#
		</cfquery>
		<cfreturn allFeedbacks>
	</cffunction>
</cfcomponent>