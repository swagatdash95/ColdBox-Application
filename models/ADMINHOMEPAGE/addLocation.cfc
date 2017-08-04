<cfcomponent>
	<cffunction name="validateAddLocationDetails" access="public" returntype="Array" >
			<cfset errorMessageArray = [] />
			<cfif FORM.addr EQ "" OR len(FORM.addr) GT 100>
				<cfset arrayAppend(VARIABLES.errorMessageArray,' Enter an adress between 1-100 characters')/>
			</cfif>
		<cfreturn errorMessageArray />
	</cffunction>
	<cffunction name="addLocationDetails" access="public" returntype="boolean" >
		    <cfset api = "http://maps.googleapis.com/maps/api/geocode/json?address=#URLEncodedFormat(FORM.addr)#&sensor=false">   
		    <cfhttp url="#api#"></cfhttp>
		    <cfset response = DeserializeJSON(cfhttp.FileContent)>
		        <cfset point = response["results"][1]["geometry"]["location"]>
		        <cfdump var = #SerializeJSON(point)#>
		        <cfquery  datasource="ColdBoxDemoProject">
		        	INSERT INTO BRANCHLOCATION
					(companyId,addr,lat,long)
					VALUES
				    (
				     <cfqueryparam value="#SESSION.validCompanyId#" cfsqltype=“cf_sql_integer” >,
				     <cfqueryparam value="#trim(FORM.addr)#" cfsqltype=“cf_sql_varchar” >,
				     <cfqueryparam value="#point.lat#" cfsqltype=“CF_SQL_VARCHAR”>,
				     <cfqueryparam value="#point.lng#" cfsqltype=“CF_SQL_VARCHAR” >
				    )
				</cfQuery>
		<cfreturn true>
	</cffunction>	
</cfcomponent>