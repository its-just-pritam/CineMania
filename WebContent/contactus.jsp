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
					<li><a href="#">Contact Us</a></li>
					<li><a href="CMmanual.pdf" target="_blank">Manual</a></li>
					<li><a id="login-checker" href="./ProfileServlet">Profile</a></li>
					<li><a href="index.jsp">Home</a></li>
				</ul>
				<p id="logo-name">CineMania</p>
			</nav>
		</div>
	</header>
	<div class="tm-contactus">

		<div id="social-media" align="center">
		
			<table>
				<tr>
					<td class="social-media-logo">
						<img src="images/facebook.png" height="100px">
					</td>
					<td class="social-media-logo">
						<img src="images/linkedin.png" height="100px">
					</td>
					<td class="social-media-logo">
						<img src="images/gmail.png" height="100px">
					</td>
					<td class="social-media-logo">
						<img src="images/whatsapp.png" height="100px">
					</td>
					<td class="social-media-logo">
						<img src="images/instagram.png" height="100px">
					</td>
				</tr>

				<tr id="social-media-link">
					<td>
						<a href="https://www.facebook.com/pritam.mallick.1401" target="_blank">Facebook</a>
					</td>
					<td>
						<a href="https://www.linkedin.com/in/pritam-mallick-0a35521a2/" target="_blank">LinkedIn</a>
					</td>
					<td>
						<a href="mailto:sritam.mallick@gmail.com?subject=Contact through CineMaina" target="_blank">Gmail</a>
					</td>
					<td>
						<a href="https://api.whatsapp.com/send?phone==918967634311" target="_blank">Whatsapp</a>
					</td>
					<td>
						<a href="https://www.instagram.com/_towlschii_/" target="_blank">Instagram</a>
					</td>
				</tr>
				<!--<li>
					<section class="social-media-logo">
						<img src="images/facebook.png" height="100px"><br><br>
						<a href="https://www.facebook.com/pritam.mallick.1401" target="_blank">Facebook</a>
					</section>
				</li>

				<li>
					<section class="social-media-logo">
						<img src="images/linkedin.png" height="100px"><br><br>
						<a href="https://www.linkedin.com/in/pritam-mallick-0a35521a2/" target="_blank">LinkedIn</a>
					</section>
				</li>

				<li>
					<section class="social-media-logo">
						<img src="images/gmail.png" height="100px"><br><br>
						<a href="mailto:sritam.mallick@gmail.com?subject=Contact through CineMaina" target="_blank">Gmail</a>
					</section>
				</li>

				<li>
					<section class="social-media-logo">
						<img src="images/whatsapp.png" height="100px"><br><br>
						<a href="https://api.whatsapp.com/send?phone==918967634311" target="_blank">Whatsapp</a>
					</section>
				</li>

				<li>
					<section class="social-media-logo">
						<img src="images/instagram.png" height="100px"><br><br>
						<a href="https://www.instagram.com/_towlschii_/" target="_blank">Instagram</a>
					</section>
				</li>-->
			</table>

		</div>
		
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