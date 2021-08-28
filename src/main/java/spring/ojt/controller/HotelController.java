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

import spring.ojt.entity.AddressEntity;
import spring.ojt.entity.HotelEntity;
import spring.ojt.entity.HotelTypeEntity;
import spring.ojt.repository.HotelRepository;
import spring.ojt.service.AddressService;
import spring.ojt.service.HotelService;
import spring.ojt.service.HotelTypeService;

@Controller
@RequestMapping("/staff")
public class HotelController {

	@Autowired
	public HotelRepository hotelRepository;

	@Autowired
	public HotelService hotelService;

	@Autowired
	public AddressService addressService;

	@Autowired
	public HotelTypeService hotelTypeService;

	@GetMapping("/addHotel")
	public String newHotel(Model model) {

		// hien thi list adress da luu trong database
		List<AddressEntity> address1 = addressService.findAllAddress();
		model.addAttribute("address1", address1);

		List<HotelTypeEntity> hotelType = hotelTypeService.findAllHotelType();
		model.addAttribute("hotelType", hotelType);

		model.addAttribute("hotel1", new HotelEntity());
		return "add-hotel1";
	}

	@PostMapping("/doAddHotel")
	public String doNewHotel(Model model, @ModelAttribute(name = "hotel1") @Valid HotelEntity hotel1,
			BindingResult result, @RequestParam(value = "image", required = false) MultipartFile photo) {
		if (result.hasErrors()) {
			List<AddressEntity> address1 = addressService.findAllAddress();
			model.addAttribute("address1", address1);

			List<HotelTypeEntity> hotelType = hotelTypeService.findAllHotelType();
			model.addAttribute("hotelType", hotelType);

			return "add-hotel1";
		}
		hotel1.setUrlImage(saveFile(photo));
		hotelService.saveHotel(hotel1);

		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);

		return "redirect:/staff/hotelAdmin";
	}

	private static int FIRST_PAGE = 1;

	@GetMapping({"/hotelAdmin", "/" } )
	public String getProducts(Model model) {
		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);
		model.addAttribute("currentPage", FIRST_PAGE);
		model.addAttribute("totalPage", hotelService.getProductsPaging(FIRST_PAGE).getTotalPages());
		model.addAttribute("totalItems", hotelService.getProductsPaging(FIRST_PAGE).getTotalElements());
		model.addAttribute("listHotel", hotelService.getProductsPaging(FIRST_PAGE).getContent());
		// Cai nay la setting path cua cai @GetMapping("/product")
		model.addAttribute("path", "staff/hotelAdmin");
		return "table-hotel";
	}

	@GetMapping("/hotelAdmin/{page}")
	public String getProductsPaging(Model model, @PathVariable(name = "page") int pageNum) {
		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);
		model.addAttribute("currentPage", pageNum);
		model.addAttribute("totalPage", hotelService.getProductsPaging(pageNum).getTotalPages());
		model.addAttribute("totalItems", hotelService.getProductsPaging(pageNum).getTotalElements());
		model.addAttribute("listHotel", hotelService.getProductsPaging(pageNum).getContent());
		// Cai nay la setting path cua cai @GetMapping("/product")
		model.addAttribute("path", "staff/hotelAdmin");
		return "table-hotel";
	}

//	@GetMapping({ "/hotelAdmin", "/" })
//	public String doShowHotel(Model model) {
//
//		// hien thi list hotel da luu trong database
//		List<HotelEntity> listHotel = hotelService.findAllHotel();
//		model.addAttribute("listHotel", listHotel);
//		return "table-hotel";
//	}
//	@GetMapping({"/list","/"})
//	public String doShowHotel(Model model) {
//		
//		// hien thi list hotel da luu trong database
//		List<HotelEntity> listHotel = hotelService.findAllHotel();
//		model.addAttribute("listHotel", listHotel);	
//		return "list";
//	}

	@GetMapping("/deleteHotel")
	public String doDeleteHotel(Model model, @RequestParam(name = "id") int id) {
		Optional<HotelEntity> hotel1 = hotelRepository.findById(id);
		if (hotel1.isPresent()) {
			hotelService.delete(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}
		// hien thi list hotel da luu trong database
		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);
		return "redirect:/staff/hotelAdmin";
	}

	@GetMapping("/updateHotel")
	public String updateHotel(Model model, @RequestParam(name = "id") int id) {
		// load du lieu theo id can dc update
		Optional<HotelEntity> hotel1 = hotelRepository.findById(id);
		model.addAttribute("hotel1", hotel1.get());
		// hien thi list adress da luu trong database
		List<AddressEntity> address1 = addressService.findAllAddress();
		model.addAttribute("address1", address1);
		List<HotelTypeEntity> hotelType = hotelTypeService.findAllHotelType();
		model.addAttribute("hotelType", hotelType);

		return "updateHotel";
	}

	@PostMapping("/doUpdateHotel")
	public String doUpdateHotel(Model model, @ModelAttribute(name = "hotel1") @Valid HotelEntity hotel1,
			BindingResult result, @RequestParam(value = "image", required = false) MultipartFile photo) {
		if (result.hasErrors()) {
			List<AddressEntity> address1 = addressService.findAllAddress();
			model.addAttribute("address1", address1);

			List<HotelTypeEntity> hotelType = hotelTypeService.findAllHotelType();
			model.addAttribute("hotelType", hotelType);

			return "updateHotel";
		}
//		hotel1.getAddressEntity().setId(hotel1.getId());
		hotel1.setUrlImage(saveFile(photo));
		hotelService.saveHotel(hotel1);
		List<HotelEntity> listHotel = hotelService.findAllHotel();
		model.addAttribute("listHotel", listHotel);

		return "redirect:/staff/hotelAdmin";
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

	// search by name hotel
	@GetMapping("/doSearch")
	public String doSearch(Model model, @RequestParam(name = "keyword") String keyword) {
		List<HotelEntity> listHotel = hotelService.findByKeyword(keyword);
		model.addAttribute("listHotel", listHotel);
		return "table-hotel";
	}

}
