package vn.hoidanit.laptopshop.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import jakarta.servlet.DispatcherType;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import vn.hoidanit.laptopshop.service.CustomUserDetailsService;
import vn.hoidanit.laptopshop.service.UserService;

@Configuration
@EnableMethodSecurity(securedEnabled = true)
public class SecurityConfiguration {
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

//    @Bean
//    public UserDetailsService userDetailsService(UserService userService) {
//        return new CustomUserDetailsService(userService);
//    }
//
//    @Bean
//    public DaoAuthenticationProvider authProvider(
//            PasswordEncoder passwordEncoder,
//            UserDetailsService userDetailsService) {
//        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
//        authProvider.setUserDetailsService(userDetailsService);
//        authProvider.setPasswordEncoder(passwordEncoder);
    //    authProvider.setHideUserNotFoundExceptions(false);
//        return authProvider;
//    }
//
//    @Bean
//    SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//        http
//                .authorizeHttpRequests(authorize -> authorize
//                        .dispatcherTypeMatchers(DispatcherType.FORWARD,
//                                DispatcherType.INCLUDE).permitAll()
//                        .requestMatchers("/", "/login", "/client/**", "/css/**", "/js/**",
//                                "/images/**", "/product/**").permitAll()
//                        .requestMatchers("/admin/**").hasRole("ADMIN")
//                        .anyRequest().authenticated())
//                .sessionManagement((sessionManagement) -> sessionManagement
//                        .sessionCreationPolicy(SessionCreationPolicy.ALWAYS)
//                        .invalidSessionUrl("/logout?expired")
//                        .maximumSessions(1)
//                        .maxSessionsPreventsLogin(false))
//                .logout(logout -> logout.deleteCookies("JSESSIONID").invalidateHttpSession(true))
//                .formLogin(formLogin -> formLogin
//                        .loginPage("/login")
//                        .failureUrl("/login?error")
//                        .permitAll())
//                .exceptionHandling(ex -> ex
//                        .accessDeniedPage("/access-denied"));
//        return http.build();
//    }
//
//    @Bean
//    public AuthenticationSuccessHandler myAuthSuccessHandler() {
//        return new CustomSuccessHandler();
//    }
}
