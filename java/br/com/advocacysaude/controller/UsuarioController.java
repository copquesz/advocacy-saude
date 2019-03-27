package br.com.advocacysaude.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.advocacysaude.model.Curso;
import br.com.advocacysaude.model.Evento;
import br.com.advocacysaude.model.Noticia;
import br.com.advocacysaude.model.Patologia;
import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.model.UsuarioComum;
import br.com.advocacysaude.model.UsuarioEntidade;
import br.com.advocacysaude.model.UsuarioRestrito;
import br.com.advocacysaude.service.CursoService;
import br.com.advocacysaude.service.EventoService;
import br.com.advocacysaude.service.NoticiaService;
import br.com.advocacysaude.service.PatologiaService;
import br.com.advocacysaude.service.UsuarioComumService;
import br.com.advocacysaude.service.UsuarioEntidadeService;
import br.com.advocacysaude.service.UsuarioRestritoService;
import br.com.advocacysaude.service.UsuarioService;

@Controller
public class UsuarioController {

	private UsuarioService us;
	private UsuarioComumService ucs;
	private UsuarioEntidadeService ues;
	private UsuarioRestritoService urs;
	private PatologiaService ps;
	private EventoService es;
	private NoticiaService ns;
	private CursoService cs;

	@Autowired
	public UsuarioController(UsuarioService us, UsuarioComumService ucs, UsuarioEntidadeService ues,
			UsuarioRestritoService urs, PatologiaService ps, EventoService es, NoticiaService ns, CursoService cs) {
		super();
		this.us = us;
		this.ucs = ucs;
		this.ues = ues;
		this.urs = urs;
		this.ps = ps;
		this.es = es;
		this.ns = ns;
		this.cs = cs;
	}

	@GetMapping("/")
	public String getIndex(HttpServletRequest request, Model model) {
		
		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());		

		return "main/index";
	}
	
	@GetMapping("/cadastro")
	public String getCadastro(HttpServletRequest request, Model model) {
		
		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());		

		return "main/selecionar-cadastro";
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
				Optional<UsuarioComum> usuarioComum = ucs.findById(usuario.getId());
				model.addAttribute("usuario", usuarioComum.get());
				return "redirect:painel";

			case USUARIO_PJ:
				Optional<UsuarioEntidade> usuarioEntidade = ues.findById(usuario.getId());
				model.addAttribute("usuario", usuarioEntidade.get());
				return "redirect:painel";

			case USUARIO_MODERADOR:
				Optional<UsuarioRestrito> usuarioRestrito = urs.findById(usuario.getId());
				if (usuarioRestrito.isPresent()) {
					model.addAttribute("usuario", usuarioRestrito.get());
				}
				return "redirect:painel";

			default:
				return "";
			}

		} else {
			redirectAttributes.addFlashAttribute("redirectAttributesLogin", "incorreto");
			return "redirect:login";
		}
	}

	@GetMapping("/cadastro/pessoa-fisica")
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

	@GetMapping("/cadastro/pessoa-juridica")
	public String getCadastrarUsuarioEntidade(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		List<Patologia> patologias = ps.findAll();
		model.addAttribute("patologias", patologias);

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

		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
		
		List<Evento> eventos = new ArrayList<Evento>();
		eventos = es.findAll();
		model.addAttribute("eventos", eventos);

		List<Noticia> noticias = new ArrayList<Noticia>();
		noticias = ns.findAll();
		model.addAttribute("noticias", noticias);

		List<Curso> cursos = new ArrayList<Curso>();
		cursos = cs.findAll();
		model.addAttribute("cursos", cursos);

		switch (usuario.getTipo()) {
		case USUARIO_PF:
			Optional<UsuarioComum> usuarioComum = ucs.findById(usuario.getId());
			model.addAttribute("usuario", usuarioComum.get());
			return "painel/usuario-pf/dashboard";

		case USUARIO_PJ:
			Optional<UsuarioEntidade> usuarioEntidade = ues.findById(usuario.getId());
			model.addAttribute("usuario", usuarioEntidade.get());
			return "painel/usuario-pj/dashboard";

		case USUARIO_MODERADOR:
			
			Optional<UsuarioRestrito> usuarioRestrito = urs.findById(usuario.getId());
			if (usuarioRestrito.isPresent()) {
				model.addAttribute("usuario", usuarioRestrito.get());
			}			

			return "painel/moderador/dashboard";

		case USUARIO_ADMIN:

			return "";

		default:
			return "";
		}

	}

	@GetMapping("/logout")
	public String getLogout(HttpServletRequest request, Model model, HttpSession session) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		session.invalidate();

		return "redirect:login";

	}

}
