package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.Permissao;

@Repository
public interface PermissaoRepository extends JpaRepository<Permissao, Long>{

}
