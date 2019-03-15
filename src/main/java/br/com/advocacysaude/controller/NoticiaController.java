package br.com.advocacysaude.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.advocacysaude.model.Noticia;
import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.service.NoticiaService;

@Controller
public class NoticiaController {

	private NoticiaService ns;

	@Autowired
	public NoticiaController(NoticiaService ns) {
		super();
		this.ns = ns;
	}	

	@GetMapping("/painel/noticia/cadastro")
	public String getCadastrarNoticia(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		return "";
	}

	@PostMapping("painel/noticia/cadastro")
	public String postCadastrarNoticia(Noticia noticia, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");

		noticia = ns.save(noticia, usuario);
		model.addAttribute("noticia", noticia);

		return "";
	}
	
	@GetMapping("/noticia/{id}")
	public String getVisualizarNoticiaHome(@PathVariable Long id, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Optional<Noticia> noticia = ns.findById(id);
		model.addAttribute("noticia", noticia.get());

		return "";
	}

	@GetMapping("painel/noticia/{id}")
	public String getVisualizarNoticiaPainel(@PathVariable Long id, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Optional<Noticia> noticia = ns.findById(id);
		model.addAttribute("noticia", noticia.get());

		return "";
	}

}
