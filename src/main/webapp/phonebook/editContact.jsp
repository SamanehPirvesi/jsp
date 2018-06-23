<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<jsp:useBean id="user" class="com.example.model.User" scope="session"></jsp:useBean>
		<% long id =  Long.parseLong(request.getParameter("contactid"));
	request.setAttribute("contactid", id);
	
	%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../layout/header.jsp"></jsp:include>
<body>

<div id="wrapper">

<jsp:include page="../layout/sidebar.jsp"></jsp:include>
<!-- Page Content -->
<div class="container-fluid">
<div id="page-wrapper">
<div class="row">
<div class="col-lg-12">
<h1 class="page-header">Edit Contact</h1>
</div>
<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
<div class="col-lg-12">
<div class="panel panel-default">
<div class="panel-heading">Change Contact Information</div>
<div class="panel-body">
<div class="row">
<div class="col-lg-6">
<form role="form" action="../controller/doEditContact.jsp" method="post">
<div class="form-group">

<input type="hidden" name="contactid" value="${contactid}"/>
<!-- <label>New Contact Name</label> <input class="form-control" name="name" placeholder="Enter new name" > -->

</div>
<div class="form-group">
<label>New phone_number</label> <input class="form-control"	placeholder="Enter new phone number" name="tellnumber">
</div>
<button type="submit" class="btn btn-default">Edit</button>
<button type="reset" class="btn btn-default">Reset page</button>
</form>
</div>
</div>
</div>
</div>
</div>
<!-- /.container-fluid -->
</div>
</div>
</div>
<!-- /#page-wrapper -->
</div>
<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>

</html>