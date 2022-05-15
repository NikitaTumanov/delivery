package com.example.fooddelivery.services

import com.example.fooddelivery.models.Order
import com.example.fooddelivery.models.Role
import com.example.fooddelivery.repositories.OrderRepository
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
    fun findById(id: Long) = orderRepository.findById(id)
    fun deleteById(id: Long) = orderRepository.deleteById(id)
    fun updateStatus(id: Long, status: String){
        val order = findById(id)
        order?.status = status
        orderRepository.save(order!!)
    }
}