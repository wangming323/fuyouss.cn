package com.team323.common.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

/**此类中负责执行前端控制器以及相关bean组件的加载和注册
 * 说明：此对象要承担web.xml的作用
 * */
public class WebAppInitializer
        extends AbstractAnnotationConfigDispatcherServletInitializer {
    /**
     * 此方法可有选择的重写
     */
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        //此方法内部在注册前端控制器
        super.onStartup(servletContext);
    }

    /**
     * 此方法加载service,dao等相关bean对象
     */
    @Override
    protected Class<?>[] getRootConfigClasses() {
       return new Class[]{AppRootConfig.class};
    }

    /**
     * 此方法中负责加载spring mvc 中的v,c等相关组件
     */

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{AppServletConfig.class};
    }
    @Override
    protected String[] getServletMappings() {
        return new String[]{"*.do"};
    }


}
