package br.com.advocacysaude.model;

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
public class UsuarioRestrito extends PessoaFisica {

	private static final long serialVersionUID = 1101330560517030788L;

	@ManyToMany
	@JoinTable(name = "usuario_restrito_has_editais", joinColumns = {
			@JoinColumn(name = "usuario_restrito_id") }, inverseJoinColumns = { @JoinColumn(name = "edital_id") })
	private List<Edital> editais;

	@ManyToMany
	@JoinTable(name = "usuario_restrito_has_empresas", joinColumns = {
			@JoinColumn(name = "usuario_restrito_id") }, inverseJoinColumns = { @JoinColumn(name = "empresa_id") })
	private List<Entidade> empresas;

	@ManyToMany
	@JoinTable(name = "usuario_restrito_has_eventos", joinColumns = {
			@JoinColumn(name = "usuario_restrito_id") }, inverseJoinColumns = { @JoinColumn(name = "evento_id") })
	private List<Evento> eventos;

	@ManyToMany
	@JoinTable(name = "usuario_restrito_has_noticias", joinColumns = {
			@JoinColumn(name = "usuario_restrito_id") }, inverseJoinColumns = { @JoinColumn(name = "noticia_id") })
	private List<Noticia> noticias;

	@ManyToMany
	@JoinTable(name = "usuario_restrito_has_cursos", joinColumns = {
			@JoinColumn(name = "usuario_restrito_id") }, inverseJoinColumns = { @JoinColumn(name = "curso_id") })
	private List<Curso> cursos;

}
