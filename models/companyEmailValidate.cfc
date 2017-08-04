<cfcomponent>
	<cffunction name="validateEmail" access="public" returnType="boolean">
		<cfif FORM.secretKey EQ SESSION.Key>
			<cfreturn true>
		<cfelse>
			<cfreturn false>
		</cfif>
	</cffunction>
</cfcomponent>