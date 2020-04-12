package com.example.base.repository

import com.example.base.model.OrderCandidate
import org.springframework.data.jpa.repository.JpaRepository
import javax.transaction.Transactional

interface OrderCandidateRepository : JpaRepository<OrderCandidate, String>{
    @Transactional
    fun findByNeighborIndexesContains(volunteerH3: Long): List<OrderCandidate>
}