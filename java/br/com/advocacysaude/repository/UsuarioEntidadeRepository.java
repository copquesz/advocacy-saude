package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.UsuarioEntidade;

@Repository
public interface UsuarioEntidadeRepository extends JpaRepository<UsuarioEntidade, Long>{
	
	boolean existsByEmail(String email);
	boolean existsByCnpj(String cnpj);

}
