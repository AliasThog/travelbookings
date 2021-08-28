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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import spring.ojt.entity.AddressEntity;
import spring.ojt.entity.CityEntity;
import spring.ojt.entity.HotelEntity;
import spring.ojt.entity.HotelTypeEntity;
import spring.ojt.repository.AddressRepository;
import spring.ojt.service.AddressService;
import spring.ojt.service.CityService;

@Controller
@RequestMapping("/staff")
public class AddressController {

	@Autowired
	public AddressService addressService;

	@Autowired
	CityService cityService;

	@Autowired
	AddressRepository addressRepository;
	
	@GetMapping(value = "/addAddress")
	public String newAddress(Model model) {

		List<CityEntity> cityList = cityService.findAllCity();
		model.addAttribute("cityList", cityList);

		model.addAttribute("address1", new AddressEntity());
		return "add-address";
	}

	@PostMapping(value = "/doAddAddress")
	public String doNewAddress(Model model, @ModelAttribute(name = "address1") @Valid AddressEntity address1,
			BindingResult result, @RequestParam(value = "image", required = false) MultipartFile photo) {
		if (result.hasErrors()) {

			List<CityEntity> cityList = cityService.findAllCity();
			model.addAttribute("cityList", cityList);
			model.addAttribute("address1", address1);
			return "add-address";
		}
		address1.setUrlImageAddress(saveFile(photo));
		addressService.saveAddress(address1);
		List<AddressEntity> listAdress = addressService.findAllAddress();
		model.addAttribute("listAdress", listAdress);

		return "table-address";

	}

	@GetMapping({ "/adressAdmin" })
	public String doShowAdress(Model model) {

		// hien thi list hotel da luu trong database
		List<AddressEntity> listAdress = addressService.findAllAddress();
		model.addAttribute("listAdress", listAdress);

		return "table-address";
	}
	@GetMapping("/deleteAddress")
	public String doDeleteAdress(Model model, @RequestParam(name = "id") int id) {
		Optional<AddressEntity> address1 = addressRepository.findById(id);
		if (address1.isPresent()) {
			addressService.delete(id);
		} else {
			model.addAttribute("message", "Id " + id + " is not exists to delete");
		}
		// hien thi list hotel da luu trong database
		List<AddressEntity> listAdress = addressService.findAllAddress();
		model.addAttribute("listAdress", listAdress);
		return "table-address";
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
	@GetMapping("/updateAddress")
	public String updateAddress(Model model, @RequestParam(name = "id") int id) {
		// load du lieu theo id can dc update
		Optional<AddressEntity> address1 = addressRepository.findById(id);
		model.addAttribute("address1", address1.get());
		// hien thi list adress da luu trong database
		List<CityEntity> cityList = cityService.findAllCity();
		model.addAttribute("cityList", cityList);

		return "updateAddress";
	}
	@PostMapping("/doUpdateAddress")
	public String doUpdateAddress(Model model, @ModelAttribute(name = "address1") @Valid AddressEntity address1,
			BindingResult result, @RequestParam(value = "image", required = false) MultipartFile photo) {
		if (result.hasErrors()) {
			List<CityEntity> cityList = cityService.findAllCity();
			model.addAttribute("cityList", cityList);
			return "updateAddress";
		}
		address1.setUrlImageAddress(saveFile(photo));
		addressService.saveAddress(address1);
		List<AddressEntity> listAdress = addressService.findAllAddress();
		model.addAttribute("listAdress", listAdress);

		return "table-address";
}
}
