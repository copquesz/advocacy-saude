package br.com.advocacysaude.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
public class Endereco implements Serializable {

	private static final long serialVersionUID = 1013726434850660448L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String cep;

	private String logradouro;

	private String numero;

	private String complemento;

	private String bairro;

	private String cidade;

	private String estado;
	
	public Endereco(){
		super();
		this.cep = "00000-000";
		this.logradouro = "Não Informado";
		this.numero = "0";
		this.complemento = "Não Informado";
		this.bairro = "Não Informado";
		this.cidade = "Não Informado";
		this.estado = "Não Informado";
	}

}