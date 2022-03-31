package com.example.fooddelivery.models

import lombok.Data
import lombok.Getter
import lombok.Setter
import javax.persistence.*

@Getter
@Setter

@Entity
@Data
@Table(name = "users")
data class User(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private var id: Long? = null,
    private var name: String? = null,
    private var password: String? = null,
    private var type: String? = null,
    private var email: String? = null,
    private var phoneNumber: String? = null
)