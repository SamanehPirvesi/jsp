<%@page import="com.example.model.User"%>
<%@page import="com.example.model.Contact"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="com.example.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="udao" class="com.example.dao.UserDao" scope="page"></jsp:useBean>

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
<div class="panel-heading">Contacts:</div>
<!-- /.panel-heading -->
<div class="panel-body">
<div class="table-responsive">
<table class="table table-striped table-bordered table-hover">
<thead>
<tr>
    <th>#</th>
	<th>Contact Name</th>
	<th>tell_number</th>
</tr>
</thead>
<tbody>
<%-- <% --%>
<!-- // User readedUser = udao.getUserByUserName(user.getUsername());  -->
<!-- // int i=0;  -->
<!-- // for(Contact c:readedUser.getListContact()){  -->
<!-- // i=i+1;  -->
<%-- %>  --%>
<!-- 	<tr> -->
<%-- 	    <td><%out.print(i); %></td> --%>
<%-- 	    <td><%out.print(c.getName()); %></td>	 --%>
<%-- 		<td><%out.print(c.getTellnumber()); %></td> --%>
<%-- 		<% 	}%> --%>

 User readedUser = udao.getUserByUserName(user.getUsername());
 List<Contact> list =udao.getListOfContact(readedUser.getUserId());
 user.setListContact(list);
 
<c:set var="i" value="1" scope="page" ></c:set>
<c:forEach items="${ListContact}" var="u">
<tr>
 <td><c:out value="${i}" /></td>
 <td><c:out value="${u.name}" /></td>
 <td><c:out value="${u.getTellnumber()}" /></td>
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