package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.Permissao;
import br.com.advocacysaude.repository.PermissaoRepository;

@Service
public class PermissaoService {
	
	@Autowired
	private PermissaoRepository repository;
	
	public Permissao save(Permissao permissao) {
		return repository.save(permissao);
	}
	
	public Optional<Permissao> findById(Long id){
		return repository.findById(id);
	}
	
	public List<Permissao> listAll(){
		return repository.findAll();
	}

}
