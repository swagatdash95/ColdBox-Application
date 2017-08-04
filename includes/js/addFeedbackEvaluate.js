$(document).ready(function(){
	$("#addFeedback").click(function(event){
				var l = $("#feedBack").val();
				var returnVal = true;
				if($.trim(l)==="")
				{
					$("#spnFeedBack").css("color","red");
					$("#spnFeedBack").text("* Mandatory Field!");
					returnVal = false;
				}	
				else
				if(l<0)
				{
					$("#spnFeedBack").css("color","red");
					$("#spnFeedBack").text("* Can not enter -ve characters as code");
					returnVal = false;
				}
				return returnVal;
			});
});