<%@page import="com.example.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="com.example.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="udao" class="com.example.dao.UserDao" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="user" />
<%
	User readedUser = udao.getUserByUserName(user.getUsername());

	if (readedUser != null && readedUser.getPassword().equals(user.getPassword())) {
		readedUser.setLoggedIn(true);
		user.setLoggedIn(true);
		udao.updateUser( readedUser);
		response.sendRedirect("./userPortal/userHome.jsp");
%>
<%-- 	<jsp:forward page="./userPortal/userHome.jsp"></jsp:forward> --%>
<%
	} else {

		response.sendRedirect("./login.jsp");
	}
%>