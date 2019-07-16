/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Usuario
 */
public enum TipoUsuario {

    ATENDENTE {
                @Override
                public Atendente obterUsuario() {
                    return new Atendente();
                }
            },
    GERENTE {
                @Override
                public Pessoa obterUsuario() {
                    return new Gerente();
                }
            };
    
    public abstract Pessoa obterUsuario();
}
