package br.com.advocacysaude.enumerated;

import lombok.Getter;

@Getter
public enum StatusPermissao {

    ACESSO_LIBERADO(0, "Acesso Liberado"),
    ACESSO_BLOQUEADO(1, "Acesso Bloqueado");

    private int id;
    private String descricao;

    StatusPermissao(int id, String descricao){
        this.id = id;
        this.descricao = descricao;
    }
}