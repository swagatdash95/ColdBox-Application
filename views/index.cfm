<cfset VARIABLES.messages = "">
	<!--Check if there are any errorMessages-->
<cfif  structKeyExists(prc,"errormessage")>
	<cfset i = 1 >
	<cfloop array = "#prc.errormessage#" index = "message">
		<cfset VARIABLES.messages = messages &"  #i#. "&"#message#">
		<cfset i = i+1>
	</cfloop>
	<cfoutput>
		<script type = "text/javascript">
			alert("#messages#");
		</script>
	</cfoutput>
</cfif>
<!DOCTYPE html>
<!--
	Interphase by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>THE IT INFORMATOR</title>
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
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
		
	</head>
	<body class="landing">
		<!-- Header -->
			<header id="header">
				<h1>Hey Everyone!</h1>
				<nav id="nav">
					<ul>
						<li><a href="index.cfm?event=indexPage">Home</a></li>
						<li><a href="index.cfm?event=aboutItInformator">About Us</a></li>
					</ul>
				</nav>
			</header>

		<!-- Banner -->
			<section id="banner">
				<h2>THE IT INFORMATOR</h2>
				<p>Your Destination to explore the IT GIANTS!!</p>
				<ul class="actions">
					<li>
						<button type="button" class="button big" data-toggle="modal" data-target="#signInModal">Sign In</button>
						<button type="button" class="button big" data-toggle="modal" data-target="#signUpModal">Sign Up</button>
					</li>
				</ul>
				<div class="modal fade" id="signInModal" role="dialog">
					<div class="modal-dialog">
						 <div class="modal-content">
							<div class="modal-body">
								<div class="logmod__wrapper">
									<div class="logmod__container">
										<ul class="logmod__tabs">
											<li data-tabtar="lgm-2"><a href="#">Login as User</a></li>
											<li data-tabtar="lgm-1"><a href="#">Login as Company Admin</a></li>
									  	</ul>
									  	<div class="logmod__tab-wrapper">
									  		<div class="logmod__tab lgm-1">
												<div class="logmod__heading">
										  			<span class="logmod__heading-subtitle">Enter your Company details <strong>to login as Admin</strong></span>
												</div>
												<div class="logmod__form">
										  			<form class = "simform" id = "adminLogin" name = "adminLogin"
										  			 action="index.cfm?event=companySignInValidate" method = "post">
														<div class = "sminputs" >
											  				<div class="input full">
																<label class="string optional" for="admin-email" style= "text-align: left;">Email*</label>
																<input class="string optional" name = "adminEmail" maxlength="255" id="admin-email" placeholder="Email" type="email" size="50" />
																<span id = "spnAdminEmail" style="font-size:10px;"></span>
											  				</div>
														</div>
														<div class="sminputs">
											   				<div class="input full">
																<label class="string optional" for="admin-pw" style= "text-align: left;">Password *</label>
																<input class="string optional" name = "adminPassword" maxlength="255" id="admin-pw" placeholder="Password" type="password" size="50" />
																<span id = "spnAdminPassword" style="font-size:10px;"></span>
											  				</div>
														</div>
														<div class="simform__actions">
															  <input id = "adminLogIn" class="sumbit" name="commitSignin1" type="submit" value="Admin Login" />
														</div>
														<div class="logmod__alter">
															<div class="logmod__alter-container">
																<div class="connect facebook">              
																</div>
																<div class="connect googleplus">       
																</div>
															</div>
														</div>
										  			</form>
												</div> 
									  		</div>
									  		<div class="logmod__tab lgm-2">
												<div class="logmod__heading">
										  			<span class="logmod__heading-subtitle">Enter your details <strong>to sign in</strong></span>
												</div> 
												<div class="logmod__form">
										  			<form id = "userLogin" action="index.cfm?event=userSignInValidate" class="simform" method = "POST">
														<div class="sminputs">
															<div class="input full">
																<label class="string optional" for="user-name" style= "text-align: left;">Email*</label>
																<input class="string optional" name = "userEmailSignIn" maxlength="255" id="user-email" placeholder="Email" type="email" size="50" />
																<span id = "spnUserEmail" style="font-size:10px;"></span>
											  				</div>
														</div>
														<div class="sminputs">
															<div class="input full">
																<label class="string optional" for="user-pw" style= "text-align: left;">Password *</label>
																<input class="string optional" name = "userPasswordSignIn" maxlength="255" id="user-pw" placeholder="Password" type="password" size="50" />
																<span id = "spnUserPassword" style="font-size:10px;"></span>
											  				</div>
														</div>
														<div class="simform__actions">
											  				<input id = "userLogIn" class="sumbit" name="commitSignin2" type="submit" value="Log In" />
														</div> 
										 			</form>
												</div> 
												<div class="logmod__alter">
										  			<div class="logmod__alter-container">
														<div class="connect facebook">              
														</div>
														<div class="connect googleplus">       
														</div>
										 			</div>
												</div>
										  	</div>
									  	</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="signUpModal" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-body">
								<div class="logmod__wrapper">
									<div class="logmod__container">
								  		<ul class="logmod__tabs">
											<li data-tabtar="lgm-2"><a href="#">Sign Up as User</a></li>
											<li data-tabtar="lgm-1"><a href="#">Sign Up as Admin</a></li>
									 	</ul>
								 		<div class="logmod__tab-wrapper">
								  			<div class="logmod__tab lgm-1">
												<div class="logmod__heading">
									 				<span class="logmod__heading-subtitle">Enter your Company details <strong>to create an 	account</strong></span>
												</div>
											<div class="logmod__form">
									  			<cfform id = "adminSignup" accept-charset="utf-8" action="index.cfm?event=companySignUpValidate" class="simform" method = "post" enctype = "multipart/form-data">
													<div class="sminputs">
										  				<div class="input full">
															<label class="string optional" for="company-name" style= "text-align: left;">Company Name*</label>
															<input class="string optional" maxlength="255" id="company-name" name = "companyname" placeholder="Company Name" type="text" size="50" />
															<span id = "spnCName" style="font-size:10px;"></span>
										  				</div>
													</div>
													<div class="sminputs">
										  				<div class="input full">
															<label class="string optional" for="company-Email" style= "text-align: left;">Email*</label>
															<input class="string optional" maxlength="255" id="company-Email" name = "companyEmail" placeholder="Email" type="email" size="50" />
															<span id = "spnCEmail" style="font-size:10px;"></span>
										  				</div>
													</div>
													<div class="sminputs">
														<div class="input string optional">
															<label class="string optional" for="company-pw" style= "text-align: left;">Password *</label>
															<input class="string optional" maxlength="255" id="company-pw" name = "companypw" placeholder="Password" type="password" size="50" />
															<span id = "spnCPw1" style="font-size:10px;"></span>
														</div>
														<div class="input string optional">
															<label class="string optional" for="company-pw-repeat" style= "text-align: left;">Repeat password *</label>
															<input class="string optional" maxlength="255" id = "company-pw-repeat" 
															name = "companypwrepeat" placeholder="Repeat password" type="password" size="50" />
															<span id = "spnCPw2" style="font-size:10px;"></span>
										  				</div>
													</div>
													<div class="sminputs">
										  				<div class="input full">
															<label class="string optional" for="turnOver" style= "text-align: left;">TurnOver</label>
															<input class="string optional" maxlength="255" id="turnOver" name = "turnOver" placeholder="turnOver" type="number" size="50" />
															<span id = "spnTurnover" style="font-size:10px;"></span>
														</div>
													</div>
													<div class="sminputs">
										  				<div class="input full">
															<label class="string optional" for="employeeStrength" style= "text-align: left;">Employee Strength</label>
															<input class="string optional" maxlength="255" id="employeeStrength" name = "employeeStrength" placeholder="Strength" type="number" size="50" />
															<span id = "spnEmployeeStrength" style="font-size:10px;"></span>
										  				</div>
													</div>
													<div class="sminputs">
														<div class="input full">
															<label class="string optional" for="logo" style= "text-align: left;">Company Logo(JPEG)</label>
															<input class="string optional" id = "cLogo" type = "file" 
															value = "Your Company Logo" name = "cLogo">
															<span id = "spnCLogo" style="font-size:10px;"></span>
														</div>
													</div>
													<div class="simform__actions">
													  	<input id = "companySubmit" class="sumbit" name="commit1" type="submit" 
													  	value="Create Account" />
														<span class="simform__actions-sidetext">By creating an account you agree to our <a class="special" href="#" target="_blank" role="link">Terms & Privacy</a></span>
													</div>
												</cfform>
											</div> 
											<div class="logmod__alter">
												<div class="logmod__alter-container">
													<div class="connect facebook">
													</div>
													<div class="connect googleplus">
													</div>
									  			</div>
											</div>
								  		</div>
								  		<div class="logmod__tab lgm-2">
											<div class="logmod__heading">
									  			<span class="logmod__heading-subtitle">Enter your details <strong> to sign up </strong></span>
											</div> 
											<div class="logmod__form">
									  			<form id = "userSignup" accept-charset="utf-8" action="index.cfm?event=userSignUpValidate" class="simform" method = "POST" enctype = "multipart/form-data">
									  				<div class="sminputs">
										  				<div class="input full">
															<label class="string optional" for="User-name" style= "text-align: left;">Your Name*</label>
															<input class="string optional" maxlength="255" name = "userName" id="user-Name" placeholder="Name" type="text" size="50" />
															<span id = "spnUName" style="font-size:10px;"></span>
										  				</div>
													</div>
													<div class="sminputs">
													  <div class="input full">
														<label class="string optional" for="user-email" style= "text-align: left;">Email*
														</label>
														<input class="string optional" maxlength="255" name = "userEmail" id="user-emailField" placeholder="Email" type="email" size="50" />
														<span id = "spnUEmail" style="font-size:10px;"></span>
													  </div>
													</div>
													<div class="sminputs">
										  				<div class="input string optional">
															<label class="string optional" for="user-password" style= "text-align: left;">Password *
															</label>
															<input class="string optional" maxlength="255" name = "userPassword" id="user-password" placeholder="Password" type="password" size="50" />
															<span id = "spnUPw1" style="font-size:10px;"></span>
										  				</div>
										  				<div class="input string optional">
															<label class="string optional" for="user-pw-repeat" style= "text-align: left;">Repeat password *</label>
															<input class="string optional" maxlength="255" id="user-pw-repeat" name = "userPasswordRepeat" placeholder="Repeat password" type="password" size="50" />
															<span id = "spnUPw2" style="font-size:10px;"></span>
										  				</div>
													</div>
													<div class="sminputs">
										  				<div class="input full">
															<label class="string optional" for="uPhoto" style= "text-align: left;">Your Photo(JPEG)</label>
															<input class="string optional" id = "uPhoto" type = "file" value = "Your Photo" name = "userPhoto">
															<span id = "spnUPhoto" style="font-size:10px;"></span>
														</div>
													</div>
													<div class="simform__actions">
													  	<input id = "userSubmit" class="sumbit" name="commit2" type="submit" 
													  	value="Create Account" />
														<span class="simform__actions-sidetext">By creating an account you agree to our <a class="special" href="#" target="_blank" role="link">Terms & Privacy</a></span>
													</div>
									  			</form>
											</div> 
											<div class="logmod__alter">
									 			 <div class="logmod__alter-container">
													<div class="connect facebook">
										  			</div>
													<div class="connect googleplus">
										 			</div>
									  			</div>
											</div>
									 	</div>
								 	</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

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