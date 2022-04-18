package com.example.fooddelivery.controllers

import com.example.fooddelivery.services.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.DeleteMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class AdminController(
    @Autowired
    val categoryService: CategoryService,
    @Autowired
    val clientInfoService: ClientInfoService,
    @Autowired
    val orderService: OrderService,
    @Autowired
    val productService: ProductService,
    @Autowired
    val userService: UserService
) {

}