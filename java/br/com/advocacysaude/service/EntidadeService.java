package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.Entidade;
import br.com.advocacysaude.repository.EntidadeRepository;

@Service
public class EntidadeService {

	@Autowired
	private EntidadeRepository repository;

	public Entidade save(Entidade empresa) {
		return repository.save(empresa);
	}

	public Optional<Entidade> findById(Long id) {
		return repository.findById(id);
	}

	public List<Entidade> findAll() {
		return repository.findAll();
	}

}
