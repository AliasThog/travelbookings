package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.RoomTypeEntity;

@Repository
public interface RoomTypeRepository extends CrudRepository<RoomTypeEntity, Integer>{
	@Query("Select rt from RoomTypeEntity rt")
	public List<RoomTypeEntity> findAll(); 
	

}
