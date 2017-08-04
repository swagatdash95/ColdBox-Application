$(document).ready(function(){
	$("#saveChanges").click(function(event){
				var l = $("#company-Email").val();
				var k= $("#company-name").val();
				var t = $("#turnOver").val();
				var m = $("#employeeStrength").val();
				var z = $("#aboutUs").val();
				var q = $("#contactUs").val();
				var pattern = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$" ;
				var returnVal = true;
				if(k.length>30)
				{
					$("#spnCName").css("color","red");
					$("#spnCName").text("* cant Enter more than 30 characters");
					returnVal = false;
				}
				else
				if($.trim(k)==="")
				{
					$("#spnCName").css("color","red");
					$("#spnCName").text("* Mandatory Field!");
					returnVal = false;
				}				
				if(l.length>40)
				{
					$("#spnCEmail").css("color","red");
					$("#spnCEmail").text("* Can not enter more than 40 characters!");
					returnVal = false;
				}
				else
				if(!(l.match(pattern)))
				{
					$("#spnCEmail").css("color","red");
					$("#spnCEmail").text("* Please Enter a valid email address!");
					returnVal = false;
				}
				if(t.length>30)
				{
					$("#spnTurnover").css("color","red");
					$("#spnTurnover").text("cant Enter more than 30 characters");
					returnVal = false;
				}
				else
				if($.trim(t)==="")
				{
					$("#spnTurnover").css("color","red");
					$("#spnTurnover").text("* Mandatory Field!");
					returnVal = false;
				}
				else
				if(t <= 0)
				{
					$("#spnTurnover").css("color","red");
					$("#spnTurnover").text("Enter a valid number!");
					returnVal = false;
				}
				if(m.length>30)
				{
					$("#spnEmployeeStrength").css("color","red");
					$("#spnEmployeeStrength").text("* Can not enter more than 30 characters");
					returnVal = false;
				}
				else
				if($.trim(m)==="")
				{
					$("#spnEmployeeStrength").css("color","red");
					$("#spnEmployeeStrength").text("* Mandatory Field!");
					returnVal = false;
				}
				else
				if(m <= 0)
				{
					$("#spnEmployeeStrength").css("color","red");
					$("#spnEmployeeStrength").text("Enter a valid number!");
					returnVal = false;
				}
				if(z.length>500)
				{
					$("#spnAboutUs").css("color","red");
					$("#spnAboutUs").text("* cant Enter more than 500 characters");
					returnVal = false;
				}
				else
				if($.trim(z)==="")
				{
					$("#spnAboutUs").css("color","red");
					$("#spnAboutUs").text("* Mandatory Field!");
					returnVal = false;
				}			
				if(q.length>500)
				{
					$("#spnContactUs").css("color","red");
					$("#spnContactUs").text("* cant Enter more than 500 characters");
					returnVal = false;
				}
				else
				if($.trim(q)==="")
				{
					$("#spnContactUs").css("color","red");
					$("#spnContactUs").text("* Mandatory Field!");
					returnVal = false;
				}				
				return returnVal;
			});
});