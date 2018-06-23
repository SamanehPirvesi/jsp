<%@page import="com.example.model.Contact"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="com.example.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="cdao" class="com.example.dao.ContactDao" scope="page"></jsp:useBean>
<jsp:useBean id="contact" class="com.example.model.Contact" scope="page"></jsp:useBean>
<jsp:useBean id="udao" class="com.example.dao.UserDao" scope="page"></jsp:useBean>


<%
long id =  Long.parseLong(request.getParameter("contactid"));
Contact c=cdao.getContactById(id);
out.print(id);
cdao.deleteContact(c);
udao.fillListOfCntactForUserBean(user);
%>
<jsp:forward page="../phonebook/listOfContacts.jsp"></jsp:forward>
