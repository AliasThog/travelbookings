package spring.ojt;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan("spring.ojt")
@EnableJpaRepositories(basePackages = "spring.ojt.repository")
@EnableTransactionManagement
public class SpringConfig {
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/hotelproject?useSSL=false&serverTimezone=UTC");
		ds.setUsername("root");
		ds.setPassword("1234");
		return ds;
	}

	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource datasource) {
		LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
		em.setDataSource(datasource);
		em.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
		em.setPackagesToScan("spring.ojt.entity");

		Properties pr = new Properties();
		pr.put("hibernate.dialect", "org.hibernate.dialect.MySQL8Dialect");
		pr.put("hibernate.hbm2ddl.auto", "update");
//		pr.put("hibernate.show_sql", "true");
		em.setJpaProperties(pr);

		return em;
	}

	@Bean
	public JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {
		JpaTransactionManager tm = new JpaTransactionManager();
		tm.setEntityManagerFactory(entityManagerFactory);

		return tm;
	}

	@Bean
	public static PropertySourcesPlaceholderConfigurer properties() {
		PropertySourcesPlaceholderConfigurer props = new PropertySourcesPlaceholderConfigurer();
		props.setLocation(new ClassPathResource("/common.properties"));
		return props;
	}
//	
	@Bean
	public XSSFWorkbook workbook() {
		return new XSSFWorkbook();
	}
	
//	@Bean
//    public JavaMailSender getJavaMailSender() {
//        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
//        mailSender.setHost("smtp.gmail.com");
//        mailSender.setPort(587);
// 
//        mailSender.setUsername("dinhngocchuong123@gmail.com");
//        mailSender.setPassword("vietnam2505");
// 
//        Properties props = mailSender.getJavaMailProperties();
//        props.put("mail.transport.protocol", "smtp");
//        props.put("mail.smtp.auth", "true");
//        props.put("mail.smtp.starttls.enable", "true");
//        props.put("mail.debug", "true");
// 
//        return mailSender;
//    }
}