package spring.ojt.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.ojt.entity.PriceTourPerDayEntity;
import spring.ojt.entity.TourEntity;
import spring.ojt.repository.TourPriceRepository;
import spring.ojt.repository.TourRepository;
import spring.ojt.service.TourPriceService;
import spring.ojt.service.TourService;

@Controller
@RequestMapping("/staff")
public class TourPriceController {
	
	@Autowired
	ServletContext servletContext;
	
	
	@Autowired
	TourPriceRepository tourPriceRepository;
	
	@Autowired
	TourPriceService tourPriceService;
	
	@Autowired
	public TourRepository tourRepository;

	@Autowired
	public TourService tourService;
	
//



	@GetMapping(value = "/addTourPrice")
	public String newTourPrice(Model model) {
	//public String newTourPrice() {
		//model.addAttribute("tourPrice1", new PriceTourPerDayEntity());
		model.addAttribute("tourPrice1", new PriceTourPerDayEntity());
		
		List<TourEntity> tour1 = tourService.findAllTour();
		model.addAttribute("tour1", tour1);
		
		return "add-tourPrice";
	}
//
	@PostMapping(value = "/doAddTourPrice")
	public String doNewTourPrice(Model model, @ModelAttribute(name = "tourPrice1") @Valid PriceTourPerDayEntity tourPrice1,
			BindingResult result) {
		if (result.hasErrors()) {
			
			List<TourEntity> tour1 = tourService.findAllTour();
			model.addAttribute("tour1", tour1);
			
			return "add-tourPrice";
		}
		tourPriceService.saveTourPrice(tourPrice1);

		List<PriceTourPerDayEntity> listTourPrice = tourPriceService.findAllTourPrice();
		model.addAttribute("listTourPrice", listTourPrice);

		return "table-tourPrice";
	}
////	//===========================================================================================================
//
//////	@GetMapping(value = {"/tourAdmin","/t"})
	@GetMapping("/tourPriceAdmin")
	public String doShowTourPrice(Model model) {
		
		// hien thi list hotel da luu trong database
		List<PriceTourPerDayEntity> listTourPrice = tourPriceService.findAllTourPrice();
		model.addAttribute("listTourPrice", listTourPrice);
		return "table-tourPrice";
	}
//	//===========================================================================================================
	@GetMapping("/deleteTourPrice")
	public String doDeleteTourPrice(Model model, @RequestParam(name ="id") int id) {
		Optional<PriceTourPerDayEntity> tourPrice1 = tourPriceRepository.findById(id);
		if(tourPrice1.isPresent()) {
			tourPriceService.delete(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}		
		// hien thi list hotel da luu trong database	
		List<PriceTourPerDayEntity> listTourPrice = tourPriceService.findAllTourPrice();
		model.addAttribute("listTourPrice", listTourPrice);	
		return "table-tourPrice";
	}
////	//===========================================================================================================
	@GetMapping("/updateTourPrice")
	public String updateTourPrice(Model model, @RequestParam(name = "id") int id) {
		// load du lieu theo id can dc update
		Optional<PriceTourPerDayEntity> tourPrice1 = tourPriceRepository.findById(id);
		model.addAttribute("tourPrice1", tourPrice1.get());
		// hien thi list adress da luu trong database
		
		List<TourEntity> tour1 = tourService.findAllTour();
		model.addAttribute("tour1", tour1);

		return "updateTourPrice";
	}

	@PostMapping(value = "/doUpdateTourPrice")
	public String doUpdateTourPrice(Model model, @ModelAttribute(name ="tourPrice1") @Valid PriceTourPerDayEntity tourPrice1,
			BindingResult result)  {
		if(result.hasErrors()) {
				
			List<TourEntity> tour1 = tourService.findAllTour();
			model.addAttribute("tour1", tour1);
			
			return "updateTourPrice";
		}
//
		tourPriceService.saveTourPrice(tourPrice1);
		List<PriceTourPerDayEntity> listTourPrice = tourPriceService.findAllTourPrice();
		model.addAttribute("listTourPrice", listTourPrice);	
				
		return "table-tourPrice";		
	}
//	//==============================================================================
//	
////	//upload image
//	private String saveFile(MultipartFile file) {
//		if (null != file && !file.isEmpty()) {
//			try {
//				byte[] bytes = file.getBytes();
//				String rootPath = System.getProperty("catalina.home");
//				// creating directory to store file.
//				File dir = new File(rootPath + File.separator + "assets/user/img");
//				if (!dir.exists()) {
//					dir.mkdir();
//				}
//				// creating the file on server
//				String name = String.valueOf(new Date().getTime() + ".jpg");
//				File serverFile = new File(dir.getAbsoluteFile() + File.separator + name);
//				// get link file on server
//				System.out.println("====== path of image on server: " + serverFile.getPath());
//				// luu tren server
//				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
//				stream.write(bytes);
//				stream.close();
//				return name;
//
//			} catch (IOException e) {
//				System.out.println("Error Upload File: " + e.getMessage());
//			}
//
//		} else {
//			System.out.println("File not Exist: ");
//		}
//
//		return null;
//	}
}
