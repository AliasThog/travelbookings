package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.PromotionEntity;
import spring.ojt.entity.RoomEntity;


@Repository
public interface PromotionRepository extends CrudRepository<PromotionEntity, Integer>{
	@Query("Select pr from PromotionEntity pr")
	public List<PromotionEntity> findAll();
	
	
}
