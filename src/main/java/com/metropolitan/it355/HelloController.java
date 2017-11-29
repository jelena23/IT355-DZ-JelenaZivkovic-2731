/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.metropolitan.it355;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author jelena
 */

@Controller
@RequestMapping("/")
public class HelloController 
{
    @RequestMapping(method = RequestMethod.GET)
    public String printHello(ModelMap model) 
    {
        model.addAttribute("heading", "MetHotels");
        model.addAttribute("subheading", "Spend your holidays with us!");
        model.addAttribute("message", "Dobrodošli na Web sisteme 2 i uvod u Spring!");
        return "hello";
    }
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
           @RequestParam(value = "logout", required = false) String logout) 
    {
        ModelAndView model = new ModelAndView();
        if (error != null) 
        {
            model.addObject("error", "Invalid login information!");
        }
        if (logout != null) 
        {
            model.addObject("msg", "You are logged out");
        }
        model.setViewName("login");
        return model;
    }
    
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied() 
    {
        ModelAndView model = new ModelAndView();
        Authentication auth
                = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) 
        {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            System.out.println(userDetail);
            model.addObject("username", userDetail.getUsername());
        }
        model.setViewName("403");
        return model;
    }
}
