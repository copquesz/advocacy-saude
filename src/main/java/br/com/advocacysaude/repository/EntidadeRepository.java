package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.Entidade;

@Repository
public interface EntidadeRepository extends JpaRepository<Entidade, Long>{

}
