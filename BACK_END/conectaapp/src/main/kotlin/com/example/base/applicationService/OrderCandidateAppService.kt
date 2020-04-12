package com.example.base.applicationService

import com.example.base.model.OrderCandidate
import com.example.base.repository.OrderCandidateRepository
import com.example.base.resources.OrderCandidateDTO
import com.example.base.resources.OrderCandidateRequestDTO
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class OrderCandidateAppService@Autowired constructor(val orderCandidateRepository: OrderCandidateRepository,
                                                     val h3Service: H3Service ) {

    fun createOrderCandidate(orderCandidateRequestDTO: OrderCandidateRequestDTO): OrderCandidateDTO {

        return orderCandidateRepository
                .save(OrderCandidate.fromRequestDTO(orderCandidateRequestDTO, h3Service))
                .toDTO()
    }
}