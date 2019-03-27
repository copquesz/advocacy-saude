package br.com.advocacysaude.enumerated;

import lombok.Getter;

@Getter
public enum Relevancia {
	
	BAIXA(0, "Baixa"),
	MEDIA(1, "Média"),
	ALTA(2, "Alta");
	
	private int id;
	private String descricao;
	
	Relevancia(int id, String descricao){
		this.id = id;
		this.descricao = descricao;
	}

}
