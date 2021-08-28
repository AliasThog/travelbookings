package spring.ojt.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import spring.ojt.entity.HotelEntity;
import spring.ojt.repository.HotelRepository;

@PropertySource(value = "classpath:common.properties")
@Service
public class HotelService {
	@Autowired
	HotelRepository hotelRepository;

	public HotelEntity saveHotel(HotelEntity hotel1) {
		return hotelRepository.save(hotel1);
	}

	public List<HotelEntity> findAllHotel() {
		return (List<HotelEntity>) hotelRepository.findAll();
	}
	
	public void delete(int id) {
		hotelRepository.deleteById(id);
	}
	
	public List<HotelEntity> findByKeyword(String keyword){
		return (List<HotelEntity>) hotelRepository.findByCriteria(keyword);
	}
	
	@Value("${common.paging.number}")
	public int pagingNumber;
	
	@Transactional
	public Page<HotelEntity> getProductsPaging(int page) {
	  return (Page<HotelEntity>) hotelRepository.findAll(PageRequest.of(page - 1, pagingNumber));
	}

//	
//	public HotelEntity findByIdHotel1(int id) {
//		return (HotelEntity) h
//	}
}
