$(document).ready(function(){
	$("#deleteuser").click(function(event){
				var l = $("#user-id").val();
				var returnVal = true;
				if($.trim(l)==="")
				{
					$("#spnUId").css("color","red");
					$("#spnUId").text("* Mandatory Field!");
					returnVal = false;
				}	
				else
				if(l<0)
				{
					$("#spnUId").css("color","red");
					$("#spnUId").text("* Can not enter -ve characters for ID");
					returnVal = false;
				}
				return returnVal;
			});
});