/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.metropolitan.it355;

/**
 *
 * @author jelena
 */
public interface RoomDao
{
    public void addRoom();
    
    public String addRoomRet();
    
    public void addRoomThrowException() throws Exception;
    
    public void addRoomAround(String roomType);
}
