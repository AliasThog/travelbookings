package spring.ojt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

//	@GetMapping(value = "/searchHotel")
//	public String searchHotel() {
//		return "searchHotel";
//	}
//	@GetMapping(value = "/searchTour")
//	public String searchTour() {
//		return "searchTour";
//	}
	@GetMapping(value = "/payment")
	public String payment() {
		return "payment";
	}
//	@GetMapping(value = "/paymentHotel")
//	public String paymentHotel() {
//		return "paymentHotel";
//	}
//	@GetMapping(value = "/register")
//	public String register() {
//		return "register";
//	}
	@GetMapping(value = "/paymentTour")
	public String paymentTour() {
		return "paymentTour";
	}
//	@GetMapping(value = "/detailHotel")
//	public String detailHotel() {
//		return "detailHotel";
//	}
//	@GetMapping(value = "/detailTour")
//	public String detailTour() {
//		return "detailTour";
//	}
	
	@GetMapping(value = "/forgotPass1")
	public String forgotPass1() {
		return "forgotPass1";
	}
	@GetMapping(value = "/forgotPass2")
	public String forgotPass2() {
		return "forgotPass2";
	}
//	@GetMapping(value = "/credit")
//	public String credit() {
//		return "creaditCard";
//	}
//	@GetMapping(value = "/tour")
//	public String tour() {
//		return "tour";
//	}
//	@GetMapping(value = "/paymentHotelCombo")
//	public String paymentHotelCombo() {
//		return "payment_hotel_combo";
//	}
}
