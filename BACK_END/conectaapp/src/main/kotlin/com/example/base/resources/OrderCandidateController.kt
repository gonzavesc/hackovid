package com.example.base.resources

import com.example.base.applicationService.OrderCandidateAppService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.ResponseEntity
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody

@Controller
class OrderCandidateController(@Autowired val orderCandidateAppService: OrderCandidateAppService){

    @PostMapping("/api/order-candidate")
    fun createOrderCandidate(
            @RequestBody orderCandidateRequestDTO: OrderCandidateRequestDTO
    ): ResponseEntity<OrderCandidateDTO> {
        val createdOrder = orderCandidateAppService.createOrderCandidate(orderCandidateRequestDTO)
        return ResponseEntity.ok(createdOrder)
    }
}

data class OrderCandidateRequestDTO(
        val orderAmount: Int,
        val lat: Double,
        val long: Double,
        val contactIdentifier: String
)

data class OrderCandidateDTO(
        val orderAmount: Int,
        val contactIdentifier: String
)