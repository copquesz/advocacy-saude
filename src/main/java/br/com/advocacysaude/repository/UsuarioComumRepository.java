package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.UsuarioComum;

@Repository
public interface UsuarioComumRepository extends JpaRepository<UsuarioComum, Long> {

	boolean existsByEmail(String email);
	boolean existsByCpf(String cpf);
	
}
