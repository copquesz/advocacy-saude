package br.com.advocacysaude.model;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@PrimaryKeyJoinColumn(name = "id")
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
		this.nome = "Não Informado";
		this.sobrenome = "Não Informado";
		this.cpf = "999.999.999-99";		
	}	

}