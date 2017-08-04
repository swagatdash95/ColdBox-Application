$(document).ready(function(){
	$("#deleteProject").click(function(event){
				var l = $("#project-id").val();
				var returnVal = true;
				if($.trim(l)==="")
				{
					$("#spnPId").css("color","red");
					$("#spnPId").text("* Mandatory Field!");
					returnVal = false;
				}	
				else
				if(l<0)
				{
					$("#spnPId").css("color","red");
					$("#spnPId").text("* Can not enter -ve characters for ID");
					returnVal = false;
				}
				return returnVal;
			});
});