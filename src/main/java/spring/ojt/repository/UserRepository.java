package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import spring.ojt.entity.UserEntity;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Integer> {
	@Query("select u from UserEntity u where u.username = ?1")
	UserEntity findByUsername(String username);
	
	@Query("Select u from UserEntity u")
	public List<UserEntity> findAll(); 
	
}
