package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.Evento;
import br.com.advocacysaude.repository.EventoRepository;

@Service
public class EventoService {

	@Autowired
	private EventoRepository repository;
	
	public Evento save(Evento evento) {
		return repository.save(evento);
	}
	
	public Optional<Evento> findById(Long id){
		return repository.findById(id);
	}
	
	public List<Evento> findAll(){
		return repository.findAll();
	}
	
}
