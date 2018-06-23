<%@page import="com.example.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="com.example.model.User" scope="page"></jsp:useBean>
<jsp:useBean id="udao" class="com.example.dao.UserDao" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="user" />
<%
User readedUser = udao.getUserByUserName(user.getUsername());
if (readedUser == null) {
udao.createUser(user);
response.sendRedirect("../login.jsp");
}else
{out.print("Username already exists");
		
			}
%>