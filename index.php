

<?php
include('conexao.php');
$sql = "select * from produto";
$sql2 = "SELECT * FROM produto where preco <=200";
$resultado2 = mysqli_query($conexao,$sql2);
$resultado = mysqli_query($conexao,$sql);
include 'header.php';
?>

<div class="container" style="width:80%;">
<hr>
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
	  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
	  <li data-target="#myCarousel" data-slide-to="3"></li>
	  <li data-target="#myCarousel" data-slide-to="4"></li>
	</ol>
      <div class="carousel-inner">
         <div class="item active">
           <img class="img-responsive" src="img/j1.png"  style="width:100%;height:20em;">
         </div>
         <div class="item">
            <img class="img-responsive" src="img/j2.jpg" style="width:100%;height:20em;">
          </div>
          <div class="item">
            <img class="img-responsive" src="img/j3.jpg"style="width:100%;height:20em;">
          </div>
		   <div class="item">
            <img class="img-responsive" src="img/j4.jpg"style="width:100%;height:20em;">
          </div>
		   <div class="item">
            <img class="img-responsive" src="img/j2.jpg"style="width:100%;height:20em;">
          </div>
       </div>
       <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Anterior</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Próximo</span>
    </a>
 </div>
</div>
<div class="frase container">
    <h3>Produtos de Infomática</h3>
     <hr>
 </div>
    
<section class="container" style="width:80%;">
    <div class="row">
       <?php
         $i = 1;
          do {
            ($dados = mysqli_fetch_array($resultado)); 
		?>
                
       <div class="col-lg-2 container">
          <div class="thumbnail">
             <a href="produtop.php?codproduto=<?= $dados['codproduto']; ?>">
             <img src="fotosprodutos/<?= $dados['imagem']; ?>" alt="" class="img-fluid"></a>
          </div>
          <div class="descricao">
           <h5><?php echo $dados['descricao']; ?></h5>
           <p><?php echo $dados['categoria']; ?></p>
			<p><?php echo "R$ ";
			echo $dados['preco']; ?>
            </p>
          </div>
      </div>
     <?php
        $i++;
         } while ($i<6);
     ?>

    </div>
</section>
 <div class="container" style="width:80%;">
            <img class="img-responsive" src="img/j3.jpg"style="width:100%;height:20em;">
</div>

<section class="container row-fluid">
   <div class="frase">
    <h3>Produtos com descontos especiais abaixo de R$ 200,00</h3>
    <hr>
    <div class="row">
        <?php
         $i = 1;
         do {
          ($dados = mysqli_fetch_array($resultado2)); 
           ?>
    <div class="col-lg-2 container">
        <div class="thumbnail">
            <a href="produtop.php?codproduto=<?= $dados['codproduto']; ?>">
			<img src="fotosprodutos/<?= $dados['imagem']; ?>" alt="" class="img-fluid"></a>
        </div>
          <h5><?php echo $dados['descricao']; ?></h5>
          <p><?php echo $dados['categoria']; ?></p>
		<p><?php echo "R$ "; echo $dados['preco']; ?></p>
    </div>
                
   <?php
        $i++;
     } while ($i<12);
   ?>

    </div>
   </div>
</section>


<?php include "footer.php";?>


