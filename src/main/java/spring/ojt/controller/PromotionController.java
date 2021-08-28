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
import spring.ojt.repository.PromotionRepository;
import spring.ojt.repository.ServiceRepository;
import spring.ojt.service.PromotionService;
import spring.ojt.service.ServiceService;

@Controller
@RequestMapping("/staff")
public class PromotionController {

	@Autowired
	ServiceService serviceService;

	@Autowired
	PromotionRepository promotionRepository;

	@Autowired
	PromotionService promotionService;

	@GetMapping({ "/staffPromotion" })
	public String doShowPromotion(Model model) {

		// hien thi list Service da luu trong database
		List<PromotionEntity> promotion = promotionService.findAllPromotion();
		model.addAttribute("promotion", promotion);
		return "table-promotion";
	}

	@GetMapping(value = "/addPromotion")
	public String newPromotion(Model model) {

		model.addAttribute("promotion1", new PromotionEntity());
		return "add-promotion";
	}

	@PostMapping("/doAddPromotion")
	public String doNewPromotion(Model model, @ModelAttribute(name = "promotion1") @Valid PromotionEntity promotion1,
			BindingResult result) {
		if (result.hasErrors()) {

			return "add-promotion";
		}

		promotionService.savePromotion(promotion1);

		List<PromotionEntity> promotion = promotionService.findAllPromotion();
		model.addAttribute("promotion", promotion);

		return "table-promotion";
	}

	@GetMapping("/deletePromotion")
	public String doDeletePromotion(Model model, @RequestParam(name = "id") int id) {
		Optional<PromotionEntity> promotion1 = promotionRepository.findById(id);
		if (promotion1.isPresent()) {
			promotionService.delete(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}

		List<PromotionEntity> promotion = promotionService.findAllPromotion();
		model.addAttribute("promotion", promotion);
		return "table-promotion";
	}

	@GetMapping("/updatePromotion")
	public String updatePromotion(Model model, @RequestParam(name = "id") int id) {

		Optional<PromotionEntity> promotion1 = promotionRepository.findById(id);
		model.addAttribute("promotion1", promotion1.get());

		return "updatePromotion";
	}

	@PostMapping(value = "/doUpdatePromotion")
	public String doUpdatePromotion(Model model, @ModelAttribute(name = "promotion1") @Valid PromotionEntity promotion1,
			BindingResult result) {
		if (result.hasErrors()) {

			return "updatePromotion";
		}
//		

		promotionService.savePromotion(promotion1);

		List<PromotionEntity> promotion = promotionService.findAllPromotion();
		model.addAttribute("promotion", promotion);

		return "table-promotion";
	}
}
