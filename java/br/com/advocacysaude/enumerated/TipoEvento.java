package br.com.advocacysaude.enumerated;

import lombok.Getter;

@Getter
public enum TipoEvento {
	
	GRATUITO(0, "Gratuito"),
	PAGO(1, "Pago");
	
	private int id;
	private String descricao;
	
	TipoEvento(int id, String descricao){
		this.id = id;
		this.descricao = descricao;
	}

}
