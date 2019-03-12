package br.com.advocacysaude.model;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.PrimaryKeyJoinColumn;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@PrimaryKeyJoinColumn(name = "id")
@Inheritance(strategy = InheritanceType.JOINED)
@Getter
@Setter
@ToString
public class PessoaFisica extends Usuario {

	private static final long serialVersionUID = -5151975424747373239L;

	private String nome;

	private String sobrenome;

	private String cpf;

	public PessoaFisica() {
		super();	
	}	

}