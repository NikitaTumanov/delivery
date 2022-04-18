package com.example.fooddelivery.models

import com.fasterxml.jackson.annotation.JsonIgnore
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
    var id: Long? = null,
    //var categoryId: Long? = null,
    var name: String? = null,
    var volume: Int? = null,
    var price: Int? = null,
    var defaultVolume: Int? = null,

    @ManyToOne
    @JoinColumn(name = "category_id")
    @JsonIgnore
    var category: Category
)