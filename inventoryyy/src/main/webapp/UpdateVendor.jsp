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
<jsp:useBean id="dao" class="com.infinite.inventoryyy.InventoryDAO"></jsp:useBean>
	<c:if test="${param.vendorid != null }">
		<c:set var="vendor" value="${dao.search(param.vendorid) }" />
		<form>
			VendorId:
			<input name="vendorid" value="${param.vendorid }" readonly><br>
			vendor Name:
			<input name="vendorname" type="text" value="${vendor.vendorname }"><br>
			vendor Phone Number:
			<input name="vendorPhoneNo" type="text" value="${vendor.vendorPhoneNo }" ><br>
			vendor address1:
			<input name="address1" type="text" value="${vendor.address1}" ><br>
			vendor address2:
			<input name="address2" type="text" value="${vendor.address2}" ><br>
			vendor zipcode:
			<input name="zipCode" type="text" value="${vendor.zipCode }" ><br>
			vendor city:
			<input name="city" type="text" value="${vendor.city}"><br>

			<input type=submit>
		</form>	
	</c:if>
	<c:if test="${param.vendorid != null && param.vendorname != null }">
		<jsp:useBean id="vendor" class="com.infinite.inventoryyy.Vendor"/>
		<jsp:setProperty property="*" name="vendor"/>
		
		<c:out value="${dao.update(vendor)}"/>
	</c:if>
</body>
</html>