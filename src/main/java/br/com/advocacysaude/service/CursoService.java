package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.Curso;
import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.repository.CursoRepository;

@Service
public class CursoService {
	
	@Autowired
	private CursoRepository repository;

	public Curso save(Curso curso, Usuario usuario) {
		curso.setUsuario(usuario);
		return repository.save(curso);
	}
	
	public Optional<Curso> findById(Long id){
		return repository.findById(id);
	}
	
	public List<Curso> findAll(){
		return repository.findAll();
	}
	
}
