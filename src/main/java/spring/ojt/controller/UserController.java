package spring.ojt.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.ojt.entity.RoleEntity;
import spring.ojt.entity.UserEntity;
import spring.ojt.repository.RoleRepository;
import spring.ojt.repository.UserRepository;
import spring.ojt.service.RoleService;
import spring.ojt.service.UserService;

@Controller
@RequestMapping("/admin")
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;

	@Autowired
	UserRepository userRepository;

	@Autowired
	RoleRepository roleRepository;

	private static int FIRST_PAGE = 1;

	@GetMapping({ "/userAdmin", "/" })
	public String getProducts(Model model) {
		List<RoleEntity> listUser = roleService.findAllRole();
		model.addAttribute("listUser", listUser);
		model.addAttribute("currentPage", FIRST_PAGE);
		model.addAttribute("totalPage", roleService.getProductsPaging2(FIRST_PAGE).getTotalPages());
		model.addAttribute("totalItems", roleService.getProductsPaging2(FIRST_PAGE).getTotalElements());
		model.addAttribute("listUser", roleService.getProductsPaging2(FIRST_PAGE).getContent());
		// Cai nay la setting path cua cai @GetMapping("/product")
		model.addAttribute("path", "admin/userAdmin");
		return "table-user";
	}

	@GetMapping("/userAdmin/{page}")
	public String getProductsPaging(Model model, @PathVariable(name = "page") int pageNum) {
		List<RoleEntity> listUser = roleService.findAllRole();
		model.addAttribute("listUser", listUser);
		model.addAttribute("currentPage", pageNum);
		model.addAttribute("totalPage", roleService.getProductsPaging2(pageNum).getTotalPages());
		model.addAttribute("totalItems", roleService.getProductsPaging2(pageNum).getTotalElements());
		model.addAttribute("listUser", roleService.getProductsPaging2(pageNum).getContent());
		// Cai nay la setting path cua cai @GetMapping("/product")
		model.addAttribute("path", "admin/userAdmin");
		return "table-user";
	}

	@GetMapping("/addAccount")
	public String newAcccount(Model model) {

		model.addAttribute("user", new UserEntity());
		return "add-account";
	}

	@PostMapping("/doNewAccount")
	public String doNewAccount(Model model, @ModelAttribute(name = "user") @Valid UserEntity user, BindingResult result,
			@RequestParam("email") String email, @RequestParam("username") String username) {

//		if (result.hasErrors()) {			
//			return "add-account";
//		}
//		userService.saveUser(user);
//        
//		List<RoleEntity> listUser = roleService.findAllRole();
//		model.addAttribute("listUser", listUser);
//		return "table-user";
		List<UserEntity> list = userService.findAllUser();
		for (UserEntity userEntity : list) {
			if (result.hasErrors() || user.getPassword().equals(user.getConfirmPassword()) == false) {
				model.addAttribute("user", user);
				model.addAttribute("message", "Passwords don't match");
				return "add-account";

			} else if (result.hasErrors() || userEntity.getEmail().equalsIgnoreCase(email)) {
				model.addAttribute("message2", " Email " + email + " is exist");
				return "add-account";
			} else if (result.hasErrors() || userEntity.getUsername().equalsIgnoreCase(username)) {
				model.addAttribute("message1", " Username " + username + " is exist");
				return "add-account";

			}
		}
		userService.saveUser(user);
		List<RoleEntity> listUser = roleService.findAllRole();
		model.addAttribute("listUser", listUser);
		return "redirect:/admin/userAdmin";

	}

	@GetMapping("/deleteUser")
	public String doDeleteUser(Model model, @RequestParam(name = "id") int id) {
		Optional<RoleEntity> user = roleRepository.findById(id);

		if (user.isPresent()) {

			roleService.delete(id);

		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}
		List<RoleEntity> listUser = roleService.findAllRole();
		model.addAttribute("listUser", listUser);
		return "redirect:/admin/userAdmin";
	}

	@GetMapping("/addAccountStaff")
	public String newAcccountStaff(Model model) {

		model.addAttribute("user", new UserEntity());
		return "add-accountStaff";
	}

	@PostMapping("/doNewAccountStaff")
	public String doNewAccountStaff(Model model, @ModelAttribute(name = "user") @Valid UserEntity user,
			BindingResult result, @RequestParam("email") String email, @RequestParam("username") String username) {
		List<UserEntity> list = userService.findAllUser();
		for (UserEntity userEntity : list) {
			if (result.hasErrors() || user.getPassword().equals(user.getConfirmPassword()) == false) {
				model.addAttribute("user", user);
				model.addAttribute("message", "Passwords don't match");
				return "add-accountStaff";

			} else if (result.hasErrors() || userEntity.getEmail().equalsIgnoreCase(email)) {
				model.addAttribute("message2", " Email " + email + " is exist");
				return "add-accountStaff";
			} else if (result.hasErrors() || userEntity.getUsername().equalsIgnoreCase(username)) {
				model.addAttribute("message1", " Username " + username + " is exist");
				return "add-accountStaff";

			}
		}
		userService.saveStaff(user);
		List<RoleEntity> listUser = roleService.findAllRole();
		model.addAttribute("listUser", listUser);
		return "redirect:/admin/userAdmin";
	}
	// ==============================================================================

	@GetMapping("/updateUser")
	public String updateUser(Model model, @RequestParam(name = "id") int id) {
		// load du lieu theo id can dc update
		Optional<UserEntity> user = userRepository.findById(id);
		model.addAttribute("user", user.get());
		
//		userEntity.setConfirmPassword("123");
		
		return "updateUser";
	}

	@PostMapping(value = "/doUpdateUser")
	public String doUpdateUser(Model model, @ModelAttribute(name = "user") @Valid UserEntity user,
			BindingResult result,@RequestParam("email") String email, @RequestParam("username") String username) {
		List<UserEntity> list = userService.findAllUser();
		for (UserEntity userEntity : list) {
			if (result.hasErrors() || user.getPassword().equals(user.getConfirmPassword()) == false) {
				model.addAttribute("user", user);
				model.addAttribute("message", "Passwords don't match");
				return "updateUser";

			} else if (result.hasErrors() || userEntity.getEmail().equalsIgnoreCase(email)) {
				model.addAttribute("message2", " Email " + email + " is exist");
				return "updateUser";
			} else if (result.hasErrors() || userEntity.getUsername().equalsIgnoreCase(username)) {
				model.addAttribute("message1", " Username " + username + " is exist");
				return "updateUser";

			}
		}
//			hotel1.getAddressEntity().setId(hotel1.getId());
		// tour1.setUrlImage1(saveFile(photo));
		
		userService.saveUser(user);
		List<RoleEntity> listUser = roleService.findAllRole();
		model.addAttribute("listUser", listUser);
		return "redirect:/admin/userAdmin";
	}
	// ==============================================================================

}
