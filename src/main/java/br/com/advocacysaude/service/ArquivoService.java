package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.Arquivo;
import br.com.advocacysaude.repository.ArquivoRepository;

@Service
public class ArquivoService {
	
	@Autowired
	private ArquivoRepository repository;
	
	public Arquivo save(Arquivo arquivo) {
		return repository.save(arquivo);
	}
	
	public Optional<Arquivo> findById(Long id){
		return repository.findById(id);
	}
	
	public List<Arquivo> findAll(){
		return repository.findAll();
	}

}
