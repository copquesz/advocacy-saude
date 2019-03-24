<!DOCTYPE html>
<html lang="pt-br">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Advocacy Saúde - Cadastro</title>

    <!-- Bootstrap core CSS -->
    <link href="${path}/main/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet'
    type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="${path}/main/css/agency.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${path}/main/css/custom.css">
    <link rel="stylesheet" href="${path}/main/css/animate.css">

</head>

<body id="page-top">
    <!-- NAV BAR -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top navbar-shrink " id="mainNav">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="" width="130" height="60" class="d-inline-block align-top" alt="">
            </a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav text-uppercase ml-auto align-items-center">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${path}/">Home</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${path}/#sobre">Sobre</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${path}/#noticias">Noticias</a> </li>
                    <li class="nav-item mb-0"><a href="${path}/login" class="btn btn-primary pr-5 pl-5">Entrar</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- FIM DA NAV BAR -->
    <!-- MODAL DE LOGIN -->
    <div class="modal fade" id="popUpWindow">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="wrapper fadeInDown">
                    <div id="formContent">
                        <!-- Tabs Titles -->

                        <!-- Icon -->
                        <div class="fadeIn first">
                            <img src="${path}/main/img/img-custom/icon-user.jpg" id="icon" alt="User Icon" />
                        </div>

                        <!-- Login Form -->
                        <form>
                            <input type="text" id="cpf" class="fadeIn second" name="cpf" placeholder="Email">
                            <input type="password" id="senha" class="fadeIn third" name="senha" placeholder="Senha">
                            <input type="submit" class="fadeIn fourth" value="Entrar">
                        </form>

                        <!-- Remind Passowrd -->
                        <div id="formFooter">
                            <a class="underlineHover" href="cadastro-usuario.html">Ainda não possui cadastro?</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- FIM MODAL DE LOGIN -->

    <!-- CONTAINER DO FORMULARIO DE CADASTRO -->
    <section class="bg-cadastro">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="jumbotron jumbotron-fluid"
                        style="background-color: rgba(2, 121, 136, 0.86); border-radius: 50px;">
                        <div class="row mb-5">
                            <div class="col-12 text-center text-white">
                                <h1>Como deseja se cadastrar?</h1>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-4">
                                <div class="card" style="border-radius: 20px">
                                    <div class="card-header text-center h3">Pessoa Fisica</div>
                                    <img class="card-img-top py-1" src="${path}/main/img/img-timeline/5.svg" width="200" height="190"
                                        alt="Card image cap">
                                    <div class="card-body">
                                        <p class="card-text text-center">Desejo me associar à uma entidade.
                                            .</p>
                                        <div class="d-flex justify-content-center">
                                            <a href="${path}/cadastro/pessoa-fisica" class="btn btn-primary">Cadastrar-se</a>
                                        </div>

                                    </div>
                                </div>

                            </div>
                            <div class="col-4">
                                <div class="card" style="border-radius: 20px;">
                                    <div class="card-header text-center h3">
                                        Pessoa Juridica
                                    </div>
                                    <img class="card-img-top py-1" src="${path}/main/img/img-timeline/4.svg" width="200" height="190"
                                        alt="Card image cap">
                                    <div class="card-body">

                                        <p class="card-text text-center">Desejo cadastrar minha entidade</p>
                                        <div class="d-flex justify-content-center">
                                            <a href="${path}/cadastro/pessoa-juridica" class="btn btn-primary">Cadastrar-se</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--FIM DO CONTAINER DO FORMULARIO DE CADASTRO -->

    <!-- Footer -->
    <footer style="padding: 0 0 0 15;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <span class="copyright">Copyright &copy; Yaba Consultoria 2019</span>
                </div>
            </div>
        </div>
    </footer>

    
  <!-- JQUERY -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
  <!-- POPPER -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <!-- BOOTSTRAP -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="${path}/main/js/wow.min.js"></script>
  
  <!-- Contact form JavaScript -->
  <script src="${path}/main/js/jqBootstrapValidation.js"></script>

  <!-- Custom scripts for this template -->
  <script src="${path}/main/js/agency.min.js"></script>
  <script src="${path}/main/js/waypoints.min.js"></script>

</body>

</html>