<%@page import="Model.Article"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModelDAO.ArticleDAO"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!--
     - Roxy: Bootstrap template by GettTemplates.com
     - https://gettemplates.co/roxy
    -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Listar</title>
    <meta name="description" content="Roxy">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- External CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/select2/select2.min.css">
    <link rel="stylesheet" href="vendor/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor/lightcase/lightcase.css">
     <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400|Work+Sans:300,400,700" rel="stylesheet">

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">

    <!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>

</head>
<body data-spy="scroll" data-target="#navbar" class="static-layout">
	
<nav id="header-navbar" class="navbar navbar-expand-lg py-4">
    <div class="container">
        <a class="navbar-brand d-flex align-items-center text-white">
            <h3 class="font-weight-bolder mb-0">Gaming Blog</h3>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-nav-header" aria-controls="navbar-nav-header" aria-expanded="false" aria-label="Toggle navigation">
            <span class="lnr lnr-menu"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbar-nav-header">
            <ul class="navbar-nav ml-auto">
            </ul>
        </div>
    </div>
</nav>


	
<div class="jumbotron jumbotron-single d-flex align-items-center" style="background-image: url(img/bg.jpg)">
  <div class="container text-center">
    <h1 class="display-2 mb-4">Agregar</h1>
  </div>
</div>	<!-- Blog Section -->
<section id="blog" class="bg-grey">
    <style>
        .centrado {
          width: fit-content; /* Establece el ancho del div */
          margin-left: auto;
          margin-right: auto;
          margin-bottom: 10px;
        }
    </style>
    <div class="centrado">
        <div class="centrado">
            <div class="title-wrap mb-5" data-aos="fade-up" class="centrado">
            <div class="centrado">
                <form action="Contoller">
                <h2 class="section-title">Artículo <b>nuevo</b></h2>
                <p class="section-sub-title">Reseñas, opiniones y recomendaciones de juegos.</p>
                <div class="new-article">
                    <p class="new-game">Nombre del juego: </p>
                    <input type="text" name="txtGame" value="" size="80" />
                </div>
                <div class="new-title">
                    <p class="blog-user-rating" class="centrado">Título: </p>
                    <input type="text" name="txtTitle" value="" size="80" />
                </div>
                <div class="centrado">
                    <p class="new-body" class="centrado">Cuerpo del artículo</p>
                    <textarea name="txtBody" rows="16" cols="80">
                    </textarea>
                </div>
                <div class="centrado">
                    <input type="submit" value="Agregar" name="accion" />
                </div>
                
                <div class="centrado">
                    <a href="Contoller?accion=listar">Cancelar</a>
                </div>
        </form>
            </div>
        </div>
    </div>
</section>
<!-- End of Blog Section -->	<!-- Features Section-->
	<!-- External JS -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
	<script src="vendor/bootstrap/popper.min.js"></script>
	<script src="vendor/bootstrap/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js "></script>
	<script src="vendor/owlcarousel/owl.carousel.min.js"></script>
	<script src="vendor/stellar/jquery.stellar.js" type="text/javascript" charset="utf-8"></script>
	<script src="vendor/isotope/isotope.min.js"></script>
	<script src="vendor/lightcase/lightcase.js"></script>
	<script src="vendor/waypoints/waypoint.min.js"></script>
	 <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	 
	<!-- Main JS -->
	<script src="js/app.min.js "></script>
	<script src="//localhost:35729/livereload.js"></script>
</body>
</html>
