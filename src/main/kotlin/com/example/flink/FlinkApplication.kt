package com.example.flink

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class FlinkApplication

fun main(args: Array<String>) {
    runApplication<FlinkApplication>(*args)
}
