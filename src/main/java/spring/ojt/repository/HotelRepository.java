package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.HotelEntity;


@Repository
public interface HotelRepository extends PagingAndSortingRepository<HotelEntity, Integer> {
	@Query("Select h from HotelEntity h")
	public List<HotelEntity> findAll(); 
	
	
	@Query("Select h from HotelEntity h where h.ten like %:keyword% or h.addressEntity.nameAddress like %:keyword% or h.hotelTypeEntity.name like %:keyword%")
	public List<HotelEntity> findByCriteria(@Param("keyword") String keyword);
	
	@Query(value= "Select h.* from Hotel h join Room r on h.id = r.IdHotel where h.id = :id and r.name like %:keyword% ", nativeQuery = true)
	public HotelEntity findByCriteriaaa(@Param("id") int id, @Param("keyword") String keyword);
	

}
