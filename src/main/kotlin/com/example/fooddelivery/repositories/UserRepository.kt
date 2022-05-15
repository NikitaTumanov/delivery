package com.example.fooddelivery.repositories

import com.example.fooddelivery.models.User
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface UserRepository: JpaRepository<User, Long> {
    fun findByName(name: String): User?
    fun findByEmail(email: String): User?
    fun deleteByName(name: String)
    fun deleteByEmail(email: String)
}