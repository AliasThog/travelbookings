package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.CityEntity;

@Repository
public interface CityRepository extends CrudRepository<CityEntity, Integer> {

	@Query("Select ct from CityEntity ct")
	public List<CityEntity> findAll(); 
}
