<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
	<%@ page import="Usuarios_log.Usuario"%>
	<%@ page import="Usuarios_log.Post"%>
	<%@ page import="org.hibernate.Session"%>
	<%@ page import="org.hibernate.SessionFactory"%>
	<%@ page import="org.hibernate.Transaction"%>
	<%@ page import="org.hibernate.cfg.Configuration"%>
	<%@ page import="org.hibernate.Query"%>
	<%@ page import="java.util.List"%>
	<%
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session sesion = sf.openSession();
		Query q = (Query) sesion.createQuery("from Usuario");
		List<Usuario> usuarios = q.list();
	%>
	<header>
		<jsp:include page="header.jsp" />
	</header>
	<div class="container">
		
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header</h4>
					</div>
					<div class="modal-body">
						<p>Enviar a:.</p>
						<form method="post" action="insertar_post.jsp">
							<select class="form-control" id="sel1" name="para">
								<%
									for (Usuario u : usuarios) {
								%>
								<option value="<%=u.getId()%>"><%=u.getNombre()%></option>
								<%
									}
								%>
							</select>
							    <div class="form-group">
    								  <label for="comment">Comment:</label>
    								  <textarea class="form-control" name="texto" rows="5" id="comment"></textarea>
   								 </div>   							    
    							<button type="submit" class="btn btn-primary">Send</button>  
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>