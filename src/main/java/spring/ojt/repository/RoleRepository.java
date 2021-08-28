package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.RoleEntity;


@Repository
public interface RoleRepository extends PagingAndSortingRepository<RoleEntity, Integer> {

	@Query("Select re from RoleEntity re")
	public List<RoleEntity> findAll(); 
}
