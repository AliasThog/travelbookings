package spring.ojt.controller;




import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.ojt.entity.HotelEntity;
import spring.ojt.entity.RoomEntity;
import spring.ojt.repository.HotelRepository;
import spring.ojt.repository.RoomRepository;
import spring.ojt.service.HotelService;
import spring.ojt.service.HotelTypeService;
import spring.ojt.service.RoomService;
import spring.ojt.service.RoomStatusService;
import spring.ojt.service.RoomTypeService;

@Controller
public class DetailsHotelController {
	@Autowired
	public HotelTypeService hotelTypeService;
	@Autowired
	public HotelRepository hotelRepository;
	@Autowired
	public HotelService hotelService;
	@Autowired
	public RoomStatusService roomStatusService;
	@Autowired
	public RoomRepository roomRepository;
	
	@Autowired
	public RoomTypeService roomTypeService;

	@Autowired
	public RoomService roomService;

	@GetMapping(value = "/detailHotel")
	public String detailHotel(Model model, @RequestParam(name = "id") int id) {

		Optional<HotelEntity> hotel = hotelRepository.findById(id);
		model.addAttribute("hotel", hotel.get());		
		
		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);
		
		return "detailHotel";	
	}
	@GetMapping("/searchHotelRoom")
	public String doSearchRoom1(Model model, @RequestParam(name = "keyword") String keyword,@RequestParam(name = "id") int id) {
//		Optional<HotelEntity> hotel = hotelRepository.findById(id);
//		model.addAttribute("hotel", hotel.get());
		
//		HotelEntity hotel = hotelRepository.findByCriteriaaa(id, keyword);
//		model.addAttribute("hotel",hotel);	
//		return "detailHotel";
		
		List<RoomEntity> rooms = roomRepository.findByCriteriaaa(id, keyword);
		model.addAttribute("rooms",rooms);	
		
		
//		model.addAttribute("flag","Hết phòng");
		
		Optional<HotelEntity> hotel = hotelRepository.findById(id);
		model.addAttribute("hotel", hotel.get());
		
		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);
		return "detailHotel";
		
	
	}
	

}
