$(document).ready(function(){
	$("#deleteVacancy").click(function(event){
				var l = $("#job-id").val();
				var returnVal = true;
				if($.trim(l)==="")
				{
					$("#spnJId").css("color","red");
					$("#spnJId").text("* Mandatory Field!");
					returnVal = false;
				}	
				else
				if(l<0)
				{
					$("#spnJId").css("color","red");
					$("#spnJId").text("* Can not enter -ve characters for ID");
					returnVal = false;
				}
				return returnVal;
			});
});