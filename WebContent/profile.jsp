<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile</title>
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
<<%--  jsp:include page="${contextPath}/resources/js/navbar.jsp"></jsp:include>--%>
</body>
</html>