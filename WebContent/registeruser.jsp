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
<%@ page import="org.hibernate.Session"%> 
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="org.hibernate.Transaction"%>
<%
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	Transaction tx = sesion.beginTransaction();
	String nombre = request.getParameter("nombre");
	String pass = request.getParameter("pass");
	
	//Query q = (Query) sesion.createQuery("from Usuario where nombre = ? and password = ?");
	//q.setString(0, nombre);
	//q.setString(1, pass);
	
	Usuario u = new Usuario(nombre,pass);
	sesion.save(u);
	tx.commit();	
	session.setAttribute("cliente", u);
	sesion.close();
		
	response.sendRedirect("bienvenido.jsp");
		

	
	
	//Usuario u = new Usuario(nombre,pass);
	
%>
</body>
</html>