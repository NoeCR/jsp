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
	<%
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
			Session sesion = sf.openSession();
		    Transaction tx = sesion.beginTransaction();
			Usuario u = (Usuario)session.getAttribute("cliente");
			int numero = Integer.parseInt(request.getParameter("para"));	
			Usuario u2 = (Usuario) sesion.load(Usuario.class,numero);
			java.util.Date ahora = new java.util.Date();
			java.util.Date fecha = new java.util.Date(ahora.getTime());
			String texto = request.getParameter("texto");
			Post post = new Post(u,u2,fecha,texto);
			
			sesion.save(post);
			tx.commit();
	%>
</body>
</html>