package spring.ojt.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import spring.ojt.entity.AddressEntity;
import spring.ojt.entity.PriceTourPerDayEntity;
import spring.ojt.entity.TourEntity;
import spring.ojt.entity.UserEntity;
import spring.ojt.repository.TourRepository;
import spring.ojt.service.AddressService;
import spring.ojt.service.TourPriceService;
import spring.ojt.service.TourService;

@Controller
@RequestMapping("/staff")
public class TourController {

	@Autowired
	public AddressService addressService;

	@Autowired
	public TourRepository tourRepository;

	@Autowired
	public TourService tourService;
	
	@Autowired
	public TourPriceService tourPriceService;

	@GetMapping(value = "/addTour")
	public String newTour(Model model) {

		// hien thi list adress da luu trong database
		List<AddressEntity> address1 = addressService.findAllAddress();
		model.addAttribute("address1", address1);
        
		
		model.addAttribute("tour1", new TourEntity());
		model.addAttribute("tourPrice1", new PriceTourPerDayEntity());
		return "add-tour";
	}

//	@PostMapping(value = "/doAddTour")	
//	public String doNewTour(Model model, @ModelAttribute(name = "tour1") @Valid TourEntity tour1,
//			BindingResult result,@RequestParam(value = "image", required = false) MultipartFile photo) {
//		if (result.hasErrors()) {
//			
//			List<AddressEntity> address1 = addressService.findAllAddress();
//			model.addAttribute("address1", address1);										
//			return "add-tour";
//		}
//		tour1.setUrlImage1(saveFile(photo));
//		tourService.saveTour(tour1);
//        
//		List<TourEntity> listTour= tourService.findAllTour();
//		model.addAttribute("listTour", listTour);
//
//		return "table-tour";
//	}
	@PostMapping(value = "/doAddTour")	
	public String doNewTour(Model model, @ModelAttribute(name = "tour1") @Valid TourEntity tour1,
			BindingResult result,@RequestParam(value = "image", required = false) MultipartFile photo,@RequestParam("idtour") String idtour) {
		List<TourEntity> list= tourService.findAllTour();
		for (TourEntity tourEntity : list) {
			if(tourEntity.getIdtour().equalsIgnoreCase(idtour) || result.hasErrors())
			{
				model.addAttribute("message1", " Tour Id " + idtour + " is exist");
				List<AddressEntity> address1 = addressService.findAllAddress();
				model.addAttribute("address1", address1);	
				return "add-tour";
			}	
//			if (result.hasErrors()) {
//				
//				List<AddressEntity> address1 = addressService.findAllAddress();
//				model.addAttribute("address1", address1);	
//				return "add-tour";
//			}
		}
		
		tour1.setUrlImage1(saveFile(photo));
		tourService.saveTour(tour1);
        
		List<TourEntity> listTour= tourService.findAllTour();
		model.addAttribute("listTour", listTour);

		return "table-tour";
	}
	
//	//===========================================================================================================

////	@GetMapping(value = {"/tourAdmin","/t"})
	@GetMapping("/tourAdmin")
	public String doShowTour(Model model) {
		
		// hien thi list hotel da luu trong database
		List<TourEntity> listTour = tourService.findAllTour();
		model.addAttribute("listTour", listTour);
		return "table-tour";
	}
	//===========================================================================================================
	@GetMapping("/deleteTour")
	public String doDeleteTour(Model model, @RequestParam(name ="id") int id) {
		Optional<TourEntity> tour1 = tourRepository.findById(id);
		if(tour1.isPresent()) {
			tourService.delete(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}		
		// hien thi list hotel da luu trong database	
		List<TourEntity> listTour = tourService.findAllTour();
		model.addAttribute("listTour", listTour);	
		return "table-tour";
	}
//	//===========================================================================================================
	@GetMapping("/updateTour")
	public String updateTour(Model model, @RequestParam(name = "id") int id) {
		// load du lieu theo id can dc update
		Optional<TourEntity> tour1 = tourRepository.findById(id);
		model.addAttribute("tour1", tour1.get());
		// hien thi list adress da luu trong database
		List<AddressEntity> address1 = addressService.findAllAddress();
		model.addAttribute("address1", address1);
		

		return "updateTour";
	}

	@PostMapping(value = "/doUpdateTour")
	public String doUpdateTour(Model model, @ModelAttribute(name = "tour1") @Valid TourEntity tour1,
			BindingResult result,@RequestParam(value = "image", required = false) MultipartFile photo) {
		if (result.hasErrors()) {
			List<AddressEntity> address1 = addressService.findAllAddress();
			model.addAttribute("address1", address1);
			
			
			
			return "updateTour";
		}
//		hotel1.getAddressEntity().setId(hotel1.getId());
		tour1.setUrlImage1(saveFile(photo));
		tourService.saveTour(tour1);
		List<TourEntity> listTour = tourService.findAllTour();
		model.addAttribute("listTour", listTour);

		return "table-tour";
	}
	//==============================================================================
	
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
	
	@GetMapping("/doSearch2")
	public String doSearch(Model model, @RequestParam(name = "keyword") String keyword) {
		List<TourEntity> listTour = tourService.findByKeyword(keyword);
		model.addAttribute("listTour",listTour);	
		return "table-tour";
	}
}
