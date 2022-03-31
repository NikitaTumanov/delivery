package com.example.fooddelivery.repository

import com.example.fooddelivery.models.Product
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface ProductRepository: JpaRepository<Product, Long> {
    fun findById(id:Int): Product?
    fun findAllByCategoryId(categoryId: Int): List<Product>?
    fun findByName(name: String): Product?
    fun deleteById(id: Int)
    fun deleteByCategoryId(id: Int)
    fun deleteByName(name: String)
}