<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*" %>
<title>IAMWeb</title>
</head>
<body>


<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">IAMWeb</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="login?logout">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    
    <div class="container">

      <div class="starter-template">
        <h1>Contacts</h1>
      </div>

    </div>
    
    <div class="container">
	    <table class="table table-hover">
			<c:forEach var="item" items="${identityList}">
			    <tr>
			      <td><c:out value="${item.firstName}" />
			      </td>
			      <td><c:out value="${item.lastName}" />
			      </td>
			      <td><c:out value="${item.phone}" />
			      </td>
			      <td><a href="edit?id=${item.id}">Edit</a></td>  
     			  <td><a href="delete?id=${item.id}">Delete</a></td>
			    </tr>
			</c:forEach>
		</table>
	</div>
	
	<div id="newUserLink" class="container">
		<h1>New User</h1>
	</div>
	
	<div id="newUserBlock" class="container">
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
		 </center>
	</div>
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	
	<script>
	$(document).ready(function() {
	    $('#newUserLink').click(function() {
	            $('#newUserBlock').slideDown('slow');
	    });
	});
	</script>
</body>
</html>