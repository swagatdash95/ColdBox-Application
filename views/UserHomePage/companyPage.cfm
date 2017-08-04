<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Free CSS template by ChocoTemplates.com</title>
	<link rel="stylesheet" href="../../includes/css/companyPageCss.css" type="text/css" media="all" />
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
				    <cfoutput><li class="active"><a href="index.cfm?event=USERHOMEPAGE.viewCompany&cId=#prc.companyId#"><span>Home</span></a></li></cfoutput>
				    <cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getProjects&cId=#prc.companyId#"><span>Projects</span></a></li></cfoutput>
				    <cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getLocations&cId=#prc.companyId#"><span>Locations</span></a></li></cfoutput>
					<cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getVacancies&cId=#prc.companyId#""><span>Vacancy</span></a></li></cfoutput>
					<cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getFeedbacks&cId=#prc.companyId#"><span>Feedbacks</span></a></li></cfoutput>
				</ul>
			</div>
			<!-- End Navigation -->			
		</div>
	</div>
	<!-- END Header -->
	
	<!-- Heading -->
	<div id="heading">
		<div class="shell">
			<div class="cl">&nbsp;</div>
			<div class="heading-cnt">
				<h2>About <cfoutput>#prc.companyName#</cfoutput></h2>
				<p><cfoutput>#prc.companyAboutUs#</cfoutput></p>
			</div>
			<cfoutput><cfimage action="writeToBrowser" class="right" source="#prc.companyLogoURL#" height = "200" width = "200" format = "JPG"/></cfoutput>
			<!-- <img src="css/images/heading-img.jpg" class="right" alt="" /> -->
			<div class="cl">&nbsp;</div>
		</div>
	</div>
	<!-- End Heading -->
	
		
	<!-- Features -->
	<div id="features">
		<div class="shell">
			<div class="features-cnt">
				<div class="cl">&nbsp;</div>
							
				<!-- Feature 2 -->
				<div class="feature less-padding">
					<h1 style = "color:black; padding-top: 10px;">Turnover</h1>
					<p><span style = "font-size:30px; padding-top: 20px; font-family:Comic Sans MS;"><cfoutput>#prc.companyTurnOver#</cfoutput></span>
				
				</div>
				<!-- End Feature 2 -->
				
				<!-- Feature 3 -->
				<div class="feature no-padding">
					<h1 style = "color:black;padding-top: 10px;">Employee Strength</h1>
					<p><span style = "font-size:30px; padding-top: 20px; font-family:Comic Sans MS;"><cfoutput>#prc.companyEmployeeStrength#</cfoutput></span>
				</div>
				<!-- End Feature 3 -->			

				<div class="cl">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- End Features -->
	
	<!-- Main -->
	<div id="main">
		<div class="shell">
			<div class="cl">&nbsp;</div>
			<div class="last-column">
				<h3>Contact Us</h3>
				<p><cfoutput>#prc.companyContactUs#</cfoutput></p>
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
	<!-- End Footer -->
</body>
</html>