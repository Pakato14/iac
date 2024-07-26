package com.posdrad.trabalho.controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PosGradController {

    @GetMapping
    public String get() {
        return "Bem vindo - Trabalho Ygila Lima, Bruna Lima e Daniel Oliveira";
    }
}