package br.com.advocacysaude.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.advocacysaude.model.Evento;
import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.service.EventoService;

@Controller
public class EventoController {

	private EventoService es;

	@Autowired
	public EventoController(EventoService es) {
		super();
		this.es = es;
	}

	@GetMapping("/painel/evento/cadastro")
	public String getCadastrarEvento(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		return "";
	}

	@PostMapping("/painel/evento/cadastro")
	public String postCadastrarEvento(Evento evento, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");

		evento = es.save(evento, usuario);
		model.addAttribute("evento", evento);

		return "";
	}

	@GetMapping("painel/evento/{id}")
	public String getVisualizarEventoPainel(@PathVariable Long id, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Optional<Evento> evento = es.findById(id);
		model.addAttribute("evento", evento.get());

		return "";
	}
	
	@GetMapping("painel/eventos")
	public String getListarEventos(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		List<Evento> eventos = new ArrayList<Evento>();
		eventos = es.findAll();
		model.addAttribute("eventos", eventos);

		return "";
	}

}
