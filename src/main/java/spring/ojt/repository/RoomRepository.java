package spring.ojt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import spring.ojt.entity.RoomEntity;

@Repository
public interface RoomRepository extends PagingAndSortingRepository<RoomEntity, Integer> {
	@Query("Select r from RoomEntity r")
	public List<RoomEntity> findAll(); 
	
	
	@Query("Select r from RoomEntity r where r.name like %:keyword% or r.hotelEntity.ten like %:keyword% or r.roomStatusEntity.rsRoomStatus like %:keyword% or r.roomTypeEntity.rtRoomtype like %:keyword%"	)
	public List<RoomEntity> findByCriteria(@Param("keyword") String keyword);
	
//	@Query(value= "Select h.* from Hotel h join Room r on h.id = r.IdHotel where h.id = :id and r.name like %:keyword% ", nativeQuery = true)
//	public HotelEntity findByCriteriaaa(@Param("id") int id, @Param("keyword") String keyword);
	
	@Query(value= "Select r.* from Room r where r.IdHotel = :id and r.name like %:keyword% ", nativeQuery = true)
	public List<RoomEntity> findByCriteriaaa(@Param("id") int id, @Param("keyword") String keyword);
	 
	
	
	
//	@Query(value = "Select r.* Room r where r.id  = :id", nativeQuery = true)
//	public RoomEntity findByIdRoom(@Param("id") int id);
	
}
