package com.example.fooddelivery.service

import com.example.fooddelivery.models.Category
import com.example.fooddelivery.models.Order
import com.example.fooddelivery.repository.OrderRepository
import lombok.RequiredArgsConstructor
import lombok.extern.slf4j.Slf4j
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import javax.transaction.Transactional

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
class OrderService (
    @Autowired
    private var orderRepository: OrderRepository
){
    fun addOrder(order: Order) = orderRepository.save(order)
    fun readAll(): List<Order> = orderRepository.findAll()
    fun findById(id: Int) = orderRepository.findById(id)
    fun findAllByUserId(userId: Int) = orderRepository.findAllByUserId(userId)
    fun findByProductId(productId: Int) = orderRepository.findByProductId(productId)
    fun deleteById(id: Int) = orderRepository.deleteById(id)
    fun deleteByUserId(userId: Int) = orderRepository.deleteByUserId(userId)
    fun deleteByProductId(productId: Int) = orderRepository.deleteByProductId(productId)
}