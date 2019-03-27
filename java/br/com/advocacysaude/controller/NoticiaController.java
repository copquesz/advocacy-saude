package br.com.advocacysaude.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.advocacysaude.enumerated.Relevancia;
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

		Relevancia[] relevancias = Relevancia.values();
		model.addAttribute("relevancias", relevancias);

		return "painel/moderador/noticia/cadastro-noticia";
	}

	@PostMapping("/painel/noticia/cadastro")
	public String postCadastrarNoticia(Noticia noticia, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
		
		System.out.println(noticia);

		noticia = ns.save(noticia, usuario, request);
		model.addAttribute("noticia", noticia);

		return "redirect:/painel/noticias";
	}
	
	@GetMapping("painel/noticias")
	public String getListarNoticiasPainel(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");

		List<Noticia> noticias = new ArrayList<Noticia>();
		noticias = ns.findAll();
		model.addAttribute("noticias", noticias);

		switch (usuario.getTipo()) {
		case USUARIO_PF:
			return "painel/usuario-pf/noticia/lista-noticias";
		case USUARIO_PJ:
			return "painel/usuario-pj/noticia/lista-noticias";

		case USUARIO_MODERADOR:
			return "painel/moderador/noticia/lista-noticias";

		case USUARIO_ADMIN:
			return "";

		default:
			return "";
		}

	}

}
