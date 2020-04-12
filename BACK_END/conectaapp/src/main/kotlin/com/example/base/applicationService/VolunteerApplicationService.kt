package com.example.base.applicationService

import com.example.base.repository.OrderCandidateRepository
import com.example.base.resources.VolunteerInformationDTO
import com.example.base.resources.VolunteerOrderDTO
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class VolunteerApplicationService @Autowired constructor(val orderCandidateRepository: OrderCandidateRepository,
                                                         val h3Service: H3Service) {

    fun getClosestOrderCandidates(dto: VolunteerInformationDTO) : List<VolunteerOrderDTO> {
        val volunteerH3Position = h3Service.getH3Position(dto.lat, dto.long)
        return orderCandidateRepository.findByNeighborIndexesContains(volunteerH3Position)
                .map { VolunteerOrderDTO(it.orderAmount, it.contactIdentifier) }
    }
}
