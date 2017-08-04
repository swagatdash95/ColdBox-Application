$(document).ready(function(){
	$("#addBranch").click(function(event){
				var l = $("#addr").val();
				var returnVal = true;
				if(l.length>500)
				{
					$("#spnAddr").css("color","red");
					$("#spnAddr").text("* cant Enter more than 500 characters");
					returnVal = false;
				}
				else
				if($.trim(l)==="")
				{
					$("#spnAddr").css("color","red");
					$("#spnAddr").text("* Mandatory Field!");
					returnVal = false;
				}				
				return returnVal;
			});
});