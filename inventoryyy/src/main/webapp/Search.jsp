<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Search.jsp">
	
	vendor id:
	<input type="text" name="vendorid"/><br>
	<input type="submit"/>
	</form>
	  <c:if test="${param.vendorid!= null }">
    <jsp:useBean id="beanStock" class="com.infinite.inventoryyy.Vendor" />
    <jsp:setProperty property="*" name="beanStock"/>
    <jsp:useBean id="beanDao" class="com.infinite.inventoryyy.InventoryDAO"/>
   
    <c:out value="${beanDao.search(param.vendorid)}"/>
</c:if>

</body>
</html>