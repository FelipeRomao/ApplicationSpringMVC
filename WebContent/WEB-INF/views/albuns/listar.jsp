<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2>Listagem de álbuns</h2>
<br />
<div class="row">
	<div class="col-md-6 col-xs-12">
		<div class="form-group">
			<label class="label-control">Álbum a ser pesquisado:</label> <input
				type="text" id="txt-pesquisa" class="form-control" />
		</div>
		<button class="btn btn-default" id="btn-pesquisar">Pesquisar</button>
	</div>
</div>
<br />
<table class="table" id="tbl-albuns">
	<thead>
		<th>ID</th>
		<th>Nome do Álbum</th>
		<th>Ano de lançamento</th>
		<th>Ações</th>
	</thead>
	<tbody>
		<c:if test="${!empty albuns}">
			<c:forEach items="${albuns}" var="album">
				<tr>
					<td>${album.id}</td>
					<td>${album.nome}</td>
					<td>${album.anoLancamento}</td>
					<td><a href="/TreinaWebSpringMVC/albuns/alterar/${album.id}"
						class="btn btn-success">Alterar</a> <a
						href="/TreinaWebSpringMVC/albuns/excluir/${album.id}"
						class="btn btn-danger">Excluir</a></td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
<br />
<a href="/TreinaWebSpringMVC/albuns/adicionar" class="btn btn-default">Adicionar
	novo Álbum</a>

<script type="text/javascript">
	$(document).ready(function(){
		$('#btn-pesquisar').click(function(){
			var nomeAlbum = $('#txt-pesquisa').val();
			$.ajax({
				method: 'GET',
				url: '/TreinaWebSpringMVC/albuns/porNome?nome=' + nomeAlbum,
				success: function(data){
					$('#tbl-albuns tbody > tr').remove();
					$.each(data, function(index, album){
						$('#tbl-albuns tbody').append(
								'<tr>' +
									'<td>' + album.id + '</td>' + 
									'<td>' + album.nome + '</td>' + 
									'<td>' + album.anoLancamento + '</td>' + 
									'<td>' + 
											 '<a href="/TreinaWebSpringMVC/albuns/alterar/'+ album.id + '" class="btn btn-success">Alterar</a> ' + 
										 	 '<a href="/TreinaWebSpringMVC/albuns/excluir/'+ album.id + '" class="btn btn-danger">Excluir</a>' +
								 	'</td>' + 
								'</tr>'
							);
					});
				},
				error: function(){
					alert("Houve um erro na requisição!");
				}
			});
		});
	});
</script>
