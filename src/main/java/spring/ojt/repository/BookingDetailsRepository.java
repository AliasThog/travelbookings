package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.BookingDetailEntity;
import spring.ojt.entity.HotelEntity;

@Repository
public interface BookingDetailsRepository extends PagingAndSortingRepository<BookingDetailEntity, Integer>{
	
	@Query("Select bd from BookingDetailEntity bd")
	public List<BookingDetailEntity> findAll(); 
	
	@Query("Select bd from BookingDetailEntity bd where bd.roomEntity.name like %:keyword% or bd.bookingRoomEntity.customersEntity.mail like %:keyword%")
	public List<BookingDetailEntity> findByCriteria(@Param("keyword") String keyword);
	
}
