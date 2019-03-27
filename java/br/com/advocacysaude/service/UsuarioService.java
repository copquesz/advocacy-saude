package br.com.advocacysaude.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.advocacysaude.model.Usuario;
import br.com.advocacysaude.repository.UsuarioRepository;

@Service
public class UsuarioService {
	
	@Autowired
	private UsuarioRepository repository;
	
	public Usuario save(Usuario usuario) {
		return repository.save(usuario);
	}
	
	public Optional<Usuario> findById(Long id){
		return repository.findById(id);
	}
	
	public Optional<Usuario> findByEmail(String email){
		return repository.findByEmail(email);
	}
	
	public boolean existsByEmailAndSenha(String email, String senha) {
		return repository.existsByEmailAndSenha(email, senha);
	}
	
	public List<Usuario> findAll(){
		return repository.findAll();
	}

}
