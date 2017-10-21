<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:url var="actionAdicionar" value="/albuns/adicionar"></c:url>
<h2>Inserção de Álbum</h2>
<br />
<form:form action="${actionAdicionar}" method="post" modelAttribute="album">
	<div class="row">
		<div class="col-md-6 col-xs-12">
			<div class="form-group">
				<label>Nome do álbum:</label>
				<form:input path="nome" cssClass="form-control" />
				<form:errors path="nome" cssStyle="color: red;"></form:errors>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6 col-xs-12">
			<div class="form-group">
				<label>Nome de lançamento:</label>
				<form:input path="anoLancamento" cssClass="form-control" />
				<form:errors path="anoLancamento" cssStyle="color: red;"></form:errors>
			</div>
		</div>
	</div>
	<input type="submit" value="Salvar" class="btn btn-primary" />
</form:form>
