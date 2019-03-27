<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <title>Advocacy Saúde - Eventos</title>
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
  <style type="text/css"> 
    .event-card{
      transition: all .2s ease-in-out
    }
    .event-card:hover{
      transform: scale(1.02);
      box-shadow: 1px 1px 25px #636e72;
    }
    .btn-grey{
      background-color:#D8D8D8;
      color:#FFF;
    }
    .rating-block{
      background-color:#FAFAFA;
      border:1px solid #EFEFEF;
      padding:15px 15px 20px 15px;
      border-radius:3px;
    }
    .bold{
      font-weight:700;
    }
    .padding-bottom-7{
      padding-bottom:7px;
    }

    .review-block{
      background-color:#FAFAFA;
      border:1px solid #EFEFEF;
      padding:15px;
      border-radius:3px;
      margin-bottom:15px;
    }
    .review-block-name{
      font-size:12px;
      margin:10px 0;
    }
    .review-block-date{
      font-size:12px;
    }
    .review-block-rate{
      font-size:13px;
      margin-bottom:15px;
    }
    .review-block-title{
      font-size:15px;
      font-weight:700;
      margin-bottom:10px;
    }
    .review-block-description{
      font-size:13px;
    }
    @media (min-width: 992px) and (max-width: 1200px){
      .card-img{
        height: 250px;        
      }
    }
    @media (min-width: 1201px){
      .card-img{
        height: 240px;        
      }
    }
     @media (min-width: 2560px){
      .card-img{
        height: 350px;
      }
    }
  </style>
</head>

