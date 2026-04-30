package com.manuela.PetShop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.manuela.PetShop.entities.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Integer> {
}