package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.UsuarioRestrito;

@Repository
public interface UsuarioRestritoRepository extends JpaRepository<UsuarioRestrito, Long> {

	boolean existsByEmail(String email);
	boolean existsByCpf(String cpf);

}
