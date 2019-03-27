<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <title>Advocacy Saúde - Notícias</title>
  <!-- FAVICON -->
  <link rel="shortcut icon" href="/img/favicon.png" />
  <!-- BOOTSTRAP -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
  <!-- ICONS -->
  <link rel="stylesheet" href="/painel/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css">
  <!-- CUSTOM  -->
  <link rel="stylesheet" href="/painel/css/style.css">
  <link rel="stylesheet" href="/painel/css/custom-style.css">

  <style type="text/css">
    .card-noticia {
      margin-bottom: 20px;
      transition: all .2s ease-in-out
      }

    .card-noticia:hover {
      transform: scale(1.02);
      box-shadow: 1px 1px 25px #636e72;
    }

    .card-noticia img {
        width: 100%;
        height: 270px;
        background-color: transparent;
    }    

    .text-shadow{
      text-shadow: 1px 1px 2px #00b894;
    }

    @media (min-width: 992px) and (max-width: 1200px){
      img > .card-img-top{
        height: 500px;        
      }
    }
    @media (min-width: 1201px){
      img > .card-img-top{
        height: 240px;        
      }
    }
     @media (min-width: 2560px){
      img > .card-img-top{
        height: 350px;
      }
    }
  </style>

</head>

<body>
  <div class="container-scroller">
    <!-- partial:${path}/painel/partials/_navbar.html -->
    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
        <a class="navbar-brand brand-logo" href="#">
          <img src="/painel/images/logo-branco.png" style="height: auto;">
        </a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center">
        <ul class="navbar-nav navbar-nav-left header-links d-none d-md-flex">          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="fas fa-chart-line"></i>Estatísticas</a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="fas fa-star-half-alt"></i>Favoritos</a>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item"><a href="${path}/painel/noticia/cadastro" class="btn btn-danger float-right my-3"><i class="far fa-plus-square"></i> <strong>Cadastrar Notícia</strong></a></li>                 
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#"
              data-toggle="dropdown">
              <i class="fas fa-bell"></i>
              <span class="count">0</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
              aria-labelledby="notificationDropdown">   
              <a class="dropdown-item">
                <p class="mb-0 font-weight-normal float-left">Você não possui notificações!</p>
                <div class="dropdown-divider"></div>
              </a>           
            </div>
          </li>
          <li class="nav-item dropdown d-none d-xl-inline-block">
            <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <span class="profile-text">Olá, ${usuario.nome} ${usuario.sobrenome} !</span>
              <img class="img-xs rounded-circle" src="${path}/painel/images/user-avatar-male.png" alt="Profile image">
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
              <a class="dropdown-item p-0">
                <div class="d-flex border-bottom">
                  <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                    <i class="mdi mdi-bookmark-plus-outline mr-0 text-gray"></i>
                  </div>
                  <div class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">
                    <i class="mdi mdi-account-outline mr-0 text-gray"></i>
                  </div>
                  <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                    <i class="mdi mdi-alarm-check mr-0 text-gray"></i>
                  </div>
                </div>
              </a>
              <a class="dropdown-item mt-2">
                Meus Dados
              </a>
              <a class="dropdown-item">
                Trocar Senha
              </a>
              <a class="dropdown-item" href="${path}/logout">
                Sair
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
          data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:${path}/painel/partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <div class="nav-link">
              <div class="user-wrapper">
                <div class="profile-image">
                  <img src="${path}/painel/images/user-avatar-male.png" alt="profile image">
                </div>
                <div class="text-wrapper">
                  <p class="profile-name">${usuario.nome} ${usuario.sobrenome}</p>
                  <div>
                    <small class="designation text-muted">Moderador</small>
                    <span class="fas fa-circle text-success"></span>
                  </div>
                </div>
              </div>              
            </div>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="${path}/painel">
                  <i class="menu-icon fas fa-desktop"></i>
                  <span class="menu-title">Dashboard</span>
              </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="${path}/painel/cursos">
                  <i class="menu-icon fas fa-video"></i>
                  <span class="menu-title">Cursos</span>
              </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="${path}/painel/eventos">
                  <i class="menu-icon far fa-calendar-alt"></i>
                  <span class="menu-title">Eventos</span>
              </a>
          </li>
          <!--
          <li class="nav-item">
              <a class="nav-link" href="${path}/painel/editais">
                  <i class="menu-icon fas fa-book-reader"></i>
                  <span class="menu-title">Editais</span>
              </a>
          </li> 
          -->
          <li class="nav-item">
              <a class="nav-link" href="${path}/painel/noticias">
                  <i class="menu-icon far fa-newspaper"></i>
                  <span class="menu-title">Notícias</span>
              </a>
          </li>  
          <li class="nav-item">
              <a class="nav-link" href="${path}/painel/patologias">
                  <i class="menu-icon fas fa-bezier-curve"></i>
                  <span class="menu-title">Patologias</span>
              </a>
          </li>          
        </ul>
      </nav>

      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-lg-12 grid-margin">
              <div class="card">
                <div class="card-header bg-primary ">
                  <div class="row">
                    <div class="col-12 text-center text-white display-5"><h2><strong>NOTICIAS</strong></h2></div>
                  </div>
                </div>
                <div class="card-body">                  
                  <c:if test="${empty noticias}">
                    <div class="row">
                      <div class="col-12">
                        <div class="alert alert-danger" role="alert">
                          Não há notícias cadastrado(s). <a href="${path}/painel/noticia/cadastro" class="alert-link">Clique aqui</a> para cadastrar.
                        </div>
                      </div>
                    </div>
                  </c:if>
                    <c:if test="${not empty noticias}">
                      <div class="row">
                        <c:forEach var="noticia" items="${noticias}"> 
                          <div class="col-xl-4 col-lg-6 col-md-12 px-4 py-4 d-flex align-items-stretch">
                            <div class="card card-noticia border pb-3">
                              <img class="card-img-top" src="/${noticia.banner.caminho}" alt="Card image cap">
                              <h5 class="card-header text-primary text-shadow">${noticia.titulo}</h5>
                              <div class="card-body">
                                <h5 class="card-title"><small><strong><i class="far fa-calendar-check"></i> <fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value = "${noticia.dataCadastro}"/></strong></small></h5>
                                <p class="card-text text-justify">${noticia.introducao}.</p>
                                <a href="#" class="btn btn-primary mb-3" data-toggle="modal" data-target="#modal-noticia-${noticia.id}" style="position: absolute; bottom: 0;">Visualizar</a>
                              </div>
                            </div>
                          </div>
                        </c:forEach>
                      </div>
                    </c:if>
                  </div>
                </div><!-- row ends -->      
              </div><!-- card ends -->           
            </div> <!-- col main ends-->
          </div> <!-- row col main ends --> 


          <footer class="footer">
            <div class="container-fluid clearfix">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019
                Yaba Consultoria Todos os direitos reservados</span>
            </div>
          </footer>         
        </div><!-- content wrapper ends -->
      </div><!-- main-panel ends -->
    </div><!-- page-body-wrapper ends -->
  </div>

  <!-- Modals Exibir Notícias-->
  <c:forEach var="noticia" items="${noticias}">       
    <div class="modal fade" id="modal-noticia-${noticia.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centere modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header" style="background: linear-gradient(to right, rgba(1, 163, 164, 1), rgba(254, 202, 87, 1));">
            <h3 class="modal-title text-white">${evento.titulo}</h3>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-4"><img class="img-fluid" src="${path}/${noticia.banner.caminho}"></div>
                <div class="col-md-8" style="height: auto; overflow-y: scroll;">
                  <h4 class="py-3">
                    <strong>
                      <span class="float-left"><i class="far fa-calendar-times mr-2"></i><fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${noticia.dataCadastro}"/></span>
                      <span class="float-right text-uppercase">${noticia.titulo}</span>
                    </strong>
                  </h4>
                  <hr>
                  <div class="text-justify py-3">${noticia.conteudo}</div>
                </div>
              </div>
            </div>
          </div>          
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
          </div>
        </div>
      </div>
    </div>
  </c:forEach>
  
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>   
  <script src="${path}/painel/js/off-canvas.js"></script>  
</body>

</html>