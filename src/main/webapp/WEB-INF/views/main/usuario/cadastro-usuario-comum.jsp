<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Advocacy Saúde - Cadastro de Usuário</title>
    <!-- BOOTSTRAP -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- FONTAWESOME -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    
  </head>
  <body>
    <div class="container-fluid">

      <div class="row">

        <div class="col-lg-6 py-3 order-2" style="background: linear-gradient(rgba(1, 163, 164, 1), rgba(254, 202, 87, 1));">          

          <!-- MSG DE EMAIL CADASTRADO -->
          <c:if test = "${emailCadastrado}">
            <div class="alert alert-danger alert-dismissible fade show my-3" role="alert">
              <h4 class="alert-heading">Falha!</h4>
              <p>O e-mail <strong>${usuarioComum.email}</strong> já está cadastrado em nossa plataforma</strong>.</p>
              <hr>
              <p class="mb-0">Esqueceu sua senha? Clique <a href="#"><strong>aqui</strong></a> para recuperá-la.</p>
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>            
          </c:if>

          <!-- MSG DE CPF CADASTRADO -->
          <c:if test = "${cpfCadastrado}">
            <div class="alert alert-danger alert-dismissible fade show my-3" role="alert">
              <h4 class="alert-heading">Falha!</h4>
              <p>O CPF <strong>${usuarioComum.cpf}</strong> já está cadastrado em nossa plataforma</strong>.</p>
              <hr>
              <p class="mb-0">Esqueceu seu login? Clique <a href="#"><strong>aqui</strong></a> para recuperá-la.</p>
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>            
          </c:if>

          <!-- MSG DE SUCESSO -->
          <c:if test = "${cadastrado}">
            <div class="alert alert-success alert-dismissible fade show my-3" role="alert">
              <h4 class="alert-heading">Sucesso!</h4>
              <p>Olá <strong>${usuarioComum.nome} ${usuarioComum.sobrenome}</strong>! Seu cadastro foi realizado com suceso em nossa plataforma.</p>
              <hr>
              <p class="mb-0">Clique <a href="${path}/login"><strong>aqui</strong></a> para acessar o painel.</p>    
              <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>          
            </div>
          </c:if>

          <div class="text-center">
            <h2 class="text-light bg-default p-4" style="border-bottom: 2.5px solid #fff;"><i class="fas fa-user-plus mr-2"></i> Cadastro de Pessoa Física</h2>
          </div>

          <div class="row">
            <div class="col-12">
              <form action="${path}/usuario/cadastro/pessoa-fisica" method="post" acceptcharset="UTF-8">
                <input type="hidden" name="tipo" value="USUARIO_PF">
                <fieldset class="mt-3">
                <legend class="border-bottom"><h4 class="text-white mb-3"><i class="far fa-user-circle"></i> Dados Pessoais</h4></legend>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="nome">Nome:</label>
                        <input type="text" class="form-control" id="nome" name="nome" placeholder="" required>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="sobrenome">Sobrenome:</label>
                        <input type="text" class="form-control" id="sobrenome" name="sobrenome" placeholder="" required>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="cpf">CPF:</label>
                        <input type="text" class="form-control" id="cpf" name="cpf" placeholder="" required onchange="if(!validarCPF(this.value)){alert('CPF INVÁLIDO'); this.value='';}">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="telefone">Telefone:</label>
                        <input type="text" class="form-control" id="telefone" name="telefone" placeholder="" required>
                      </div>
                    </div>
                  </div>
                </fieldset>

                <fieldset class="mt-3">
                <legend class="border-bottom"><h4 class="text-white mb-3"><i class="fas fa-map-marker-alt"></i> Endereço</h4></legend>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="cep">CEP:</label>
                        <input type="text" class="form-control" id="cep" name="endereco.cep" placeholder="" required>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-7">
                      <div class="form-group">
                        <label for="logradouro">Logradouro:</label>
                        <input type="text" class="form-control" id="logradouro" name="endereco.logradouro" placeholder="" required>
                      </div>
                    </div>
                    <div class="col-md-2">
                      <div class="form-group">
                        <label for="numero">Número:</label>
                        <input type="text" class="form-control" id="numero" name="endereco.numero" placeholder="" required>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label for="complemento">Complemento:</label>
                        <input type="text" class="form-control" id="complemento" name="endereco.complemento" placeholder="">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="bairro">Bairro:</label>
                        <input type="text" class="form-control" id="bairro" name="endereco.bairro" placeholder="" required>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="cidade">Cidade:</label>
                        <input type="text" class="form-control" id="cidade" name="endereco.cidade" placeholder="" required>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="estado">Estado:</label>
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

                <fieldset class="mt-3">
                <legend class="border-bottom"><h4 class="text-white mb-3"><i class="fas fa-lock"></i> Dados de Acesso</h4></legend>
                  <div class="row mt-2">
                    <div class="col-md-8">
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"><i class="far fa-envelope"></i></span>
                          </div>
                          <input type="email" class="form-control" id="email" name="email" placeholder="E-mail de acesso." required>                      
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                          </div>
                          <input type="password" class="form-control" id="senha" name="senha" placeholder="Senha de acesso." required>                      
                        </div>
                      </div>
                  </div>
                </fieldset>

                <hr class="mb-4">
                <div class="float-right">
                  <button class="btn btn-success btn-lg" type="submit">Enviar</button>
                  <button class="btn btn-danger btn-lg" type="reset">Limpar</button>
                </div>

              </form>

              <footer class="my-5 pt-5 text-muted text-center text-small">
                <p class="mb-1">&copy; 2019 Advocacy Saúde</p>
                <hr>
                <ul class="list-inline">
                  <li class="list-inline-item"><a href="#">Privacidade</a></li>
                  <li class="list-inline-item"><a href="#">Termos de Uso</a></li>
                  <li class="list-inline-item"><a href="#">Suporte</a></li>
                </ul>                
              </footer>

            </div>        
          </div> 
        </div> <!-- /COL -->
        <div class="col-lg-6 order-1" style="background: url(${path}/img/bg-cadastro-pessoa-fisica.jpg), linear-gradient(rgba(1, 163, 164, 0.5), rgba(254, 202, 87, 0.5)); background-size: contain; background-attachment: fixed; border-bottom-left-radius: 50%; border-top-left-radius: 15%;"></div>
      </div><!-- /ROW -->      

    </div> <!-- /MAIN CONTAINER -->

  <!-- JQUERY -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
  <!-- POPPER -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <!-- BOOTSTRAP -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <!-- API VIA CEP -->
  <script src="${path}/js/api-via-cep.js"></script>
  <!-- VALIDATOR -->
  <script src="${path}/js/cpf-validator.js"></script>
  <!-- MASK -->
  <script src="${path}/js/jquery.maskedinput.js"></script>
  <script type="text/javascript">
    $("#cpf").mask("999.999.999-99");
    $("#cep").mask("99999-999");
    $('#telefone').focusout(function(){
        var phone, element;
        element = $(this);
        element.unmask();
        phone = element.val().replace(/\D/g, '');
        if(phone.length > 10) {
            element.mask("(99) 99999-999?9");
        } else {
            element.mask("(99) 9999-9999?9");
        }
    }).trigger('focusout');  
  </script>

  </body>
</html>
