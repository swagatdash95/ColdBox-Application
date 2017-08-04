<cfcomponent>
	<cffunction name="validateCompanyDetails" access="public" returntype="Array" >
		<cfset errorMessageArray = [] />
			<cfif FORM.companyname EQ "" OR len(FORM.companyname) GT 30>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter a Name between 1-30 characters')/>
			</cfif>
			<cfif FORM.companyEmail EQ "" OR NOT isValid("eMail",FORM.companyEmail)>
				<cfset arrayAppend(VARIABLES.errorMessageArray," Enter a valid email address")/>
			</cfif>
			<cfif FORM.turnOver EQ "" OR len(FORM.turnOver) GT 30>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' The TurnOver must be between 0-30 characters.')/>
			</cfif>
			<cfif FORM.employeeStrength EQ "" OR len(FORM.employeeStrength) GT 30>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' The Employee Strength must be between 0-30 characters.')/>
			</cfif>
			<cfif FORM.aboutUs EQ "" OR len(FORM.aboutUs) GT 1000>
				<cfset arrayAppend(VARIABLES.errorMessageArray,'The About Us can have max 1000 characters.')/>
			</cfif>
			<cfif FORM.contactUs EQ "" OR len(FORM.contactUs) GT 500>
				<cfset arrayAppend(VARIABLES.errorMessageArray,'The Contact Us can have max 500 characters.')/>
			</cfif>
		
		<cfreturn errorMessageArray />
	</cffunction>
	<cffunction name="saveCompanyDetails" access="public" returntype="boolean" >
		<cfquery name = "updateDetails" datasource = "ColdBoxDemoProject">
			UPDATE COMPANYINFO SET
			companyName = '#FORM.companyname#',
			companyEmail = '#FORM.companyEmail#',
			employeeStrength = #FORM.employeeStrength#,
			turnOver = #FORM.turnOver#,
			aboutUs = '#FORM.aboutUs#',
			contactUs = '#FORM.contactUs#'
			WHERE companyId = #SESSION.validCompanyId# 
		</cfquery>
		<cflock timeout=20 scope="Session" type="Exclusive">
			<cfset SESSION.validCompanyName = #FORM.companyname#>
			<cfset SESSION.validCompanyEmail = #FORM.companyEmail#>
		</cflock>
		<cfreturn true>
	</cffunction>
</cfcomponent>