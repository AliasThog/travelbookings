package spring.ojt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.ojt.entity.HotelEntity;
import spring.ojt.entity.TourEntity;
import spring.ojt.service.AddressService;
import spring.ojt.service.HotelService;
import spring.ojt.service.HotelTypeService;
import spring.ojt.service.TourPriceService;
import spring.ojt.service.TourService;

@Controller
public class HomeController2 {
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

	@GetMapping({ "/tour" })
	public String showAllHotel(Model model) {
		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);

		List<TourEntity> listTour = tourService.findAllTour();
		model.addAttribute("listTour", listTour);
		return "tour";

	}

	@GetMapping("/searchTour")
	public String doSearchAllTour(Model model, @RequestParam(name = "keyword") String keyword) {
		List<TourEntity> listTour = tourService.findByKeyword(keyword);
		model.addAttribute("listTour", listTour);
		return "searchTour";
	}
}
