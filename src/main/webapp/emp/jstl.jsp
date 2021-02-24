<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl 태그 정리</title>
</head>
<body>
<c:forTokens items="s,r,a" delims="," var="hobby">
	${hobby }<br>
</c:forTokens>
<c:set var="sum" value="0" ></c:set>
<c:forEach var="i" begin="1" end="10" step="1">
	<c:set var="sum" value="${sum+i }" />
</c:forEach>
${sum }
</body>
</html>
