package spring.ojt.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.ojt.entity.HotelEntity;
import spring.ojt.entity.TourEntity;
import spring.ojt.service.AddressService;
import spring.ojt.service.HotelService;
import spring.ojt.service.HotelTypeService;
import spring.ojt.service.TourPriceService;
import spring.ojt.service.TourService;

@Controller
public class HomeController {
	@Autowired
	public HotelService hotelService;
	@Autowired
	public TourService tourService;
	@Autowired
	public AddressService addressService;

	@Autowired
	public HotelTypeService hotelTypeService;

	@Autowired
	public TourPriceService tourPriceService;

//	private static int FIRST_PAGE = 1;
//	
//	@GetMapping("/home")
//	public String getProducts(Model model) {
//		model.addAttribute("currentPage", FIRST_PAGE);
//		model.addAttribute("totalPage", hotelService.getProductsPaging(FIRST_PAGE).getTotalPages());
//		model.addAttribute("totalItems", hotelService.getProductsPaging(FIRST_PAGE).getTotalElements());
//		model.addAttribute("products", hotelService.getProductsPaging(FIRST_PAGE).getContent());
//		// Cai nay la setting path cua cai @GetMapping("/product")
//		model.addAttribute("path", "home");
//		return "home";
//	}
//
//	@GetMapping("/home/{page}")
//	public String getProductsPaging(Model model, @PathVariable(name = "page") int pageNum) {
//		model.addAttribute("currentPage", pageNum);
//		model.addAttribute("totalPage", hotelService.getProductsPaging(pageNum).getTotalPages());
//		model.addAttribute("totalItems", hotelService.getProductsPaging(pageNum).getTotalElements());
//		model.addAttribute("products", hotelService.getProductsPaging(pageNum).getContent());
//		// Cai nay la setting path cua cai @GetMapping("/product")
//		model.addAttribute("path", "home");
//		return "home";
//	}

	@RequestMapping(value = "/email", method = RequestMethod.GET)
	public String currentEmail(Principal principal) {
		return principal.getName();
	}

	@GetMapping({ "/", "/home" })
	public String home(HttpSession session, Principal principal, Model model) {
		if (principal != null && principal.getName() != null && !"".equals(principal.getName())) {
			session.setAttribute("email", principal.getName());			
		}
		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);

		List<TourEntity> listTour = tourService.findAllTour();
		model.addAttribute("listTour", listTour);
		return "home";
	}

	@GetMapping("/searchHotel")
	public String doSearchAllHotel(Model model, @RequestParam(name = "keyword") String keyword) {
		List<HotelEntity> listHotel = hotelService.findByKeyword(keyword);
		model.addAttribute("listHotel", listHotel);

		return "searchHotel";

	}

}
