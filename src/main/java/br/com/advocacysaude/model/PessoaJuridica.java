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
public class PessoaJuridica extends Usuario{

	private static final long serialVersionUID = -5850860295932322400L;
	
	private String razaoSocial;
	
	private String nomeFantasia;
	
	private String cnpj;

	public PessoaJuridica() {
		super();
		this.razaoSocial = "Não Informado";
		this.nomeFantasia = "Não Informado";
		this.cnpj = "99.999.999/0001-99";
	}	

}