package spring.ojt.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
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
import org.springframework.web.multipart.MultipartFile;

import spring.ojt.entity.HotelEntity;
import spring.ojt.entity.RoomEntity;
import spring.ojt.entity.RoomStatusEntity;
import spring.ojt.entity.RoomTypeEntity;
import spring.ojt.repository.RoomRepository;
import spring.ojt.service.HotelService;
import spring.ojt.service.RoomService;
import spring.ojt.service.RoomStatusService;
import spring.ojt.service.RoomTypeService;

@Controller
@RequestMapping("/staff")
public class RoomController {
	@Autowired
	public HotelService hotelService;

	@Autowired
	public RoomService roomService;

	@Autowired
	public RoomStatusService roomStatusService;

	@Autowired
	public RoomTypeService roomTypeService;

	@Autowired
	public RoomRepository roomRepository;

	@GetMapping("/addRoom")
	public String newRoom(Model model) {

		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);

		List<RoomTypeEntity> listRoomType = roomTypeService.findAllRoomType();
		model.addAttribute("listRoomType", listRoomType);

		List<RoomStatusEntity> listRoomStatus = roomStatusService.findAllRoomStatus();
		model.addAttribute("listRoomStatus", listRoomStatus);

		model.addAttribute("room1", new RoomEntity());
		return "add-room";
	}

	@PostMapping("/doAddRoom")
	public String doNewRoom(Model model, @ModelAttribute(name = "room1") @Valid RoomEntity room1, BindingResult result,
			@RequestParam(value = "image", required = false) MultipartFile photo) {
		if (result.hasErrors()) {

			List<HotelEntity> listHotel = hotelService.findAllHotel();
			model.addAttribute("listHotel", listHotel);

			List<RoomTypeEntity> listRoomType = roomTypeService.findAllRoomType();
			model.addAttribute("listRoomType", listRoomType);

			List<RoomStatusEntity> listRoomStatus = roomStatusService.findAllRoomStatus();
			model.addAttribute("listRoomStatus", listRoomStatus);
			return "add-room";
		}

		room1.setUrlImageRoom(saveFile(photo));
		roomService.saveRoom(room1);

		List<RoomEntity> listRoom = roomService.findAllRoom();
		model.addAttribute("listRoom", listRoom);

		return "redirect:/staff/roomAdmin";
	}

	private static int FIRST_PAGE = 1;

	@GetMapping({"/roomAdmin" } )
	public String getProducts(Model model) {
		List<RoomEntity> listRoom = roomService.findAllRoom();
		model.addAttribute("listRoom", listRoom);
		model.addAttribute("currentPage", FIRST_PAGE);
		model.addAttribute("totalPage", roomService.getProductsPaging1(FIRST_PAGE).getTotalPages());
		model.addAttribute("totalItems", roomService.getProductsPaging1(FIRST_PAGE).getTotalElements());
		model.addAttribute("listRoom", roomService.getProductsPaging1(FIRST_PAGE).getContent());
		// Cai nay la setting path cua cai @GetMapping("/product")
		model.addAttribute("path", "staff/roomAdmin");
		return "table-room";
	}

	@GetMapping("/roomAdmin/{page}")
	public String getProductsPaging(Model model, @PathVariable(name = "page") int pageNum) {
		List<RoomEntity> listRoom = roomService.findAllRoom();
		model.addAttribute("listRoom", listRoom);
		model.addAttribute("currentPage", pageNum);
		model.addAttribute("totalPage", roomService.getProductsPaging1(pageNum).getTotalPages());
		model.addAttribute("totalItems", roomService.getProductsPaging1(pageNum).getTotalElements());
		model.addAttribute("listRoom", roomService.getProductsPaging1(pageNum).getContent());
		// Cai nay la setting path cua cai @GetMapping("/product")
		model.addAttribute("path", "staff/roomAdmin");
		return "table-room";
	}
//	@GetMapping({ "/roomAdmin" })
//	public String doShowHotel(Model model) {
//
//		// hien thi list hotel da luu trong database
//		List<RoomEntity> listRoom = roomService.findAllRoom();
//		model.addAttribute("listRoom", listRoom);
//
//		return "table-room";
//	}

	@GetMapping("/deleteRoom")
	public String doDeleteRoom(Model model, @RequestParam(name = "id") int id) {
		Optional<RoomEntity> room1 = roomRepository.findById(id);
		if (room1.isPresent()) {
			roomService.deleteRoom(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}
		// hien thi list hotel da luu trong database
		List<RoomEntity> listRoom = roomService.findAllRoom();
		model.addAttribute("listRoom", listRoom);
		return "redirect:/staff/roomAdmin";
	}

//	//upload image
	private String saveFile(MultipartFile file) {
		if (null != file && !file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				String rootPath = System.getProperty("catalina.home");
				// creating directory to store file.
				File dir = new File(rootPath + File.separator + "assets/user/img");
				if (!dir.exists()) {
					dir.mkdir();
				}
				// creating the file on server
				String name = String.valueOf(new Date().getTime() + ".jpg");
				File serverFile = new File(dir.getAbsoluteFile() + File.separator + name);
				// get link file on server
				System.out.println("====== path of image on server: " + serverFile.getPath());
				// luu tren server
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				return name;

			} catch (IOException e) {
				System.out.println("Error Upload File: " + e.getMessage());
			}

		} else {
			System.out.println("File not Exist: ");
		}

		return null;
	}

	@GetMapping("/updateRoom")
	public String updateHotel(Model model, @RequestParam(name = "id") int id) {
		// load du lieu theo id can dc update
		Optional<RoomEntity> room1 = roomRepository.findById(id);
		model.addAttribute("room1", room1.get());
		// hien thi list adress da luu trong database
		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);

		List<RoomTypeEntity> listRoomType = roomTypeService.findAllRoomType();
		model.addAttribute("listRoomType", listRoomType);

		List<RoomStatusEntity> listRoomStatus = roomStatusService.findAllRoomStatus();
		model.addAttribute("listRoomStatus", listRoomStatus);

		return "updateRoom";
	}

	@PostMapping("/doUpdateRoom")
	public String doUpdateHotel(Model model, @ModelAttribute(name = "room1s") @Valid RoomEntity room1,
			BindingResult result, @RequestParam(value = "image", required = false) MultipartFile photo) {
		if (result.hasErrors()) {
			List<HotelEntity> listHotel = hotelService.findAllHotel();
			model.addAttribute("listHotel", listHotel);

			List<RoomTypeEntity> listRoomType = roomTypeService.findAllRoomType();
			model.addAttribute("listRoomType", listRoomType);

			List<RoomStatusEntity> listRoomStatus = roomStatusService.findAllRoomStatus();
			model.addAttribute("listRoomStatus", listRoomStatus);

			return "updateRoom";
		}

		room1.setUrlImageRoom(saveFile(photo));
		roomService.saveRoom(room1);

		List<RoomEntity> listRoom = roomService.findAllRoom();
		model.addAttribute("listRoom", listRoom);

		return "redirect:/staff/roomAdmin";
	}
	
	@GetMapping("/doSearch1")
	public String doSearch(Model model, @RequestParam(name = "keyword") String keyword) {
		List<RoomEntity> listRoom = roomService.findByKeyword(keyword);
		model.addAttribute("listRoom",listRoom);	
		return "table-room";
	}
}
