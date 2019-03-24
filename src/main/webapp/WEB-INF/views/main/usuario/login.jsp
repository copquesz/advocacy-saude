<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html lang="pt-br">  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Advocacy Saúde - Login</title>
    <!-- BOOTSTRAP -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- FONTAWESOME -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <style type="text/css">     
      body{
        background: #1abc9c;  /* fallback for old browsers */
        background: -webkit-linear-gradient(to bottom, #fff, #f39c12);  /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to bottom, #fff, #f39c12); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        height: 100vh;
      }
      .login-block{        
        float:left;
        width:100%;
        padding : 220px 0;
      }
      .banner-sec{
        background-size:cover;       
        border-radius: 0 10px 10px 0;
        padding:0;
      }
      .container{
        background:#fff; 
        border-radius: 10px; 
        box-shadow: 15px 20px 0px rgba(0,0,0,0.1);
      }
      .carousel-inner{ 
        border-radius: 0 10px 10px 0;
      }
      .carousel-caption{
        text-align:left; 
        left:5%;
      }
      ol.carousel-indicators {
        position: absolute;
        bottom: 0;
        margin: 0;
        left: 0;
        right: 0;
        width: auto;
      }

      ol.carousel-indicators li,
      ol.carousel-indicators li.active {
        float: left;
        width: 10%;
        height: 3px;
        margin-left: 10px;
        margin-bottom: 10px;
        border-radius: 0;
        border: 0;
        background: #FEB600;
      }
      ol.carousel-indicators li.active {
        background: #006C5B;
      }
      .login-sec{
        padding: 50px 30px; 
        position:relative;
      }
      .login-sec .copy-text{
        position:absolute; 
        width:80%; 
        bottom:20px; 
        font-size:13px; 
        text-align:center;
      }
      .login-sec .copy-text i{
        color:#FEB600;
      }
      .login-sec .copy-text a{
        color:#E36262;
      }
      .login-sec h2{
        margin-bottom:30px; 
        font-weight:800; 
        font-size:30px; 
        color: #006C5B;
      }
      .login-sec h2:after{
        content:" "; 
        width:100px; 
        height:5px; 
        background:#FEB600; 
        display:block; 
        margin-top:20px; 
        border-radius:3px; 
        margin-left:auto;
        margin-right:auto
      }
      .btn-login{
        background: #006C5B;
        color:#fff; 
        font-weight:600;
      }
      .banner-text{
        width:70%; 
        position:absolute; 
        bottom:40px; 
        padding-left:20px;
      }
      .banner-text h2{
        color:#006C5B; 
        font-weight:bold;
      }
      .banner-text h2:after{
        content:" "; 
        width:100px; 
        margin-left: 50px;
        height:5px; 
        background:#FEB600;
        display:block; 
        margin-top:20px; 
        border-radius:3px;
      }
      .banner-text p{
        color:#000;
        font-weight:500; 
      }
    </style>    
  </head>
  <body>
    <section class="login-block">
      <div class="container">
        <div class="row">
          <div class="col-md-4 login-sec">
            <h2 class="text-center">Plataforma<br>Advocacy Saúde</h2>
            <form class="login-form" action="${path}/login" method="post" acceptcharset="UTF-8">
              <div class="form-group">
                <label for="email">E-mail:</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="exemplo@domínio.com.br">                  
              </div>
              <div class="form-group">
                <label for="senha">Senha:</label>
                <input type="password" class="form-control" id="senha" name="senha" placeholder="Digite sua senha ...">
              </div>       
              <button type="submit" class="btn btn-login">Entrar</button> 
              <a href="${path}/cadastro" class="btn btn-login">Cadastrar-se</a>     
            </form>
            <hr>
            <p class="mb-0">Esqueceu sua senha?<br>Clique <a href="#"><strong>aqui</strong></a> para recuperá-la.</p>
            <div class="copy-text">&copy; 2019 Advocacy Saúde</div>
          </div>
          <div class="col-md-8 banner-sec">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              </ol>
              <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                  <img class="d-block img-fluid" src="https://static.collectui.com/shots/3507943/mountain-large" style="width: 800px; height: 520px; opacity: 0.5;" alt="First slide">
                  <div class="carousel-caption d-none d-md-block">
                    <div class="banner-text">
                        <h2>This is Heaven</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                    </div>  
                  </div>
                </div>
                <div class="carousel-item">                  
                  <img class="d-block img-fluid" src="https://cmkt-image-prd.global.ssl.fastly.net/0.1.0/ps/5788367/600/400/m2/fpnw/wm0/01-.jpg?1548795075&s=9e9ad7dc8269c4267b5b3cf74ac49a29" style="width: 800px; height: 520px; opacity: 0.5;" alt="First Slide">
                  <div class="carousel-caption d-none d-md-block">
                    <div class="banner-text">
                        <h2>This is Heaven</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                    </div>  
                  </div>
                </div>
                <div class="carousel-item">
                  <img class="d-block img-fluid" src="https://assets.justinmind.com/blog/wp-content/uploads/2017/06/justinmind-new-ui-kit-charts-1.png" style="width: 800px; height: 520px; opacity: 0.5;" alt="First slide">
                  <div class="carousel-caption d-none d-md-block">
                    <div class="banner-text">
                        <h2>This is Heaven</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
                    </div>  
                  </div>
                </div>
              </div> 
            </div>
            <!-- MSG DE EMAIL CADASTRADO -->
            <c:if test = "${redirectAttributesLogin}">
              <div class="alert alert-danger my-3" role="alert">
                <h4 class="alert-heading">Falha!</h4>
                <p class="text-justify">Não conseguimos localizar seu cadastro com os dados informados. Tente novamente!</p>                
              </div>
            </c:if>
          </div>
        </div>
      </div>
    </section>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

  </body>
</html>
