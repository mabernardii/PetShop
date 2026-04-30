package com.manuela.PetShop.repositories;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.manuela.PetShop.entities.Produto;

public interface ProdutoRepository extends JpaRepository<Produto, Integer> {

    List<Produto> findByIdCategoriaAndAtivoTrue(Integer idCategoria);
}
