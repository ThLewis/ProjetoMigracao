/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Cliente;
import model.Produto;
import model.Venda;
import model.factory.ConnectionFactory;

/**
 *
 * Criado 04/06/2017 ás 00:32:20 por ThLewis
 */
public class VendaDAO {
    private Connection con;
    
    public VendaDAO() throws ClassNotFoundException{
        this.con = new ConnectionFactory().getConnection();
    }
    
    public void adiciona(Venda venda){
        String sql = "insert into vendas " +
                    "(id_cliente, cliente_nome, cliente_email, id_produto, produto_nome, produto_valor, forma_pag, dados_pag)" +
                    " values (?,?,?,?,?,?,?,?)";
        
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, venda.getId_cliente());
            stmt.setString(2, venda.getCliente_nome());
            stmt.setString(3, venda.getCliente_email());
            stmt.setInt(4, venda.getId_produto());
            stmt.setString(5, venda.getProduto_nome());
            stmt.setDouble(6, venda.getProduto_valor());
            stmt.setString(7, venda.getForma_pag());
            stmt.setString(8, venda.getDados_pag());
            
            stmt.execute();
            stmt.close();
            
            System.out.println("Venda: " + venda.getId() + " - Gravado!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public List<Venda> getVendas(){
        try {
            List<Venda> vendas = new ArrayList<Venda>();
            PreparedStatement stmt = con.prepareStatement("select * from vendas");
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {                
                Venda venda = new Venda();
                venda.setId(rs.getInt("id"));
                venda.setId_cliente(rs.getInt("id_cliente"));
                venda.setCliente_email(rs.getString("cliente_email"));
                venda.setCliente_nome(rs.getString("cliente_nome"));
                venda.setId_produto(rs.getInt("id_produto"));
                venda.setProduto_nome(rs.getString("produto_nome"));
                venda.setProduto_valor(rs.getDouble("produto_valor"));
                venda.setForma_pag(rs.getString("forma_pag"));
                venda.setDados_pag(rs.getString("dados_pag"));
                
                vendas.add(venda);
            }
            rs.close();
            stmt.close();
            return vendas;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public List<Venda> getVendasCliente(int id_cliente){
        try {
            List<Venda> vendas = new ArrayList<Venda>();
            PreparedStatement stmt = con.prepareStatement("select * from vendas where id_cliente=?");
            stmt.setInt(1, id_cliente);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {                
                Venda venda = new Venda();
                venda.setId(rs.getInt("id"));
                venda.setId_cliente(rs.getInt("id_cliente"));
                venda.setCliente_email(rs.getString("cliente_email"));
                venda.setCliente_nome(rs.getString("cliente_nome"));
                venda.setId_produto(rs.getInt("id_produto"));
                venda.setProduto_nome(rs.getString("produto_nome"));
                venda.setProduto_valor(rs.getDouble("produto_valor"));
                venda.setForma_pag(rs.getString("forma_pag"));
                venda.setDados_pag(rs.getString("dados_pag"));
                
                vendas.add(venda);
            }
            rs.close();
            stmt.close();
            return vendas;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public Venda getVenda(int id){
        try {
            Venda venda = new Venda();
            PreparedStatement stmt = con.prepareStatement("select * from vendas where id=?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {                
                venda.setId(rs.getInt("id"));
                venda.setId_cliente(rs.getInt("id_cliente"));
                venda.setCliente_email(rs.getString("cliente_email"));
                venda.setCliente_nome(rs.getString("cliente_nome"));
                venda.setId_produto(rs.getInt("id_produto"));
                venda.setProduto_nome(rs.getString("produto_nome"));
                venda.setProduto_valor(rs.getDouble("produto_valor"));
                venda.setForma_pag(rs.getString("forma_pag"));
                venda.setDados_pag(rs.getString("dados_pag"));
            }
            rs.close();
            stmt.close();
            return venda;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void altera(Venda venda){
        String sql = "update vendas set forma_pag=?,dados_pag=? where id=?";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, venda.getForma_pag());
            stmt.setString(2, venda.getDados_pag());
            stmt.setInt(3, venda.getId());
            stmt.execute();
            stmt.close();
            
            System.out.println("Venda: "+ venda.getId() + " - Foi Alterada!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void exclui(int id){
        try{
            PreparedStatement stmt = con.prepareStatement("delete "+
            "from vendas where id=?");
            stmt.setInt(1, id);
            stmt.execute();
            stmt.close();
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
}
