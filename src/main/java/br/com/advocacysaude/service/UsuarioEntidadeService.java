package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.UsuarioEntidade;
import br.com.advocacysaude.repository.UsuarioEntidadeRepository;

@Service
public class UsuarioEntidadeService {
	
	@Autowired
	private UsuarioEntidadeRepository repository;
	
	public UsuarioEntidade save(UsuarioEntidade usuarioEntidade) {
		return repository.save(usuarioEntidade);
	}
	
	public Optional<UsuarioEntidade> findById(Long id){
		return repository.findById(id);
	}
	
	public List<UsuarioEntidade> findAll(){
		return repository.findAll();
	}

}
