package com.example.fooddelivery.models

import lombok.Data
import lombok.Getter
import lombok.Setter
import javax.persistence.*

@Getter
@Setter

@Entity
@Data
@Table(name = "client_info")
data class ClientInfo(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private var id: Long? = null,
    private var userId: Long? = null,
    private var address: Int? = null,
    private var age: String? = null
)