package com.codeup.adlister.models;

import com.mysql.cj.conf.PropertyDefinitions;

import java.sql.Date;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String createdOn;
    private String field;
    private String description;

    public Ad(){

    }

    public Ad(long id, long userId, String title, String createdOn, String field, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.createdOn = createdOn;
        this.field = field;
        this.description = description;
    }

    public Ad(long userId, String title, String createdOn, String field, String description) {
        this.userId = userId;
        this.title = title;
        this.createdOn = createdOn;
        this.field = field;
        this.description = description;
    }

    public String getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(String createdOn) {
        this.createdOn = createdOn;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
