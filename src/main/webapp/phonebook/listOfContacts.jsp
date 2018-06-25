<%@page import="com.example.model.User"%>
<%@page import="com.example.model.Contact"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="com.example.model.User" scope="session"></jsp:useBean>


<!DOCTYPE html>
<html lang="en">
<jsp:include page="../layout/header.jsp"></jsp:include>
<body>

<div id="wrapper">

<jsp:include page="../layout/sidebar.jsp"></jsp:include>
<!-- Page Content -->
<div id="page-wrapper">
<div class="container-fluid">
<div class="row">
<div class="col-lg-12">
<h1 class="page-header">Contact list</h1>
</div>
<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
<div class="col-lg-6">
<div class="panel panel-default">
<div class="panel-heading">Edit Contacts:</div>
<!-- /.panel-heading -->
<div class="panel-body">
<div class="table-responsive">

<table class="table table-striped table-bordered table-hover">
<thead>
<tr>
    <th>#</th>
	<th>Contact Name</th>
	<th>tell_number</th>
	<th>action</th>
</tr>
</thead>
<tbody>
<c:set var="i" value="1" scope="page" ></c:set>
<c:forEach items="${user.listContact}" var="u">
<tr>
<form method="post" action="../controller/doDeleteContact.jsp">
<input type="hidden" name="contactid" value="${u.contact_id}"/>
<input type="hidden" name="tell" value="${u.tellnumber}"/>
 <td><c:out value="${i}" /></td>
 <td ><c:out value="${u.name}" /></td>
 <td><c:out value="${u.tellnumber}" /></td>
 <td> <button type="submit" class="fa fa-edit" formaction="./editContact.jsp"></button>
<button type="submit" class="fa fa-trash-o" ></button>
 </td>  
 </form>                      
 </tr>
<c:set var="i" value="${i + 1}" scope="page" />
</c:forEach>
</tbody>
</table>

</div>
<!-- /.table-responsive -->
</div>
<!-- /.panel-body -->
</div>
<!-- /.panel -->
</div>
</div>
<!-- /.container-fluid -->
</div>
</div>
<!-- /#page-wrapper -->
</div>
<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>