<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<h2>Login</h2>
<br />
<form action="/TreinaWebSpringMVC/login" method="post">
	<div class="row">
		<div class="col-md-6 col-xs-12">
			<div class="form-group">
				<label>Nome de usu�rio:</label>
				<input type="text" name="username" class="form-control" />
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6 col-xs-12">
			<div class="form-group">
				<label>Senha:</label>
				<input type="password" name="password" class="form-control" />
			</div>
		</div>
	</div>
	<input type="submit" value="Login" class="btn btn-primary" />
</form>
