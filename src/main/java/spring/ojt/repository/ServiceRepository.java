package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.ServiceEntity;

@Repository
public interface ServiceRepository extends CrudRepository<ServiceEntity, Integer>{
	
	@Query("Select s from ServiceEntity s")
	public List<ServiceEntity> findAll(); 
}
