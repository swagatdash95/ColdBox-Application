$(document).ready(function(){
	$("#deleteCompany").click(function(event){
				var l = $("#company-id").val();
				var returnVal = true;
				if($.trim(l)==="")
				{
					$("#spnCId").css("color","red");
					$("#spnCId").text("* Mandatory Field!");
					returnVal = false;
				}	
				else
				if(l<0)
				{
					$("#spnCId").css("color","red");
					$("#spnCId").text("* Can not enter -ve characters for ID");
					returnVal = false;
				}
				return returnVal;
			});
});