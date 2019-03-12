package es.joaco.logs

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController
import java.util.logging.Logger


@SpringBootApplication
class Application

fun main(args: Array<String>) {
    runApplication<Application>(*args)
}

@RestController("/")
class MainController {

    val LOGGER = Logger.getLogger(this.javaClass.name)

    @GetMapping("hello")
    fun main(): String {
        LOGGER.info("Hello endpoint called")
        return "hello"
    }

}



