<!DOCTYPE HTML>
<html>

<head>
  <title>User Home</title>
  <meta name="description" content="Homepage of the Signed IN Admin" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="../../includes/css/userHomePageStyle.css" />
  <script src="../../includes/js/jquery.min.js"></script>
  <script type="text/javascript" src="../../includes/js/evaluateCompanyEdit.js"></script>
</head>
<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="#">This is  <span class="logo_colour">IT Informator!</span></a></h1>
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
        </ul>
      </div>
    </div>
    <div class="formdiv" style="margin:20px; margin-left:20%; margin-right:20%; border-style: inset; border-radius: 10px;">
      <form name="profileEdit" method="post"  action="index.cfm?event=COMPANYHOMEPAGE.companyEditSave" style="margin-left:20%;">
          <label for="company-name" style= "text-align:left;">Company Name:</label>
          <cfoutput><input id="company-name" name = "companyname" type="text" size="50" value="#SESSION.validCompanyName#" style="margin-left:10%;"/></cfoutput><br>
          <span id = "spnCName" style="font-size:10px;"></span><br>

          <label for="company-Email" style= "text-align:left;">Email:</label>
          <cfoutput><input  maxlength="255" id="company-Email" name = "companyEmail" type="email" size="50" value= "#SESSION.validCompanyEmail#" style="margin-left:19%;"/></cfoutput><br>
          <span id = "spnCEmail" style="font-size:10px;"></span><br>

          <label for="turnOver" style= "text-align: left;">TurnOver:</label>
          <cfoutput><input  maxlength="255" id="turnOver" name = "turnOver" type="number" size="50" value = "#prc.companyTurnOver#" style="margin-left:16%;"/></cfoutput><br>
          <span id = "spnTurnover" style="font-size:10px;"></span><br>

          <label  for="employeeStrength" style= "text-align: left;">Employee Strength:</label>
          <cfoutput><input maxlength="255" id="employeeStrength" name = "employeeStrength" type="number" size="50" value="#prc.companyEmployeeStrength#" style="margin-left:8%;"/></cfoutput><br>
          <span id = "spnEmployeeStrength" style="font-size:10px;"></span><br>

          <label for="aboutUs" style= "text-align: left;">About Us:</label>
          <cfoutput><textarea name = "aboutUs" id="aboutUs" rows="4" cols="55" style="margin-left:16%;">#prc.companyAboutUs#</textarea></cfoutput><br>
          <span id = "spnAboutUs" style="font-size:10px;"></span> <br>

          <label for="contactUs" style= "text-align: left;">Contact Us:</label>
          <cfoutput><textarea name = "contactUs" id="contactUs" rows="4" cols="55" style="margin-left:14%;" >#prc.companyContactUs#</textarea></cfoutput><br>
          <span id = "spnContactUs" style="font-size:10px;"></span> <br>

          <input type="submit" id="saveChanges" value="SAVE CHANGES"  style="margin-left:30%;">
      </form>
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
