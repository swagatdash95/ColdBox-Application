$(document).ready(function() {
	$("#userLogIn").click(function(event){
			
				var x= $("#user-pw").val();
				var l = $("#user-email").val();
				var returnVal = true;
				
				if($.trim(x)==="")
				{
					$("#spnUserPassword").css("color","red");
					$("#spnUserPassword").text("* Mandatory Field!");
					returnVal = false;
				}
				
				if($.trim(l)=="")
				{
					$("#spnUserEmail").css("color","red");
					$("#spnUserEmail").text("* Mandatory Field!");
					returnVal = false;
					
				}
				return returnVal;
			});
	$("#adminLogIn").click(function(event){
			
				var x= $("#admin-pw").val();
				var l = $("#admin-email").val();
				var returnVal = true;
				
				if($.trim(x)==="")
				{
					$("#spnAdminPassword").css("color","red");
					$("#spnAdminPassword").text("* Mandatory Field!");
					returnVal = false;
				}
				
				if($.trim(l)=="")
				{
					$("#spnAdminEmail").css("color","red");
					$("#spnAdminEmail").text("* Mandatory Field!");
					returnVal = false;
					
				}
				return returnVal;
			});
});