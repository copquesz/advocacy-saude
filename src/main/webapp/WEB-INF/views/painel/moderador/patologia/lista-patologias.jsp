<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
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
          <li class="nav-item"><button type="button" class="btn btn-danger float-right my-3" data-toggle="modal" data-target="#modal-cadastro-patologia"><i class="far fa-plus-square"></i> <strong>Cadastrar Patologia</strong></button></li>                 
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
                <div class="card border">
                    <div class="card-header bg-primary ">
                        <div class="row">
                            <div class="col-12 text-center text-white display-5"><h2><strong>PATOLOGIAS</strong></h2></div>
                        </div>
                    </div>
                    <div class="card-body">                          
                        <div class="row justify-content-start">
                            <c:if test="${empty patologias}">
                              <div class="col-12">
                                <div class="alert alert-danger" role="alert">
                                  Não há patologia(s) cadastrada(s). <a href="#" class="alert-link" data-toggle="modal" data-target="#modal-cadastro-patologia">Clique aqui</a> para cadastrar
                                </div>
                              </div>
                            </c:if>
                            <c:if test="${not empty patologias}">
                              <div class="col-12">
                                <table class="table table-hover border">
                                  <thead>
                                    <tr>
                                      <th class="bg-secondary border">Código Identificador</th>
                                      <th class="bg-secondary border">Nome</th>
                                      <th class="bg-secondary border">Sub-Patologias</th>
                                    </tr>
                                  </thead>
                                  <c:forEach var="patologia" items="${patologias}">
                                    <tbody>
                                      <tr>
                                        <th scope="row" class="border-primary">${patologia.id}</th>
                                        <td>${patologia.nome}</td>
                                        <td>
                                          <c:if test="${empty patologia.subpatologias}">
                                            <div class="alert alert-danger" role="alert">
                                              Não possui sub-patologia(s) cadastrada(s).<hr><a href="#" class="alert-link" data-toggle="modal" data-target="#modal-cadastro-subpatologia" data-id="${patologia.id}" data-patologia="${patologia.nome}">Cadastrar Sub-Patologia</a>
                                            </div>
                                          </c:if>
                                          <c:if test="${not empty patologia.subpatologias}">
                                            <div class="alert alert-success" role="alert">
                                              <a href="#" class="alert-link" data-toggle="modal" data-target="#modal-cadastro-subpatologia" data-id="${patologia.id}" data-patologia="${patologia.nome}">Cadastrar Sub-Patologia</a>
                                              <hr>
                                              <select class="form-control">
                                                <c:forEach var="subpatologia" items="${patologia.subpatologias}">
                                                  <option>${subpatologia.nome}</option>
                                                </c:forEach>    
                                              </select>                                            
                                            </div>
                                          </c:if>
                                        </td>                                          
                                      </tr>
                                    </tbody>
                                  </c:forEach>
                                </table>
                              </div>
                            </c:if>
                        </div>
                    </div>
                </div>
              </div>
          </div>
      </div>
      <!-- content-wrapper ends -->


          <!-- partial:${path}/painel/partials/_footer.html -->
          <footer class="footer">
            <div class="container-fluid clearfix">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019
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

  <!-- Modal Cadastro Patologia -->
  <div class="modal fade" id="modal-cadastro-patologia" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header bg-secondary">
          <h5 class="modal-title" id="exampleModalLongTitle">Cadastro de Patologia</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form class="forms-sample" action="${path}/painel/patologia/cadastro" method="post" acceptcharset="UTF-8">
          <div class="modal-body">
            <div class="container">                            
              <div class="row">    
                <div class="col-md-12">            
                  <div class="form-group">
                    <label>Nome da Patologia: </label>
                    <input type="text" class="form-control" name="nome" placeholder="Informe o nome da Patologia" required>
                  </div>
                </div>
              </div>
              <div class="row">    
                <div class="col-md-12">            
                  <div class="form-group">
                    <label>Descrição da Patologia: </label>
                    <textarea class="form-control" rows="5" name="descricao" placeholder="Descreva sobre a patologia ..."></textarea>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-success">Salvar</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>          
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- Modal Cadastro Sub-Patologia-->
  <div class="modal fade" id="modal-cadastro-subpatologia" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header bg-secondary">
          <h5 class="modal-title" id="exampleModalLongTitle">Cadastro de Sub-Patologia</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form class="forms-sample" action="${path}/painel/subpatologia/cadastro" method="post" acceptcharset="UTF-8">
          <div class="modal-body">
            <div class="container"> 
              <div class="row">    
                <div class="col-md-12">            
                  <div class="form-group">
                    <label>Patologia: </label>
                    <input type="hidden" class="form-control" id="id-patologia" name="patologia.id" required>
                    <input type="text" class="form-control" id="nome-patologia" disabled required>
                  </div>
                </div>
              </div>                           
              <div class="row">    
                <div class="col-md-12">            
                  <div class="form-group">
                    <label>Nome da Sub-Patologia: </label>
                    <input type="text" class="form-control" name="nome" placeholder="Informe o nome da Patologia" required>
                  </div>
                </div>
              </div>
              <div class="row">    
                <div class="col-md-12">            
                  <div class="form-group">
                    <label>Descrição da Sub-Patologia: </label>
                    <textarea class="form-control" rows="5" name="descricao" placeholder="Descreva sobre a patologia ..."></textarea>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-success">Salvar</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>          
          </div>
        </form>
      </div>
    </div>
  </div>

  
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>  
  <script src="${path}/painel/js/off-canvas.js"></script>  
  <script>
    $('#modal-cadastro-subpatologia').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget);
      var id_patologia = button.data('id');
      var nome_patologia = button.data('patologia');

      var modal = $(this);
      modal.find('#id-patologia').val(id_patologia);
      modal.find('#nome-patologia').val(nome_patologia);
    })
  </script>
</body>

</html>