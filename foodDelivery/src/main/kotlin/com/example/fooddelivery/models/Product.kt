package com.example.fooddelivery.models

import lombok.Data
import lombok.Getter
import lombok.Setter
import javax.persistence.*

@Getter
@Setter

@Entity
@Data
@Table(name = "products")
data class Product(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private var id: Long? = null,
    private var categoryId: Long? = null,
    private var name: String? = null,
    private var volume: Int? = null,
    private var price: Int? = null,
    private var defaultVolume: Int? = null
)