<body>
  <div class="container-scroller">
    <!-- NAVBAR TOP -->
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
          <li class="nav-item"><a href="${path}/painel/curso/cadastro" class="btn btn-danger float-right my-3" data-toggle="modal" data-target="#modal-cadastro-evento"><i class="far fa-plus-square"></i> <strong>Cadastrar Evento</strong></a></li>
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
    <!-- SIDEBAR -->
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

      <!-- MAIN CONTAINER -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
              <div class="col-lg-12 grid-margin">                 
                  <div class="card border">                      
                      <div class="card-header bg-primary ">
                          <div class="row">
                              <div class="col-12 text-center text-white display-5"><h2><strong>EVENTOS</strong></h2></div>
                          </div>
                      </div>
                      <div class="card-body"> 
                        <div class="row justify-content-start">
                          <c:if test="${empty eventos}">
                            <div class="col-12">
                              <div class="alert alert-danger" role="alert">
                                Não há eventos cadastrado(s). <a href="#" data-toggle="modal" data-target="#modal-cadastro-evento" class="alert-link">Clique aqui</a> para cadastrar
                              </div>
                            </div>
                          </c:if>
                          <c:if test="${not empty eventos}">
                            <div class="row">
                              <c:forEach var="evento" items="${eventos}">                                 
                                  <div class="col-md-12 col-lg-6 col-xl-4 my-3 d-flex align-items-stretch">
                                    <div class="card mb-3 event-card">
                                      <div class="row no-gutters">
                                        <div class="col-md-12 col-lg-12 col-xl-12">
                                          <a href="#" data-toggle="modal" data-target="#modal-evento-${evento.id}"><img src="${path}/${evento.banner.caminho}" class="card-img" alt="${evento.titulo}"></a>
                                        </div>
                                        <div class="col-md-12 col-lg-12 col-xl-12">
                                          <div class="card-body">
                                            <h5 class="card-title"><strong><a href="#" data-toggle="modal" data-target="#modal-evento-${evento.id}">${evento.titulo}</a><hr></strong></h5>
                                            <p class="card-text text-justify">${evento.introducao}<hr></p>
                                            <p class="card-text"><small><strong><i class="far fa-calendar-alt"></i> Data Início: ${evento.inicio}</small></strong></p>    
                                            <p class="card-text"><small><strong><i class="far fa-calendar-alt"></i> Data Fim: ${evento.fim}</small></strong></p>  
                                            <p class="card-text"><small><strong><i class="fas fa-map-marked-alt"></i> Local: ${evento.endereco.cidade} / ${evento.endereco.estado}</small></strong></p>
                                          </div>
                                        </div>                                  
                                      </div>                                
                                    </div>
                                  </div>                   
                              </c:forEach>
                            </div>
                          </c:if>
                        </div>
                      </div>
                  </div>
              </div> <!-- main col grid ends -->    
          </div> <!-- main row ends -->    
        </div> <!-- content-wrapper ends --> 

        <!-- FOOTER -->   
        <footer class="footer">
          <div class="container-fluid clearfix">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019
              Yaba Consultoria Todos os direitos reservados</span>
          </div>
        </footer>   

      </div> <!-- main-panel ends -->
    </div> <!-- page-body-wrapper ends -->

    <!-- Modal Cadastro de Evento -->
    <div class="modal fade" id="modal-cadastro-evento" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header border">
            <h5 class="modal-title" id="exampleModalLongTitle"><h2>Cadastro de Evento</h2></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form class="forms-sample" action="${path}/painel/evento/cadastro" method="post" acceptcharset="UTF-8" enctype="multipart/form-data">
            <div class="modal-body">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-12">                
                    <div class="row justify-content-around">
                      <div class="col-lg-6 p-3 rounded" style="background-color: rgba(38, 103, 115, 0.2);">
                        <fieldset>
                        <legend class="pt-3 text-primary"><h4> <i class="far fa-file-alt"></i> Informações Gerais<hr></h4></legend>                    
                          <div class="row">    
                            <div class="col-md-12">            
                              <div class="form-group">
                                <label>Titulo: </label>
                                <input type="text" class="form-control" name="titulo" placeholder="Título do evento" required>
                              </div>
                            </div>
                          </div>
                          <div class="row">    
                            <div class="col-md-6">            
                              <div class="form-group">
                                <label>Inicio: </label>
                                <input type="text" class="form-control" id="inicio" name="inicio" required>
                              </div>
                            </div>
                            <div class="col-md-6">            
                              <div class="form-group">
                                <label>Fim: </label>
                                <input type="text" class="form-control" id="fim" name="fim" required>
                              </div>
                            </div>
                          </div>
                          <div class="row">    
                            <div class="col-md-12">            
                              <div class="form-group">
                                <label>Organizador: </label>
                                <input type="text" class="form-control" name="organizador" placeholder="Quem está organizando este evento ?" required>
                              </div>
                            </div>
                          </div>
                          <div class="row">    
                            <div class="col-md-6">            
                              <div class="form-group">
                                <label>Área: </label>
                                <select class="form-control" name="patologia.id" required>
                                  <c:forEach var="patologia" items="${patologias}">
                                    <option value="${patologia.id}">${patologia.nome}</option> 
                                  </c:forEach>                             
                                </select>
                              </div>
                            </div>
                            <div class="col-md-6">            
                              <div class="form-group">
                                <label>Tipo: </label>
                                <select class="form-control" name="tipo" required>
                                  <c:forEach var="tipo" items="${tipos}">
                                    <option value="${tipo}">${tipo.descricao}</option> 
                                  </c:forEach> 
                                </select>
                              </div>
                            </div>
                          </div>
                          <div class="row">    
                            <div class="col-md-12">            
                              <div class="form-group">
                                <label>Introdução: </label>
                                <textarea class="form-control" name="introducao" rows="3" maxlength="90" placeholder="Faça uma breve introdução sobre o evento ..." required></textarea>
                              </div>
                            </div>
                          </div>
                          <div class="row">    
                            <div class="col-md-12">            
                              <div class="form-group">
                                <label>Conteúdo: </label>
                                <textarea class="form-control" id="summernote" name="conteudo" rows="6" required></textarea>
                              </div>
                            </div>
                          </div>
                        </fieldset>                    
                      </div>
                      <div class="col-lg-5 p-3 rounded" style="background-color: rgba(38, 103, 115, 0.2);">
                        <fieldset>
                        <legend class="pt-3 mb-3 text-primary"><h4> <i class="far fa-image"></i> Banner<hr></h4></legend>
                          <div class="row justify-content-start">
                            <div class="col-md-6">            
                              <div class="form-group">                            
                                <img src="https://www.nutribulletbrasil.com.br/arquivos/sem-foto.gif?v=635825126906770000"
                                id="img-banner" src="#" alt="Banner do Evento" class="border rounded" style="max-height: 270px; max-width: 100%;" />
                                <label class="btn-bs-file btn btn-sm btn-secondary mt-3">
                                  <strong>Carregar Imagem</strong>
                                  <input type="file" id="input-img-banner" name="banner.arquivo" required>
                                </label>
                              </div>
                            </div>
                          </div>
                        </fieldset>
                        <fieldset>
                        <legend class="pt-3 mb-3 text-primary"><h4> <i class="fas fa-map-marked-alt"></i> Local<hr></h4></legend>
                          <div class="row">    
                            <div class="col-md-5">            
                              <div class="form-group">
                                <label>Cep: </label>
                                <input type="text" class="form-control" id="cep" name="endereco.cep" placeholder="Informe o cep do evento" required>
                              </div>
                            </div>
                          </div>
                          <div class="row">    
                            <div class="col-md-7">            
                              <div class="form-group">
                                <label>Logradouro: </label>
                                <input type="text" class="form-control" id="logradouro" name="endereco.logradouro" placeholder="Ex: Avenida Paulista" required>
                              </div>
                            </div>
                            <div class="col-md-2">            
                              <div class="form-group">
                                <label>Nº: </label>
                                <input type="text" class="form-control" name="endereco.logradouro" placeholder="" required>
                              </div>
                            </div>
                            <div class="col-md-3">            
                              <div class="form-group">
                                <label>Complemento: </label>
                                <input type="text" class="form-control" name="endereco.numero" placeholder="Ex: Pavilhão 22">
                              </div>
                            </div>
                          </div>
                          <div class="row">    
                            <div class="col-md-7">            
                              <div class="form-group">
                                <label>Bairro: </label>
                                <input type="text" class="form-control" id="bairro" name="endereco.bairro" placeholder="Ex: Bela Vista" required>
                              </div>
                            </div>
                            <div class="col-md-2">            
                              <div class="form-group">
                                <label>Cidade: </label>
                                <input type="text" class="form-control" id="cidade" name="endereco.cidade" placeholder="Ex: São Paulo" required>
                              </div>
                            </div>
                            <div class="col-md-3">            
                              <div class="form-group">
                                <label>Estado: </label>
                                <select class="form-control" id="estado" name="endereco.estado" required>
                                  <option value="Não primaryrmado">Selecione ...</option>
                                  <option value="Acre">Acre</option>
                                  <option value="Alagoas">Alagoas</option>
                                  <option value="Amapá">Amapá</option>
                                  <option value="Amazonas">Amazonas</option>
                                  <option value="Bahia">Bahia</option>
                                  <option value="Ceará">Ceará</option>
                                  <option value="Distrito Federal">Distrito Federal</option>
                                  <option value="Espírito Santo">Espírito Santo</option>
                                  <option value="Goiás">Goiás</option>
                                  <option value="Maranhão">Maranhão</option>
                                  <option value="Mato Grosso">Mato Grosso</option>
                                  <option value="Mato Grosso do Sul">Mato Grosso do Sul</option>
                                  <option value="Minas Gerais">Minas Gerais</option>
                                  <option value="Pará">Pará</option>
                                  <option value="Paraíba">Paraíba</option>
                                  <option value="Paraná">Paraná</option>
                                  <option value="Pernambuco">Pernambuco</option>
                                  <option value="Piauí">Piauí</option>
                                  <option value="Rio de Janeiro">Rio de Janeiro</option>
                                  <option value="Rio Grane do Norte">Rio Grande do Norte</option>
                                  <option value="Rio Grande do Sul">Rio Grande do Sul</option>
                                  <option value="Rondônia">Rondônia</option>
                                  <option value="Roraima">Roraima</option>
                                  <option value="Santa Catarina">Santa Catarina</option>
                                  <option value="São Paulo">São Paulo</option>
                                  <option value="Sergipe">Sergipe</option>
                                  <option value="Tocantins">Tocantins</option>
                                </select>
                              </div>
                            </div>
                          </div>
                        </fieldset>
                      </div>
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

    <!-- Modals Exibir Eventos-->
    <c:forEach var="evento" items="${eventos}">       
      <div class="modal fade" id="modal-evento-${evento.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-header" style="background: linear-gradient(to right, rgba(1, 163, 164, 1), rgba(254, 202, 87, 1));">
              <h3 class="modal-title text-white">${evento.titulo}</h3>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">            
              <div class="text-justify">
                <h5><strong><i class="fas fa-info-circle"></i> SOBRE O EVENTO:</strong><hr></h5>
                ${evento.conteudo}
              </div>
              <div class="text-justify pt-5">
                <h5><strong><i class="fas fa-map-marked-alt"></i> DATA:</strong><hr></h5>
                Início: ${evento.inicio}<br>Fim: ${evento.fim}
              </div>
              <div class="text-justify pt-5">
                <h5><strong><i class="far fa-calendar-alt"></i> LOCAL:</strong><hr></h5>
                ${evento.endereco.logradouro}, ${evento.endereco.numero} <c:if test="${evento.endereco.complemento ne 'Não Informado'}">- ${evento.endereco.complemento}</c:if>              
                <br>${evento.endereco.bairro}, ${evento.endereco.cidade}/${evento.endereco.estado} - ${evento.endereco.cep}
              </div>
              <div class="text-justify pt-5">
                <h5><strong><i class="far fa-plus-square"></i> OUTRAS INFORMAÇÕES:</strong><hr></h5>
                Tipo: ${evento.tipo.descricao}<br>Organizador: ${evento.organizador}<br>Área de Interesse: ${evento.patologia.nome}
              </div>
            </div>
            <hr>
            <div class="modal-footer">
              <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
            </div>
          </div>
        </div>
      </div>
    </c:forEach>

  </div> <!-- container-scroller ends -->

  <!-- JQUERY -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
  <!-- POPPER -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <!-- BOOTSTRAP -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <!-- API VIA CEP -->
  <script src="/js/api-via-cep.js"></script>
  <!-- SUMMERNOTE -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>  
  <!-- MASKINPUT -->
  <script src="/js/jquery.maskedinput.js"></script>
  <!-- OFFCANVAS -->
  <script src="/painel/js/off-canvas.js"></script> 
  <!-- CUSTOM -->
  <script>

    //Função de exibição da imagem no preloader do banner
    function readURL(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
          $('#img-banner').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
      }
    }

    // Evento para exibir a imagem no preloader
    $("#input-img-banner").change(function () {
      readURL(this);
    });

    ///Instância do Summernote
    $('#summernote').summernote({
      placeholder: 'Descreva o que é ofertado, informações adicionais e curiosidades do evento ...',
      tabsize: 2,
      height: 200
    });

    //Instância da máscara dos inputs
    $("#cep").mask("99999-999");
    $("#inicio").mask("99/99/9999 - 99:99");
    $("#fim").mask("99/99/9999 - 99:99");

  </script>
</body>

</html>