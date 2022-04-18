package com.example.fooddelivery.repositories

import com.example.fooddelivery.models.Order
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface OrderRepository: JpaRepository<Order, Long> {
    fun findById(id: Int): Order?
    fun findAllByUserId(userId: Int): List<Order>?
    fun findByProductId(productId: Int): Order?
    fun deleteById(id: Int)
    fun deleteByUserId(id: Int)
    fun deleteByProductId(id: Int)
}