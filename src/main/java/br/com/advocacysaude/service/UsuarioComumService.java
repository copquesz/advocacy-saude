package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.UsuarioComum;
import br.com.advocacysaude.repository.UsuarioComumRepository;

@Service
public class UsuarioComumService {
	
	@Autowired
	private UsuarioComumRepository repository;
	
	public UsuarioComum save(UsuarioComum usuarioComum) {
		return repository.save(usuarioComum);
	}
	
	public Optional<UsuarioComum> findById(Long id) {
		return repository.findById(id);
	}
	
	public List<UsuarioComum> findAll(){
		return repository.findAll();
	}

}
