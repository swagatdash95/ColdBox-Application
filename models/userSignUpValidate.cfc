<cfcomponent>
	<cffunction name="validateInputs" access="public" returnType="array">
		<cfset errorMessageArray = [] />
		<cfquery name="getUser" datasource="ColdBoxDemoProject">
			SELECT * FROM USERSINFO WHERE userEmail = '#FORM.userEmail#'
		</cfquery>
		
		<cfif getUser.recordCount GT 0 >
			<cfset arrayAppend(VARIABLES.errorMessageArray,' User already exists!')/>
		<cfelse>
			<cfif FORM.userName EQ "" OR len(FORM.userName) GT 30>
				<cfset arrayAppend(VARIABLES.errorMessageArray," Enter a Name between 1-30 characters")/>
			</cfif>
			<cfif FORM.userEmail EQ "" OR NOT isValid("eMail",FORM.userEmail)>
				<cfset arrayAppend(VARIABLES.errorMessageArray," Enter a valid email address")/>
			</cfif>
			<cfif trim(FORM.userPassword) EQ "" OR len(FORM.userPassword) GT 25 OR len(FORM.userPassword) LT 9>
				<cfset arrayAppend(VARIABLES.errorMessageArray," Enter a Valid Password between 8-25 characters ")/>
			</cfif>
			<cfif FORM.userPassword NEQ FORM.userPasswordRepeat>
				<cfset arrayAppend(VARIABLES.errorMessageArray," Passwords Do not Match")/>
			</cfif>
		</cfif>
		<cfreturn errorMessageArray />
	</cffunction>
</cfcomponent>