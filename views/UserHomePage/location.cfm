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
				      <cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.viewCompany&cId=#prc.companyId#"><span>Home</span></a></li></cfoutput>
				    <cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getProjects&cId=#prc.companyId#"><span>Projects</span></a></li></cfoutput>
				     <cfoutput><li class = "active"><a href="index.cfm?event=USERHOMEPAGE.getLocations&cId=#prc.companyId#"><span>Locations</span></a></li></cfoutput>
					<cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getVacancies&cId=#prc.companyId#""><span>Vacancy</span></a></li></cfoutput>
					<cfoutput><li ><a href="index.cfm?event=USERHOMEPAGE.getFeedbacks&cId=#prc.companyId#"><span>Feedbacks</span></a></li></cfoutput>
				</ul>
			</div>
			<!-- End Navigation -->			
		</div>
	</div>

	<!-- END Header -->
	<cfif prc.errorMessage EQ 1>
		<div style = "font-size: 20px; margin: 20px;"> Sorry, No data present in the Database.</div>
	<cfelse>
		<div class="cl">&nbsp;</div>
		<h1 style="margin-top: 10px;">Locate Us!<br></h1>
		<p style= "font-size: 15px;margin-bottom: 10px;margin-top: 20px;">
	       	<cfoutput>#prc.addr[1]#</cfoutput>
	    </p>
		<!-- Feature 1 -->
		<cfoutput><input type="hidden" name="lat" id="lat" value=#prc.lat[1]#></cfoutput>
		<cfoutput><input type="hidden" name="long" id="long" value=#prc.long[1]#></cfoutput>
		<div id="map" style="height:400px; width:70%; margin-left: 15%; margin-bottom: 10px;"></div>
		<script>
			function initMap() 
		    {
		    var lattitude = parseFloat(document.getElementById('lat').value);
		    var longitude = parseFloat(document.getElementById('long').value);
		    var uluru = {lat: lattitude, lng: longitude};
		    var m = new google.maps.Map(document.getElementById('map'), {
		    zoom: 14,
		    center: uluru
		    });
		    var marker = new google.maps.Marker({
		    position: uluru,
		    map: m
		    });
			}
		</script>
		<div id = "details" style= "font-size: 30px; margin-top: 10px; margin-bottom: 10px;">
			OTHER LOCATIONS:
			<cfloop index="i" from="2" to="#arrayLen(prc.addr)#"> 
			    <div id = holder style="padding:10px; margin:10px; background-color: grey; color: white; margin:20px;">
				    <p style= "font-size: 20px;">
				    	<cfoutput>#prc.addr[i]#</cfoutput>
				    </p>          
				</div>
			</cfloop>
		</div>
	</cfif>
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
	 <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDtb-FU2AWvH4_XElRZKQNCjO3VnS20F8w&callback=initMap">
    </script>
</body>
</html>