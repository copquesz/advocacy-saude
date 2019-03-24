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
import br.com.advocacysaude.enumerated.TipoEvento;
import br.com.advocacysaude.model.Evento;
import br.com.advocacysaude.model.Patologia;
import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.service.EventoService;
import br.com.advocacysaude.service.PatologiaService;

@Controller
public class EventoController {

	private EventoService es;
	private PatologiaService ps;

	@Autowired
	public EventoController(EventoService es, PatologiaService ps) {
		super();
		this.es = es;
		this.ps = ps;
	}

	@PostMapping("/painel/evento/cadastro")
	public String postCadastrarEvento(Evento evento, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");		

		evento = es.save(evento, usuario, request);
		model.addAttribute("evento", evento);

		return "redirect:painel/eventos";
	}

	@GetMapping("/painel/eventos")
	public String getListarEventos(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());
		
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");

		List<Evento> eventos = new ArrayList<Evento>();
		eventos = es.findAll();
		model.addAttribute("eventos", eventos);
		
		switch (usuario.getTipo()) {
		case USUARIO_PF:
			return "painel/usuario-pf/evento/lista-eventos";

		case USUARIO_PJ:
			return "painel/usuario-pj/evento/lista-eventos";

		case USUARIO_MODERADOR:
			
			TipoEvento[] tipos = TipoEvento.values();
			model.addAttribute("tipos", tipos);

			Relevancia[] relevancias = Relevancia.values();
			model.addAttribute("relevancias", relevancias);
			
			List<Patologia> patologias = new ArrayList<Patologia>();
			patologias = ps.findAll();
			model.addAttribute("patologias", patologias);
			
			return "painel/moderador/evento/lista-eventos";

		case USUARIO_ADMIN:
			return "";

		default:
			return "";
		}
	}

}
