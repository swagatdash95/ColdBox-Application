$(document).ready(function(){
	$("#user-password").keyup(function(){
				var x= $("#user-password").val();
				if($.trim(x)==="")
				{
					$("#spnUPw1").css("color","red");
					$("#spnUPw1").text("cant Enter just spaces");
				}
				else
				if(x.length < 9 || x.length > 25)
				{
					$("#spnUPw1").css("color","red");
					$("#spnUPw1").text("No. of characters must be between 9-25");
				}
				else
				{
					$("#spnUPw1").text(" ");
				}
				if(x ===""){
					$("#spnUPw1").text(" ");
				}
			});
	$("#user-pw-repeat").keyup(function(){
				
				var u= $("#user-pw-repeat").val();
				var h= $("#user-password").val();
				
				if(u!=h)
				{
					$("#spnUPw2").css("color","red");
					$("#spnUPw2").text("Passwords Don't Match");
				}
				else
				{
					$("#spnUPw2").text("");
				}
				if(u ===""){
					$("#spnUPw2").text(" ");
				}
			});
	$("#user-Name").keyup(function(event){
				var k= $("#user-Name").val();
				var keypressed=event.which;
				console.log(k);
				var pattern = "^[A-Za-z]+([A-Za-z ]*)$";
				if(k.length>30)
				{
					alert("Can not enter more than 30 characters");
				}
				else
				if($.trim(k)==="")
				{
					$("#spnUName").css("color","red");
					$("#spnUName").text("cant Enter just spaces");
				}
				else
				if(!(k.match(pattern)))
				{
					$("#spnUName").css("color","red");
					$("#spnUName").text("Enter only alphabets");
				}
				else
				{
					$("#spnUName").text("");

				}
				if(k==="")
				{
					$("#spnUName").text("");
				}

			});
	$("#user-emailField").keyup(function(event){
				var l = $("#user-emailField").val();
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
					$("#spnUEmail").text("");
				
				}
				else
				{
					$("#spnUEmail").css("color","red");
					$("#spnUEmail").text("Please Enter a valid email address!");
				}
				if(l==="")
				{
					$("#spnUEmail").text("");
				}
			});
	$("#userSubmit").click(function(event){
			
				var x= $("#user-password").val();
				var l = $("#user-emailField").val();
				var k= $("#user-Name").val();
				var pattern = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$" ;
				var pattern1 = "^[A-Za-z]+([A-Za-z ]*)$";
				var returnVal = true;
				var z = $("#uPhoto").val();
				var u= $("#user-pw-repeat").val();
				if(k.length>30)
				{
					$("#spnUName").css("color","red");
					$("#spnUName").text("* cant Enter more than 30 characters");
					returnVal = false;
				}
				else
				if($.trim(k)==="")
				{
					$("#spnUName").css("color","red");
					$("#spnUName").text("* Mandatory Field!");
					returnVal = false;
				}
				else
				if(!(k.match(pattern1)))
				{
					$("#spnUName").css("color","red");
					$("#spnUName").text("* Enter only alphabets");
					returnVal = false;
				}
				if($.trim(x)==="")
				{
					$("#spnUPw1").css("color","red");
					$("#spnUPw1").text("* Mandatory Field!!");
					returnVal = false;
				}
				else
				if(x.length < 9 || x.length > 25)
				{
					$("#spnUPw1").css("color","red");
					$("#spnUPw1").text("* No. of characters must be between 9-25");
					returnVal = false;
				}
				
				if(l.length>40)
				{
					$("#spnUEmail").css("color","red");
					$("#spnUEmail").text("* Can not enter more than 40 characters!");
					returnVal = false;
				}
				else
				if(!(l.match(pattern)))
				{
					$("#spnUEmail").css("color","red");
					$("#spnUEmail").text("* Please Enter a valid email address!");
					returnVal = false;
				}
				if($.trim(z)=="")
				{
					$("#spnUPhoto").css("color","red");
					$("#spnUPhoto").text("* Mandatory Field!");
					returnVal = false;
					
				}
				if(u!=x)
				{
					$("#spnUPw2").css("color","red");
					$("#spnUPw2").text("Passwords Don't Match");
					returnVal = false;
				}
				return returnVal;
			});
});