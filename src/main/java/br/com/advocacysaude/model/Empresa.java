package br.com.advocacysaude.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
public class Empresa implements Serializable {
	
	private static final long serialVersionUID = -7443889762277497040L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataCadastro;
	
	private String razaoSocial;
	
	private String nomeFantasia;
	
	private String cnpj;
	
	@OneToMany(mappedBy = "empresa", fetch = FetchType.LAZY, orphanRemoval = true)
	private List<Edital> editais;
	
	@JoinColumn(name = "usuario_id")
	@ManyToOne(fetch = FetchType.LAZY)
	private Usuario usuario;

}
