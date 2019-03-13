package br.com.advocacysaude.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.advocacysaude.model.UsuarioComum;

public interface UsuarioComumRepository extends JpaRepository<UsuarioComum, Long> {

}
