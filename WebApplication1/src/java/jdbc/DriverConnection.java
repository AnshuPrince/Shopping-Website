package jdbc;


import java.util.Properties;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Anshu_Prince
 */
public class DriverConnection {
    
  /*  Properties prop = new Properties();
    prop.load(new FileInputStream("C:\Users\princ\Desktop\StubbyShop\src\java\MyDBDetails.properties"));
    
    */
    public static Connection getConnection()throws Exception
    {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost;databaseName=anshu";
        return DriverManager.getConnection(url, "sa","anshu123");
    }
    
}
