package com.example.jdbc_api.controller;

import com.example.jdbc_api.model.Product;
import com.example.jdbc_api.repository.ProductRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ProductController {
    private final ProductRepository productRepository;

    public ProductController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping("/products/fetch-product")
    public List<Product> getNameProduct(@RequestParam("name") String name) {
        return productRepository.getProductName(name);
    }
}