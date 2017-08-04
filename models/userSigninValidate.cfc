<cfcomponent>
	<cffunction name="validateUser" access="public" returntype="numeric" >
		<cfquery name = "allUsers" datasource = "ColdBoxDemoProject">
			SELECT * FROM USERSINFO
		</cfquery>
		<cfloop query = "VARIABLES.allUsers">
			<cfif FORM.userEmailSignIn EQ #allUsers.userEmail#>
				<cfif hash(FORM.userPasswordSignIn) EQ #allUsers.userPassword#>
					<cflock timeout=20 scope="Session" type="Exclusive">
						<cfset SESSION.validUserId = #allUsers.userId#>
						<cfset SESSION.validUserEmail = #allUsers.userEmail#>
						<cfset SESSION.validUserName = #allUsers.userName#>
						<cfset SESSION.uPhotoURL = #allUsers.userPhotoURL#>
						<cfset SESSION.isAdmin = #allUsers.isAdmin#>
					</cflock>
					<cfset evalVal = true>
					<cfbreak>
				<cfelse>
					<cfset evalVal = false>
				</cfif>
			<cfelse>
				<cfset evalVal = false>
			</cfif>
		</cfloop>
		<cfif evalVal EQ true>
			<cfif SESSION.isAdmin EQ 1>
				<cfset returnVal = 1>
			<cfelse>
				<cfset returnVal = 2>
			</cfif>
		<cfelse>
			<cfset returnVal = 0>
		</cfif>
		<cfreturn returnVal>
	</cffunction>
</cfcomponent>