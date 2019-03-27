package br.com.advocacysaude.enumerated;

import lombok.Getter;

@Getter
public enum TipoUsuario {

    USUARIO_PF(0, "Usuário PF"),
    USUARIO_PJ(1, "Usuário PJ"),
    USUARIO_MODERADOR(2, "Usuário Moderador"),
    USUARIO_ADMIN(3, "Usuário Administrador");

    private int id;
    private String descricao;

    TipoUsuario(int id, String descricao){
        this.id = id;
        this.descricao = descricao;
    }
}