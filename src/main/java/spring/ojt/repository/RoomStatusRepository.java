package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import spring.ojt.entity.RoomStatusEntity;

@Repository
public interface RoomStatusRepository extends CrudRepository<RoomStatusEntity, Integer> {
	@Query("Select rs from RoomStatusEntity rs")
	public List<RoomStatusEntity> findAll();

}
