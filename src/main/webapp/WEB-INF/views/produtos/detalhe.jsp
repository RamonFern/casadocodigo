<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!doctype html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	
	

<title>Casa do Código</title>
	
<link rel="alternate" type="application/json+oembed" href="https://www.casadocodigo.com.br/products/livro-java9.oembed">

<link rel="canonical" href="https://www.casadocodigo.com.br/products/livro-java9">
</head>
<body class="produto">
	<header role="banner" class="cabecalhoPrincipal container">
	
	<a tabindex="3" href="/carrinho" title="Ir para sacola de compras" class="sacola cabecalhoPrincipal-itemNavegacao">
			<svg width="60px" height="24px" viewBox="0 0 60 24" role="img" aria-labelledby="sacolaLabel" class="sacola-icone">
				<title id="sacolaLabel">
					Você tem (${carrinhoCompras.quantidade }) itens na sacola
				</title>
				<g fill="none" fill-rule="evenodd" stroke="#FBFAF9" stroke-linecap="square" stroke-width="2">
					<path d="m47.550692,23l-18,0l0,-17l18,0l0,17z"/>
						<path d="m34.550692,9l0,-4c0,-2.2 1.8,-4 4,-4s4,1.8 4,4l0,4"/>
				</g>
				<g>
					<circle cy="14.681157" cx="13.148581" r="9" role="presentation" fill="#FFF"/>
					<text text-decoration="none" text-anchor="middle" x="13.148581" y="19" class="sacola-contador">0</text>
				</g>
			 </svg>
		</a>

	</div>
</header>


	<main>
<article id="${produto.id}" itemscope>
	<header class="cabecalhoProdutoLivro container">
	
	<div class="cabecalhoProdutoLivro-tituloEAutor">
		<h1 itemprop="name" class="cabecalhoProdutoLivro-titulo">
			<span class="cabecalhoProdutoLivro-titulo-principal" role="presentation">
				${produto.titulo}
			</span>
		</h1>
	</div>
	

<div class="imagemLivroNinja " role="img">
	<img class="imagemLivroNinja-principal" class="vitrineDestacao-itemPrincipal-imagem"
	src="//cdn.shopify.com/s/files/1/0155/7645/products/Amazon-Java-9_large.png?v=1506020938" alt="Livro de Java 9" title="Livro de Java 9">
	<section class="conteudoDoLivro infoSection" itemprop="description">
	<h2 class="infoSection-titulo">
	<label>Descrição do livro.</label><br>
		${produto.descricao}
	</h2>
	
    </section>	
</div>
 </header> 
	<div>
<form action='<c:url value="/carrinho/add" />' method="POST" class="container">
	<ul>
	<input type="hidden" value="${produto.id}" name="produtoId">
	<c:forEach items="${produto.precos }" var="preco">
		<li class="buy-option" itemprop="offers" itemscope>
			<input type="radio" name="tipo" class="variant-radio" id="tipo" value=" ${preco.tipo}" checked>
				<label itemprop="category" itemscope class="variant-label">${preco.tipo}</label>
				<p class="variant-price" itemprop="price">${preco.valor} </p>
				</li>
				</c:forEach>	
				<button class="submit-image icon-basket-alt" type="submit" 
				alt="Compre agora" title="Compre o '${produto.titulo}'!">
					Comprar
				</button>	
	</ul>
</form>
</div>

	<section class="conteudoDoLivro infoSection" itemprop="sumario">
	<a class="conteudoDoLivro-link" href="/pages/sumario-java9">veja o sumário completo</a>
    </section>

		<section class="infosAdicionaisDoLivro infoSection">
	<h2 class="infoSection-titulo">
		
	</h2>
	
	<p>Data de Publicação: <span class="publishedAt">
	<fmt:formatDate pattern="dd/MM/yyyy" value="${produto.dataLancamento.time }" /></span></p>
	
</section>

	</main>
	
   <footer class="caelum-footer">
	Ramon Fernandes
   </footer>

	
</body>
</html>
