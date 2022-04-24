package com.example.fooddelivery.controllers

import com.example.fooddelivery.models.Category
import com.example.fooddelivery.models.Product
import com.example.fooddelivery.services.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class PublicController(
    @Autowired
    val categoryService: CategoryService,
    @Autowired
    val productItemService: ProductItemService,
    @Autowired
    val orderService: OrderService,
    @Autowired
    val productService: ProductService,
    @Autowired
    val userService: UserService
) {
    @GetMapping(value = ["/public/products"])
    fun getProducts(): List<Product> {
        println(productService.readAll())
        return productService.readAll()
    }

    @GetMapping(value = ["/public/categories"])
    fun getCategories(): List<Category> {
        return categoryService.readAll()
    }
}