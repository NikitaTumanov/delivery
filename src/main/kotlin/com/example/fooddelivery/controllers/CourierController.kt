package com.example.fooddelivery.controllers

import com.example.fooddelivery.services.*
import lombok.AllArgsConstructor
import lombok.NoArgsConstructor
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RestController

@NoArgsConstructor
@AllArgsConstructor
class CourierTest {
    val id: Long? = null
}

@RestController
class CourierController(
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
    @GetMapping(value = ["/courier/hello"])
    fun getHelloCOURIER(): String {
        return "Hi! COURIER"
    }

    @PostMapping("/courier/changeStatus/processing")
    fun changeStatusToProcessing(@RequestBody test: CourierTest){
        orderService.updateStatus(test.id!!, "processing")
    }
    @PostMapping("/courier/changeStatus/collecting")
    fun changeStatusToCollecting(@RequestBody test: CourierTest){
        orderService.updateStatus(test.id!!, "collecting")
    }
    @PostMapping("/courier/changeStatus/delivery")
    fun changeStatusToDelivery(@RequestBody test: CourierTest){
        orderService.updateStatus(test.id!!, "delivery")
    }
    @PostMapping("/courier/changeStatus/finished")
    fun changeStatusToFinished(@RequestBody test: CourierTest){
        orderService.updateStatus(test.id!!, "finished")
    }
}