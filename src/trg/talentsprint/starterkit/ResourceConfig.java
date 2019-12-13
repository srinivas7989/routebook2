package trg.talentsprint.starterkit;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class ResourceConfig implements WebMvcConfigurer{
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/images/**")
		.addResourceLocations("D://uploads//")
		.setCachePeriod(0);
	}

}
