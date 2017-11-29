/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.metropolitan.it355;

import com.metropolitan.it355.model.Room;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author jelena
 */
@Controller
public class RoomControler
{
    // GET method
    @Autowired
    private MessageSource messageSource;
    // GET method
    @RequestMapping(value = "/room", method = RequestMethod.GET)
    public ModelAndView room() 
    {
        System.out.println("Calling MessageSource");
        System.out.println(messageSource.getMessage("roomType", null, new Locale("sr-Latn-RS")));
        return new ModelAndView("room", "command", new Room());
    }
    // POST method
    @RequestMapping(value = "/addRoom", method = RequestMethod.POST)
    public String addRoom(@ModelAttribute Room room, ModelMap model) 
    {
        model.addAttribute("roomType", room.getRoomType());
        model.addAttribute("numOfBeds", room.getNumOfBeds());
        model.addAttribute("ac", room.isAc());
        model.addAttribute("tv", room.isTv());
        model.addAttribute("bathroom", room.isBathroom());
        model.addAttribute("kitchen", room.isBathroom());
        model.addAttribute("hairDryer", room.isHairDryer());
        model.addAttribute("price", room.getPrice());
        // viewStudent.jsp
        return "viewRoom";
    }
    
}
