<!--Check if there are any errorMessages-->
<cfif  structKeyExists(prc,"message")>
  <cfoutput>
    <script type = "text/javascript">
      alert("#prc.message#");
    </script>
  </cfoutput>
</cfif>
<!DOCTYPE HTML>
<html>
<head>
  <title>User Home</title>
  <meta name="description" content="Homepage of the Signed IN Admin" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="../../includes/css/userHomePageStyle.css" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="#">Hey <span class="logo_colour"><cfoutput>#SESSION.validCompanyName#</cfoutput></span></a></h1>
          <h2>Welcome Back!</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
           <li><a href="index.cfm?event=COMPANYHOMEPAGE.companyhomepage">Home</a></li>
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.getFeedbacks">Feedbacks</a></li>
          <li class="selected"><a href="index.cfm?event=COMPANYHOMEPAGE.companyProfile">My Profile</a></li>
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.viewVacancy">Add/Del Vacancy</a></li>
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.viewProject">Add/Del Project</a></li>
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.viewLocation">Add/Del Locations</a></li>
          <li><a href="index.cfm?event=logOut">Logout</a></li>
      </div>
    </div>
      <p style = "font-size: 20px">
        Company Name:<span style = "margin-left: 10%"><cfoutput>#SESSION.validCompanyName#</cfoutput></span>
      </p>
      <p style = "font-size: 20px">
        Company Email:<span style = "margin-left: 10%"> <cfoutput>#SESSION.validCompanyEmail#</cfoutput></span>
      </p>
      <p style = "font-size: 20px">
        Company Logo: <span style = "margin-left: 10%"><cfoutput><cfimage action="writeToBrowser"  source="#SESSION.cLogoURL#" height = "100" width = "100" format = "JPG"/></cfoutput></span>
      </p>
      <p style = "font-size: 20px">
        TurnOver: <span style = "margin-left: 14%"><cfoutput>#prc.companyTurnOver#</cfoutput></span>
      </p>
      <p style = "font-size: 20px">
        EmployeeStrength: <span style = "margin-left: 8%"><cfoutput>#prc.companyEmployeeStrength#</cfoutput></span>
      </p>
      <p style = "font-size: 20px;">
        AboutUs: <div style = "margin-left: 21%;font-size: 20px;"><cfoutput>#prc.companyAboutUs#</cfoutput></div>
      </p>
      <p style = "font-size: 20px">
        ContactUs: <div style = "margin-left: 21%;font-size: 20px;"><cfoutput>#prc.companyContactUs#</cfoutput></div>
      </p>
    
    <cfform style = " margin:10px; margin-left: 48%">
      <a href = "index.cfm?event=COMPANYHOMEPAGE.editCompanyDetails"><input type="button" value="EDIT DATA"></a>
    </cfform>
  </div>
  <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index.cfm?event=USERHOMEPAGE.userhomepage">Home</a> | <a href="index.cfm?event=USERHOMEPAGE.getCompanies">Companies</a> | <a href="index.cfm?event=USERHOMEPAGE.companyContact">ContactUs</a> 
      <p>Copyright &copy; IT Informator| <a href="index.cfm?event=aboutItInformator">AboutUs</a>
    </div>
  </div>
</body>
</html>
