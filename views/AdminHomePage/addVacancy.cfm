<!DOCTYPE HTML>
<html>
<head>
  <title>User Home</title>
  <meta name="description" content="Homepage of the Signed IN users" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="../../includes/css/userHomePageStyle.css" />
  <script src="../../includes/js/jquery.min.js"></script>
  <script type="text/javascript" src="../../includes/js/addVacancyEvaluate.js"></script>
  <script type="text/javascript" src="../../includes/js/delVacancyEvaluate.js"></script>
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
          <li class="selected"><a href="index.cfm?event=COMPANYHOMEPAGE.viewVacancy">Add/Del Vacancy</a></li>
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
          <cfloop index="i" from="1" to="#arrayLen(prc.jobName)#"> 
            <div id = holder style="padding:10px; margin:10px; height:150px;">
              <p style= "font-size: 20px;">
                <cfoutput>Job ID: #prc.jobIds[i]#</cfoutput><br>
                <cfoutput>#prc.jobName[i]#</cfoutput><br>
                <cfoutput>#prc.details[i]#</cfoutput><br>
                <cfoutput>#prc.companyLinks[i]#</cfoutput><br>
              </p>
            </div>
          </cfloop> 
        <cfelse>
              <p style= "font-size: 30px;">
                No Active Vacancies Available!
              </p>
        </cfif> 
      </div>
    </div>
    <cfoutput>
    <form name="addVacancy" method="post"  action="index.cfm?event=COMPANYHOMEPAGE.addVacancy" style="border-style: inset; border-radius: 10px; margin:20px; padding:20px; background-color: black; color:white">
      <h3 style="margin-top: 10px;color:red;">Add Vacancy:</h3><br>
          Job Name:
          <cfoutput><input id="job-name" name = "jobname" type="text" size="50" style="margin-left:10%; background-color: grey;"/></cfoutput><br>
          <span id = "spnJName" style="font-size:10px;"></span><br>
          Details : 
          <cfoutput><textarea name = "details" id="details" rows="4" cols="100" style="margin-left:11%;background-color: grey;" ></textarea></cfoutput>
          <br>
          <span id = "spnJDetails" style="font-size:10px;"></span> <br>
          Link:
          <cfoutput><input id="company-Link" name = "companyLink" type="text" size="50" style="margin-left:13%;background-color: grey;"/></cfoutput><br>
          <span id = "spnCLink" style="font-size:10px;"></span><br>

           <input type="submit" id="addVacancy" value="Add Vacancy"  style="margin-left:45%;">
    </form>
    <form name="delVacancy" method="post"  action="index.cfm?event=COMPANYHOMEPAGE.delVacancy" style="border-style: inset; border-radius: 10px; margin:20px; padding:20px; background-color: black; color:white">
      <h3 style="margin-top: 10px;color:red;">Del Vacancy:</h3><br>
          Job Id of the Job:
          <cfoutput><input id="job-id" name = "jobid" type="number" size="50" style="margin-left:10%; background-color: grey;"/></cfoutput><br>
          <span id = "spnJId" style="font-size:10px;"></span><br>
           <input type="submit" id="deleteVacancy" value="Delete Vacancy"  style="margin-left:45%;">
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
