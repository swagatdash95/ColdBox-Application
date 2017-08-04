<cfset VARIABLES.messages = "">
  <!--Check if there are any errorMessages-->
<cfif  structKeyExists(prc,"errorMessage")>
  <cfset i = 1 >
  <cfloop array = "#prc.errorMessage#" index = "message">
    <cfset VARIABLES.messages = messages &"  #i#. "&"#message#">
    <cfset i = i+1>
  </cfloop>
  <cfoutput>
    <script type = "text/javascript">
      alert("#messages#");
    </script>
  </cfoutput>
</cfif>
<!DOCTYPE HTML>
<html>

<head>
  <title>Super Admin Home</title>
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
          <h1><a href="#">Hey SuperAdmin <br><span class="logo_colour"><cfoutput>#SESSION.validUserName#</cfoutput></span></a></h1>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="index.cfm?event=SUPERADMINHOMEPAGE.superadminhomepage">Home</a></li>
          <li><a href="index.cfm?event=SUPERADMINHOMEPAGE.viewDeleteCompanies">View/Del Companies</a></li>
          <li><a href="index.cfm?event=SUPERADMINHOMEPAGE.viewDeleteUsers">View/Del Users</a></li>
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
      <p><a href="index.html">Home</a> | <a href="companies.html">Companies</a> | <a href="page.html">ContactUs</a> 
      <p>Copyright &copy; IT Informator| <a href="index.cfm?event=aboutItInformator">AboutUs</a>
    </div>
  </div>
</body>
</html>
