package spring.ojt;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityWebAppConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	public DataSource dataSource;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		auth.jdbcAuthentication().dataSource(dataSource)
				// form login input = text select email,password,enabled from users where email
				// = ?
				.usersByUsernameQuery("select email,password,enabled from users where email = ?")
				.authoritiesByUsernameQuery(
						"select email,authority from roles r join users u on r.IdUser = u.id  where email = ?")
//		.authoritiesByUsernameQuery("select IdUser,authority from roles where IdUser = ?")

				.passwordEncoder(passwordEncoder());

	}

	@Bean
	BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	// phan quyen tren url
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable()

				// dang nhap cho tat ca cac url
				// yeu cau request phai co quyen
				.authorizeRequests()
					.antMatchers(new String[] { "/", "/searchHotel", "/searchTour", "/detailHotel", "/detailTour" })
						.permitAll()
								.antMatchers(new String[] { "/paymentHotel", "/credit" , "/user/**" }).hasRole("USER")
								.antMatchers("/staff/**").hasRole("STAFF")
								.antMatchers("/admin/**").hasRole("ADMIN")

								.and()
									.formLogin().loginPage("/login").loginProcessingUrl("/authenticateTheUser")
										.defaultSuccessUrl("/checkRole")

										.permitAll()

										.and()
										.logout().permitAll()
										.and().exceptionHandling().accessDeniedPage("/accessDenied");
	}

	public static void main(String[] args) {
		String encoded = new BCryptPasswordEncoder().encode("chuong1234");
		System.out.println(encoded);

	}
}
