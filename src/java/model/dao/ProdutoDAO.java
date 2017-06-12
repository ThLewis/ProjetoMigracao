/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model.dao;

import model.factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import model.Produto;

/**
 *
 * Criado 03/06/2017 ás 14:41:38 por ThLewis
 */
public class ProdutoDAO {
    private Connection con;
    
    public ProdutoDAO() throws ClassNotFoundException{
        this.con = new ConnectionFactory().getConnection();
    }
    
    
    public void adiciona(Produto produto){
        String sql = "insert into produtos " +
                    "(nome, categoria, tipo, valor)" +
                    " values (?,?,?,?,?)";
        
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, produto.getNome());
            stmt.setString(2, produto.getCategoria());
            stmt.setString(3, produto.getTipo());
            stmt.setDouble(4, produto.getValor());
            
            stmt.execute();
            stmt.close();
            
            System.out.println("Produto: " + produto.getNome() + " - Gravado!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public List<Produto> getProdutos(){
        try {
            List<Produto> produtos = new ArrayList<Produto>();
            PreparedStatement stmt = con.prepareStatement("select * from produtos");
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {                
                Produto produto = new Produto();
                produto.setId(rs.getInt("id"));
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getString("categoria"));
                produto.setTipo(rs.getString("tipo"));
                produto.setValor(rs.getDouble("valor"));
                
                produtos.add(produto);
            }
            rs.close();
            stmt.close();
            return produtos;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public Produto getProduto(int id){
        try {
            Produto produto = new Produto();
            PreparedStatement stmt = con.prepareStatement("select * from produtos where id=?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            DecimalFormat df = new DecimalFormat("#.00");
            while (rs.next()) {                
                produto.setId(id);
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getString("categoria"));
                produto.setTipo(rs.getString("tipo"));
                produto.setValor(rs.getDouble("valor"));
            }
            rs.close();
            stmt.close();
            return produto;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void altera(Produto produto){
        String sql = "update cliente set nome=?, categoria=?,tipo=?, valor=? where id=?";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, produto.getNome());
            stmt.setString(2, produto.getCategoria());
            stmt.setString(3, produto.getTipo());
            stmt.setDouble(4, produto.getValor());
            stmt.setInt(5, produto.getId());
            stmt.execute();
            stmt.close();
            
            System.out.println("Produto: " + produto.getNome() + " : ID = "+ produto.getId() + " - Foi Alterado!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void exclui(Produto produto){
        try{
            PreparedStatement stmt = con.prepareStatement("delete "+
            "from produtos where id=?");
            stmt.setInt(1, produto.getId());
            stmt.execute();
            stmt.close();
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
}
