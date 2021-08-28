package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.HotelTypeEntity;

@Repository
public interface HotelTypeRepository extends CrudRepository<HotelTypeEntity,Integer >{
	@Query("Select ht from HotelTypeEntity ht")
	public List<HotelTypeEntity> findAll(); 
	

}
