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
<form action="AddVendor.jsp">
	
	vendor name:
	<input type="text" name="vendorname"/><br>
	vendor Phone no.:
	<input type="text" name="vendorphoneno"/><br>
	Address1:
	<input type="text" name="address1"/><br>
	address2:
	<input type="text" name="address2"/><br>
	city:
	<input type="text" name="city"/><br>
	zipcode:
	<input type="text" name="zipCode"/><br>
	<input type="submit">
	

</form>
  <c:if test="${param.zipCode!= null }">
    <jsp:useBean id="beanStock" class="com.infinite.inventoryyy.Vendor" />
    <jsp:setProperty property="*" name="beanStock"/>
    <jsp:useBean id="beanDao" class="com.infinite.inventoryyy.InventoryDAO"/>
   
    <c:out value="${beanDao.addVendor(beanStock)}"/>
</c:if>
</body>
</html>