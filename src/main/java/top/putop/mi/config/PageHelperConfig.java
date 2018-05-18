// package top.putop.mi.config;
//
// import java.util.Properties;
//
// import org.springframework.context.annotation.Bean;
// import org.springframework.context.annotation.Configuration;
//
// import com.github.pagehelper.PageInterceptor;
//
/// **
// * 分页插件的配置 Created by Donghua.Chen on 2018/4/20.
// */
//
// @Configuration
// public class PageHelperConfig {
//
// // @Value("${pagehelper.helperDialect}")
// private String helperDialect = "mysql";
//
// @Bean
// public PageInterceptor pageInterceptor() {
//
// PageInterceptor pageInterceptor = new PageInterceptor();
// Properties properties = new Properties();
// properties.setProperty("helperDialect", helperDialect);
// pageInterceptor.setProperties(properties);
// return pageInterceptor;
// }
// }