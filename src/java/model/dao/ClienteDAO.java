/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model.dao;

import model.factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import model.Cliente;

/**
 *
 * Criado 01/06/2017 ás 17:34:32 por ThLewis
 */
public class ClienteDAO {
    private Connection con;
    
    public ClienteDAO() throws ClassNotFoundException{
        this.con = new ConnectionFactory().getConnection();
    }
    
    
    public void adiciona(Cliente cliente){
        String sql = "insert into cliente " +
                    "(nome, email, senha, cpf, telefone ,endereco)" +
                    " values (?,?,?,?,?,?)";
        
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getSenha());
            stmt.setString(4, cliente.getCpf());
            stmt.setString(5, cliente.getTelefone());
            stmt.setString(6, cliente.getEndereco());
            
            stmt.execute();
            stmt.close();
            
            System.out.println("Cliente: " + cliente.getNome() + " - Gravado!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public List<Cliente> getClientes(){
        try {
            List<Cliente> clientes = new ArrayList<Cliente>();
            PreparedStatement stmt = con.prepareStatement("select * from cliente");
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {                
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
                cliente.setCpf(rs.getString("cpf"));
                cliente.setTelefone(rs.getString("telefone"));
                cliente.setEndereco(rs.getString("endereco"));
                
                clientes.add(cliente);
            }
            rs.close();
            stmt.close();
            return clientes;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public Cliente getCliente(int id){
        try {
            Cliente cliente = new Cliente();
            PreparedStatement stmt = con.prepareStatement("select * from cliente where id=?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {                
                cliente.setId(id);
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
                cliente.setCpf(rs.getString("cpf"));
                cliente.setTelefone(rs.getString("telefone"));
                cliente.setEndereco(rs.getString("endereco"));
            }
            rs.close();
            stmt.close();
            return cliente;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public Cliente completaCliente(String email){
        try {
            Cliente cliente = new Cliente();
            PreparedStatement stmt = con.prepareStatement("select * from cliente where email=?");
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                cliente.setSenha(rs.getString("senha"));
                cliente.setCpf(rs.getString("cpf"));
                cliente.setTelefone(rs.getString("telefone"));
                cliente.setEndereco(rs.getString("endereco"));
            }
            rs.close();
            stmt.close();
            return cliente;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void altera(Cliente cliente){
        String sql = "update cliente set nome=?, email=?,senha=?, cpf=?, telefone=?, endereco=? where id=?";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getSenha());
            stmt.setString(4, cliente.getCpf());
            stmt.setString(5, cliente.getTelefone());
            stmt.setString(6, cliente.getEndereco());
            stmt.setInt(7, cliente.getId());
            stmt.execute();
            stmt.close();
            
            System.out.println("Cliente: " + cliente.getNome() + " : ID = "+ cliente.getId() + " - Foi Alterado!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void exclui(Cliente cliente){
        try{
            PreparedStatement stmt = con.prepareStatement("delete "+
            "from cliente where id=?");
            stmt.setInt(1, cliente.getId());
            stmt.execute();
            stmt.close();
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
    
    public boolean login(String email, String senha){
        boolean login;
        try {
            PreparedStatement stmt = con.prepareStatement("select * from cliente where email=? and senha=?");
            stmt.setString(1, email);
            stmt.setString(2, senha);
            ResultSet rs = stmt.executeQuery();
            
            login = rs.next();
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return login;
    }
    
}
