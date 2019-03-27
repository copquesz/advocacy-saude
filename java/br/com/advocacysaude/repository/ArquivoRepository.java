package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.Arquivo;

@Repository
public interface ArquivoRepository extends JpaRepository<Arquivo, Long>{

}
