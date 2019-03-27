package br.com.advocacysaude.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.com.advocacysaude.model.Patologia;
import br.com.advocacysaude.model.SubPatologia;
import br.com.advocacysaude.service.PatologiaService;
import br.com.advocacysaude.service.SubPatologiaService;

@Controller
public class PatologiaController {

	private PatologiaService ps;
	private SubPatologiaService sps;

	@Autowired
	public PatologiaController(PatologiaService ps, SubPatologiaService sps) {
		super();
		this.ps = ps;
		this.sps = sps;
	}

	@PostMapping("/painel/patologia/cadastro")
	public String postCadastrarPatologia(Patologia patologia, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		patologia = ps.save(patologia);

		return "redirect:/painel/patologias";
	}

	@GetMapping("/painel/patologias")
	public String getListarPatologia(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		List<Patologia> patologias = new ArrayList<Patologia>();
		patologias = ps.findAll();		
		model.addAttribute("patologias", patologias);

		return "painel/moderador/patologia/lista-patologias";
	}
	
	@PostMapping("/painel/subpatologia/cadastro")
	public String postCadastrarSubPatologia(SubPatologia subPatologia, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());		
		
		subPatologia = sps.save(subPatologia);

		return "redirect:/painel/patologias";
	}

}
