package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.BookingRoomEntity;


@Repository
public interface BookingRoomRepository extends PagingAndSortingRepository<BookingRoomEntity, Integer>{
    
	@Query( value = "select * from bookingroom br join customers c on br.IdCustomer = c.id join bookingdetail bd on bd.IdBookingRoom = br.id where c.email = ?1", nativeQuery = true)
	List<BookingRoomEntity> findAllByMail(String mail);
	
//	@Query("Select br from BookingRoomEntity br where br.customersEntity.fullName like %:keyword% or br.customersEntity.phone like %:keyword% br.customersEntity.address like %:keyword% and br.custom")
//	public List<BookingRoomEntity> findByCriteria(@Param("keyword") String keyword);
}
