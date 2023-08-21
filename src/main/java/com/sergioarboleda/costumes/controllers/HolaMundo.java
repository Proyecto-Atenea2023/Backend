package com.sergioarboleda.costumes.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/saludar")   //http://localhost:8080/saludar
public class HolaMundo {

    @GetMapping("/hola")     //http://localhost:8080/saludar/hola
    public String saludar(){
        return "<h1>Hola mundo ruta http://localhost:8080/saludar/hola</h1>";
    }
}
