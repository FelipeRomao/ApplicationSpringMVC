package br.com.treinaweb.springmvc.dominios;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "usr_usuarios")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "usr_id")
	private int id;

	@Column(name = "usr_username", length = 10, nullable = false)
	@Size(min = 3, max = 10, message = "O nome de usu�rio deve conter entre 3 e 10 caracteres")
	@NotEmpty(message = "O nome de usu�rio � obrigat�rio")
	private String username;
	
	@NotEmpty(message = "A senha de usu�rio � obrigat�rio")
	@NotNull(message = "A senha de usu�rio � obrigat�rio")
	@Column(name = "usr_password", length = 150, nullable = false)
	private String password;

	@Column(name = "usr_role", length = 20, nullable = false)
	private String role;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
