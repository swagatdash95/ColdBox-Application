<cfcomponent displayname = "Database">
	<cffunction name="deleteUser" access="public" returntype="boolean" >
	   	<cfQuery datasource="ColdBoxDemoProject">
			INSERT INTO COMPANYINFO (companyName, turnOver, companyLogoURL, employeeStrength, aboutUs, contactUs, companyEmail, password)
			SELECT companyName, turnOver, companyLogoURL, employeeStrength, aboutUs, contactUs, companyEmail, password
			FROM TEMPCOMPANYDATA
			WHERE companyEmail = '#SESSION.formEmail#'
		</cfQuery>
	   	<cfQuery datasource="ColdBoxDemoProject">
			  DELETE from TEMPCOMPANYDATA where companyEmail = '#SESSION.formEmail#'
		</cfQuery>
		<cfset returnmessage = true>
		<cfreturn returnmessage>
	</cffunction>
	<cffunction name="deleteInvalidatedUser" access="public" returntype="void" >
	   	<cfQuery datasource="ColdBoxDemoProject">
			  DELETE from TEMPCOMPANYDATA where companyEmail = '#SESSION.formEmail#'
		</cfQuery>
	</cffunction>
</cfcomponent>