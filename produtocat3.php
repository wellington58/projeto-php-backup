<?php
include "header.php";
include "conexao.php";
?>
<div class="container">
   <h1> Produtos</h1>
	<div class="row">
		<!--Imagens diretas do banco-->       
<?php
		// select * from nometabela retorna todos os produtos//
//criar critérios utiliza se where campo(bd)operador matemático item
// que esteja no bd
		$sql = "select * from produto where categoria='Embarcados'";
        $resultado = mysqli_query($conexao, $sql);      
      while ( $dados = mysqli_fetch_assoc($resultado) ) 
	   {  
 ?>
	<div class="col-sm-3">
	<div class="thumbnail">
 <img  style="width:50%;height:200px" src="fotosprodutos/<?php echo $dados['imagem'] ?>" <?php echo $dados['imagem'] ?>;>
      <div class="caption text-center">
         <strong>Descrição:<?php echo $dados['descricao'] ?></strong>
                <p><br/><strong>Categoria:</strong>: <?php echo $dados['categoria'] ?><br><br>
				<strong>Preço:</strong>:<?php echo "R$ ";
				echo $dados['preco']?>
               </p>
              </div>
          </div>
         </div>
 <?php 
		 } ?>
     </div>
	 </div>
<?php include "footer.php"; ?>