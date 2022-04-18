package com.example.fooddelivery.services

import com.example.fooddelivery.models.Product
import com.example.fooddelivery.repositories.ProductRepository
import lombok.RequiredArgsConstructor
import lombok.extern.slf4j.Slf4j
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import javax.transaction.Transactional

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
class ProductService (
    @Autowired
    private var productRepository: ProductRepository
){
    fun addProduct(product: Product) = productRepository.save(product)
    fun readAll(): List<Product> = productRepository.findAll()
    fun findById(id: Int) = productRepository.findById(id)
    fun findAllByCategoryId(categoryId: Int) = productRepository.findAllByCategoryId(categoryId)
    fun findByName(name: String) = productRepository.findByName(name)
    fun deleteById(id: Int) = productRepository.deleteById(id)
    fun deleteByCategoryId(categoryId: Int) = productRepository.deleteByCategoryId(categoryId)
    fun deleteByName(name: String) = productRepository.deleteByName(name)
}