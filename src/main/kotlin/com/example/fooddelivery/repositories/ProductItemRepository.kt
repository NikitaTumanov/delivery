package com.example.fooddelivery.repositories

import com.example.fooddelivery.models.ProductItem
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface ProductItemRepository: JpaRepository<ProductItem, Long> {
    fun findById(id:Int): ProductItem?
    fun deleteById(id: Int)
}