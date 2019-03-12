package br.com.advocacysaude.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import br.com.advocacysaude.model.Endereco;
import br.com.advocacysaude.model.PessoaFisica;
import br.com.advocacysaude.service.PessoaFisicaService;

@Controller
public class UsuarioController {	
	
	private PessoaFisicaService pfs;

	@Autowired
	public UsuarioController(PessoaFisicaService pfs) {
		super();
		this.pfs = pfs;
	}
	
	@GetMapping("/usuarios")
	public String getUsuarios(HttpServletRequest request, Model model) {

		model.addAttribute("path", request.getContextPath());
		
		Endereco endereco = new Endereco();
		endereco.setCep("02255-120");
		endereco.setLogradouro("Rua Joãrtins Bueno");
		endereco.setNumero("113");
		endereco.setBairro("Vila Nivi");
		endereco.setCidade("São Paulo");
		endereco.setEstado("São Paulo");
		
		PessoaFisica pf = new PessoaFisica();
		pf.setNome("Lucas");
		pf.setSobrenome("Copque");
		pf.setEmail("lucas.copque@yabaconsultoria.com.br");
		pf.setCpf("408.597.878-00");
		pf.setSenha("190295");
		pf.setTelefone("(11) 943219997");
		pf.setEndereco(endereco);
		
		pfs.save(pf);
		
		return "main/index";
	}
	
	

}
