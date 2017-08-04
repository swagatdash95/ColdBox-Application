<cfcomponent>
	<cffunction name="validateInputs" access="public" returnType="array">
		<cfset errorMessageArray = [] />
		<cfquery name="getCompany" datasource="ColdBoxDemoProject">
			SELECT * FROM COMPANYINFO WHERE companyEmail = '#FORM.companyEmail#'
		</cfquery>
		<cfif getCompany.recordCount >= 1 >
			<cfset arrayAppend(VARIABLES.errorMessageArray,' User already exists!')/>
		<cfelse>
			<cfif FORM.companyname EQ "" OR len(FORM.companyname) GT 30>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter a Name between 1-30 characters')/>
			</cfif>
			<cfif FORM.companyEmail EQ "" OR NOT isValid("eMail",FORM.companyEmail)>
				<cfset arrayAppend(VARIABLES.errorMessageArray," Enter a valid email address")/>
			</cfif>
			<cfif trim(FORM.companypw) EQ "" OR len(FORM.companypw) GT 25 OR len(FORM.companypw) LT 9>
				<cfset arrayAppend(VARIABLES.errorMessageArray," Enter a Valid Password between 8-25 characters ")/>
			</cfif>
			<cfif FORM.companypwrepeat NEQ FORM.companypw>
				<cfset arrayAppend(VARIABLES.errorMessageArray," Passwords Do not Match")/>
			</cfif>
			<cfif FORM.turnOver EQ "" OR len(FORM.turnOver) GT 30>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' The TurnOver can not  be more than 30 characters.')/>
			</cfif>
			<cfif FORM.employeeStrength EQ "" OR len(FORM.employeeStrength) GT 30>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' The Employee can not  be more than 30 characters.')/>
			</cfif>
		</cfif>
		<cfreturn errorMessageArray />
	</cffunction>
</cfcomponent>