<?php
include ('header.php');
include ('conexao.php');
$codproduto = $_REQUEST['codproduto'];
$sql = "select * from produto where codproduto=$codproduto";
$resultado = mysqli_query($conexao, $sql);
$dados = mysqli_fetch_array($resultado);
 ?>
<hr>
<section class="container">
  <br> 
   <div class="row">
  <div class="col-sm-6">
    <img src="fotosprodutos/<?=$dados['imagem']; ?>" style="height:0 auto;width:80%;padding:10px;" alt="imagem" class="img-responsivo">
  </div>
<div class="col-sm-6">
    <h3><?= $dados['descricao']; ?></h3>
	<b>Categoria:</b> <?=$dados['categoria'];?>
	<br/>
	<b>Preço: </b> R$  <?=$dados['preco']; ?>
	<br/>
  <a class="btn btn-primary" href="carrinho.php?acao=add&codproduto=<?php echo $dados['codproduto']?>" >Comprar</a>
	
</div>
</div>
</section>
<hr>
<?php include "footer.php";?>