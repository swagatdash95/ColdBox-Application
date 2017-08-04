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
          <h1><a href="#">Hey <span class="logo_colour"><cfoutput>#SESSION.validUserName#</cfoutput></span></a></h1>
          <h2>Welcome Back!</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="index.cfm?event=USERHOMEPAGE.userhomepage">Home</a></li>
          <li><a href="index.cfm?event=USERHOMEPAGE.getCompanies">Companies</a></li>
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
        <h1>Welcome back to IT Informator</h1>
        <p> Your Destination to know the IT Giants better!</p>
         <p>Now, get to know What's going on in your favourite IT firms. Apply for the Vaccancies and get a chance to be a part of them.
         Get to know about the Projects that they have undertaken and the products that they have made. Add your reviews to help Others,
         Refer to others' feedbacks on companies.</p>
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
