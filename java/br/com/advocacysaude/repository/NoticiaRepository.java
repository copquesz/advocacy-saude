package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.Noticia;

@Repository
public interface NoticiaRepository extends JpaRepository<Noticia, Long>{

}
