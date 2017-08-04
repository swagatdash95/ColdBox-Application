$(document).ready(function(){
	$("#addVacancy").click(function(event){
				var l = $("#job-name").val();
				var k= $("#details").val();
				var t = $("#company-Link").val();
				var returnVal = true;
				if(k.length>500)
				{
					$("#spnJDetails").css("color","red");
					$("#spnJDetails").text("* cant Enter more than 500 characters");
					returnVal = false;
				}
				else
				if($.trim(k)==="")
				{
					$("#spnJDetails").css("color","red");
					$("#spnJDetails").text("* Mandatory Field!");
					returnVal = false;
				}				
				if(l.length>40)
				{
					$("#spnJName").css("color","red");
					$("#spnJName").text("* Can not enter more than 40 characters!");
					returnVal = false;
				}
				else
				if($.trim(l)==="")
				{
					$("#spnJName").css("color","red");
					$("#spnJName").text("* Mandatory Field!");
					returnVal = false;
				}				

				if(t.length>40)
				{
					$("#spnCLink").css("color","red");
					$("#spnCLink").text("* Can not enter more than 100 characters!");
					returnVal = false;
				}
				else
				if($.trim(t)==="")
				{
					$("#spnCLink").css("color","red");
					$("#spnCLink").text("* Mandatory Field!");
					returnVal = false;
				}				
				return returnVal;
			});
});