package spring.ojt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.HotelTypeEntity;
import spring.ojt.repository.HotelTypeRepository;

@Service
public class HotelTypeService {
	
	@Autowired
	HotelTypeRepository hotelTypeRepository;
	public List<HotelTypeEntity> findAllHotelType() {
		return (List<HotelTypeEntity>) hotelTypeRepository.findAll();
	}
	
	public HotelTypeEntity saveHotelType(HotelTypeEntity hotelType) {
		return hotelTypeRepository.save(hotelType);

	}
}
