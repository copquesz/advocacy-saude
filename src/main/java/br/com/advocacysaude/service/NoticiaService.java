package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.Noticia;
import br.com.advocacysaude.repository.NoticiaRepository;

@Service
public class NoticiaService {
	
	@Autowired
	private NoticiaRepository repository;
	
	public Noticia save(Noticia noticia) {
		return repository.save(noticia);
	}
	
	public Optional<Noticia> findById(Long id){
		return repository.findById(id);
	}
	
	public List<Noticia> findAll(){
		return repository.findAll();
	}

}
