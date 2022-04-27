package com.example.fooddelivery.controllers

import com.example.fooddelivery.services.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.bind.annotation.GetMapping

@RestController
class AdminController(
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
    @GetMapping(value = ["/admin/hello"])
    fun getHelloADMIN(): String {
        return "Hi! ADMIN"
    }
}