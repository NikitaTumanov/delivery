package com.example.fooddelivery.models

import com.fasterxml.jackson.annotation.JsonIgnore
import lombok.Data
import lombok.Getter
import lombok.Setter
import javax.persistence.*


@Entity
@Data
@Table(name = "orders")
data class Order(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long? = null,
    //var userId: Long? = null,
    var productIds: Long? = null,
    var volume: Int? = null,
    var address: String? = null,

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id", nullable = false)
    @JsonIgnore
    var user: User,

    @OneToMany(fetch = FetchType.LAZY, cascade = [CascadeType.ALL], mappedBy = "order")
    private var product: List<Product>
)