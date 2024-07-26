package com.posdrad.trabalho.controller;

@RestController
public class PosGradController {

    @GetMapping
    public String get() {
        return "Bem vindo - Trabalho Ygila Lima, Bruna Lima e Daniel Oliveira";
    }
}