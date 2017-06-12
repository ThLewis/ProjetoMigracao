/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model.dao;

/**
 *
 * Criado 04/06/2017 ás 16:53:32 por ThLewis
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import model.factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import model.Funcionario;
import model.Funcionario;

/**
 *
 * Criado 04/06/2017 ás 16:53:32 por ThLewis
 */
public class FuncionarioDAO {
    private Connection con;
    
    public FuncionarioDAO() throws ClassNotFoundException{
        this.con = new ConnectionFactory().getConnection();
    }
    
    
    public void adiciona(Funcionario funcionario){
        String sql = "insert into funcionarios " +
                    "(nome, email, senha, telefone ,cargo)" +
                    " values (?,?,?,?,?,?)";
        
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, funcionario.getNome());
            stmt.setString(2, funcionario.getEmail());
            stmt.setString(3, funcionario.getSenha());
            stmt.setString(4, funcionario.getTelefone());
            stmt.setString(5, funcionario.getCargo());
            
            stmt.execute();
            stmt.close();
            
            System.out.println("Funcionario: " + funcionario.getNome() + " - Gravado!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public List<Funcionario> getFuncionarios(){
        try {
            List<Funcionario> funcionarios = new ArrayList<Funcionario>();
            PreparedStatement stmt = con.prepareStatement("select * from funcionarios");
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {                
                Funcionario funcionario = new Funcionario();
                funcionario.setId(rs.getInt("id"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setSenha(rs.getString("senha"));
                funcionario.setTelefone(rs.getString("telefone"));
                funcionario.setCargo(rs.getString("cargo"));
                
                funcionarios.add(funcionario);
            }
            rs.close();
            stmt.close();
            return funcionarios;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public Funcionario getFuncionario(int id){
        try {
            Funcionario funcionario = new Funcionario();
            PreparedStatement stmt = con.prepareStatement("select * from funcionarios where id=?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {                
                funcionario.setId(rs.getInt("id"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setSenha(rs.getString("senha"));
                funcionario.setTelefone(rs.getString("telefone"));
                funcionario.setCargo(rs.getString("cargo"));
            }
            rs.close();
            stmt.close();
            return funcionario;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public Funcionario completaFuncionario(String email){
        try {
            Funcionario funcionario = new Funcionario();
            PreparedStatement stmt = con.prepareStatement("select * from funcionarios where email=?");
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                funcionario.setId(rs.getInt("id"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setSenha(rs.getString("senha"));
                funcionario.setTelefone(rs.getString("telefone"));
                funcionario.setCargo(rs.getString("cargo"));
            }
            rs.close();
            stmt.close();
            return funcionario;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void altera(Funcionario funcionario){
        String sql = "update funcionarios set nome=?, email=?,senha=?, telefone=?, cargo=? where id=?";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, funcionario.getNome());
            stmt.setString(2, funcionario.getEmail());
            stmt.setString(3, funcionario.getSenha());
            stmt.setString(4, funcionario.getTelefone());
            stmt.setString(5, funcionario.getCargo());
            stmt.setInt(7, funcionario.getId());
            stmt.execute();
            stmt.close();
            
            System.out.println("Funcionario: " + funcionario.getNome() + " : ID = "+ funcionario.getId() + " - Foi Alterado!");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    public void exclui(Funcionario funcionario){
        try{
            PreparedStatement stmt = con.prepareStatement("delete "+
            "from funcionarios where id=?");
            stmt.setInt(1, funcionario.getId());
            stmt.execute();
            stmt.close();
        }catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
    
    public boolean login(String email, String senha){
        boolean login;
        try {
            PreparedStatement stmt = con.prepareStatement("select * from funcionarios where email=? and senha=?");
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

