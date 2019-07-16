/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author alunocmc
 */
public class Documento {

    private String nome;
    private String cpf;
    private String rg;
    private String NCarteiraTrabalho;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNCarteiraTrabalho() {
        return NCarteiraTrabalho;
    }

    public void setNCarteiraTrabalho(String NCarteiraTrabalho) {
        this.NCarteiraTrabalho = NCarteiraTrabalho;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }
}
