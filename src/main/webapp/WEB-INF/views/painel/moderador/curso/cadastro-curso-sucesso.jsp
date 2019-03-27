<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <title>Advocacy Saúde - Cadastro de Curso</title>
  <!-- FAVICON -->
  <link rel="shortcut icon" href="/img/favicon.png" />
  <!-- BOOTSTRAP -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
  <!-- ICONS -->
  <link rel="stylesheet" href="/painel/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.0/css/all.css">
  <!-- SUMMERNOTE -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
  <!-- CUSTOM  -->
  <link rel="stylesheet" href="/painel/css/style.css">
  <link rel="stylesheet" href="/painel/css/custom-style.css">
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
          <li class="nav-item"><a href="${path}/painel/curso/cadastro" class="btn btn-danger float-right my-3"><i class="far fa-plus-square"></i> <strong>Cadastrar Curso</strong></a></li>                 
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

          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="alert alert-success" role="alert">
                <h4 class="alert-heading">Sucesso!</h4>
                <p>O curso foi cadastrado com sucesso na plataforma. <a href="${path}/painel/cursos" class="alert-link">Clique aqui</a> para visualizar os vídeos cadastrados.</p>
                <hr>
                <h4>${curso.titulo}</h4>
                <p class="mb-0">Código: ${curso.id}<br>Data/Hora de Cadastro: <fmt:formatDate value='${curso.dataCadastro}' type='both' /><br>Usuário: ${usuario.nome} ${usuario.sobrenome}</p>
              </div>
              <div class="card-header bg-primary">
                <div class="row">
                  <div class="col-12 text-center text-white display-5"> 
                  	<h2><strong>CADASTRO DE CURSO</strong></h2>
                  </div>
                </div>
              </div>
              <div class="card-body border">                
                <form class="forms-sample" action="${path}/curso/cadastro" method="post" acceptcharset="UTF-8" enctype="multipart/form-data">                  
                  <div class="row ">
                     <!-- INFOS CURSO -->
                    <div class="col-md-6">
                      <div class="row">    
                        <div class="col-md-12">            
                          <div class="form-group">
                            <label>Titulo: </label>
                            <input type="text" class="form-control" name="titulo" placeholder="Escreva aqui um titulo para o curso" required>
                          </div>
                        </div>
                      </div>
                      <div class="row">    
                        <div class="col-md-12"> 
                          <div class="form-group">
                            <label>Introdução: </label>
                            <textarea class="form-control" name="introducao" placeholder="Escreva aqui uma breve introdução sobre o curso ... " rows="13" required></textarea>
                          </div>  
                        </div> 
                      </div> 
                      <div class="row mt-5">
                        <div class="col-md-12">
                          <div class="form-group">
                            <label class="btn-bs-file btn btn-sm btn-secondary">
                              <strong>Carregar Imagem</strong>
                              <input type="file" id="input-img-banner" name="banner.arquivo" required>
                            </label>                        
                            <label class="btn-bs-file btn btn-sm btn-secondary">
                              <strong>Carregar Vídeo</strong>
                              <input type="file" name="video.arquivo" required>
                            </label>
                          </div>
                        </div>
                      </div> 
                    </div>                  
                    <!-- PREVIEW IMG -->
                    <div class="col-md-6">
                      <div class="row justify-content-center">
                        <div class="col-md-12">
                          <h3 class="text-secondary">Banner do Curso</h3>
                          <img src="https://www.nutribulletbrasil.com.br/arquivos/sem-foto.gif?v=635825126906770000"
                            id="img-banner" src="#" alt="Banner do Curso" class="border rounded" style="max-height: 270px; max-width: 100%;" />
                        </div>
                      </div>
                    </div> 
                  </div>

                  <!-- SUMMER NOTE -->
                  <div class="row mt-5">
                    <div class="col-md-12">
                      <div class="form-group">   
                        <h3 class="text-secondary">Conteúdo</h3>
                        <textarea class="form-control" id="summernote" name="conteudo" required></textarea>
                      </div>
                      <div class="mt-5">
                        <button type="submit" class="btn btn-secondary text-white mr-2"><strong>Enviar</strong></button>
                        <button class="btn btn-light">Cancel</button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->


          <!-- partial:${path}/painel/partials/_footer.html -->
          <footer class="footer">
            <div class="container-fluid clearfix">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright Â© 2019
                Yaba Consultoria Todos os direitos reservados</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
  </div>

  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script> 
  <script src="${path}/painel/js/off-canvas.js"></script>   
  <script>
    function readURL(input) {

      if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
          $('#img-banner').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
      }
    }

    $("#input-img-banner").change(function () {
      readURL(this);
    });</script>

  <script>
    $('#summernote').summernote({
      placeholder: 'Escreva o artigo aqui',
      tabsize: 2,
      height: 200
    });
  </script>
</body>

</html>