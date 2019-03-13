package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.Edital;
import br.com.advocacysaude.repository.EditalRepository;

@Service
public class EditalService {
	
	@Autowired
	private EditalRepository repository;
	
	public Edital save(Edital edital) {
		return repository.save(edital);
	}
	
	public Optional<Edital> findById(Long id){
		return  repository.findById(id);
	}
	
	public List<Edital> findAll(){
		return repository.findAll();
	}
	
}
