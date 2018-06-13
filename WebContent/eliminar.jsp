<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Correos eliminados</title>
</head>
<body>
<%@ page import="Usuarios_log.Usuario"%>
<%@ page import="Usuarios_log.Post"%>
<%@ page import="org.hibernate.Session"%> 
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="org.hibernate.Transaction"%>
<%
	String[] id_post = request.getParameterValues("checked");
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	Transaction tx = sesion.beginTransaction();
	
	for(String st: id_post){
		//out.println(st);
		//Query q = (Query) sesion.createQuery("from Post where nombre = ? and password = ?");
		Post pos = (Post)sesion.load(Post.class,Integer.parseInt(st));
		sesion.delete(pos);		
	}
	tx.commit();
	sesion.close();
	response.sendRedirect("bienvenido.jsp");
%>


</body>
</html>