package com.example.base.applicationService

import com.uber.h3core.H3Core
import org.springframework.stereotype.Service

@Service
class H3Service{
    private val h3 = H3Core.newInstance()
    private val resolution: Int = 9

    fun getNeighboringIndexes(lat: Double, long: Double): List<Long>{
        val orderH3 = h3.geoToH3(lat, long, resolution)
        return h3.kRing(orderH3, 1)
    }

    fun getH3Position(lat: Double, long: Double): Long =
            h3.geoToH3(lat, long, resolution)
}