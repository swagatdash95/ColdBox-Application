$(document).ready(function(){
	$("#deleteBranch").click(function(event){
				var l = $("#branch-id").val();
				var returnVal = true;
				if($.trim(l)==="")
				{
					$("#spnBId").css("color","red");
					$("#spnBId").text("* Mandatory Field!");
					returnVal = false;
				}	
				else
				if(l<0)
				{
					$("#spnBId").css("color","red");
					$("#spnBId").text("* Can not enter -ve characters for ID");
					returnVal = false;
				}
				return returnVal;
			});
});