package spring.ojt.service;

import java.util.List;

import javax.transaction.Transactional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import spring.ojt.entity.TourEntity;
import spring.ojt.exception.TourIdException;
import spring.ojt.repository.TourRepository;

@Service
public class TourService {
	@Autowired
	TourRepository tourRepository;

	//save tour
	@Transactional
	public TourEntity saveTour(TourEntity tour1) {
		try {
			tour1.setIdtour(tour1.getIdtour().toUpperCase());
			return tourRepository.save(tour1); 
		}
		catch (Exception e) {
			System.out.println("ok");
			throw new TourIdException("Tour ID '" + tour1.getIdtour().toUpperCase() + "' already exists");
		}
	}
    //in ra cai list tour
	public List<TourEntity> findAllTour() {
		return (List<TourEntity>) tourRepository.findAll();
	}
	// xoa tour theo id
	public void delete(int id) {
	 	tourRepository.deleteById(id);
	}
	
	public List<TourEntity> findByKeyword(String keyword){
		return (List<TourEntity>) tourRepository.findByCriteria(keyword);
	}
	
	public void findByIdtour(int id) {
		tourRepository.findById(id);
	}
	
}
