package spring.ojt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.ojt.entity.PromotionEntity;
import spring.ojt.entity.RoomEntity;
import spring.ojt.entity.ServiceEntity;
import spring.ojt.repository.PromotionRepository;

@Service
public class PromotionService {
	@Autowired
	PromotionRepository promotionRepository;
	
	public List<PromotionEntity> findAllPromotion() {
		return (List<PromotionEntity>) promotionRepository.findAll();
	}
	
	public PromotionEntity savePromotion(PromotionEntity promotion) {
		return promotionRepository.save(promotion);

	}
	
	public void delete(int id) {
		promotionRepository.deleteById(id);
	}
}
