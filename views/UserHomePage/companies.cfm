<!DOCTYPE HTML>
<html>

  <head>
    <title>Companies</title>
    <meta name="description" content="IT company List" />
    <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
    <link rel="stylesheet" type="text/css" href="../../includes/css/userHomePageStyle.css" />
  </head>

  <body>
    <div id="main">
      <div id="header">
        <div id="logo">
          <div id="logo_text">
            <!-- class="logo_colour", allows you to change the colour of the text -->
            <h1><a href="#">Hey <span class="logo_colour"><cfoutput>#SESSION.validUserName#</cfoutput> </span></a></h1>
            <h2>Welcome Back!</h2>
          </div>
        </div>
        <div id="menubar">
          <ul id="menu">
            <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
            <li ><a href="index.cfm?event=USERHOMEPAGE.userhomepage">Home</a></li>
            <li class="selected"><a href="index.cfm?event=USERHOMEPAGE.getCompanies">Companies</a></li>
            <li><a href="index.cfm?event=USERHOMEPAGE.getUserProfile">My Profile</a></li>
            <li><a href="index.cfm?event=USERHOMEPAGE.companyContact">Contact Us</a></li>
            <li><a href="index.cfm?event=logOut">Logout</a></li>
          </ul>
        </div>
      </div>
      <div id="content_header"></div>
      <div id="site_content">
        <div id="content">
          <!-- insert the page content here -->
          <h1>Companies</h1>
          <cfloop index="i" from="1" to="#arrayLen(prc.companyNames)#"> 
            <div id = holder style="padding:10px; margin:10px;">
              <cfoutput><a href = "index.cfm?event=USERHOMEPAGE.viewCompany&cId=#prc.companyId[i]#" target="_blank">
              <span class="left"><cfimage action="writeToBrowser" source="#prc.logoURLs[i]#" height = "50" width = "50" format = "JPG"/></span>
              <p style= "font-size: 30px;">
                <cfoutput>#prc.companyNames[i]#</cfoutput>
              </p>
              </a></cfoutput>
            </div>
          </cfloop> 
        </div>
      </div>
      <div id="content_footer"></div>
      <div id="footer">
      <p><a href="index.cfm?event=USERHOMEPAGE.userhomepage">Home</a> | <a href="index.cfm?event=USERHOMEPAGE.getCompanies">Companies</a> | <a href="index.cfm?event=USERHOMEPAGE.companyContact">ContactUs</a> 
      <p>Copyright &copy; IT Informator| <a href="index.cfm?event=aboutItInformator">AboutUs</a>
    </div>
    </div>
  </body>
</html>
