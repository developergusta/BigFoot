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
public class CalcadoEstoque extends Calcado {

    private int QtdEstoque;

    private Date dataProximaRemessa;

    public int getQtdEstoque() {
        return QtdEstoque;
    }

    public void setQtdEstoque(int QtdEstoque) {
        this.QtdEstoque = QtdEstoque;
    }

    public Date getDataProximaRemessa() {
        return dataProximaRemessa;
    }

    public void setDataProximaRemessa(Date dataProximaRemessa) {
        this.dataProximaRemessa = dataProximaRemessa;
    }
}
