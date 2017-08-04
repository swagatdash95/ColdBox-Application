<cfcomponent>
	<cffunction name="validateDelCompanyDetails" access="public" returntype="Array" >
			<cfset errorMessageArray = [] />
			<cfif FORM.companyid EQ "">
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter a CompanyId')/>
			</cfif>
		<cfreturn errorMessageArray />
	</cffunction>
	<cffunction name="delCompanyDetails" access="public" returntype="boolean" >
		<cfQuery datasource="ColdBoxDemoProject">
			DELETE FROM COMPANYINFO
			WHERE companyId = #FORM.companyid#
		</cfQuery>
		<cfreturn true>
	</cffunction>
</cfcomponent>