<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:url var="actionAdicionar" value="/musicas/adicionar"></c:url>
<h2>Inser��o de novo usu�rio</h2>
<br />
<form:form action="${actionAdicionar}" method="post"
	modelAttribute="usuario">
	<div class="row">
		<div class="col-md-6 col-xs-12">
			<div class="form-group">
				<label>Nome de usu�rio:</label>
				<form:input path="username" cssClass="form-control" />
				<form:errors path="username" cssStyle="color: red;"></form:errors>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6 col-xs-12">
			<div class="form-group">
				<label>Senha:</label>
				<form:password path="password" cssClass="form-control" />
				<form:errors path="password" cssStyle="color: red;"></form:errors>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-xs-12">
			<div class="form-group">
				<label>Perfil: </label>
				<select name="role" class="form-control">
					<option value="ROLE_ADMIN">Administrador</option>
					<option value="ROLE_USER">Usu�rio comum</option>
				</select>
			</div>
		</div>
	</div>
	<input type="submit" value="Salvar" class="btn btn-primary" />
</form:form>
