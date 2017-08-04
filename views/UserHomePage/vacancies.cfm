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
          <cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getLocations&cId=#prc.companyId#"><span>Locations</span></a></li></cfoutput>
          <cfoutput><li class="active"><a href="index.cfm?event=USERHOMEPAGE.getVacancies&cId=#prc.companyId#""><span>Vacancy</span></a></li></cfoutput>
          <cfoutput><li><a href="index.cfm?event=USERHOMEPAGE.getFeedbacks&cId=#prc.companyId#"><span>Feedbacks</span></a></li></cfoutput>
        </ul>
      </div>
      <!-- End Navigation -->     
    </div>
  </div>
  <cfif prc.errorMessage EQ 1>
    <div style = "font-size: 20px; margin: 20px;"> Sorry, No data present in the Database.</div>
  <cfelse>
  <!-- Features -->
    <cfloop index="i" from="1" to="#arrayLen(prc.jobName)#"> 
      <div id = holder style="padding:10px; margin:10px;">
        <p style= "font-size: 30px;margin-bottom: 10px;">
          <cfoutput>#prc.jobName[i]#</cfoutput>
        </p>
        <p style= "font-size: 20px;margin-bottom: 10px;">
          <cfoutput>#prc.jobDetails[i]#</cfoutput>
        </p>
        <p  style= "font-size: 15px;margin-bottom: 10px;">
         Apply Here:<cfoutput><a href = "#prc.link[i]#">#prc.link[i]#</a></cfoutput>
        </p>
      </div>
    </cfloop> 
  </cfif>
  <!-- End Features -->
  <!-- Main -->
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
  <!-- End Footer -->
</body>
</html>