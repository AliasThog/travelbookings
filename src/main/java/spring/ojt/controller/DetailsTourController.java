package spring.ojt.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.ojt.entity.TourEntity;
import spring.ojt.repository.TourRepository;
import spring.ojt.service.AddressService;
import spring.ojt.service.HotelService;
import spring.ojt.service.HotelTypeService;
import spring.ojt.service.TourPriceService;
import spring.ojt.service.TourService;

@Controller
public class DetailsTourController {

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
	
	@Autowired
	public TourRepository tourRepository;
	
	
	@GetMapping(value = "/detailTour")
	public String detailTour(Model model, @RequestParam(name = "id") int id) {

		Optional<TourEntity> tour = tourRepository.findById(id);
		model.addAttribute("tour", tour.get());
		return "detailTour";	
	}
	
}
