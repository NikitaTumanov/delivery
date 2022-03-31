package com.example.fooddelivery.service

import com.example.fooddelivery.models.Category
import com.example.fooddelivery.models.ClientInfo
import com.example.fooddelivery.repository.ClientInfoRepository
import lombok.RequiredArgsConstructor
import lombok.extern.slf4j.Slf4j
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import javax.transaction.Transactional

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
class ClientInfoService (
    @Autowired
    private var clientInfoRepository: ClientInfoRepository
){
    fun addClientInfo(clientInfo: ClientInfo) = clientInfoRepository.save(clientInfo)
    fun readAll(): List<ClientInfo> = clientInfoRepository.findAll()
    fun findById(id: Int) = clientInfoRepository.findById(id)
    fun findByUserId(userId: Int) = clientInfoRepository.findByUserId(userId)
    fun deleteById(id: Int) = clientInfoRepository.deleteById(id)
    fun deleteByUserId(userId: Int) = clientInfoRepository.deleteByUserId(userId)
}