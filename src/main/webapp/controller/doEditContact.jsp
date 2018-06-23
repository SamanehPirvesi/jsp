<%@page import="com.example.model.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="cdao" class="com.example.dao.ContactDao" scope="page"></jsp:useBean>
    <jsp:useBean id="user" class="com.example.model.User" scope="session"></jsp:useBean>
    <jsp:useBean id="udao" class="com.example.dao.UserDao" scope="page"></jsp:useBean>
<%
String s=request.getParameter("name");
String s1=request.getParameter("tellnumber");
long id =  Long.parseLong(request.getParameter("contactid"));
cdao.updateContactTellNumberById(id,s1);
udao.fillListOfCntactForUserBean(user);
%>
<jsp:forward page="../phonebook/listOfContacts.jsp"></jsp:forward>
