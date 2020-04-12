package com.example.base.resources

import com.example.base.applicationService.VolunteerApplicationService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.ResponseEntity
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody

@Controller
class VolunteerController(@Autowired val volunteerService: VolunteerApplicationService){

    @PostMapping("/api/volunteer")
    fun getVolunteerPosition(
            @RequestBody volunteerInformationDTO : VolunteerInformationDTO
    ): ResponseEntity<List<VolunteerOrderDTO>>{
        val closestOrders = volunteerService.getClosestOrderCandidates(volunteerInformationDTO)
        return ResponseEntity.ok(closestOrders)
    }
}

data class VolunteerInformationDTO(
        val lat: Double,
        val long: Double
)

data class VolunteerOrderDTO(
        val EstimateAmount: Int,
        val contactIdentifier: String
)