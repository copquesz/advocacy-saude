package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.Patologia;

@Repository
public interface PatologiaRepository extends JpaRepository<Patologia, Long>{

}
