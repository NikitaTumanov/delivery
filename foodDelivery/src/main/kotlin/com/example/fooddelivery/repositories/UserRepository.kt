package com.example.fooddelivery.repositories

import com.example.fooddelivery.models.User
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface UserRepository: JpaRepository<User, Long> {
    fun findById(id:Int): User?
    fun findByName(name: String): User?
    fun deleteById(id: Int)
    fun deleteByName(name: String)
}