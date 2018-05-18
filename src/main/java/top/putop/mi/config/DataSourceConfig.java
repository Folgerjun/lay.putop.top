// package top.putop.mi.config;
//
// import javax.sql.DataSource;
//
// import org.apache.ibatis.plugin.Interceptor;
// import org.apache.ibatis.session.SqlSessionFactory;
// import org.mybatis.spring.SqlSessionFactoryBean;
// import org.mybatis.spring.annotation.MapperScan;
// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.context.annotation.Bean;
// import org.springframework.context.annotation.Configuration;
// import org.springframework.core.env.Environment;
// import
// org.springframework.core.io.support.PathMatchingResourcePatternResolver;
// import
// org.springframework.transaction.annotation.EnableTransactionManagement;
//
// import com.github.pagehelper.PageInterceptor;
//
/// **
// * 2018/4/19 18:46
// */
// @Configuration
// @MapperScan("top.putop.mi.db.dao")
// @EnableTransactionManagement
// public class DataSourceConfig {
//
// // private static Logger logger =
// // LoggerFactory.getLogger(DataSourceConfig.class);
//
// @Autowired
// private Environment env;
//
// @Autowired
// private PageInterceptor pageInterceptor;
//
// @Bean
// public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws
// Exception {
// SqlSessionFactoryBean fb = new SqlSessionFactoryBean();
// fb.setDataSource(dataSource);
// // 该配置非常的重要，如果不将PageInterceptor设置到SqlSessionFactoryBean中，导致分页失效
// fb.setPlugins(new Interceptor[] { pageInterceptor });
// fb.setTypeAliasesPackage(env.getProperty("mybatis.type-aliases-package"));
// fb.setMapperLocations(
// new
// PathMatchingResourcePatternResolver().getResources(env.getProperty("mybatis.mapper-locations")));
// return fb.getObject();
// }
// }
