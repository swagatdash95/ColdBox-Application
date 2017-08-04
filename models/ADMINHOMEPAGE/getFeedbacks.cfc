<cfcomponent>
	<cffunction name="getFeedbacksDetails" access="public" returntype="Query" >
		<cfquery name = "allFeedbacks" datasource = "ColdBoxDemoProject">
			SELECT f.feedBack, f.feedbackTime, u.userName FROM FEEDBACKS f 
			JOIN USERSINFO u ON f.userId = u.userId
			WHERE f.companyId = #SESSION.validCompanyId#
		</cfquery>
		<cfreturn allFeedbacks>
	</cffunction>
</cfcomponent>