$(document).ready(function(){
	$("#keySubmit").click(function(event){
				var l = $("#secretKey").val();
				var returnVal = true;
				if($.trim(l)==="")
				{
					$("#spnKeyInput").css("color","red");
					$("#spnKeyInput").text("* Mandatory Field!");
					returnVal = false;
				}	
				else
				if(l<0)
				{
					$("#spnKeyInput").css("color","red");
					$("#spnKeyInput").text("* Can not enter -ve characters as code");
					returnVal = false;
				}
				return returnVal;
			});
});