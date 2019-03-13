package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.Edital;

@Repository
public interface EditalRepository extends JpaRepository<Edital, Long>{

}
