package spring.ojt.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.ojt.entity.UserEntity;
import spring.ojt.model.EmailDTO;
import spring.ojt.service.HotelService;
import spring.ojt.service.SendMailService;
import spring.ojt.service.TourService;
import spring.ojt.service.UserService;

@Controller
public class RegisterController {

	@Autowired
	public HotelService hotelService;

	@Autowired
	public TourService tourService;

	@Autowired
	public UserService userService;

	@Autowired
	public SendMailService sendMailService;
	@Autowired
	PasswordEncoder passwordEncoder;

	@GetMapping(value = "/register")
	public String index(Model model) {
		model.addAttribute("user", new UserEntity());
		return "register";
	}

	@PostMapping(value = "/doRegister")
	public String doRegister(Model model, @ModelAttribute(name = "user") @Valid UserEntity user, BindingResult result,
			@RequestParam("email") String email, @RequestParam("username") String username) {
		List<UserEntity> list = userService.findAllUser();
		for (UserEntity userEntity : list) {
			if (result.hasErrors() || user.getPassword().equals(user.getConfirmPassword()) == false) {
				model.addAttribute("user", user);
				model.addAttribute("message", "Passwords don't match");
				return "register";

			} else if (result.hasErrors() || userEntity.getEmail().equalsIgnoreCase(email)) {
				model.addAttribute("message2", " Email " + email + " is exist");
				return "register";
			} else if (result.hasErrors() || userEntity.getUsername().equalsIgnoreCase(username)) {
				model.addAttribute("message1", " Username " + username + " is exist");
				return "register";

			}
		}
//		if (result.hasErrors() || user.getPassword().equals(user.getConfirmPassword()) == false) {
//			model.addAttribute("user", user);
////		   if(user.getPassword().equals(user.getConfirmPassword()) == false) {
//			model.addAttribute("message", "Passwords don't match");
////				return "register";
////			}
//			return "register";
//		}

		user.setEnabled(1);
//		user.setPassword(passwordEncoder.encode(password));
		// Spring security

		// send mail
		EmailDTO emaildto = new EmailDTO();

		emaildto.setSubject("Dang ki thanh cong");
		emaildto.setTo(user.getEmail());
		emaildto.setText("username : " + user.getEmail() + "\n" + "password : " + user.getPassword());

		sendMailService.sendSimpleMessage(emaildto);
		userService.saveUser(user);
		return "myLogin";
	}

	@GetMapping(value = "/login")
	public String login(Model model, HttpSession httpSession) {
		model.addAttribute("user", new UserEntity());
		return "myLogin";
	}

////	@RequestMapping(value = "/username", method = RequestMethod.GET)
////	public String currentUserName(Principal principal) {
//	    return principal.getName();
//	}
//	@GetMapping("/home")
//    public String book(HttpSession session, Principal principal) {
//        if ( principal != null && principal.getName() != null
//            && !"".equals(principal.getName())) {
//                session.setAttribute("username", principal.getName());
//        }
//        return "home";
//    }
//	@PostMapping(value = "/authenticateTheUser")
//	public String doLogin(Model model, @ModelAttribute(name = "user") @Valid UserEntity user, BindingResult result,
//			@RequestParam("username") String username, @RequestParam("password") String password,
//			HttpSession httpSession) {
//
//		List<UserEntity> userList = userService.findAllUser();
//		for (UserEntity userEntity : userList) {
//			if (userEntity.getUsername().equals(username) && userEntity.getPassword().equals(password)) {
//
//				httpSession.setAttribute("username", user.getUsername());
//
//				List<HotelEntity> listHotel = hotelService.findAllHotel();
//				model.addAttribute("listHotel", listHotel);
//
//				List<TourEntity> listTour = tourService.findAllTour();
//				model.addAttribute("listTour", listTour);
//				return "home";
//			}
//
//		}
//		model.addAttribute("message", "Username or Password is invalid ");
//		return "myLogin";
//
//	}

//	@GetMapping(value = "/logout")
//	public String logout(HttpSession session) {
//		session.invalidate();
//		System.out.println("logout ok");
//		return "home";
//	}
	@GetMapping("/checkRole")
	public String checkRole(HttpServletRequest request) {
		if (request.isUserInRole("ROLE_ADMIN")) {
			return "redirect:/admin/";

		} else if (request.isUserInRole("ROLE_STAFF")) {
			return "redirect:/staff/";
		}

		return "redirect:/home";
	}
}
