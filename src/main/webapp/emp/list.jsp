<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "emp.dao.*" %>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%-- <%@ taglib prefix='my' tagdir="/WEB-INF/tags" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- taglib 폴더 생성 방법 
페이징: <my:paging />
<br>
로그인: <my:login /> --%>

<c:forEach var="emp" items="${list }">
	이름: ${emp.first_name } ${emp.last_name }<br>
	급여: ${emp.salary }<br>
	<%-- <fmt:formatDate value="${emp.hire_date }" dateStyle="long"/><br> --%>
	<fmt:formatDate value="${emp.hire_date }" pattern="yyyy-MM"/><br>
</c:forEach>
<hr>
이름: <%= ((ArrayList<EmpVO>)request.getAttribute("list")).get(0).getFirst_name() %>
<hr>
이름: ${requestScope.list[0].getFirst_name() }
<!-- requestScope 생략 가능 -->
<hr>
컨텍스트(어플이름): ${pageContext.request.contextPath }

</body>
</html>