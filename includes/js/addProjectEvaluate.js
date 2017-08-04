$(document).ready(function(){
	$("#addProject").click(function(event){
				var l = $("#project-name").val();
				var k= $("#about").val();
				var t = $("#projectStatus").val();
				var returnVal = true;
				if(k.length>500)
				{
					$("#spnAbout").css("color","red");
					$("#spnAbout").text("* cant Enter more than 500 characters");
					returnVal = false;
				}
				else
				if($.trim(k)==="")
				{
					$("#spnAbout").css("color","red");
					$("#spnAbout").text("* Mandatory Field!");
					returnVal = false;
				}				
				if(l.length>40)
				{
					$("#spnPName").css("color","red");
					$("#spnPName").text("* Can not enter more than 40 characters!");
					returnVal = false;
				}
				else
				if($.trim(l)==="")
				{
					$("#spnPName").css("color","red");
					$("#spnPName").text("* Mandatory Field!");
					returnVal = false;
				}				

				if(t!=0 && t!=1 && t!=2)
				{
					$("#spnPstatus").css("color","red");
					$("#spnPstatus").text("Enter a valid Status for the project");
					returnVal = false;
				}
				else
				if($.trim(t)==="")
				{
					$("#spnPstatus").css("color","red");
					$("#spnPstatus").text("* Mandatory Field!");
					returnVal = false;
				}
				return returnVal;
			});
});