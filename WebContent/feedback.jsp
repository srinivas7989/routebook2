<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>feedback</title>
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
</head>
<body>
<jsp:include page="${request.contextPath}/newItem"></jsp:include>

<!-- navbar -->	
<form:form action="${contextPath}/feedback" method="get" modelAttribute="feedback" >
	
	<div class="jumbotron" >
	<h2 align="center"><b>Contact Us</b></h2>
	
	<div class="row">
	<div class="col-4"></div>
	<div class="col-4">
	<form:label path="username">name
 	<form:input  type="text" id="username" path="username"/>
 	<form:errors path="username" />
 	</form:label>
 	</div>
	<div class="col-4"></div>
	</div>
	</div>
</form:form>

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