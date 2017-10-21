<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2>Listagem de Usuários</h2>
<br />
<table class="table" id="tbl-musicas">
	<thead>
		<th>ID</th>
		<th>Nome de usuário</th>
		<th>Role</th>
	</thead>
	<tbody>
		<c:if test="${!empty usuarios}">
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td>${usuario.id}</td>
					<td>${usuario.username}</td>
					<td>${usuario.role}</td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
<br />
<a href="/TreinaWebSpringMVC/usuarios/adicionar" class="btn btn-default">Adicionar
	novo usuário</a>