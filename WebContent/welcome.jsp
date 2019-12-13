<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>welcome</title>
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
<!-- background image -->
<style>
body {
	background-image: url("${contextPath}/resources/img/img-1.jpg");
}
</style>
<link rel="stylesheet" href="${contextPath}/resources/css/style.css">
</head>
<body>

	<jsp:include page="${request.contextPath}/newItem"></jsp:include>
	

		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div class="row">
			<div class="col-3"></div>

			<div class="card.card-image-overlay">

				<div class="card-body">
					<form method="get" action="${contextPath}/search" >
						<div class="row">
							<div class="col">
								<input type="text" class="form-control" id="ip1"
									placeholder="from...." name="routeFrom"></input>
							</div>
							<div class="col">
								<input type="text" class="form-control" id="ip1"
									placeholder="to...." name="routeTo"></input>
							</div>
							<div class="col">
								<select name="wayOfTravel" id="ip2" class="text-dark">
									<option value=""  disabled selected hidden>Way to
										travel</option>
									<option value="By car" >by car</option>
									<option value="On Walk">On Walk</option>
									<option value="Public transport">Public transport</option>
								</select>
							</div>
							<div class="col">
								<button type="submit" class="button" >Search</button>
							</div>
						</div>
					
					<div class="col-3"></div>
					</form>
				</div>
			</div>
		</div>
	<!-- ============================================================= -->
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
