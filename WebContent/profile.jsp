<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>CineMania</title>
	<link rel="shortcut icon" type="image/x-icon" href="images/logo.png">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link href="https://fonts.googleapis.com/css?family=Dosis:800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Varela+Round&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
</head>
<body>
	<header class="tm-header">
		<div class="tm-container">
		<img id="tm-logo" src="images/logo.png" height="55">
			<nav class="tm-nav">
				<ul>
					<li><a href="contactus.jsp">Contact Us</a></li>
					<li><a href="CMmanual.pdf" target="_blank">Manual</a></li>
					<li><a href="#">Profile</a></li>
					<li><a href="index.jsp">Home</a></li>
				</ul>
				<p id="logo-name">CineMania</p>
			</nav>
		</div>
	</header>
	<div class="tm-profile">

		<!--<section>
			<img id="tm-home-illu" src="images/home.png" width="1200px">
		</section>-->

		<div id="tm-login" align="center">
			<form action="loginRegister" method="post" onsubmit="return login_validator();">
			<!--	<label for="name">Name :</label>
				<input type="text" name="name" id="name">-->
				<table>
					<tr>
						<td class="tm-label">
							Username :
						</td>
						<td>
							<input type="text" name="username" id="tm-username" placeholder="abc1234@#">
						</td>
					</tr>

					<tr>
						<td class="tm-label">
							Password :
						</td>
						<td>
							<input type="password" name="password" id="tm-password">
						</td>
					</tr>

					<tr>
						<td class="tm-profile-button">		
							<input type="submit" name="submit" value="LOG IN" class="profile-btn">
						</td>
						<td align="center">
							<a id="tm-reg_link" href="#tm-register">REGISTER</a>
						</td>
					</tr>
				</table>
				
			</form>
		</div>
		
		<br><br>
		
		<!--<section style="color:red; text-align:center; font-size:30px; font-family:Nunito">${message}</section>-->

		<br><br><br><br><br><br><br>


		<div id="tm-register" align="center" onsubmit="return register_validator();">
			<form action="loginRegister" method="post">

				<table>
					<tr>
						<td class="tm-label">
							Name :
						</td>
						<td>
							<input type="text" name="name" id="tm-name" placeholder="Pritam Mallick">
						</td>
					</tr>


					<tr>
						<td class="tm-label">
							Username :
						</td>
						<td>
							<input type="text" name="username" id="tm-username" placeholder="abc1234@#">
						</td>
					</tr>

					<tr>
						<td class="tm-label">
							Password :
						</td>
						<td>
							<input type="password" name="password" id="tm-password">
						</td>
					</tr>

					<tr>
						<td class="tm-label">
							Re-Password :
						</td>
						<td>
							<input type="password" name="re_password" id="tm-password">
						</td>
					</tr>

					<tr>
						<td class="tm-profile-button">
							<input type="submit" name="submit" value="SUBMIT" class="profile-btn">
						</td>
						<td>
							
						</td>
					</tr>
				</table>

			</form>
		</div>
		
	<!--	<section style="color:green; text-align:center; font-size:30px; font-family:Nunito">${successMessage}</section>
		<section style="color:red; text-align:center; font-size:30px; font-family:Nunito">${errorMessage}</section>-->
		
	</div>


	<footer class="tm-footer">
		<div align="center">
			<audio controls loop>
			  <source src="midnight_aura.mp3" type="audio/mpeg">
			</audio>
		</div>
		&copy; Copyright Pritam Mallick 2020
	</footer>

	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="js/test.js"></script>
	
</body>
</html>