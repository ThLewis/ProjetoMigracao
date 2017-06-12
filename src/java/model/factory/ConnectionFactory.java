/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * Criado 20/05/2017 ás 19:49:39 por ThLewis
 */
public class ConnectionFactory {
    public Connection getConnection() throws ClassNotFoundException{
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            return DriverManager.getConnection("jdbc:mysql://localhost/division","root","");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
