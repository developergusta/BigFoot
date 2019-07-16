/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author alunocmc
 */
public class CalcadoVendido {
   private int QtdParcelas ;
   private double ValorParcelas;
   private String NomeComprador;
   
   //Maybe using Epoch will be better!
   private Date DataCompra;

    public int getQtdParcelas() {
        return QtdParcelas;
    }

    public void setQtdParcelas(int QtdParcelas) {
        this.QtdParcelas = QtdParcelas;
    }

    public double getValorParcelas() {
        return ValorParcelas;
    }

    public void setValorParcelas(double ValorParcelas) {
        this.ValorParcelas = ValorParcelas;
    }

    public String getNomeComprador() {
        return NomeComprador;
    }

    public void setNomeComprador(String NomeComprador) {
        this.NomeComprador = NomeComprador;
    }

    public Date getDataCompra() {
        return DataCompra;
    }

    public void setDataCompra(Date DataCompra) {
        this.DataCompra = DataCompra;
    }
   
   
}
