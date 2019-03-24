<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <title>Advocacy Saúde - Cadastro de Curso</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">

  <link rel="stylesheet" href="${path}/painel/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"> 

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
                    <div class="col-12 text-center text-white display-5"><h2><strong>CADASTRO DE NOTÍCIA</strong></h2></div>
                  </div>
                </div>
                <div class="card-body border">
                  <form class="forms-sample" action="${path}/painel/noticia/cadastro" method="post" acceptcharset="UTF-8" enctype="multipart/form-data">
                    <div class="row">
                      <!-- COLUNA ESQUERDA -->
                        <div class="col-md-6">
                            <img src="https://www.nutribulletbrasil.com.br/arquivos/sem-foto.gif?v=635825126906770000" height="500" width="100%" id="img-banner" alt="Banner do Curso" class="border border-primary rounded" />
                            <div class="form-group py-2">
                                <label class="btn-bs-file btn btn-lg btn-secondary">Carregar Imagem<input type="file" id="input-file-img-banner" name="banner.arquivo" required/></label>
                            </div>
                        </div><!-- col-6 esquerda ends -->  

                        <!-- COLUNA DIREITA - FORMULARIO -->
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Titulo</label>
                                        <input type="text" class="form-control" name="titulo" placeholder="Escreva um título para a notícia ..." required>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Introdução</label>
                                        <textarea class="form-control" name="introducao" placeholder="Escreva uma introdução para a notícia ..." rows="4" maxlength="280" required></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputName1">Prioridade de Exibição:</label>
                                        <select class="form-control" name="relevancia" required>
                                          <c:forEach var="relevancia" items="${relevancias}"> 
                                            <option value="${relevancia}">${relevancia.descricao}</option>
                                          </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="exampleInputName1">Referencia</label>
                                        <input type="text" class="form-control" id="referencia" name="referencia" placeholder="Ex: wwww.google.com.br" value="http://" ">
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-2">
                              <div class="col-md-12">
                                  <div class="form-group">
                                      <label>Conteudo:</label>
                                      <div class="row">
                                          <div class="col-12">
                                              <textarea id="summernote" name="conteudo" required=></textarea>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                            </div>
                        </div><!-- col-6  direita ends --> 
                      </div><!-- row form ends -->  
                      <hr>
                      <div class="row justify-content-end">
                        <div class="col-12">
                            <div class="mt-2">
                              <button type="submit" class="btn btn-success text-white mr-2 float-right"><strong>Salvar</strong></button>
                              <button class="btn btn-danger mr-2 float-right">Limpar</button>
                            </div>
                        </div>
                      </div><!-- row ends -->

                    </div>  

                  </form>      
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
  
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script> 
  <script src="${path}/painel/js/off-canvas.js"></script>   
  <script>
    $('#summernote').summernote({
        placeholder: 'Escreva o artigo aqui ...',
        tabsize: 2,
        height: 100
    });
  </script>
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

    $("#input-file-img-banner").change(function () {
        readURL(this);
    });
  </script>
</body>

</html>