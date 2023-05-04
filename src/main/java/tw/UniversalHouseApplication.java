package tw;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.PropertySource;

import tw.config.WebAppConfig;
import tw.config.WebSecurityConfig;
import tw.config.WebSocketConfig;

@SpringBootApplication
@EnableAspectJAutoProxy
@PropertySource(value = { "classpath:jdbc.properties" }, ignoreResourceNotFound = true)
public class UniversalHouseApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(UniversalHouseApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(UniversalHouseApplication.class,WebSocketConfig.class , WebAppConfig.class, WebSecurityConfig.class)
	    		.properties("spring.config.name:application");
	}
}
