package com.example.fooddelivery.models

import com.fasterxml.jackson.annotation.JsonIgnore
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import lombok.Data
import lombok.Getter
import lombok.Setter
import javax.persistence.*

@Getter
@Setter
@Entity
@Table(name = "product_items")
data class ProductItem(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long? = null,
    var count: Int? = null,

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    var product: Product,

    @ManyToOne
    @JoinColumn(name = "order_id", nullable = false)
    @JsonIgnoreProperties("product_items")
    var order: Order
){
    override fun toString(): String {
        return "{" +
                "id: ${id}," +
                "count: ${count}";
    }
}