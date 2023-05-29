/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Model.Article;
import java.util.List;

/**
 *
 * @author SANTIAGO
 */
public interface CRUD {
    public List listar();
    public boolean add(Article art);
    public Article leer(int x);
    public void puntuar(int x, int p);
}
