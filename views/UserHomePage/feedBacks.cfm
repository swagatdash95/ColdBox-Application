<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Free CSS template by ChocoTemplates.com</title>
	<link rel="stylesheet" href="../../includes/css/companyPageCss.css" type="text/css" media="all" />
	<script src="../includes/js/jquery.min.js"></script>
	<script type="text/javascript" src="../../includes/js/addFeedbackEvaluate.js"></script>
</head>
<body>
	<!-- Header -->
	<div id="header">
		<div class="shell">
			<!-- Logo -->
			<h1 id="logo" style="font-size: 50px;" ><cfoutput>#prc.companyName#</cfoutput></h1>
			<!-- End Logo -->
			
			<!-- Navigation -->
			<div id="navigation">
				<ul>
				      <cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.viewCompany&cId=#prc.companyId#"><span>Home</span></a></li></cfoutput>
				    <cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getProjects&cId=#prc.companyId#"><span>Projects</span></a></li></cfoutput>
				    <cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getLocations&cId=#prc.companyId#"><span>Locations</span></a></li></cfoutput>
					<cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getVacancies&cId=#prc.companyId#""><span>Vacancy</span></a></li></cfoutput>
					<cfoutput><li class="active"><a href="index.cfm?event=USERHOMEPAGE.getFeedbacks&cId=#prc.companyId#"><span>Feedbacks</span></a></li></cfoutput>
				</ul>
			</div>
			<!-- End Navigation -->			
		</div>
	</div>
	<!-- END Header -->
	
	<cfif prc.errorMessage EQ 1>
		<div style = "font-size: 20px; margin: 20px;"> Sorry, No data present in the Database.</div>
	<cfelse>
		<cfloop index="i" from="1" to="#arrayLen(prc.feedBacks)#"> 
		    <div id = holder style="padding:10px; margin:10px;">
		     
			              <p style= "font-size: 30px;">
			                <cfoutput>#prc.feedBacks[i]#</cfoutput>
			                <h3 style="margin-top: 10px;">-<cfoutput>#prc.userNames[i]#</cfoutput></h3>
			              </p>
			</div>
		</cfloop>
	</cfif>
	<div class="cl">&nbsp;</div>
	<cfoutput>
		<form name="addFeedBack" method="post"  action="index.cfm?event=USERHOMEPAGE.addFeedback&cId=#prc.companyId#" style="border-style: inset; border-radius: 10px; margin:20px;">
			<h3 style="margin-top: 10px;">Add Feedbacks:</h3>
	        <cfoutput><textarea name = "feedBack" id="feedBack" rows="4" cols="100" style="margin-left:14%;" ></textarea></cfoutput>
	        <br>
	        <span id = "spnFeedBack" style="font-size:10px;"></span> <br>

	         <input type="submit" id = "addFeedback" value="Add Feedback"  style="margin-left:45%;">
		</form>
	</cfoutput>
	<!-- End Features -->
	<div id="main">
		<div class="shell">
			<div class="cl">&nbsp;</div>
			
			<!-- Column 1 -->
			<div class="first-column">
				<h3>Contact Us</h3>
				<cfoutput>#prc.companyContactUs#</cfoutput>
				
			</div>
			<!-- End Column 1 -->
			<!-- Column 3 -->
			<div class="last-column">
				<cfoutput><cfimage action="writeToBrowser" class="right" source="#prc.companyLogoURL#" height = "100" width = "100" format = "JPG"/></cfoutput>
			</div>
			<!-- End Column 3 -->
			
			<div class="cl">&nbsp;</div>
		</div>
	</div>
	<!-- End Main -->
	
	<!-- Footer -->
	<div id="footer">
		<div class="shell">
			<div class="cl">&nbsp;</div>
			<ul>
			    <li><a href="#">Terms of Use</a></li>
			    <li><a href="#">Privacy Policy</a></li>
			</ul>	
			<p class="copy">&copy; Sitename.com. Design by <a href="http://chocotemplates.com">ChocoTemplates.com</a></p>
			<div class="cl">&nbsp;</div>		
		</div>
	</div>
</body>
</html>