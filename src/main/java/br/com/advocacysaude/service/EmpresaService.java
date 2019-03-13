package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.Empresa;
import br.com.advocacysaude.repository.EmpresaRepository;

@Service
public class EmpresaService {

	@Autowired
	private EmpresaRepository repository;

	public Empresa save(Empresa empresa) {
		return repository.save(empresa);
	}

	public Optional<Empresa> findById(Long id) {
		return repository.findById(id);
	}

	public List<Empresa> findAll() {
		return repository.findAll();
	}

}
