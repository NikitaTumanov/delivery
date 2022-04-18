package com.example.fooddelivery.services

import com.example.fooddelivery.models.User
import com.example.fooddelivery.repositories.UserRepository
import lombok.RequiredArgsConstructor
import lombok.extern.slf4j.Slf4j
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.stereotype.Service
import java.util.*
import javax.transaction.Transactional

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
class UserService (
    @Autowired
    private var userRepository: UserRepository
) : UserDetailsService {
    fun addUser(user: User) = userRepository.save(user)
    fun readAll(): List<User> = userRepository.findAll()
    fun findById(id: Int) = userRepository.findById(id)
    fun findByName(name: String) = userRepository.findByName(name)
    fun deleteById(id: Int) = userRepository.deleteById(id)
    fun deleteByName(name: String) = userRepository.deleteByName(name)
    override fun loadUserByUsername(username: String?): UserDetails {
        val optionalUser: User? = userRepository.findByName(username!!);
        if (optionalUser != null){
            return optionalUser
        }
        throw UsernameNotFoundException(username)
    }
}