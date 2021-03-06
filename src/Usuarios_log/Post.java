package Usuarios_log;
// Generated 08-jun-2018 10:39:19 by Hibernate Tools 5.2.8.Final

import java.util.Date;

/**
 * Post generated by hbm2java
 */
public class Post implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Usuario usuarioByIdFrom;
	private Usuario usuarioByIdTo;
	private Date fecha;
	private String texto;

	public Post() {
	}

	public Post(Usuario usuarioByIdFrom, Usuario usuarioByIdTo, Date fecha, String texto) {
		this.usuarioByIdFrom = usuarioByIdFrom;
		this.usuarioByIdTo = usuarioByIdTo;
		this.fecha = fecha;
		this.texto = texto;
	}
	public Post(Usuario usuarioByIdFrom, Usuario usuarioByIdTo,String texto) {
		this.usuarioByIdFrom = usuarioByIdFrom;
		this.usuarioByIdTo = usuarioByIdTo;
		this.texto = texto;
	}
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Usuario getUsuarioByIdFrom() {
		return this.usuarioByIdFrom;
	}

	public void setUsuarioByIdFrom(Usuario usuarioByIdFrom) {
		this.usuarioByIdFrom = usuarioByIdFrom;
	}

	public Usuario getUsuarioByIdTo() {
		return this.usuarioByIdTo;
	}

	public void setUsuarioByIdTo(Usuario usuarioByIdTo) {
		this.usuarioByIdTo = usuarioByIdTo;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getTexto() {
		return this.texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

}
