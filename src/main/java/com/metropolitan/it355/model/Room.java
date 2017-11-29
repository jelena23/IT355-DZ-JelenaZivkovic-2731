/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.metropolitan.it355.model;

/**
 *
 * @author jelena
 */
public class Room
{
    private String roomType;
    private int numOfBeds;
    private boolean ac, tv, bathroom, kitchen, hairDryer;
    private double price;

    public Room()
    {
    }

    public Room(String roomType, int numOfBeds, boolean ac, boolean tv, boolean bathroom, boolean kitchen, boolean hairDryer, double price)
    {
        this.roomType = roomType;
        this.numOfBeds = numOfBeds;
        this.ac = ac;
        this.tv = tv;
        this.bathroom = bathroom;
        this.kitchen = kitchen;
        this.hairDryer = hairDryer;
        this.price = price;
    }

    public String getRoomType()
    {
        return roomType;
    }

    public void setRoomType(String roomType)
    {
        this.roomType = roomType;
    }

    public int getNumOfBeds()
    {
        return numOfBeds;
    }

    public void setNumOfBeds(int numOfBeds)
    {
        this.numOfBeds = numOfBeds;
    }

    public boolean isAc()
    {
        return ac;
    }

    public void setAc(boolean ac)
    {
        this.ac = ac;
    }

    public boolean isTv()
    {
        return tv;
    }

    public void setTv(boolean tv)
    {
        this.tv = tv;
    }

    public boolean isBathroom()
    {
        return bathroom;
    }

    public void setBathroom(boolean bathroom)
    {
        this.bathroom = bathroom;
    }

    public boolean isKitchen()
    {
        return kitchen;
    }

    public void setKitchen(boolean kitchen)
    {
        this.kitchen = kitchen;
    }

    public boolean isHairDryer()
    {
        return hairDryer;
    }

    public void setHairDryer(boolean hairDryer)
    {
        this.hairDryer = hairDryer;
    }

    public double getPrice()
    {
        return price;
    }

    public void setPrice(double price)
    {
        this.price = price;
    }

    @Override
    public String toString()
    {
        return "Room{" + "roomType=" + roomType + ", numOfBeds=" + numOfBeds + ", ac=" + ac + ", tv=" + tv + ", bathroom=" + bathroom + ", kitchen=" + kitchen + ", hairDryer=" + hairDryer + ", price=" + price + '}';
    }
    
    
}
