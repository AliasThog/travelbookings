package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.TourEntity;

@Repository
public interface TourRepository extends CrudRepository<TourEntity, Integer>{
	@Query("Select t from TourEntity t")
	public List<TourEntity> findAll(); 
	
	
	@Query("Select t from TourEntity t where t.idtour like %:keyword% or t.nameTour like %:keyword% or t.status like %:keyword% or t.addressEntity.nameAddress like %:keyword%"	)
	public List<TourEntity> findByCriteria(@Param("keyword") String keyword);
	
	
}
