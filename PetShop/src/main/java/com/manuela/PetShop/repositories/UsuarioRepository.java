package com.manuela.PetShop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.manuela.PetShop.entities.Usuario;

public interface UsuarioRepository
extends JpaRepository<Usuario, Integer>{

    Usuario findByEmail(String email);

}