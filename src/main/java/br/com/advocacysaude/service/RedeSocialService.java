package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.RedeSocial;
import br.com.advocacysaude.repository.RedeSocialRepository;

@Service
public class RedeSocialService {
	
	@Autowired
	private RedeSocialRepository repository;
	
	public RedeSocial save(RedeSocial redeSocial) {
		return repository.save(redeSocial);
	}	
	
	public Optional<RedeSocial> findById(Long id){
		return repository.findById(id);
	}
	
	public List<RedeSocial> findAll(){
		return repository.findAll();
	}

}
