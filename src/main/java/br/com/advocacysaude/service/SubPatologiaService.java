package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.SubPatologia;
import br.com.advocacysaude.repository.SubPatologiaRepository;

@Service
public class SubPatologiaService {
	
	@Autowired
	private SubPatologiaRepository repository;
	
	public SubPatologia save(SubPatologia subPatologia) {
		return repository.save(subPatologia);
	}
	
	public Optional<SubPatologia> findById(Long id){
		return repository.findById(id);
	}
	
	public List<SubPatologia> findAll(){
		return repository.findAll();
	}

}
