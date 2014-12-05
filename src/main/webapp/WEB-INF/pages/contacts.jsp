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

      <div class="page-header">
        <h1>Contact List</h1>
      </div>

    </div>
    
    <div class="container">
		    <table class="table table-hover">
		    	<thead>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Phone</th>
						<th>&nbsp;</th>
						<th>&nbsp;</th>
					</tr>
	            </thead>
				<c:forEach var="item" items="${identityList}">
				    <tr class="selectedRow">

	    				<form:form id="registerForm" modelAttribute="identity" method="post"
		   				action="update">
							<td>
								<form:input path="id" value="${item.id}" type="hidden" />
							<form:input path="firstName" value="${item.firstName}" class="editField"/>
								<div class="listText">		      		
									<c:out value="${item.firstName}"/>
								</div>
							</td>
							<td>
								<form:input path="lastName" value="${item.lastName}" class="editField"/>
								<div class="listText">		      		
									<c:out value="${item.lastName}"/>
								</div>
							</td>
							<td>
								<form:input path="phone" value="${item.phone}" class="editField"/>
								<div class="listText">		      		
									<c:out value="${item.phone}"/>
								</div>
							</td>
							<td class="text-right">
								<input type="submit" class="btn btn-success saveEditButton" value="Save" />
								<button type="button" class="btn btn-warning editButton" onClick="editRow(this)">Edit</button>
							</td>
							  <td><a href="delete?id=${item.id}"><button type="button" class="btn btn-danger">Delete</button></a></td>

						</form:form>
				    </tr>
				</c:forEach>
			</table>
	</div>
	
	<div id="newUserLink" class="container">
		<p><button type="button" class="btn btn-lg btn-info">+ New User</button></p>
	</div>
	
	<div id="newUserBlock" class="container">
		
		<table class="table table-hover">
			<tr class="selectedRow">

				<c:url var="userRegistration" value="saveUser.html" />
		  		<form:form id="registerForm" modelAttribute="identity" method="post"
		   		action="insert">
					<td>
						<form:input path="firstName" placeholder="First Name"/>
					</td>
					<td>
						<form:input path="lastName" placeholder="Last Name"/>
					</td>
					<td>
						<form:input path="phone" placeholder="Phone"/>
					</td>
					<td>
						<input type="submit" class="btn btn-success" value="Save" />
					</td>
					  <td><button type="button" class="btn btn-danger cancelAction">Cancel</button></td>

				</form:form>
			</tr>
		</table>
	</div>
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	
	<script>
	$(document).ready(function() {
	    $('#newUserLink').click(function() {
	            $('#newUserBlock').slideDown('slow');
	    });

	    $('.cancelAction').click(function() {
	            $('#newUserBlock').hide();
	    });
	});
	
    function editRow(id) {
    	$(id).closest('tr').find('.editField').toggle();
    	$(id).closest('tr').find('.listText').toggle();
    	$(id).closest('tr').find('.editButton').toggle();
    	$(id).closest('tr').find('.saveEditButton').toggle();
    }
	</script>
</body>
</html>