package com.manuela.PetShop.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manuela.PetShop.entities.Categoria;
import com.manuela.PetShop.repositories.CategoriaRepository;

@Service
public class CategoriaService {

    @Autowired
    private CategoriaRepository repository;

    public List<Categoria> listar() {
        return repository.findAll();
    }

    public Categoria salvar(Categoria c) {
        return repository.save(c);
    }

    public Categoria atualizar(Integer id, Categoria c) {
        c.setId_categoria(id);
        return repository.save(c);
    }

    public void deletar(Integer id) {
        repository.deleteById(id);
    }
}