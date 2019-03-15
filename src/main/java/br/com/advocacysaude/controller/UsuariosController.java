package br.com.advocacysaude.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.model.UsuarioComum;
import br.com.advocacysaude.model.UsuarioEntidade;
import br.com.advocacysaude.service.UsuarioComumService;
import br.com.advocacysaude.service.UsuarioEntidadeService;
import br.com.advocacysaude.service.UsuarioService;

@Controller
public class UsuariosController {

	private UsuarioService us;
	private UsuarioComumService ucs;
	private UsuarioEntidadeService ues;

	@Autowired
	public UsuariosController(UsuarioService us, UsuarioComumService ucs, UsuarioEntidadeService ues) {
		super();
		this.us = us;
		this.ucs = ucs;
		this.ues = ues;
	}

	@GetMapping("/login")
	public String getLogin(HttpServletRequest request, Model model,
			@ModelAttribute("redirectAttributesLogin") String redirectAttributesLogin) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		if (redirectAttributesLogin.equals("incorreto")) {
			model.addAttribute("redirectAttributesLogin", true);
		}

		return "main/usuario/login";
	}

	@PostMapping("/login")
	public String postLogin(Usuario usuario, HttpServletRequest request, Model model, HttpSession session,
			RedirectAttributes redirectAttributes) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		// Verifica se possui cadastro para email e senha informados.
		if (us.existsByEmailAndSenha(usuario.getEmail(), usuario.getSenha())) {

			// Carrega os dados do usuário abstrato
			usuario = us.findByEmail(usuario.getEmail()).get();
			session.setAttribute("usuario", usuario);

			// Direciona para o painel de acordo com o tipo de usuário
			switch (usuario.getTipo()) {
			case USUARIO_PF:
				UsuarioComum usuarioComum = new UsuarioComum();
				usuarioComum = ucs.findById(usuario.getId()).get();
				model.addAttribute("usuario", usuarioComum);
				return "redirect:painel";

			case USUARIO_PJ:
				UsuarioEntidade usuarioEntidade = new UsuarioEntidade();
				usuarioEntidade = ues.findById(usuario.getId()).get();
				model.addAttribute("usuario", usuarioEntidade);
				return "redirect:painel";

			default:
				return "";
			}

		} else {
			redirectAttributes.addFlashAttribute("redirectAttributesLogin", "incorreto");
			return "redirect:login";
		}
	}

	@GetMapping("/usuario/cadastro/pessoa-fisica")
	public String getCadastrarUsuarioComum(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		return "main/usuario/cadastro-usuario-comum";
	}

	@PostMapping("/usuario/cadastro/pessoa-fisica")
	public String postCadastrarUsuarioComum(UsuarioComum usuarioComum, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		if (ucs.existsByEmail(usuarioComum.getEmail())) {
			model.addAttribute("emailCadastrado", true);
		} else if (ucs.existsByCpf(usuarioComum.getCpf())) {
			model.addAttribute("cpfCadastrado", true);
		} else {
			usuarioComum = ucs.save(usuarioComum);
			model.addAttribute("cadastrado", true);
		}

		model.addAttribute("usuarioComum", usuarioComum);
		return "main/usuario/cadastro-usuario-comum";
	}

	@GetMapping("/usuario/cadastro/pessoa-juridica")
	public String getCadastrarUsuarioEntidade(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		return "main/usuario/cadastro-usuario-entidade";
	}

	@PostMapping("/usuario/cadastro/pessoa-juridica")
	public String postCadastrarUsuarioEntidade(UsuarioEntidade usuarioEntidade, HttpServletRequest request,
			Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		if (ues.existsByEmail(usuarioEntidade.getEmail())) {
			model.addAttribute("emailCadastrado", true);
		} else if (ues.existsByCnpj(usuarioEntidade.getCnpj())) {
			model.addAttribute("cnpjCadastrado", true);
		} else {
			usuarioEntidade = ues.save(usuarioEntidade);
			model.addAttribute("cadastrado", true);
		}

		model.addAttribute("usuarioEntidade", usuarioEntidade);
		return "main/usuario/cadastro-usuario-entidade";
	}

	@GetMapping("/painel")
	public String getPainel(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		return "";
	}

}
