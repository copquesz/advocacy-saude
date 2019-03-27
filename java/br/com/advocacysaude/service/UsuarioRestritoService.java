package br.com.advocacysaude.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.UsuarioRestrito;
import br.com.advocacysaude.repository.UsuarioRestritoRepository;

@Service
public class UsuarioRestritoService {
	
	@Autowired
	private UsuarioRestritoRepository repository;
	
	public UsuarioRestrito save(UsuarioRestrito usuarioRestrito) {
		return repository.save(usuarioRestrito);
	}
	
	public Optional<UsuarioRestrito> findById(Long id){
		return repository.findById(id);
	}
	
	public boolean existsByEmail(String email){
		return repository.existsByEmail(email);
	}
	
	public boolean existsByCpf(String cpf){
		return repository.existsByCpf(cpf);
	}

}
