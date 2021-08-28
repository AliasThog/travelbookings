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

import spring.ojt.entity.CityEntity;
import spring.ojt.repository.CityRepository;
import spring.ojt.service.CityService;

@Controller
@RequestMapping("/staff")
public class CityController {

	@Autowired
	CityService cityService;
	@Autowired
	CityRepository cityRepository;

	@GetMapping({ "/cityAdmin" })
	public String doShowCity(Model model) {

		// hien thi list da luu trong database
		List<CityEntity> cityList = cityService.findAllCity();
		model.addAttribute("cityList", cityList);
		return "table-city";
	}

	@GetMapping("/deleteCity")
	public String doDeleteCity(Model model, @RequestParam(name = "id") int id) {
		Optional<CityEntity> city1 = cityRepository.findById(id);
		if (city1.isPresent()) {
			cityService.delete(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}

		List<CityEntity> cityList = cityService.findAllCity();
		model.addAttribute("cityList", cityList);
		return "table-city";
	}

	@GetMapping("/addCity")
	public String newCity(Model model) {

		model.addAttribute("city1", new CityEntity());
		return "add-city";
	}

	@PostMapping("/doAddCity")
	public String doNewCity(Model model, @ModelAttribute(name = "city1") @Valid CityEntity city1,
			BindingResult result) {
		if (result.hasErrors()) {

			return "add-city";
		}

		cityService.saveCity(city1);
		List<CityEntity> cityList = cityService.findAllCity();
		model.addAttribute("cityList", cityList);
		return "table-city";
	}

	@GetMapping("/updateCity")
	public String updateCity(Model model, @RequestParam(name = "id") int id) {
		// load du lieu theo id can dc update
		Optional<CityEntity> city1 = cityRepository.findById(id);
		model.addAttribute("city1", city1.get());

		return "updateCity";
	}

	@PostMapping("/doUpdateCity")
	public String doUpdateCity(Model model, @ModelAttribute(name = "city1") @Valid CityEntity city1,
			BindingResult result) {
		if (result.hasErrors()) {
			return "updateCity";
		}
//		

		cityService.saveCity(city1);
		List<CityEntity> cityList = cityService.findAllCity();
		model.addAttribute("cityList", cityList);
		return "table-city";
	}

}
