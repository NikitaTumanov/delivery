package com.example.fooddelivery.models

import lombok.Data
import lombok.Getter
import lombok.Setter
import javax.persistence.*

@Getter
@Setter

@Entity
@Data
@Table(name = "categories")
data class Category(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private var id: Long? = null,
    private var name: String? = null,
    private var restricted: Boolean? = null
)