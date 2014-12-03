<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/starter-template.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>

  <c:url var="userRegistration" value="saveUser.html" />
  <form:form id="registerForm" modelAttribute="identity" method="post"
   action="insert">
   <table width="400px" height="150px">
    <tr>
     <td><form:label path="firstName">First Name</form:label>
     </td>
     <td><form:input path="firstName" />
     </td>
    </tr>
    <tr>
     <td><form:label path="lastName">Last Name</form:label>
     </td>
     <td><form:input path="lastName" />
     </td>
    </tr>
    <tr>
     <td><form:label path="phone">Phone</form:label>
     </td>
     <td><form:input path="phone" />
     </td>
    </tr>
    <tr>
     <td></td>
     <td><input type="submit" value="Register" /></td>
    </tr>
   </table>
  </form:form>


  <a href="contacts">Click Here to see User List</a>
 </center>
 
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>