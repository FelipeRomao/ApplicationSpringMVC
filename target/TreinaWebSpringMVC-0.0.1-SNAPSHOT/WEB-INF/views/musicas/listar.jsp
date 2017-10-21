<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<h2>Listagem de Músicas</h2>
<br />
<div class="row">
	<div class="col-md-6 col-xs-12">
		<div class="form-group">
			<label class="label-control">Música a ser pesquisada:</label>
			<input type="text" class="form-control" id="txt-pesquisa"/>
		</div>
		<button id="bnt-pesquisar" class="btn btn-default">Pesquisar</button>
	</div>
</div>
<br />
<table class="table" id="tbl-musicas">
	<thead>
		<th>ID</th>
		<th>Nome da música</th>
		<th>Data de criação</th>
		<th>Nome do álbum</th>
		<th>Ações</th>
	</thead>
	<tbody>
		<c:if test="${!empty musicas}">
			<c:forEach items="${musicas}" var="musica">
				<tr>
					<td>${musica.id}</td>
					<td>${musica.nome}</td>
					<td><fmt:formatDate value="${musica.dataCriacao}"
							pattern="dd/MM/yyyy" timeZone="UTC" /></td>
					<td>${musica.album.nome}</td>
					<td><a href="/TreinaWebSpringMVC/musicas/alterar/${musica.id}"
						class="btn btn-success">Alterar</a> <a
						href="/TreinaWebSpringMVC/musicas/excluir/${musica.id}"
						class="btn btn-danger">Excluir</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
<br />
<a href="/TreinaWebSpringMVC/musicas/adicionar" class="btn btn-default">Adicionar
	nova Música</a>
	
<script type="text/javascript">
	$(document).ready(function(){
		$('#bnt-pesquisar').click(function(){
			var nomeMusica = $('#txt-pesquisa').val();
			$.ajax({
				method: 'GET',
				url: '/TreinaWebSpringMVC/musicas/porNome?nome=' + nomeMusica,
				success: function(data){
					$('#tbl-musicas tbody > tr').remove();
					$.each(data, function(index, musica){
						$('#tbl-musicas tbody').append(
								'<tr>' +
									'<td>' + musica.id + '</td>' + 
									'<td>' + musica.nome + '</td>' + 
									'<td>' + musica.dataCriacao + '</td>' + 
									'<td>' + 
											 '<a href="/TreinaWebSpringMVC/musicas/alterar/'+ musica.id + '" class="btn btn-success">Alterar</a> ' + 
										 	 '<a href="/TreinaWebSpringMVC/musicas/excluir/'+ musica.id + '" class="btn btn-danger">Excluir</a>' +
								 	'</td>' + 
								'</tr>'
							);
					});
				},
				error: function(){
					alert('Houve problema na requisição! =(');
				}
				
			});
		});
	});
</script>	