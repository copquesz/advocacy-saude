package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.advocacysaude.model.Edital;

public interface EditalRepository extends JpaRepository<Edital, Long>{

}
