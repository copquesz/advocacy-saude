package br.com.advocacysaude.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
public class UsuarioEntidade extends PessoaJuridica {

	private static final long serialVersionUID = 3404441824910759425L;

	@JoinColumn(name = "facebook_id")
	@ManyToOne(fetch = FetchType.EAGER)
	private RedeSocial facebook;

	@JoinColumn(name = "instagram_id")
	@ManyToOne(fetch = FetchType.EAGER)
	private RedeSocial instagram;
	
	@ManyToMany
	@JoinTable(name = "entidade_has_associados", joinColumns = {
			@JoinColumn(name = "usuario_entidade_id") }, inverseJoinColumns = {
					@JoinColumn(name = "usuario_comum_id") })
	private List<UsuarioComum> associados;
	
	@ManyToMany
	@JoinTable(name = "entidade_has_sub_patologia", joinColumns = {
			@JoinColumn(name = "usuario_entidade_id") }, inverseJoinColumns = {
					@JoinColumn(name = "sub_patologia_id") })
	private List<SubPatologia> patologias;
	
	public UsuarioEntidade() {
		super();
		this.associados = new ArrayList<UsuarioComum>();
		this.patologias = new ArrayList<SubPatologia>();
	}

}
