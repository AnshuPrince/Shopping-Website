package Servlets;


import Servlets.Product;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
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
public class ProductsDAO {
    public Collection getProducts()
    {
        try{
            
            Connection con = DriverConnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from products");
            ArrayList products = new ArrayList();
            while(rs.next())
            {
                Product p = new Product();
                p.code = rs.getString(1);
                p.name = rs.getString(2);
                p.qty = rs.getDouble(3);
                products.add(p);
            }
            return products;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }
}
