<cfcomponent displayname = "Database">
	<cffunction name="insertTempDB" access="public" returntype="boolean" >
		<cfif structKeyExists(form,"cLogo")>
			<cftry>
				<cffile action="upload" destination= #ExpandPath('./includes/images/companyLogo')# filefield="cLogo" nameconflict="makeunique" accept="image/jpeg" result="photoResult">
			<cfcatch type="any">
			   		<!-- file is not written to disk if error is thrown  -->
			    	<!-- prevent invalid file types -->
			    	<cfif FindNoCase("The MIME type or the Extension of the uploaded file", cfcatch.message)>
			        	<cfabort showerror="<b>Invalid file type.Please Upload JPEG file only</b>" />

			    	<!-- prevent empty form field -->
			   		<cfelseif FindNoCase("did not contain a file.", cfcatch.message)>
			        	<cfabort showerror="<b>Empty form field. Please Upload a File!</b>" />

			    	<!--all other errors -->
			    	
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
			INSERT INTO TEMPCOMPANYDATA
			(companyName,companyEmail,password,employeeStrength,turnOver,companyLogoURL)
			VALUES
		    (<cfqueryparam value="#trim(FORM.companyname)#" cfsqltype=“cf_sql_varchar” >,
		     <cfqueryparam value="#trim(FORM.companyEmail)#" cfsqltype=“cf_sql_varchar” >,
		     <cfqueryparam value="#hash(trim(FORM.companypw))#" cfsqltype=“CF_SQL_LONGVARCHAR”>,
		     <cfqueryparam value="#trim(FORM.employeeStrength)#" cfsqltype=“cf_sql_integer” >,
		     <cfqueryparam value="#trim(FORM.turnOver)#" cfsqltype=“cf_sql_integer” >,
		   	 '#VARIABLES.imageDestination#')
		</cfQuery>
		<cfset returnmessage = true>
		<cfreturn returnmessage>
	</cffunction>
</cfcomponent>