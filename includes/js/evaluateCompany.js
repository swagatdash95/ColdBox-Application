$(document).ready(function(){
	$("#company-pw").keyup(function(){
				var x= $("#company-pw").val();
				if($.trim(x)==="")
				{
					$("#spnCPw1").css("color","red");
					$("#spnCPw1").text("cant Enter just spaces");
				}
				else
				if(x.length < 9 || x.length > 25)
				{
					$("#spnCPw1").css("color","red");
					$("#spnCPw1").text("No. of characters must be between 9-25");
				}
				else
				{
					$("#spnCPw1").text(" ");
				}
				if(x ===""){
					$("#spnCPw1").text(" ");
				}
			});
	$("#company-pw-repeat").keyup(function(){
				
				var u= $("#company-pw-repeat").val();
				var h= $("#company-pw").val();
				
				if(u!=h)
				{
					$("#spnCPw2").css("color","red");
					$("#spnCPw2").text("Passwords Don't Match");
				}
				else
				{
					$("#spnCPw2").text("");
				}
				if(u ===""){
					$("#spnCPw2").text(" ");
				}
			});
	$("#company-name").keyup(function(event){
				var k= $("#company-name").val();
				var keypressed=event.which;
				var pattern = "^[A-Za-z]+([A-Za-z ]*)$";
				if(k.length>30)
				{
					alert("Can not enter more than 30 characters");
				}
				else
				if($.trim(k)==="")
				{
					$("#spnCName").css("color","red");
					$("#spnCName").text("cant Enter just spaces");
				}
				else
				if(!(k.match(pattern)))
				{
					$("#spnCName").css("color","red");
					$("#spnCName").text("Enter only alphabets");
				}
				else
				{
					$("#spnCName").text("");

				}
				if(k==="")
				{
					$("#spnCName").text("");
				}

			});
	$("#company-Email").keyup(function(event){
				var l = $("#company-Email").val();
				var keypressed=(event.which);
				var pattern = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$" ;
				if(l.length>40)
				{
					alert("Can not enter more than 40 characters");
				}
				else
				if(keypressed===32)
				{
					alert("can not Enter spaces in email!");
				}
				if(l.match(pattern))
				{
					$("#spnCEmail").text("");
				
				}
				else
				{
					$("#spnCEmail").css("color","red");
					$("#spnCEmail").text("Please Enter a valid email address!");
				}
				if(l==="")
				{
					$("#spnCEmail").text("");
				}
			});
	$("#turnOver").keyup(function(event){
				var t = $("#turnOver").val();
				if(t.length>30)
				{
					alert("Can not enter more than 30 characters");
				}
				else
				if($.trim(t)==="")
				{
					$("#spnTurnover").css("color","red");
					$("#spnTurnover").text("cant Enter just spaces");
				}
				else
				if(t <= 0)
				{
					$("#spnTurnover").css("color","red");
					$("#spnTurnover").text("Enter a Valid number!");
				}
				else
				{
					$("#spnTurnover").text("");

				}
				if(t==="")
				{
					$("#spnTurnover").text("");
				}
			});
	$("#employeeStrength").keyup(function(event){
				var m = $("#employeeStrength").val();
				if(m.length>30)
				{
					alert("Can not enter more than 30 characters");
				}
				else
				if($.trim(m)==="")
				{
					$("#spnEmployeeStrength").css("color","red");
					$("#spnEmployeeStrength").text("cant Enter just spaces");
				}
				else
				if(m <= 0)
				{
					$("#spnEmployeeStrength").css("color","red");
					$("#spnEmployeeStrength").text("Enter a Valid Number!");
				}
				else
				{
					$("#spnEmployeeStrength").text("");

				}
				if(m==="")
				{
					$("#spnEmployeeStrength").text("");
				}
			});

	$("#companySubmit").click(function(event){
				var x= $("#company-pw").val();
				var l = $("#company-Email").val();
				var k= $("#company-name").val();
				var t = $("#turnOver").val();
				var m = $("#employeeStrength").val();
				var pattern = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$" ;
				var pattern1 = "^[A-Za-z]+([A-Za-z ]*)$";
				var returnVal = true;
				var z = $("#cLogo").val();
				var q = $("#company-pw-repeat").val();
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
				else
				if(!(k.match(pattern1)))
				{
					$("#spnCName").css("color","red");
					$("#spnCName").text("* Enter only alphabets");
					returnVal = false;
				}
				if($.trim(x)==="")
				{
					$("#spnCPw1").css("color","red");
					$("#spnCPw1").text("* Mandatory Field!");
					returnVal = false;
				}
				else
				if(x.length < 9 || x.length > 25)
				{
					$("#spnCPw1").css("color","red");
					$("#spnCPw1").text("* No. of characters must be between 9-25");
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
				if($.trim(z)=="")
				{
					$("#spnCLogo").css("color","red");
					$("#spnCLogo").text("* Mandatory Field!");
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
				
				if(q!=x)
				{
					$("#spnCPw2").css("color","red");
					$("#spnCPw2").text("Passwords Don't Match");
					returnVal = false;
				}
				return returnVal;
			});
});