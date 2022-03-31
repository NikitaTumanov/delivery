package com.example.fooddelivery.models

import lombok.Data
import lombok.Getter
import lombok.Setter
import javax.persistence.*

@Getter
@Setter

@Entity
@Data
@Table(name = "orders")
data class Order(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private var id: Long? = null,
    private var userId: Long? = null,
    private var productId: Long? = null,
    private var volume: Int? = null
)