package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.PriceTourPerDayEntity;

@Repository
public interface TourPriceRepository extends CrudRepository<PriceTourPerDayEntity,Integer >{
	@Query("Select tp from PriceTourPerDayEntity tp")
	public List<PriceTourPerDayEntity> findAll(); 
	
	
}
