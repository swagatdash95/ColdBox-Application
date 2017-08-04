<!DOCTYPE HTML>
<html>

<head>
  <title>Super Admin Home</title>
  <meta name="description" content="Homepage of the Signed IN users" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="../../includes/css/userHomePageStyle.css" />
  <script src="../includes/js/jquery.min.js"></script>
   <script type="text/javascript" src="../../includes/js/delUserEvaluate.js"></script>
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
          <li><a href="index.cfm?event=SUPERADMINHOMEPAGE.superadminhomepage">Home</a></li>
          <li><a href="index.cfm?event=SUPERADMINHOMEPAGE.viewDeleteCompanies">View/Del Companies</a></li>
          <li class="selected"><a href="index.cfm?event=SUPERADMINHOMEPAGE.viewDeleteUsers">View/Del Users</a></li>
          <li><a href="index.cfm?event=logOut">Logout</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div id="content">
        <!-- insert the page content here -->
       <h1>Users</h1>
          <cfloop index="i" from="1" to="#arrayLen(prc.userNames)#"> 
            <div id = holder style="padding:10px; margin:10px; height:100px;">
              <cfoutput>
              <span class="left"><cfimage action="writeToBrowser" source="#prc.photoURLs[i]#" height = "50" width = "50" format = "JPG"/></span>
              <p style= "font-size: 15px;">
                <cfoutput>Id:#prc.userIds[i]#</cfoutput><br>
                <cfoutput>#prc.userNames[i]#</cfoutput><br>
                <cfoutput>#prc.userEmails[i]#</cfoutput>
              </p>
              </cfoutput>
            </div>
          </cfloop> 
      </div>
    </div>
    <form name="delCompany" method="post"  action="index.cfm?event=SUPERADMINHOMEPAGE.delUser" style="border-style: inset; border-radius: 10px; margin:20px; padding:20px; background-color: black; color:white">
      <h3 style="margin-top: 10px;color:red;">Del User:</h3><br>
          User Id of the User:
          <cfoutput><input id="user-id" name = "userid" type="number" size="50" style="margin-left:10%; background-color: grey;"/></cfoutput><br>
          <span id = "spnUId" style="font-size:10px;"></span><br>
           <input type="submit" id="deleteuser" value="Delete user"  style="margin-left:45%;">
    </form>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index.html">Home</a> | <a href="companies.html">Companies</a> | <a href="page.html">ContactUs</a> 
      <p>Copyright &copy; IT Informator| <a href="index.cfm?event=aboutItInformator">AboutUs</a>
    </div>
  </div>
</body>
</html>
