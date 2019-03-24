package br.com.advocacysaude.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
public class Patologia implements Serializable{
	
	private static final long serialVersionUID = 6701924720179409310L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataCadastrado;
	
	private String nome;
	
	private String descricao;	
	
	@OneToMany(mappedBy = "patologia", fetch = FetchType.EAGER, orphanRemoval = true)
	private List<SubPatologia> subpatologias;
	
}
