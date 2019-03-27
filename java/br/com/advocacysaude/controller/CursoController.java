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

import br.com.advocacysaude.model.Curso;
import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.service.CursoService;

@Controller
public class CursoController {

	private CursoService cs;

	@Autowired
	public CursoController(CursoService cs) {
		super();
		this.cs = cs;
	}

	@GetMapping("/painel/curso/cadastro")
	public String getCadastrarCurso(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		return "painel/moderador/curso/cadastro-curso";
	}

	@PostMapping("/painel/curso/cadastro")
	public String postCadastrarCurso(Curso curso, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");

		curso = cs.save(curso, usuario, request);
		model.addAttribute("curso", curso);

		return "painel/moderador/curso/cadastro-curso-sucesso";
	}

	@GetMapping("/painel/curso/{id}")
	public String getVisualizarCursoPainel(@PathVariable Long id, HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");

		Optional<Curso> curso = cs.findById(id);
		model.addAttribute("curso", curso.get());

		switch (usuario.getTipo()) {
		case USUARIO_PF:
			return "painel/usuario-pf/curso/exibe-curso";

		case USUARIO_PJ:
			return "painel/usuario-pj/curso/exibe-curso";

		case USUARIO_MODERADOR:
			return "painel/moderador/curso/exibe-curso";

		case USUARIO_ADMIN:
			return "";

		default:
			return "";
		}
	}

	@GetMapping("/painel/cursos")
	public String getListarCursos(HttpServletRequest request, Model model) {

		// paths da requisição e de redirecionamento
		model.addAttribute("path", request.getContextPath());

		Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");

		List<Curso> cursos = new ArrayList<Curso>();
		cursos = cs.findAll();
		model.addAttribute("cursos", cursos);

		switch (usuario.getTipo()) {
		case USUARIO_PF:
			return "painel/usuario-pf/curso/lista-cursos";

		case USUARIO_PJ:
			return "painel/usuario-pj/curso/lista-cursos";

		case USUARIO_MODERADOR:
			return "painel/moderador/curso/lista-cursos";

		case USUARIO_ADMIN:
			return "";

		default:
			return "";
		}
	}

}
