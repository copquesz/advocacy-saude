package br.com.advocacysaude.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import br.com.advocacysaude.enumerated.TipoRedeSocial;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
public class RedeSocial implements Serializable {

	private static final long serialVersionUID = -811446266240367775L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String link;

	private Long seguidores;

	@Enumerated(EnumType.ORDINAL)
	TipoRedeSocial tipo;

}
