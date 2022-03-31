package com.example.fooddelivery.service

import com.example.fooddelivery.models.Category
import com.example.fooddelivery.models.User
import com.example.fooddelivery.repository.UserRepository
import lombok.RequiredArgsConstructor
import lombok.extern.slf4j.Slf4j
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import javax.transaction.Transactional

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
class UserService (
    @Autowired
    private var userRepository: UserRepository
){
    fun addUser(user: User) = userRepository.save(user)
    fun readAll(): List<User> = userRepository.findAll()
    fun findById(id: Int) = userRepository.findById(id)
    fun findByName(name: String) = userRepository.findByName(name)
    fun deleteById(id: Int) = userRepository.deleteById(id)
    fun deleteByName(name: String) = userRepository.deleteByName(name)
}