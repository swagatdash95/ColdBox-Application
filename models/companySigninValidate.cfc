<cfcomponent>
	<cffunction name="validateCompany" access="public" returntype="boolean" >
		<cfquery name = "allUsers" datasource = "ColdBoxDemoProject">
			SELECT * FROM COMPANYINFO
		</cfquery>

		<cfloop query = "VARIABLES.allUsers">
			<cfif FORM.adminEmail EQ #allUsers.companyEmail#>
				<cfif hash(FORM.adminPassword) EQ #allUsers.password#>
					<cflock timeout=20 scope="Session" type="Exclusive">
						<cfset SESSION.validCompanyId = #allUsers.companyId#>
						<cfset SESSION.validCompanyName = #allUsers.companyName#>
						<cfset SESSION.cLogoURL = #allUsers.companyLogoURL#>
						<cfset SESSION.validCompanyEmail = #allUsers.companyEmail#>
					</cflock>
					<cfset returnVal = true>
					<cfbreak>
				<cfelse>
					<cfset returnVal = false>
				</cfif>
			<cfelse>
				<cfset returnVal = false>
			</cfif>
		</cfloop>
		<cfreturn returnVal>
	</cffunction>
</cfcomponent>