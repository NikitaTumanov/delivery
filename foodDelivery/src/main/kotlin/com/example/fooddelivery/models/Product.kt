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
@Table(name = "products")
data class Product(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long? = null,
    var name: String? = null,
    var volume: Int? = null,
    var price: Int? = null,
    var defaultVolume: Int? = null,

    @OneToMany(fetch = FetchType.LAZY, cascade = [CascadeType.ALL], mappedBy = "product")
    @JsonIgnoreProperties("product")
    var productItems: List<ProductItem> = ArrayList(),

    @ManyToOne
    @JoinColumn(name = "category_id")
    @JsonIgnoreProperties("products")
    var category: Category? = null,
){
    override fun toString(): String {
        return "{" +
                "id: ${id}," +
                "name: ${name}," +
                "volume: ${volume}" +
                "price: ${price}" +
                "defaultVolume: ${defaultVolume}" +
                "category: ${category}";
    }
}