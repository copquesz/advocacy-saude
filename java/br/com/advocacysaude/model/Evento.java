package br.com.advocacysaude.model;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.advocacysaude.enumerated.Relevancia;
import br.com.advocacysaude.enumerated.TipoEvento;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
public class Evento implements Serializable {

	private static final long serialVersionUID = 3345281315961981866L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Temporal(TemporalType.TIMESTAMP)
	private Date dataCadastro;

	private String inicio;

	private String fim;

	private String titulo;

	@Column(columnDefinition = "TEXT")
	private String introducao;

	@Column(columnDefinition = "TEXT")
	private String conteudo;

	private String organizador;

	@Enumerated(EnumType.ORDINAL)
	private TipoEvento tipo;

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "endereco_id")
	private Endereco endereco;

	@JoinColumn(name = "banner_id")
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Arquivo banner;

	@JoinColumn(name = "usuario_id")
	@ManyToOne(fetch = FetchType.LAZY)
	private Usuario usuario;

	@JoinColumn(name = "patologia_id")
	@ManyToOne(fetch = FetchType.EAGER)
	private Patologia patologia;
	
	public Evento() {
		this.dataCadastro = new Date();
	}

}
