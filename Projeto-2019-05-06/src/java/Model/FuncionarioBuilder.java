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
public class FuncionarioBuilder {

    private Documento documento = new Documento();
    private Atendente atendente=new Atendente();
    
    public static FuncionarioBuilder novoFuncionarioBuilder() {
        return new FuncionarioBuilder();
    }

    public FuncionarioBuilder comNome(String nome) {
        documento.setNome(nome);
        return this;
    }

    
    public FuncionarioBuilder comCarteira(String carteira) {
        documento.setNCarteiraTrabalho(carteira);
        return this;
    }

    public FuncionarioBuilder comCpf(String cpf) {
        documento.setCpf(cpf);
        return this;
    }

    public FuncionarioBuilder comRg(String rg) {
        documento.setRg(rg);
        return this;
    }
    public FuncionarioBuilder comId(int id){
    atendente.setId(id);
    return this;
    }
            
    public Atendente constroi(){
        this.atendente.setDocumento(documento);
        return atendente;
    }
}
