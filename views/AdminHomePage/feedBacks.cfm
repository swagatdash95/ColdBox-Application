<!DOCTYPE HTML>
<html>

<head>
  <title>User Home</title>
  <meta name="description" content="Homepage of the Signed IN users" />
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
          <li class="selected"><a href="index.cfm?event=COMPANYHOMEPAGE.getFeedbacks">Feedbacks</a></li>
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.companyProfile">My Profile</a></li>
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.viewVacancy">Add/Del Vacancy</a></li>
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.viewProject">Add/Del Project</a></li>
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.viewLocation">Add/Del Locations</a></li>
          <li><a href="index.cfm?event=logOut">Logout</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div id="content">
        <cfif prc.available EQ true>
          <cfloop index="i" from="1" to="#arrayLen(prc.feedBack)#"> 
            <div id = holder style="padding:30px; margin:10px; height:80px;">
              <p style= "font-size: 20px;">
                <cfoutput>#prc.feedBack[i]#</cfoutput><br>
                <span style = "font-size: 15px;">-<cfoutput>#prc.userName[i]#</cfoutput><br></span>
                <span style= "font-size: 10px;"><cfoutput>#prc.feedBackTime[i]#</cfoutput><br></span>
              </p>
            </div>
          </cfloop> 
        <cfelse>
              <p style= "font-size: 30px;">
                No Feedbacks Available!
              </p>
        </cfif> 
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index.html">Home</a> | <a href="companies.html">Companies</a> | <a href="page.html">ContactUs</a> 
      <p>Copyright &copy; IT Informator| <a href="index.cfm?event=aboutItInformator">AboutUs</a>
    </div>
  </div>
</body>
</html>
