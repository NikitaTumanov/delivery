package com.example.fooddelivery.repositories

import com.example.fooddelivery.models.ClientInfo
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface ClientInfoRepository: JpaRepository<ClientInfo, Long> {
    fun findById(id:Int): ClientInfo?
    fun findByUserId(userId:Int): ClientInfo?
    fun deleteById(id: Int)
    fun deleteByUserId(id: Int)
}