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
public class PessoaJuridica extends Usuario{

	private static final long serialVersionUID = -5850860295932322400L;
	
	private String razaoSocial;
	
	private String nomeFantasia;
	
	private String cnpj;

	public PessoaJuridica() {
		super();
	}	

}