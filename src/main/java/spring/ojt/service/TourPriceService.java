package spring.ojt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.PriceTourPerDayEntity;
import spring.ojt.repository.TourPriceRepository;

@Service
public class TourPriceService {
	
	@Autowired
	TourPriceRepository tourPriceRepository;
	
	public List<PriceTourPerDayEntity> findAllTourPrice() {
		return (List<PriceTourPerDayEntity>) tourPriceRepository.findAll();
	}
	
	public PriceTourPerDayEntity saveTourPrice(PriceTourPerDayEntity tourPrice) {
		return tourPriceRepository.save(tourPrice);

	}
	public void delete(int id) {
		tourPriceRepository.deleteById(id);
	}
}
