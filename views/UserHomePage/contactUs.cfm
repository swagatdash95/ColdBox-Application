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
          <h1><a href="#">This is  <span class="logo_colour">IT Informator!</span></a></h1>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="index.cfm?event=USERHOMEPAGE.userhomepage">Home</a></li>
          <li><a href="index.cfm?event=USERHOMEPAGE.getCompanies">Companies</a></li>
          <li><a href="index.cfm?event=USERHOMEPAGE.getUserProfile">My Profile</a></li>
          <li class="selected"><a href="index.cfm?event=USERHOMEPAGE.companyContact">Contact Us</a></li>
           <li><a href="index.cfm?event=logOut">Logout</a></li>
        </ul>
      </div>
    </div>
    <div style="background-color: black; color: white; height: 400px">
      <p style="font-size: 40px;"> IT Informator </p>
      <p style="font-size: 20px; color:grey;">10th Floor, IT Park <br> New Delhi, <br> 880001 <br>  Ph: +91-1800-189-919 <br>  Email-ID: itinformator@gmail.com</p>
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
