package com.team323.common.config;

import com.team323.sys.Interceptor.Login_icp;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


//充当spring-configs.xml配置文件的角色
@ComponentScan(value = "com.team323",
        includeFilters =
                {@Filter(type = FilterType.ANNOTATION, classes = {Controller.class})}, useDefaultFilters = false)
@EnableWebMvc //注解方式启用mvc默认配置
public class AppServletConfig extends WebMvcConfigurerAdapter {
    /**
     * 配置视图解析器
     */
   @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        registry.jsp("/WEB-INF/pages/", ".jsp");
    }

    /**
     * 配置拦截器
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new Login_icp()).addPathPatterns("/view/**");
    }


}

