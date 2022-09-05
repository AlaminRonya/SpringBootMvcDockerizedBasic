package com.example.springbootdockerizedexample.controller;

import com.example.springbootdockerizedexample.dto.request.RegistrationDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String page(@ModelAttribute("registrationDto")RegistrationDto dto){
        return "home";
    }

    @PostMapping("/response")
    public String responsePage(@ModelAttribute("registrationDto")RegistrationDto dto){
        System.out.println(dto);
        return "response";
    }
}
