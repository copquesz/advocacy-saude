package br.com.advocacysaude.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.com.advocacysaude.enumerated.TipoPermissao;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
public class Permissao implements Serializable{
	
	private static final long serialVersionUID = -412509312842452004L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dataCadastro;
	
	private UsuarioEntidade entidade;
	
	private UsuarioComum usuario;
	
	@Enumerated(EnumType.ORDINAL)
	private TipoPermissao status;
	
	public Permissao() {
		super();
		this.dataCadastro = new Date();
		this.status = TipoPermissao.ACESSO_BLOQUEADO;
	}

}
