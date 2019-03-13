package br.com.advocacysaude.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
public class Curso implements Serializable{

	private static final long serialVersionUID = -3247927894882336687L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataCadastro;
	
	private String titulo;
	
	@Column(columnDefinition = "TEXT")
	private String introducao;
	
	@Column(columnDefinition = "TEXT")
	private String conteudo;
	
	@Column(columnDefinition = "TEXT")
	private String link;
	
	@JoinColumn(name = "banner_id")
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Arquivo banner;
	
	@JoinColumn(name = "usuario_id")
	@ManyToOne(fetch = FetchType.LAZY)
	private Usuario usuario;
	
	public Curso() {
		this.dataCadastro = new Date();
	}

}