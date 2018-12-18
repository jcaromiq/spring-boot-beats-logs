package es.joaco.logs

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class LogsApplication

fun main(args: Array<String>) {
    runApplication<LogsApplication>(*args)
}

