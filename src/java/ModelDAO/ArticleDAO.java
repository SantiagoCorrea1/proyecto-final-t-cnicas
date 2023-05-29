/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelDAO;

import Config.Conection;
import Interfaces.CRUD;
import Model.Article;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author SANTIAGO
 */
public class ArticleDAO implements CRUD{
    Conection cn = new Conection();
    Connection con = cn.getConnection();
    Statement st;
    ResultSet rs;
    PreparedStatement ps;
    
    @Override
    public List<Article> listar(){
        List<Article> listaArticles = new ArrayList<>();
        try {
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM tbl_articless");

            while (rs.next()) {
                Article a =  new Article();
                a.setId(rs.getInt("art_id"));
                a.setGameName(rs.getString("art_gamename"));
                a.setUserRating(rs.getBoolean("art_urating"));
                a.setBody(rs.getString("art_body"));
                a.setTitle(rs.getString("art_title"));
                listaArticles.add(a);
            }
            cn.con.close();
        } catch (Exception e) {
            System.err.println(e);
            
        }
        return listaArticles;
    }

    @Override
    public boolean add(Article art) {
        String sql = "INSERT INTO tbl_articless(art_title, art_body, art_gamename, art_urating)VALUES('"+art.getTitle()+"', '"+art.getBody()+"', '"+art.getGameName()+"', '1')";
        try {
            con = cn.getConnection();
            ps= con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public Article leer(int x) {
    Article a = new Article();
    try {
        String sql = "SELECT * FROM tbl_articless WHERE art_id = ?";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setInt(1, x);
        ResultSet rs = stmt.executeQuery();
        
        if (rs.next()) {
            a.setGameName(rs.getString("art_gamename"));
            a.setUserRating(rs.getBoolean("art_urating"));
            a.setBody(rs.getString("art_body"));
            a.setTitle(rs.getString("art_title"));
        }
        
        stmt.close();
        con.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
        return a;
    }
    
    @Override
    public void puntuar(int x, int p){
        System.out.println("hola");
        String sql= "update tbl_articless set art_urating='"+ p +"' where art_id="+x ;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
