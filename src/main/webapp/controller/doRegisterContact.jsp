<%@page import="com.example.model.Contact"%>
<%@page import="com.example.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="com.example.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="contact" class="com.example.model.Contact" scope="session"></jsp:useBean>
<jsp:useBean id="cdao" class="com.example.dao.ContactDao" scope="page"></jsp:useBean>
<jsp:useBean id="udao" class="com.example.dao.UserDao" scope="page"></jsp:useBean>

<jsp:setProperty property="*" name="contact" />

<%
User readedUser = udao.getUserByUserName(user.getUsername());
// Contact c=cdao.getContactByName(contact.getName());
// if (c.getTellnumber().equals(null) ){
user.addContact(contact);
contact.setUser(readedUser);
cdao.createContact(contact);
// } else 
// 	response.sendRedirect("./phonebook/registerContact.jsp");
%>
<jsp:forward page="../phonebook/listOfContacts.jsp"></jsp:forward>