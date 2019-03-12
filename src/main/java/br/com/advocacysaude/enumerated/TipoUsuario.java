package br.com.advocacysaude.enumerated;

import lombok.Getter;

@Getter
public enum TipoUsuario {

    USUARIO_COMUM(0, "Usuário Comum", "Pessoa Física"),
    USUARIO_ENTIDADE(1, "Usuário Entidade", "Pessoa Jurídica"),
    USUARIO_MODERADOR(2, "Usuário Moderador", "Pessoa Física"),
    USUARIO_ADMIN(3, "Usuário Administrador", "Pessoa Física");

    private int id;
    private String descricao;
    private String tipoPessoa;

    TipoUsuario(int id, String descricao, String tipoPessoa){
        this.id = id;
        this.descricao = descricao;
        this.tipoPessoa = tipoPessoa;
    }
}