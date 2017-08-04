<cfcomponent>
	<cffunction name="clearSession" access="public" returntype="boolean">
		<cfset StructClear(SESSION)>
		<cflogout Session="current">
		<cfreturn true>
	</cffunction>
</cfcomponent>