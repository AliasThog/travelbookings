package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.AddressEntity;


@Repository
public interface AddressRepository extends CrudRepository<AddressEntity, Integer>{
	
	
	@Query("Select a from AddressEntity a")
	public List<AddressEntity> findAll(); 
	
	
	
}
