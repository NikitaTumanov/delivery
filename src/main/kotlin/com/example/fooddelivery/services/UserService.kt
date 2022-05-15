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
import org.springframework.http.HttpStatus
import javax.transaction.Transactional
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import com.example.fooddelivery.JwtProvider
import com.example.fooddelivery.models.Role
import com.example.fooddelivery.models.AuthInput
import org.springframework.http.ResponseEntity
@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
class UserService (
    @Autowired
    private var userRepository: UserRepository,
    @Autowired
    val jwtProvider: JwtProvider,
    private var bCryptPasswordEncoder: BCryptPasswordEncoder = BCryptPasswordEncoder()
) : UserDetailsService {
    fun addUser(user: User):User{
        val encryptedPassword = bCryptPasswordEncoder.encode(user.password)
        user.setPassword(encryptedPassword)
        user.orders = ArrayList()
        user.role = Role.ROLE_CLIENT
        return userRepository.save(user)
    }
    fun readAll(): List<User> = userRepository.findAll()
    fun findById(id: Long) = userRepository.findById(id)
    fun findByName(name: String) = userRepository.findByName(name)
    fun findByEmail(email: String) = userRepository.findByEmail(email)
    fun deleteById(id: Long) = userRepository.deleteById(id)
    fun deleteByName(name: String) = userRepository.deleteByName(name)
    fun deleteByEmail(email: String) = userRepository.deleteByEmail(email)
    fun updateRole(email: String, role: Role){
        val user = findByEmail(email)
        user?.role = role
        userRepository.save(user!!)
    }
    override fun loadUserByUsername(username: String?): UserDetails {
        val optionalUser: User? = userRepository.findByName(username!!);
        if (optionalUser != null){
            return optionalUser
        }
        throw UsernameNotFoundException(username)
    }
    fun login(authInput: AuthInput): ResponseEntity<String> {
        val userEntity = userRepository.findByName(authInput.name)
        if(userEntity!=null) {
            if (bCryptPasswordEncoder.matches(authInput.password, userEntity.password)) {
                val userDetails:UserDetails = userEntity
                val token: String = jwtProvider.generateToken(authInput.name, userDetails.authorities)
                return ResponseEntity(token,HttpStatus.OK)
            }
            else{
                return ResponseEntity("Ошибка ввода данных",HttpStatus.UNAUTHORIZED)
            }
        }
        return ResponseEntity("Ошибка ввода данных",HttpStatus.UNAUTHORIZED)
    }
}