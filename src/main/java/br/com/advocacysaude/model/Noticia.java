package br.com.advocacysaude.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
public class Noticia  implements Serializable{
	
	private static final long serialVersionUID = -8999881775257352666L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataCadastro;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataEdicao;
	
	private String titulo;
	
	@Column(columnDefinition = "TEXT")
	private String introducao;
	
	@Column(columnDefinition = "TEXT")
	private String conteudo;
	
	@Column(columnDefinition = "TEXT")
	private String referencia;

}