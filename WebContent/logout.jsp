<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%
	session.removeAttribute("id");
	session.removeAttribute("password");
	session.setMaxInactiveInterval(0);
	response.sendRedirect("login.jsp");
%>