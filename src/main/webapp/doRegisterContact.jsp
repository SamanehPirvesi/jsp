<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="com.example.model.User" scope="session"></jsp:useBean>
<jsp:useBean id="contact" class="com.example.model.Contact" scope="page"></jsp:useBean>
<jsp:useBean id="cdao" class="com.example.dao.ContactDao" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="contact" />
<%
 user.addContact(contact);
contact.setUser(user);
 %>