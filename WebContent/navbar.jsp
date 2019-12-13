<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<img src="https://img.icons8.com/ios-filled/50/000000/navigation.png">
		<a class="navbar" href="welcome"><h2>
				<b><span style="color: blue">Route</span>Book</b>
			</h2></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav" href="#">&emsp;&emsp;Search
						on map </a></li>
				<li class="nav-item"><a class="nav" href="feedback">&emsp;&emsp;FeedBack</a>
				</li>
				<li class="nav-item"><a class="nav" href="#">&emsp;&emsp;Blog</a>
				</li>
			</ul>
		</div>
		<div class="right-side">
			<div class="row">
				<div class="col"></div>
				<div class="col">
					<a><img
						src="https://img.icons8.com/color/30/000000/user-male-circle.png"></a>

					<button class="btn btn-outline-dark dropdown-toggle btn-lg"
						type="button" id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						${pageContext.request.userPrincipal.name}</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="profile">My profile</a> <a
							class="dropdown-item" href="favorite">My favorite</a> <a
							class="dropdown-item" href="routeList">my routes</a><a 
							class="dropdown-item" onclick="document.forms['logoutForm'].submit()">Logout</a>
					</div>
					<a href="addRoute"><button type="button"
							class="btn  btn-outline-dark btn-lg">
							Add Route &emsp;<img
								src="https://img.icons8.com/material-outlined/16/000000/plus.png">
						</button></a>
				</div>
			</div>
		</div>

	</nav>
</body>
</html>