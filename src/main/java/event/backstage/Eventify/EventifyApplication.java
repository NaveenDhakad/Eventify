package event.backstage.Eventify;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
@EntityScan("event.backstage.Entities")
public class EventifyApplication {

	public static void main(String[] args) {
		SpringApplication.run(EventifyApplication.class, args);

		ApplicationContext context = SpringApplication.run(EventifyApplication.class, args);
		UserRepository userRepository = context.getBean(UserRepository.class) ;
//		User user = new User() ;
//		user.setCampanyName("Bar club ");
//		user.setEmail("madhu@gmail.com");
//		user.setPassword("Dhakad") ;
//		user.setPnumber(7999365433L);
//		userRepository.save(user) ;
		//update
//		Optional<User> optional = userRepository.findById(1) ;
//		User user1 = optional.get() ;
//		user1.setPassword("Dhakad1");
//		userRepository.save(user1) ;
		
//	ApplicationContext context =  SpringApplication.run(EventifyApplication.class, args);
//	UserRepository userRepository = context.getBean(UserRepository.class) ;
//		User user = new User() ;
//		user.setCampanyName("Eventify") ;
//		user.setEmail("Navendhakad7999@gmail.com");
//		user.setPassword("Dhakad");
//		user.setPnumber(7999365433L);
//		userRepository.save(user) ;
//loginInterface loginInterface = context.getBean(event.backstage.Eventify.loginInterface.class) ;
//		login login = new login() ;
//login.setName("rahul");
//login.setPassword("ram");
//loginInterface.save(login) ;
//
//
//Optional<login> optional =  loginInterface.findByName("rahul") ;
//login login1 = optional.get() ;
//login1.setName("mukul patidar");
//loginInterface.save(login1) ;
//		Optional<login> optional1 =  loginInterface.findByNameAndPassword("mukul patidar" , "ram") ;
//Optional<login> itr = loginInterface.findByNameAndPassword("mukul patidar" , "ram") ;
//System.out.println(itr);
	}

}
