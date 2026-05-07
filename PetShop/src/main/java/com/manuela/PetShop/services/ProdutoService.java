package com.manuela.PetShop.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manuela.PetShop.entities.Produto;
import com.manuela.PetShop.repositories.ProdutoRepository;

@Service
public class ProdutoService {

    @Autowired
    private ProdutoRepository repository;

    public List<Produto> listar() {
        return repository.findAll();
    }

    public Produto salvar(Produto p) {
        return repository.save(p);
    }

    public Produto atualizar(Integer id, Produto p) {
        p.setId_produto(id);
        return repository.save(p);
    }

    public void deletar(Integer id) {
        repository.deleteById(id);
    }

    public List<Produto> getProdutosPorCategoria(Integer idCategoria) {
        return repository.findByIdCategoriaAndAtivoTrue(idCategoria);
    }

    public Produto buscarPorId(Integer id) {
        return repository.findById(id).orElse(null);
    }
}