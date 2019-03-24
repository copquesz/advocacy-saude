<!DOCTYPE html>
<html lang="pt-br">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Advocacy Saúde</title>

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
  <!-- Navigation -->
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
          <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${path}/#header">Home</a></li>
          <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${path}/#sobre">Sobre</a></li>
          <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${path}/#services">Serviços</a></li>
          <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${path}/#noticias">Noticias</a></li>
          <li class="nav-item"><a class="nav-link js-scroll-trigger" href="${path}/#contact">Contato</a></li>
          <li class="nav-item mb-0"><a href="${path}/login" class="btn btn-primary pr-5 pl-5">Entrar</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Modal de login -->
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
              <input type="text" id="cpf" class="fadeIn second" name="cpf" placeholder="CPF">
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

  <div id="header">
    <div class="container-fluid p-0">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="${path}/main/img/img-slide/Slide2.JPG" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
              <div class="intro-text">
                <!-- <div class="intro-heading text-uppercase text-green title-sobre">ADOCACY SAÚDE</div> -->
                <div class="display-4 text-dark "
                  style="background-color: rgba(255, 225, 127, 0.596); border-radius: 15px 50px;">
                  Conteúdo introdutório para fortalecer associações de pacientes​</div>
                <a class="btn btn-green btn-xl text-uppercase js-scroll-trigger" href="#services">Cadastre-se</a>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${path}/main/img/img-slide/Slide6.JPG" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
              <div class="intro-text">
                <!-- <div class="intro-heading text-uppercase text-primary">ADOCACY SAÚDE</div> -->
                <div class="display-4 text-dark"
                  style="background-color: rgba(255, 225, 127, 0.596); border-radius: 15px 50px;">
                  Informação precisa para ajudar na gestão das organizações sociais</div>
                <a class="btn btn-green btn-xl text-uppercase js-scroll-trigger" href="#services">Cadastre-se</a>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="${path}/main/img/img-slide/Slide4.JPG" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
              <div class="intro-text">
                <div class="display-4 text-dark"
                  style="background-color: rgba(255, 225, 127, 0.596); border-radius: 15px 50px;">
                  Conhecimento para aprimorar é expandir práticas</div>
                <a class="btn btn-green btn-xl text-uppercase js-scroll-trigger" href="#services">Cadastre-se</a>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

    </div>
  </div>

  <!-- Services -->
  <section id="sobre" class="sobre-bg">
    <div class="container">
      <div class="row ">
        <div class="col-sm-12 col-md-5 bg-gray wow animated bounceInLeft">
          <div class="wow animated bounceInLeft slower">
            <div>
              <h3 class="title-sobre text-green">Conheça o Advocacy Saúde</h3>
            </div>
            <p class="text-justify">
              O Advocacy Saúde é uma iniciativa da Interfarma com objetivo de promover o diálogo entre as​

              entidades do terceiro setor de diferentes segmentos, além de disponibilizar informações gerais​

              sobre o universo da saúde para as associações de pacientes em fase inicial ou que ainda estão​

              atuando na informalidade contribuindo para o seu fortalecimento e alinhamento ao Código de​

              Conduta da própria Interfarma.
              <br>
              O Advocacy Saúde foi desenvolvido por meio de um processo participativo, contando com​

              contribuições de representantes da indústria, líderes de associações de pacientes e​

              profissionais de outros setores. A ideia é disponibilizar conteúdos em texto e vídeo de forma concentrada
              para agilizar o acesso às informações para as novas organizações sociais.​
            </p>
          </div>
        </div>
        <div class="col-sm-12 col-md-7 align-self-center ">
          <div class=" wow animated rollIn">
            <!-- <img src="img/img-custom/sobre-bg-1.JPG" alt="" width=""> -->
            <!-- <video controls src="video/Visão da EaD no Brasil.mp4" width="900" height="700"></video> -->
            <img class="img-fluid rounded-circle" src="${path}/main/img/img-slide/Slide5.JPG" alt="" wight>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- SERVIÇOS -->
  <section id="services" class="services-bg">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase text-green">Serviços </h2>
          <h3 class="section-subheading text-muted">Conhecimento e informação para associações de pacientes em
            diferentes formatos. Todos os conteúdos disponibilizados por meio do Advocacy Saúde foram desenvolvidos para
            atender as demandas técnicas e institucionais das associações de pacientes em fase de constituição.</h3>
        </div>
      </div>
      <!-- 2 colunas -->
      <div class="row text-center justify-content-center">
        <!-- CURSOS -->
        <div class="box col-sm-12 col-md-3 ">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-green"></i>
            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Videos</h4>
          <p class="text-center">Para compartilhar conhecimento de forma rápida e eficaz, a equipe do Advocacy Saúde
            desenvolveu em vídeo Encontros Temáticos com duração de aproximadamente dez minutos para tratar de
            diferentes temas. ​
            Você pode enviar sugestões de temas que gostaria de que fossem apresentados aqui.​</p>
        </div>

        <div class="box col-sm-12 col-md-3">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-green"></i>
            <i class="fas fa-file-contract fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Editais</h4>
          <p class="text-center">Para ampliar as oportunidades de captação de recursos das organizações sociais, nesta
            área serão disponibilizados editais de empresas e fundações nacionais ou internacionais, <span
              class="text-primary"> <a href="#"> Clique Aqui!</a></span>
          </p>
        </div>
        <div class="box col-sm-12 col-md-3">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-green"></i>
            <i class="fas fa-calendar-alt fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Eventos</h4>
          <p class="text-center">Eventos que interessam às associações de pacientes, promovidos por elas ou por outras
            organizações. <br> Saiba mais.
            Para divulgar seu evento, <span class="text-primary"> <a href="#"> Click Aqui!</a></span></p>
        </div>
        <div class="box col-sm-12 col-md-3">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-green"></i>
            <i class="fas fa-newspaper fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Noticias</h4>
          <p class="text-center">Reunimos neste espaço notícias, artigos de interesse das organizações sociais que atuam
            na área da saúde. ​

            Você também pode nos enviar informações relevantes para que sejam compartilhadas aos usuários da plataforma.
            Para enviar seu comentário, <span class="text-primary"> <a href="#"> Clique Aqui!</a></span>
          </p>
        </div>

      </div>

      <!-- 3 colunas -->
      <!-- <div class="row text-center justify-content-center"> -->
      <!-- 1 -->
      <!-- <div class="box col-sm-12 col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-green"></i>
            <i class="fas fa-calendar-alt fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Eventos</h4>
          <p class="text-center">Eventos que interessam às associações de pacientes, promovidos por elas ou por outras
            organizações. <br> Saiba mais.
            Para divulgar seu evento, <span class="text-primary"> <a href="#"> Click Aqui!</a></span></p>
        </div> -->

      <!-- 2 -->
      <!-- <div class="box col-sm-12 col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-green"></i>
            <i class="fas fa-file-contract fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Editais</h4>
          <p class="text-center">Selecionamos editais de organizações e empresas nacionais e internacionais,
            embaixadas,
            dentre outras fontes de captação de recursos que trabalham com a temáticas relacionadas à saúde. <span
              class="text-primary"> <a href="#"> Clique Aqui!</a></span>
          </p>
        </div> -->
      <!-- 3 -->
      <!-- <div class="box col-sm-12 col-md-4">
          <span class="fa-stack fa-4x">
            <i class="fas fa-circle fa-stack-2x text-green"></i>
            <i class="fas fa-book-reader fa-stack-1x fa-inverse"></i>
          </span>
          <h4 class="service-heading">Biblioteca Digital</h4>
          <p class="text-center">Informação detalhada sobre os temas das vídeo-aulas. Selecionamos materiais
            complementares para auxiliar no seu processo de aprendizado ou de aprimoramento sobre temas, como Advocacy,
            Comunicação, Gestão, entre outros. <span class="text-primary"> <a href="#"> Clique Aqui!</a></span>
          </p>
        </div> -->
      <!-- </div> -->

    </div>
  </section>
  <!-- SERVIÇOS -->

  <!--NOTICIAS -->
  <section class="bg-light py-5" id="noticias">
    <div class="container">
      <div class="row">
        <div class="col-12 mt-2">
          <h3 class="text-uppercase text-primary">Principais Noticias</h3>
          <hr>
        </div>
      </div>
      <div class="row">
        <!-- Coluna da Esquerda -->
        <div class="col-md-12 col-lg-8">
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100 rounded" src="${path}/main/img/img-slide/Slide9.JPG" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100 rounded" src="${path}/main/img/img-slide/Slide2.JPG" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100 rounded" src="${path}/main/img/img-slide/Slide6.JPG" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          <div class="row py-1">
            <div class="col-sm-4 col-md-4 py-1">
              <img src="${path}/main/img/img-slide/Slide4.JPG" alt="" class="img-fluid rounded">
            </div>
            <div class="col-sm-4 col-md-4 py-1">
              <img src="${path}/main/img/img-slide/Slide7.JPG" alt="" class="img-fluid rounded">
            </div>
            <div class="col-sm-4 col-md-4 py-1">
              <img src="${path}/main/img/img-slide/Slide5.JPG" alt="" class="img-fluid rounded">
            </div>
          </div>

        </div>
        <!-- Coluna da Direita -->
        <div class="col-md-12 col-lg-4">
          <div class="col-12 text-center pb-3">
            <h3 class="text-uppercase text-green">Eventos</h3>
          </div>
          <div>
            <h4 class="lead"> Pfizer</h4>
            <p style="font-size:1rem;">O programa Pfizer de Educação Ambiental tem como objetivo conscientizar
              educadores e estudantes sobre a importância de adotar atitudes que preservem o meio ambiente.


            </p>
            <p class="text-right ">
              Data 30/06/2019
            </p>
          </div>
          <hr>
          <div>
            <h4 class="lead"> Bayer</h4>
            <p style="font-size:1rem;">Cerca de 150 profissionais do setor farmacêutico estiveram presentes no evento
              Travel Trends, da Bayer, realizado hoje na sede da empresa (SP), onde foram debatidas as tendências e
              gargalos do setor de viagens corporativas.
            </p>
            <p class="text-right">
              Data 30/06/2019
            </p>
          </div>
          <hr>
          <div>
            <h4 class="lead"> Roche</h4>
            <p style="font-size:1rem;">Roche realiza a quarta edição de evento educacional para residentes médicos em
              oncologia e hematologia
            </p>
            <p class="text-right">
              Data 30/06/2019
            </p>
          </div>
          <div class="d-flex">
            <div class="mr-auto p-2"> <a href=""><i class="fas fa-arrow-left"></i></a></div>
            <div class="p-2"> <a href=""> <i class="fas fa-arrow-right"></i></a> </div>
          </div>
        </div>
      </div>
      <hr>

      <div class="row">
        <div class="col-12 text-center">
          <a href="noticias.html"><button class="btn btn-primary btn-xl"> Ir para noticias</button></a>
        </div>
      </div>
    </div>
  </section>


  <!-- Linha do tempo-->
  <section id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase text-green">Como Utilizar?</h2>
          <h3 class="section-subheading text-muted">O <span class="text-green">Advocacy Saúde</span> é uma plataforma em
            constante desenvolvimento.​
            As associações, indústrias farmacêuticas podem a qualquer tempo enviar conteúdo para análise e publicação. A
            lógica colaborativa está presente com objetivo de fortalecer a sociedade civil organizada e melhorar a
            atenção aos pacientes.​</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <ul class="timeline">
            <li>
              <div class="timeline-image">
                <img class="pt-3  img-fluid" src="${path}/main/img/img-timeline/1.svg" width="130" height="130">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>1° passo</h4>
                  <h4 class="subheading">Cadastre-se</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Para acessar o conteúdo, receber notícias e participar dos eventos online, é
                    necessário criar uma conta na plataforma. O acesso é gratuito e por prazo indeterminado.​
                    Os dados cadastrais serão mantidos em sigilo e segurança.​</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="pt-3 img-fluid" src="${path}/main/img/img-timeline/2.svg" width="110" height="110">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>2° passo</h4>
                  <h4 class="subheading">​
                    Encontros Temáticos (vídeos)​</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Após a realização do cadastro você terá acesso aos vídeos introdutórios
                    disponibilizados nesta fase inicial do projeto.​

                    Em breve novos temas serão publicados na plataforma e lembre-se você pode sugerir temas e indicar
                    conteúdos que podem ser de interesse da comunidade que atua na área de saúde.​</p>
                </div>
              </div>
            </li>
            <!-- <li>
              <div class="timeline-image">
                <img class="pt-3 img-fluid" src="img/img-timeline/3.svg" width="110" height="120">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>3° passo</h4>
                  <h4 class="subheading">Tenha acesso aos videos disponives na Advocacy Saúde</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Caso tenha autorização, podera acessar as video aulas que estão disponiveis no
                    seu painel na area de Encotros Tematicos</p>
                </div>
              </div>
            </li> -->
            <!-- MAIS UM PASSO CASO SEJA NECESSARIO -->
            <!-- <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="pt-1 img-fluid" src="img/img-timeline/6.svg" width="100" height="100">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>4° passo</h4>
                  <h4 class="subheading">Aprovação</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum
                    eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et
                    ea quo dolore laudantium consectetur!</p>
                </div>
              </div>
            </li> -->
            <li class="timeline-inverted">
              <div class="timeline-image">
                <h4>Use
                  <br>todos
                  <br>os serviços</h4>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>


  <!-- Clients
  <section class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <a href="#">
            <img class="img-fluid d-block mx-auto" src="img/logos/envato.jpg" alt="">
          </a>
        </div>
        <div class="col-md-3 col-sm-6">
          <a href="#">
            <img class="img-fluid d-block mx-auto" src="img/logos/designmodo.jpg" alt="">
          </a>
        </div>
        <div class="col-md-3 col-sm-6">
          <a href="#">
            <img class="img-fluid d-block mx-auto" src="img/logos/themeforest.jpg" alt="">
          </a>
        </div>
        <div class="col-md-3 col-sm-6">
          <a href="#">
            <img class="img-fluid d-block mx-auto" src="img/logos/creative-market.jpg" alt="">
          </a>
        </div>
      </div>
    </div>
  </section> -->

  <!-- CONTATO -->
  <section id="contact">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase text-green">Contate-nos</h2>
          <h3 class="lead pb-5 text-white"><strong>O Advocacy Saúde é uma plataforma viva e
              você também
              pode contribuir</strong>
          </h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <form id="contactForm" name="sentMessage" novalidate="novalidate">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <input class="form-control" id="name" type="email" placeholder="Nome Completo" required="required"
                    data-validation-required-message="Por favor, digite seu nome">
                  <p class="help-block text-danger"></p>
                </div>

                <div class="form-group">
                  <input class="form-control" id="email" type="email" placeholder="Email" required="required"
                    data-validation-required-message="Por favor, digite seu email">
                  <p class="help-block text-danger"></p>
                </div>
                <div class="form-group">
                  <input class="form-control" id="phone" type="tel" placeholder="Telefone" required="required"
                    data-validation-required-message="Por favor, digite o numero do seu telefone">
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <textarea class="form-control" id="message" placeholder="Sua Mensagem" required="required"
                    data-validation-required-message="Por favor, digite ao menos uma mensagem"></textarea>
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="clearfix"></div>
              <div class="col-lg-12 text-center">
                <div id="success"></div>
                <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">Enviar
                  Mensagem</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <span class="copyright">Copyright &copy; Yaba Consultoria 2019</span>
        </div>
      </div>
    </div>
  </footer>



  <!-- Bootstrap core JavaScript -->
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

  <script>
    function typeWriter(elemento) {
      const textoArray = elemento.innerHTML.split('');
      elemento.innerHTML = '';
      textoArray.forEach((letra, i) => {
        setTimeout(() => elemento.innerHTML += letra, 100 * i);
      });
    }
    const titulo = document.querySelector('.title-sobre');
    typeWriter(titulo);

  </script>

</body>

</html>