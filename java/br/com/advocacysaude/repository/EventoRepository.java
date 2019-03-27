package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.Evento;

@Repository
public interface EventoRepository extends JpaRepository<Evento, Long>{

}
