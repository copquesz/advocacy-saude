package br.com.advocacysaude.enumerated;

import lombok.Getter;

@Getter
public enum TipoRedeSocial {
	
	FACEBOOK(0, "Facebook"),
	INSTAGRAM(1, "Instagram");

	private int id;
	private String descricao;

	private TipoRedeSocial(int id, String descricao) {
		this.id = id;
		this.descricao = descricao;
	}

}
