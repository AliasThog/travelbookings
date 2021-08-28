package spring.ojt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.CityEntity;
import spring.ojt.repository.CityRepository;

@Service
public class CityService {
	@Autowired
	CityRepository cityRepository;
	
	public CityEntity saveCity(CityEntity city) {
		return cityRepository.save(city);
	}

	public List<CityEntity> findAllCity() {
		return (List<CityEntity>) cityRepository.findAll();
	}
	
	public void delete(int id) {
		cityRepository.deleteById(id);
	}
}
