/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;


public class Article {
    private int id;
    private String title;
    private String gameName;
    private String body;
    private boolean userRating;

    public Article() {
    }

    public Article(int id, String title, String gameName, String body, boolean userRating) {
        this.id = id;
        this.title = title;
        this.gameName = gameName;
        this.body = body;
        this.userRating = userRating;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getGameName() {
        return gameName;
    }

    public void setGameName(String gameName) {
        this.gameName = gameName;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public boolean isUserRating() {
        return userRating;
    }


    public void setUserRating(boolean userRating) {
        this.userRating = userRating;
    }
    
    
}
