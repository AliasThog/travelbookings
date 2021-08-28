package spring.ojt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.ojt.entity.BookingDetailEntity;
import spring.ojt.entity.BookingRoomEntity;
import spring.ojt.entity.HotelEntity;
import spring.ojt.repository.BookingRoomRepository;
import spring.ojt.service.BookingRoomService;

@Controller
@RequestMapping("/user")
public class UserHistoryController {

	@Autowired
	BookingRoomRepository bookingRoomRepository;
	
	@Autowired
	BookingRoomService bookingRoomService;
	
	@GetMapping({"/history","/"})
	public String doShowHistory(Model model, HttpSession session) {

		String email = (String) session.getAttribute("email");
		List<BookingRoomEntity> bookingRoomEntityList = bookingRoomService.findAllByMail(email);
		
		model.addAttribute("bookingRoomEntityList", bookingRoomEntityList);
		return "table-bookinguser";
	}
//	@GetMapping("/doSearch6")
//	public String doSearch6(Model model, @RequestParam(name = "keyword") String keyword) {
//		List<BookingRoomEntity> bookingRoomEntityList = bookingRoomService.findByKeyword(keyword);
//		model.addAttribute("bookingRoomEntityList", bookingRoomEntityList);
//		return "table-bookinguser";
//	}
//	private static int FIRST_PAGE = 1;
//	
//	@GetMapping({"/history", "/" } )
//	public String getProducts(Model model, HttpSession session) {
//		String email = (String) session.getAttribute("email");
//		List<BookingRoomEntity> bookingRoomEntityList = bookingRoomService.findAllByMail(email);
//		
//
//		model.addAttribute("currentPage", FIRST_PAGE);
//		model.addAttribute("totalPage", bookingRoomService.getProductsPaging(FIRST_PAGE).getTotalPages());
//		model.addAttribute("totalItems", bookingRoomService.getProductsPaging(FIRST_PAGE).getTotalElements());
//		model.addAttribute("bookingRoomEntityList", bookingRoomService.getProductsPaging(FIRST_PAGE).getContent());
//		// Cai nay la setting path cua cai @GetMapping("/product")
//		model.addAttribute("path", "user/history");
//		return "table-bookinguser";
//	}
//
//	@GetMapping("/history/{page}")
//	public String getProductsPaging(Model model, @PathVariable(name = "page") int pageNum, HttpSession session) {
//		
//		String email = (String) session.getAttribute("email");
//		List<BookingRoomEntity> bookingRoomEntityList = bookingRoomService.findAllByMail(email);
//		
//
//		model.addAttribute("currentPage", pageNum);
//		model.addAttribute("totalPage", bookingRoomService.getProductsPaging(pageNum).getTotalPages());
//		model.addAttribute("totalItems", bookingRoomService.getProductsPaging(pageNum).getTotalElements());
//		model.addAttribute("bookingRoomEntityList", bookingRoomService.getProductsPaging(pageNum).getContent());
//		// Cai nay la setting path cua cai @GetMapping("/product")
//		model.addAttribute("path", "user/history");
//		return "table-bookinguser";
//	}
}
