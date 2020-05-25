<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>CineMania</title>
	<link rel="shortcut icon" type="image/x-icon" href="images/logo.png">
	<link rel="stylesheet" type="text/css" href="css/main.css"> 
	<link rel="stylesheet" type="text/css" href="fontawesome-free-5.13.0-web/css/all.css">
	<link href="https://fonts.googleapis.com/css?family=Dosis:800&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Varela+Round&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Patua+One&family=Poiret+One&display=swap" rel="stylesheet">
</head>
<body>
	<header class="tm-header">
		<div class="tm-container">
		<img id="tm-logo" src="images/logo.png" height="55">
			<nav class="tm-nav">
				<ul>
					<li><a href="contactus.jsp">Contact Us</a></li>
					<li><a href="CMmanual.pdf" target="_blank">Manual</a></li>
					<li><a href="Cine_Mania/WebContent/CMmanual.pdf">Profile</a></li>
					<li><a href="index.jsp">Home</a></li>
				</ul>
				<p id="logo-name">CineMania</p>
			</nav>
		</div>
	</header>
	<div class="tm-container">

		<div id="tm-user-profile">

			<section class="tm-profile-header">
				
				<div class="profile-img">
					<img src="${avatar}" height="300px">
				</div>

				<div class="tm-profile-info">
					
					<h2 id="tm-profile-name">${name}</h2>
					<h3 id="tm-profile-username">${username}</h3>

				</div>

				<div class="tm-profile-option">
					
						<div id="profile-notif">
							<i class="fa fa-bell"></i>
							<span class="alert-msg">0</span>
						</div>
					

				</div>

			</section>

			<section class="tm-profile-body">
				
				<div class="profile-body-nav">
					
					<ul>
						
						<li onclick="tabs(0)" class="user-status active">STATUS</li>
						<li onclick="tabs(1)" class="user-chat">CHAT</li>
						<li onclick="tabs(2)" class="user-settings">SETTINGS</li>

					</ul>

				</div>

			</section>

			<div class="body-nav-content tab">
				<section id="settings-status">
					<h2>STATUS</h2>
				
					<p class="status-data" style = "font-size: 40px;color: #E8F9F8;margin: 20px;font-family: 'Varela Round', Arial Rounded MT;">Total Score : 0</p>
					<p class="status-data" style = "font-size: 40px;color: #E8F9F8;margin: 20px;font-family: 'Varela Round', Arial Rounded MT;">Total Wins : 0</p>
					<p class="status-data" style = "font-size: 40px;color: #E8F9F8;margin: 20px;font-family: 'Varela Round', Arial Rounded MT;">Total Loses : 0</p>
					
				</section>
			</div>

			<div class="body-nav-content tab">
				<section id="settings-chat">
					<h2>CHAT</h2>
				
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				</section>
			</div>

			<div class="body-nav-content tab">
				<section id="settings-avatars">
					<h2>AVATARS</h2>
						<table id="avatar-table">
							<tr>
								<td>
									<img class="avatar-options" width="200px" src="images/Avatars_blue.png">
								</td>
								<td>
									<img class="avatar-options" width="200px" src="images/Avatars_red.png">
								</td>
								<td>
									<img class="avatar-options" width="200px" src="images/Avatars_green.png">
								</td>
							</tr>
						</table>
						<form action="ProfileSettings" method="post">
							<input type="text" name="my_avatar" id="avatar-input" value="${avatar}">
							<input type="submit" name="submit" value="SAVE" class="profile-btn">
						</form>
				</section>
			</div>
			
		</div>
		
		<div class="tm-button">
		<a href="./LogoutServlet">
			<button type="button" value="LOG OUT" class="btn btn1">
				LOG OUT
			</button>
		</a>
		</div>
		
		<br><br><br>
		
		<div class="tm-button">
		<a href="confirmDeletion.jsp">
			<button type="button" value="DELETE PROFILE" class="btn btn1">
				DELETE PROFILE
			</button>
		</a>
		</div>
		
	</div>


	<footer class="tm-footer">
		<div align="center">
			<audio controls autoplay loop>
			  <source src="midnight_aura.mp3" type="audio/mpeg">
			</audio>
		</div>
		&copy; Copyright Pritam Mallick 2020
	</footer>

	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="js/test.js"></script>
	
</body>
</html>