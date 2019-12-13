<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Route</title>
<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- bootstrap links -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!--  CSS LINK -->
<link rel="stylesheet"
	href="https://routbook.com/themes/routbook/assets/css/style.css">
<link rel="stylesheet"
	href="https://routbook.com/themes/routbook/assets/css/custom.css">
<link rel="stylesheet"
	href="https://routbook.com/themes/routbook/assets/css/colors/blue.css"
	id="colors">
	
<link rel="stylesheet" href="${contextPath}/resources/css/style.css">
<!-- background color -->
<style type="text/css">
body{ 
/*background-color: #b8003d;
background-image: url(http://www.transparenttextures.com/patterns/cartographer.png);*/
/* This is mostly intended for prototyping; please download the pattern and re-host for production environments. Thank you! */

background-image: url("${contextPath}/resources/img/img-1.jpg");
}
</style>

</head>
<body>
	<!-- <form action="${contextPath}/${pageContext.request.userPrincipal.name}/add?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">	 -->
	<form action="${contextPath}/${pageContext.request.userPrincipal.name}/add?${_csrf.parameterName}=${_csrf.token}" 
method="post" enctype="multipart/form-data">

<!-- nav bar -->	
	<jsp:include page="${request.contextPath}/newItem"></jsp:include>

	<div class="row">
		<div class="col-2"></div>
			<div class="col-8">
			<div class="card">
  			<div class="card-header"><h1><b>
			Add route </b></h1></div><br>
			<div class="card-body">
			route name :<br> 
			<input type="text" name="routeName" value="" /> <br> 
			category:<br> 
			<input type="text" name="wayOfTravel" value="" /><br><br> 
			kaywords:<br> 
			<input type="text" name="keywords" value="" /><br><br> 
			</div></div>
			<br><br>
			
			<div class="card">
				<div class="card-header"><b>
			Tell us about this route	</b><br> </div>
  					<div class="card-body">
			<textarea rows="5" cols="">
			
			</textarea>
			</div></div> 
			<br><br>
			
			<div class="card">
			<div class="card-header">
			<b>Route</b>
			</div>
			<div class="card-body">
			from:<br> 
			<input type="text" name="routeFrom" value="" /><br><br> 
			to:<br> 
			<input type="text" name="routeTo" value="" /><br><br> 
			</div></div>
			<br><br>
			<div class="card">
			<div class="card-header">
			<b>Interesting places</b>
			</div>
			<div class="card-body">
			location:<br> 
			<input type="text" name="location" value="" /><br><br> 
			place name:<br> 
			<input type="text" name="placeName" value="" /><br><br> 
			tell about this place :<br> 
			<input type="text" name="aboutThisPlace" value="" /><br><br> 
			Upload image:<br>
			<input type="file" name="file" /><br><br>
			</div>
			</div>
			<br><br><br><br>
			<input type="submit">
			
			</div>
		<div class="col-2"></div>
			</div>
		
	</form>
	<!-- ============================================================================= -->
	<div class="container">

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<form id="logoutForm" method="POST" action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
			<!-- 
        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2> -->
		</c:if>
		<nav class="navbar navbar-dark default-color"></nav>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>