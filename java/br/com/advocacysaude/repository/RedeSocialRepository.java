package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.advocacysaude.model.RedeSocial;

@Repository
public interface RedeSocialRepository extends JpaRepository<RedeSocial, Long>{

}
