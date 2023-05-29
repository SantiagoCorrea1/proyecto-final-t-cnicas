<%@page import="Model.Article"%>
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
    <title>Artículo</title>
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
	<div id="side-nav" class="sidenav">
	<a href="javascript:void(0)" id="side-nav-close">&times;</a>
	
</div>	
    <nav id="header-navbar" class="navbar navbar-expand-lg py-4">
    <div class="container">
        <a class="navbar-brand d-flex align-items-center text-white">
            <h3 class="font-weight-bolder mb-0">Gaming blog</h3>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-nav-header" aria-controls="navbar-nav-header" aria-expanded="false" aria-label="Toggle navigation">
            <span class="lnr lnr-menu"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbar-nav-header">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Contoller?accion=listar">listar</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div id="side-nav" class="sidenav">
	
</div>	<div class="jumbotron jumbotron-single d-flex align-items-center" style="background-image: url(img/blog-1.jpg)">
  <div class="container text-center">
    <h1 class="display-2 mb-4">Artículo</h1>
  </div>
</div>	<!-- Contact Form Section -->
<section id="single-content" class="bg-white">
    <style>
        .centrado {
          width: fit-content; /* Establece el ancho del div */
          margin-left: auto;
          margin-right: auto;
          margin-bottom: 10px;
        }
    </style>
    <div class="container">
        <div class="section-content blog-content">
            
                <!-- Single Content Holder -->
                <div class="centrado">
                    <%
                        ArticleDAO dao = new ArticleDAO();
                        int id = Integer.parseInt(request.getParameter("id"));
                        Article a = dao.leer(id);
                    %>
                    <textarea readonly="true"  name="txtBody" rows="16" cols="80"><%out.println(a.getBody()); %>
                    </textarea>
                    <div class="centrado"><button onclick=" puntuar(<%= id%> , 1)">me gusta</button></div>
                    <div class="centrado"><button onclick="puntuar(<%= id%> , 0)">no me gusta</button></div>
                </div>
                <!-- End of Contact Form Holder -->
            </div>
        </div>
    </div>
</section>
<!-- End of Contact Form Section -->
<!-- End of Features Section-->
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
        <script>
            
            function puntuar(id, p){
                console.log(id, p)
                fetch('Contoller?accion=puntuar&id='+id+ "&like=" + p, {
                    method: 'GET' // o 'GET', dependiendo del método que desees utilizar
                  })
                    .then(response => {
                        alert("gracias por su opinion");
                      // Manejar la respuesta del servidor aquí
                    })
                    .catch(error => {
                      alert("ha ocurrido un error")
                    });
            }
        </script>
</body>
</html>
