package com.example.fooddelivery.repositories

import com.example.fooddelivery.models.Category
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface CategoryRepository: JpaRepository<Category, Long> {
    fun findById(id:Int): Category?
    fun findByName(name: String): Category?
    fun findByRestricted(restricted: Boolean): Category?
    fun deleteById(id: Int)
    fun deleteByName(name: String)
}