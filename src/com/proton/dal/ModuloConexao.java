/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.proton.dal;
import java.sql.*;
/**
 *
 * @author root
 */
public class ModuloConexao {
    // metodo para se conectar com o db
    public static Connection conector(){
        java.sql.Connection conexao = null;
        // ligando o driver do sql
        String driver = "com.mysql.jdbc.Driver";
        // armazenando as info do db
        String url = "jdbc:mysql://localhost:3306/db";
         //3306 porta padrao
        String user = "root";
        String password = "";
        //conectando com o banco de dados 
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        }
        catch (Exception e){
            System.out.println(e);
            return null;
        }

    }

}
