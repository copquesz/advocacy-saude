package br.com.advocacysaude.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@ToString
public class Arquivo implements Serializable {

	private static final long serialVersionUID = -8391824030222775544L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	private String caminho;
	
	@Transient
	private MultipartFile arquivo;
	
	public Arquivo() {
		this.caminho = "";
		this.arquivo = null;
	}

}