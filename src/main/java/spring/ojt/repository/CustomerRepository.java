package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.CustomersEntity;

@Repository
public interface CustomerRepository extends CrudRepository<CustomersEntity, Integer>{
	@Query("Select ct from CustomersEntity ct")
	public List<CustomersEntity> findAll(); 
}
