<!--
Author: Swagat Dash
Date of creation: 26-6-17
Description: This is the thankYou page of this Project.Whenever a User registers with the website, This page is whre he is redirected to.
This displays a Thank You message and again the Button redirects to The signIn page.
-->
<cfset SESSION.Key = #randRange(999,9999)# > 
<cfmail from="swagatdmindfire@gmail.com" to="#FORM.companyEmail#" subject="Key from ITInformator" type="html">
   <html>
        <head>
           <style type="text/css">
           body { 
	           font-family:sans-serif;
	           font-size:12px;
	           color:navy;
           }
           </style>
        </head>
        <body>
           <p>Hello,</p>
           <p>This is the secret Key for your Registration!</p>
           <p>#SESSION.Key#</p>
       </body>
   </html>
</cfmail>

<!DOCTYPE html>
<!--
	Interphase by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Thank You!!</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
				<noscript>
			<link rel="stylesheet" href="../includes/css/skel.css" />
			<link rel="stylesheet" href="/../../includes/css/style.css" />
			<link rel="stylesheet" href="../includes/css/style-xlarge.css" />
		</noscript>

		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="../includes/js/jquery.min.js"></script>
		<script src="../includes/js/skel.min.js"></script>
		<script src="../includes/js/skel-layers.min.js"></script>
		<script src="../includes/js/init.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
		<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="../includes/css/style1.css">
		<script type="text/javascript" src="../includes/js/companyAdminMailValidate.js"></script>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body class="landing">
		<!-- Header -->
			<header id="header">
				<h1>IT Informator</h1>
			</header>

		<!-- Banner -->
			<section id="banner">
				<h2>Thank you User for Registering! Please Verify yourself</h2>
				<p>Enter the Secret code sent to your mail.</p>
				<ul class="actions">
					<li>
						<cfform name="emailForm" method="post" class="simform" action="index.cfm?event=companyEmailValidate">
							<div class="sminputs">
								<div class="input full">
									<label class="string optional" for="secretKey" style= "text-align: left;">Your Key:</label>
									<input class="string optional" maxlength="255" id="secretKey" name = "secretKey" placeholder="Your-Key" type="number" size="50" />
									<span id = "spnKeyInput" style="font-size:10px;"></span>
								</div>
							</div>
							<input id = "keySubmit" class="sumbit" name="commit" type="submit" value="SubmitKey" />
						</cfform>
					</li>
				</ul>
			</section>

		<!-- One -->
			
		<!-- Footer -->
			<footer id="footer">
			<div class="container">
				<div class="row">
					<section class="4u$ 12u$(medium) 12u$(small)">
						<h3>Contact Us</h3>
						<ul class="icons">
							<li><a href="#" class="icon rounded fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon rounded fa-google-plus"><span class="label">Google+</span></a></li>
							<li><a href="#" class="icon rounded fa-linkedin"><span class="label">LinkedIn</span></a></li>
						</ul>
						<ul class="tabular">
							<li>
								<h3>Address</h3>
								The Cyber Hub<br>
								New Delhi, India
							</li>
							<li>
								<h3>Mail</h3>
								theitinformator@gmail.com
							</li>
							<li>
								<h3>Phone</h3>
								+1425-827-4808
							</li>
						</ul>
					</section>
				</div>
				<ul class="copyright">
					<li>&copy; Untitled. All rights reserved.</li>
				</ul>
			</div>
		</footer>
		<script src="../includes/js/index.js"></script>
		<script src="../includes/js/evaluateUser.js"></script>
		<script src="../includes/js/evaluateCompany.js"></script>
		<script src="../includes/js/signInValidate.js"></script>

	</body>
</html>