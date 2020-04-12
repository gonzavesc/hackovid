package com.example.base.model

import com.example.base.applicationService.H3Service
import com.example.base.resources.OrderCandidateDTO
import com.example.base.resources.OrderCandidateRequestDTO
import org.hibernate.annotations.LazyCollection
import org.hibernate.annotations.LazyCollectionOption
import java.util.*
import javax.persistence.*

@Entity
@Table(name = "order_candidates")
data class OrderCandidate private constructor(@Id
                                              val id: String,
                                              val orderAmount: Int,
                                              val contactIdentifier: String,
                                              @ElementCollection
                                              @LazyCollection(LazyCollectionOption.FALSE)
                                              @CollectionTable(name = "order_candidate_neighbor_indexes",
                                                      joinColumns = [JoinColumn(name = "id")])
                                              @Column(name = "neighbor_index")
                                              val neighborIndexes: List<Long>){
    fun toDTO(): OrderCandidateDTO =
            OrderCandidateDTO(orderAmount, contactIdentifier)


    companion object{
        fun fromRequestDTO(requestDto: OrderCandidateRequestDTO, h3Service: H3Service): OrderCandidate{
            val neighborIndexes = h3Service.getNeighboringIndexes(requestDto.lat, requestDto.long)
            return OrderCandidate(UUID.randomUUID().toString(), requestDto.orderAmount, requestDto.contactIdentifier, neighborIndexes)
        }
    }

}