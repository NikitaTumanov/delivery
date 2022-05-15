package com.example.fooddelivery.controllers

import com.example.fooddelivery.models.*
import com.example.fooddelivery.services.*
import lombok.AllArgsConstructor
import lombok.NoArgsConstructor
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.*

@NoArgsConstructor
@AllArgsConstructor
class Test {
    val email: String? = null
}

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
    @GetMapping(value = ["/admin/categories"])
    fun getCategories(): List<Category> {
        return categoryService.readAll()
    }
    @GetMapping(value = ["/admin/orders"])
    fun getOrders(): List<Order> {
        return orderService.readAll()
    }
    @GetMapping(value = ["/admin/products"])
    fun getProducts(): List<Product> {
        return productService.readAll()
    }
    @GetMapping(value = ["/admin/users"])
    fun getUsers(): List<User> {
        return userService.readAll()
    }

    @PostMapping("/admin/user/changeRole/client")
    fun changeRoleToClient(@RequestBody test: Test){
        userService.updateRole(test.email!!, Role.ROLE_CLIENT)
    }
    @PostMapping("/admin/user/changeRole/admin")
    fun changeRoleToAdmin(@RequestBody test: Test){
        userService.updateRole(test.email!!, Role.ROLE_ADMIN)
    }
    @PostMapping("/admin/user/changeRole/courier")
    fun changeRoleToCourier(@RequestBody test: Test){
        userService.updateRole(test.email!!, Role.ROLE_COURIER)
    }
    @DeleteMapping("/admin/user/delete/{id}")
    fun deleteUser(@PathVariable id:Long){
        userService.deleteById(id)
    }
}