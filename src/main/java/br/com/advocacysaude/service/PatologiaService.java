package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.Patologia;

@Service
public class PatologiaService {

	@Autowired
	private PatologiaRepository repository;
	
	public Patologia save(Patologia patologia) {
		return repository.save(patologia);
	}
	
	public Optional<Patologia> findById(Long id){
		return repository.findById(id);
	}
	
	public List<Patologia> findAll(){
		return repository.findAll();
	}
	
}
