package com.example.fooddelivery.services

import com.example.fooddelivery.models.Order
import com.example.fooddelivery.models.Product
import com.example.fooddelivery.models.ProductItem
import com.example.fooddelivery.models.User
import com.example.fooddelivery.repositories.ProductItemRepository
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
class ProductItemService (
    @Autowired
    private var productItemRepository: ProductItemRepository
){
    fun addProductItem(productItem: ProductItem) = productItemRepository.save(productItem)
    fun readAll(): List<ProductItem> = productItemRepository.findAll()
    fun findById(id: Int) = productItemRepository.findById(id)
    fun deleteById(id: Int) = productItemRepository.deleteById(id)
}