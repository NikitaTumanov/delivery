package com.example.fooddelivery.services

import com.example.fooddelivery.models.Category
import com.example.fooddelivery.repositories.CategoryRepository
import lombok.RequiredArgsConstructor
import lombok.extern.slf4j.Slf4j
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import javax.transaction.Transactional

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
class CategoryService (
    @Autowired
    private var categoryRepository: CategoryRepository
){
    fun addCategory(category:Category) = categoryRepository.save(category)
    fun readAll(): List<Category> = categoryRepository.findAll()
    fun findById(id: Int) = categoryRepository.findById(id)
    fun findByName(name: String) = categoryRepository.findByName(name)
    fun findByRestricted(restricted: Boolean) = categoryRepository.findByRestricted(restricted)
    fun deleteById(id: Int) = categoryRepository.deleteById(id)
    fun deleteByName(name: String) = categoryRepository.deleteByName(name)
}