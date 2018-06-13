<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="Usuarios_log.Usuario"%>
	<%@ page import="Usuarios_log.Post"%>
	<%@ page import="org.hibernate.Session"%>
	<%@ page import="org.hibernate.SessionFactory"%>
	<%@ page import="org.hibernate.Transaction"%>
	<%@ page import="org.hibernate.cfg.Configuration"%>
	<%@ page import="org.hibernate.Query"%>
	<%@ page import="java.util.Date" %>
	<%@ page import="java.util.List"%>
	<%
		    SessionFactory sf = new Configuration().configure().buildSessionFactory();
			Session sesion = sf.openSession();
		   
			String inicial = request.getParameter("inicial");
			
			Query q = (Query) sesion.createQuery("from Post where usuarioByIdFrom.nombre like :ini");
			q.setParameter("ini", inicial + "%");		
			
			List<Post> posts =  q.list();
			
			response.sendRedirect("bienvenido.jsp");
	%>
	
</body>
</html>