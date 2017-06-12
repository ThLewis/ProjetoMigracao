/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * Criado 03/06/2017 ás 23:58:27 por ThLewis
 */
public class Venda {
    private int id;
    private int id_cliente;
    private String cliente_nome;
    private String cliente_email;
    private int id_produto;
    private double produto_valor;
    private String produto_nome;
    private String forma_pag;
    private String dados_pag;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the id_cliente
     */
    public int getId_cliente() {
        return id_cliente;
    }

    /**
     * @param id_cliente the id_cliente to set
     */
    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    /**
     * @return the cliente_nome
     */
    public String getCliente_nome() {
        return cliente_nome;
    }

    /**
     * @param cliente_nome the cliente_nome to set
     */
    public void setCliente_nome(String cliente_nome) {
        this.cliente_nome = cliente_nome;
    }

    /**
     * @return the cliente_email
     */
    public String getCliente_email() {
        return cliente_email;
    }

    /**
     * @param cliente_email the cliente_email to set
     */
    public void setCliente_email(String cliente_email) {
        this.cliente_email = cliente_email;
    }

    /**
     * @return the id_produto
     */
    public int getId_produto() {
        return id_produto;
    }

    /**
     * @param id_produto the id_produto to set
     */
    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }

    /**
     * @return the produto_valor
     */
    public double getProduto_valor() {
        return produto_valor;
    }

    /**
     * @param produto_valor the produto_valor to set
     */
    public void setProduto_valor(double produto_valor) {
        this.produto_valor = produto_valor;
    }

    /**
     * @return the produto_nome
     */
    public String getProduto_nome() {
        return produto_nome;
    }

    /**
     * @param produto_nome the produto_nome to set
     */
    public void setProduto_nome(String produto_nome) {
        this.produto_nome = produto_nome;
    }

    /**
     * @return the forma_pag
     */
    public String getForma_pag() {
        return forma_pag;
    }

    /**
     * @param forma_pag the forma_pag to set
     */
    public void setForma_pag(String forma_pag) {
        this.forma_pag = forma_pag;
    }

    /**
     * @return the dados_pag
     */
    public String getDados_pag() {
        return dados_pag;
    }

    /**
     * @param dados_pag the dados_pag to set
     */
    public void setDados_pag(String dados_pag) {
        this.dados_pag = dados_pag;
    }
    
    
}
