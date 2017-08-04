<!DOCTYPE HTML>
<html>
<head>
  <title>User Home</title>
  <meta name="description" content="Homepage of the Signed IN users" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="../../includes/css/userHomePageStyle.css" />
  <script src="../../includes/js/jquery.min.js"></script>
  <script type="text/javascript" src="../../includes/js/addProjectEvaluate.js"></script>
  <script type="text/javascript" src="../../includes/js/delProjectEvaluate.js"></script>
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
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.companyProfile">My Profile</a></li>
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.viewVacancy">Add/Del Vacancy</a></li>
          <li class="selected"><a href="index.cfm?event=COMPANYHOMEPAGE.viewProject">Add/Del Project</a></li>
          <li><a href="index.cfm?event=COMPANYHOMEPAGE.viewLocation">Add/Del Locations</a></li>
          <li><a href="index.cfm?event=logOut">Logout</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      <div id="content">
        <cfif prc.available EQ true>
          <cfloop index="i" from="1" to="#arrayLen(prc.projectName)#"> 
            <div id = holder style="padding:10px; margin:10px; height:150px;">
              <p style= "font-size: 20px;">
                <cfoutput>Project ID: #prc.projectId[i]#</cfoutput><br>
                <cfoutput>#prc.projectName[i]#</cfoutput><br>
                <cfoutput>#prc.about[i]#</cfoutput><br>
                <cfoutput>
                    <cfif #prc.projectStatus[i]# EQ 0>
                    Status: Not started.
                    <cfelseif #prc.projectStatus[i]# EQ 1>
                    Status: Active.
                    <cfelseif #prc.projectStatus[i]# EQ 2>
                    Status: Completed.
                  </cfif>
                </cfoutput><br>
              </p>
            </div>
          </cfloop> 
        <cfelse>
              <p style= "font-size: 30px;">
                No Projects Available!
              </p>
        </cfif> 
      </div>
    </div>
    <cfoutput>
    <form name="addProject" method="post"  action="index.cfm?event=COMPANYHOMEPAGE.addProject" style="border-style: inset; border-radius: 10px; margin:20px; padding:20px; background-color: black; color:white">
      <h3 style="margin-top: 10px;color:red;">Add Project:</h3><br>
          Project Name:
          <cfoutput><input id="project-name" name = "projectname" type="text" size="50" style="margin-left:15%; background-color: grey;"/></cfoutput><br>
          <span id = "spnPName" style="font-size:10px;"></span><br>
          About : 
          <cfoutput><textarea name = "about" id="about" rows="4" cols="100" style="margin-left:18%;background-color: grey;" ></textarea></cfoutput>
          <br>
          <span id = "spnAbout" style="font-size:10px;"></span> <br>
          Status<br>(0 : NotStarted / 1 : InProgress / 2 : Completed):
          <cfoutput><input id="projectStatus" name = "projectStatus" type="number" size="50" style="margin-left:1%;background-color: grey;"/></cfoutput><br>
          <span id = "spnPstatus" style="font-size:10px;"></span><br>

           <input type="submit" id="addProject" value="Add Project"  style="margin-left:45%;">
    </form>
    <form name="delProject" method="post"  action="index.cfm?event=COMPANYHOMEPAGE.delProject" style="border-style: inset; border-radius: 10px; margin:20px; padding:20px; background-color: black; color:white">
      <h3 style="margin-top: 10px;color:red;">Del Project:</h3><br>
          Project Id of the Project:
          <cfoutput><input id="project-id" name = "projectid" type="number" size="50" style="margin-left:10%; background-color: grey;"/></cfoutput><br>
          <span id = "spnPId" style="font-size:10px;"></span><br>
           <input type="submit" id="deleteProject" value="Delete Project"  style="margin-left:45%;">
    </form>
  </cfoutput>
    <div id="content_footer"></div>
    <div id="footer">
      <p><a href="index.html">Home</a> | <a href="companies.html">Companies</a> | <a href="page.html">ContactUs</a> 
      <p>Copyright &copy; IT Informator| <a href="index.cfm?event=aboutItInformator">AboutUs</a>
    </div>
  </div>
</body>
</html>
