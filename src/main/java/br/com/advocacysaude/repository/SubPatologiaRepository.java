package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.SubPatologia;

@Repository
public interface SubPatologiaRepository extends JpaRepository<SubPatologia, Long>{

}
