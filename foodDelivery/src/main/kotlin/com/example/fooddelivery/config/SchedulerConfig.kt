package com.example.fooddelivery.config

import lombok.SneakyThrows
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty
import org.springframework.context.annotation.Configuration
import org.springframework.jmx.export.annotation.ManagedOperation
import org.springframework.scheduling.annotation.EnableScheduling
import org.springframework.scheduling.annotation.Scheduled

@Configuration
@EnableScheduling
@ConditionalOnProperty(name = ["scheduler.enabled"], matchIfMissing = true)
class SchedulerConfig {

    @SneakyThrows
    //First day in month at 1pm
    @Scheduled(cron = "0 0 13 1 * *")
    @ManagedOperation
    fun updateProductVolume(){

    }
}