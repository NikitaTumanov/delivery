package com.example.fooddelivery.models

import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import lombok.Data
import lombok.Getter
import lombok.Setter
import javax.persistence.*

@Getter
@Setter
@Entity
@Table(name = "categories")
data class Category(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long? = null,
    var name: String? = null,
    var restricted: Boolean? = null,

    @OneToMany(fetch = FetchType.LAZY, cascade = [CascadeType.ALL], mappedBy = "category")
    @JsonIgnoreProperties("category")
    var products: List<Product> = ArrayList()
){
    override fun toString(): String {
        return "{id: ${id},name: ${name},restricted: ${restricted}";
    }
}