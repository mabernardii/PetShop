package com.manuela.PetShop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.manuela.PetShop.entities.Usuario;
import com.manuela.PetShop.repositories.UsuarioRepository;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin("*")
public class AuthController {

    @Autowired
    private UsuarioRepository repo;

    @PostMapping("/login")
    public Usuario login(@RequestBody Usuario user){

        Usuario u = repo.findByEmail(user.getEmail());

        if(u != null &&
           u.getSenha().equals(user.getSenha())){

            return u;
        }

        return null;
    }
}