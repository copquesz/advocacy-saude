package br.com.advocacysaude.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
public class UsuarioComum extends PessoaFisica {

	private static final long serialVersionUID = -7378262740418104246L;
	@ManyToMany
	@JoinTable(name = "usuario_has_permissoes", joinColumns = {
			@JoinColumn(name = "usuario_id") }, inverseJoinColumns = { @JoinColumn(name = "permissao_id") })
	public List<Permissao> permissoes;

	public UsuarioComum() {
		super();
		this.permissoes = new ArrayList<Permissao>();
	}
}
