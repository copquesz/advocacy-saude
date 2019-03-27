<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <title>Advocacy Saúde - Dashboard</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">

  <link rel="stylesheet" href="${path}/painel/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
  <link rel="stylesheet" href="${path}/painel/css/style.css">
  <link rel="stylesheet" href="${path}/painel/css/custom-style.css">
  <link rel="shortcut icon" href="${path}/painel/images/favicon.png" />
</head>

<body>
  <div class="container-scroller">
    <!-- partial:${path}/painel/partials/_navbar.html -->
    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
        <a class="navbar-brand brand-logo" href="${path}/painel/index.html">
          <h3 class="py-2" style="border-bottom: 2.5px solid #fdd546;">Advocacy Saúde</h3>
        </a>
        <a class="navbar-brand brand-logo-mini" href="${path}/painel/index.html">
          <h3>Advocacy Saúde</h3>
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
              <span class="profile-text">Olá, ${usuario.nome} ${usuario.sobrenome}!</span>
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
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
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
                    <small class="designation text-muted">Pessoa Física</small>
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
        </ul>
      </nav>

      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">

          <!-- CURSOS -->
          <div class="row grid-margin">
            <div class="col-lg-12">
              <div class="card" style="background-image: linear-gradient(rgba(254, 202, 87, 0.2), rgba(1, 163, 164, 0.2));">
                <div class="card-header bg-primary ">
                    <div class="row">
                        <div class="col-12 text-center text-white display-5"><h2><strong>Cursos Recentes</strong></h2></div>
                    </div>
                </div>
                <div class="card-body">
                  <c:if test="${empty cursos}">
                    <div class="col-12">
                      <div class="alert alert-danger" role="alert">
                        Não há curso(s) cadastrado(s).
                      </div>
                    </div>
                  </c:if>
                  <c:if test="${not empty cursos}">
                    <div class="loop owl-carousel owl-theme">
                      <c:forEach var="curso" items="${cursos}">    
                        <div class="item">
                          <a href="${path}/painel/curso/${curso.id}"><img class="m-2" src="${path}/${curso.banner.caminho}" alt="${curso.titulo}"></a>
                        </div>
                      </c:forEach>
                    </div>
                  </c:if>
                </div>
              </div>
            </div>
          </div> <!-- FIM CURSOS -->

          <!-- EVENTOS -->
          <div class="row"> 
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card" style="background-image: linear-gradient(rgba(254, 202, 87, 0.2), rgba(1, 163, 164, 0.2));"> 
                <div class="card-header bg-primary ">
                  <div class="row">
                      <div class="col-12 text-center text-white display-5"><h2><strong>Eventos Recentes</strong></h2></div>
                  </div>
                </div>
                <div class="card-body">                
                  <c:if test="${empty eventos}">
                    <div class="col-12">
                      <div class="alert alert-danger" role="alert">
                        Não há evento(s) cadastrado(s).
                      </div>
                    </div>
                  </c:if>
                  <c:if test="${not empty eventos}">
                    <div class="table-responsive">
                      <table class="table">
                        <thead>
                          <tr>
                            <th class="border">Evento</th>
                            <th class="border">Data</th>
                            <th class="border">Local</th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach var="evento" items="${eventos}">
                            <tr>
                              <td class="border">${evento.titulo}</td>
                              <td class="border">${evento.inicio}</td>
                              <td class="border">${evento.endereco.cidade} / ${evento.endereco.estado}</td>
                            </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
                  </c:if>
                </div>
              </div>
            </div>
          </div> <!-- FIM EVENTOS -->

          <!-- NOTÍCIAS -->          
          <div class="row"> 
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card" style="background-image: linear-gradient(rgba(254, 202, 87, 0.2), rgba(1, 163, 164, 0.2));"> 
                <div class="card-header bg-primary ">
                  <div class="row">
                      <div class="col-12 text-center text-white display-5"><h2><strong>Notícias Recentes</strong></h2></div>
                  </div>
                </div>
                <div class="card-body">                            
                  <!-- CARD DE NOTICIAS -->
                  <c:if test="${empty noticias}">
                    <div class="row">
                      <div class="col-12">
                        <div class="alert alert-danger" role="alert">
                          Não há notícia(s) cadastrada(s).
                        </div>
                      </div>
                    </div>
                  </c:if>
                  <c:if test="${not empty noticias}">
                    <div class="row">
                      <div class="col-md-12"> 
                        <div class="row">
                          <c:forEach var="noticia" items="${noticias}"> 
                            <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 p-3">
                              <img class="card-img" src="${path}/${noticia.banner.caminho}" alt="${noticia.titulo}" style="height: 270px; opacity: 0.5;">
                              <div class="card-img-overlay text-black">
                                <h5 class="card-title text-black text-center p-3"><strong>${noticia.titulo}</strong></h5>
                                <p class="card-text text-justify p-3">${noticia.introducao}</p>
                                <p class="card-text text-center p-3" style="position: absolute; bottom: 0; margin-bottom: 10px;"><strong>Publicado: <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${noticia.dataCadastro}"/></strong></p>
                              </div>
                            </div>
                          </c:forEach>
                        </div>
                      </div>
                    </div>
                  </c:if>
                </div>
              </div>
            </div>
          </div><!-- FIM NOTÍCIAS -->
          



        </div><!-- content-wrapper ends -->       



        <!-- partial:${path}/painel/partials/_footer.html -->
        <footer class="footer">
          <div class="container-fluid clearfix">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019
              Yaba Consultoria Todos os direitos reservados</span>
          </div>
        </footer>
        <!-- partial -->        
        
      </div><!-- main-panel ends -->     
    </div><!-- page-body-wrapper ends -->
  </div>

  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>  
  <script src="${path}/painel/js/off-canvas.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>   
  <script>
    $('.owl-carousel').owlCarousel({
      center: true,
      items: 3,
      loop: true,
      margin: 10,
      autoplay: true,
      autoplayTimeout: 3000,
      autoplayHoverPause: true,
      responsive:{
        0:{
            items:0
        },
        600:{
            items:3
        },
        1000:{
            items:3
        }
      }
    });
  </script>
</body>

</html>