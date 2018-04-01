package Servlets;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import jdbc.DriverConnection;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Anshu_Prince
 */
public class UserDAO {
    
    public boolean validate(String uname,String pass)
    {
        try
        {
            Connection con = DriverConnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from userdetails where uname='"+uname+"' and pass='"+pass+"'");
            return rs.next();
        }
        catch(Exception e)
        {
            System.out.println("database not configured");
            e.printStackTrace();
        }
        return false;
    }
    
}
