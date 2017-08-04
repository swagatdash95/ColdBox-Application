<cfcomponent>
	<cffunction name="validateDelLocationDetails" access="public" returntype="Array" >
			<cfset errorMessageArray = [] />
			<cfif FORM.branchId EQ "">
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter a BranchId')/>
			</cfif>
		<cfreturn errorMessageArray />
	</cffunction>
	<cffunction name="delLocationDetails" access="public" returntype="boolean" >
		<cfQuery name = "check" datasource="ColdBoxDemoProject">
			SELECT * FROM BRANCHLOCATION
			WHERE branchId = #FORM.branchid#
		</cfQuery>
		<cfif check.RecordCount NEQ 0>
			<cfQuery datasource="ColdBoxDemoProject">
				DELETE FROM BRANCHLOCATION
				WHERE branchId = #FORM.branchid#
			</cfQuery>
			<cfreturn true>
		<cfelse>
			<cfreturn false>
		</cfif>
	</cffunction>
</cfcomponent>