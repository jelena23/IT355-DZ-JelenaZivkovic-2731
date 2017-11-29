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
public class RoomDaoImpl implements RoomDao
{

    @Override
    public void addRoom()
    {
        System.out.println("Adding room...");
    }

    @Override
    public String addRoomRet()
    {
       System.out.println("Adding room and returning value.");
        return "Room successfully added.";
    }

    @Override
    public void addRoomThrowException() throws Exception
    {
        System.out.println("Add room with exception.");
        throw new Exception("Generic exception");
    }

    @Override
    public void addRoomAround(String roomType)
    {
        System.out.println("Adding room: " + roomType);
    }
    
}
