package br.com.advocacysaude.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.PessoaFisica;
import br.com.advocacysaude.repository.PessoaFisicaRepository;

@Service
public class PessoaFisicaService {
	
	@Autowired
	private PessoaFisicaRepository repository;
	
	public PessoaFisica save(PessoaFisica pf) {
		return repository.save(pf);
	}

}
