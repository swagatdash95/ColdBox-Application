<cfcomponent displayname = "Database">
	<cffunction name="insertDB" access="public" returntype="boolean" >
		<cfif structKeyExists(form,"userPhoto")>
			<cftry>
				<cffile action="upload" destination= #ExpandPath('./includes/images/userPhoto')# filefield="userPhoto" nameconflict="makeunique" accept="image/jpeg" result="photoResult">
			<cfcatch type="any">
			   		<!--- file is not written to disk if error is thrown  --->
			    	<!--- prevent invalid file types --->
			    	<cfif FindNoCase("The MIME type or the Extension of the uploaded file", cfcatch.message)>
			        	<cfabort showerror="<b>Invalid file type.Please Upload JPEG file only</b>" />

			    	<!--- prevent empty form field --->
			   		<cfelseif FindNoCase("did not contain a file.", cfcatch.message)>
			        	<cfabort showerror="<b>Empty form field. Please Upload a File!</b>" />

			    	<!---all other errors --->
			    	
			    	<cfelse>
			        	<cfabort showerror="<b>File Upload Error</b>" />
			    	</cfif>
			</cfcatch>
			</cftry>
			<cfset VARIABLES.imageDestination = "#photoResult.SERVERDIRECTORY#\" & "#photoResult.SERVERFILE#">
			
		<cfelse>
			<cfset VARIABLES.imageDestination = "NULL">
		</cfif>
	   	<cfQuery datasource="ColdBoxDemoProject">
			INSERT INTO USERSINFO
			(userName,userEmail,userPassword,userPhotoURL)
			VALUES
		    (<cfqueryparam value="#trim(FORM.userName)#" cfsqltype=“cf_sql_varchar” >,
		     <cfqueryparam value="#trim(FORM.userEmail)#" cfsqltype=“cf_sql_varchar” >,
		     <cfqueryparam value="#hash(trim(FORM.userPassword))#" cfsqltype=“CF_SQL_LONGVARCHAR”>,
		   	 '#VARIABLES.imageDestination#')
		</cfQuery>
		<cfset returnmessage = true>
		<cfreturn returnmessage>
	</cffunction>
</cfcomponent>