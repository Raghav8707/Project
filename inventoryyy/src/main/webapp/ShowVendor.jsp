<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
		<jsp:useBean id="beanDAO" class="com.infinite.inventoryyy.InventoryDAO"/>
		
		<table border="3">
		<tr>
		<th>VendorId</th>
		<th>Vendor Name</th>
		<th>VendorPhoneNo.</th>
		<th>Address1</th>
		<th>Address2</th>
		<th>City</th>
		<th>Zipcode</th>
		<th>Update</th>
		</tr>
		<c:forEach var="ven" items="${beanDAO.showVendor()}">
		<tr>
		<td>${ven.vendorid}</td>
		<td>${ven.vendorname}</td>
		<td>${ven.vendorPhoneNo}</td>
		<td>${ven.address1}</td>
		<td>${ven.address2}</td>
		<td>${ven.city}</td>
		<td>${ven.zipCode}</td>
		<td><a href="UpdateVendor.jsp?vendorid=${ven.getVendorid() }"><button>UPDATE</button></a></td>	
		</tr>		
		</c:forEach>
		</table>
		
	
</body>
</html>