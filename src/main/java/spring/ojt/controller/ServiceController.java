package spring.ojt.controller;

import java.util.List;
import java.util.Optional;

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

import spring.ojt.entity.PromotionEntity;
import spring.ojt.entity.ServiceEntity;
import spring.ojt.repository.ServiceRepository;
import spring.ojt.service.PromotionService;
import spring.ojt.service.ServiceService;

@Controller
@RequestMapping("/staff")
public class ServiceController {

	@Autowired
	ServiceService serviceService;

	@Autowired
	ServiceRepository serviceRepository;

	@Autowired
	PromotionService promotionService;

	@GetMapping({ "/staffService" })
	public String doShowService(Model model) {

		// hien thi list Service da luu trong database
		List<ServiceEntity> listService = serviceService.findAllService();
		model.addAttribute("listService", listService);
		return "table-service";
	}

	@GetMapping("/addService")
	public String newService(Model model) {

		// hien thi list adress da luu trong database

		List<PromotionEntity> promotion = promotionService.findAllPromotion();
		model.addAttribute("promotion", promotion);

		model.addAttribute("service", new ServiceEntity());
		return "add-service";
	}

	@PostMapping("/doAddService")
	public String doNewService(Model model, @ModelAttribute(name = "service") @Valid ServiceEntity service,
			BindingResult result) {
		if (result.hasErrors()) {
			List<PromotionEntity> promotion = promotionService.findAllPromotion();
			model.addAttribute("promotion", promotion);
			return "add-service";
		}

		serviceService.saveService(service);

		List<ServiceEntity> listService = serviceService.findAllService();
		model.addAttribute("listService", listService);

		return "table-service";
	}

	@GetMapping("/deleteService")
	public String doDeleteService(Model model, @RequestParam(name = "id") int id) {
		Optional<ServiceEntity> service = serviceRepository.findById(id);
		if (service.isPresent()) {
			serviceService.delete(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}

		List<ServiceEntity> listService = serviceService.findAllService();
		model.addAttribute("listService", listService);
		return "table-service";
	}

	@GetMapping("/updateService")
	public String updateService(Model model, @RequestParam(name = "id") int id) {
	
		Optional<ServiceEntity> service= serviceRepository.findById(id);
		model.addAttribute("service", service.get());
		
		List<PromotionEntity> promotion = promotionService.findAllPromotion();
		model.addAttribute("promotion", promotion);
		
		return "updateService";
	}

	@PostMapping(value = "/doUpdateService")
	public String doUpdateService(Model model, @ModelAttribute(name = "service") @Valid ServiceEntity service,
			BindingResult result) {
		if (result.hasErrors()) {
			
			List<PromotionEntity> promotion = promotionService.findAllPromotion();
			model.addAttribute("promotion", promotion);
			
			
			return "updateService";
		}
//		
		
		serviceService.saveService(service);
		List<ServiceEntity> listService= serviceService.findAllService();
		model.addAttribute("listService", listService);

		return "table-service";
	}	
}
